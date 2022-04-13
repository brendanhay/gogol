module Kuy.Driver.Rules
  ( rules,
  )
where

import Data.Aeson qualified as Aeson
import Data.Atomics qualified as Atomics
import Data.ByteString qualified as ByteString
import Data.Text qualified as Text
import Kuy.Cabal qualified as Cabal
import Kuy.Discovery
import Kuy.Driver.Query
import Kuy.Prelude
import Kuy.Store.Artefact
import Kuy.Store.Cache
import Kuy.Store.Fingerprint
import Kuy.Store.Manifest
import Kuy.Unit
import Network.HTTP.Client qualified as Client
import Rock
import UnliftIO qualified
import UnliftIO.IORef qualified as IORef

rules ::
  Client.Manager ->
  FilePath ->
  IORef Manifest ->
  GenRules (Writer [Error] (Writer TaskKind Query)) Query
rules manager store manifestVar (Writer (Writer query)) =
  case query of
    FileBytes path ->
      input $
        liftIO (ByteString.readFile path)
    --
    FileHash path ->
      input $
        fingerprintFile path
    --
    CachedBytes key ->
      noError $
        tryReadCache store key
    --
    ArtefactBytes artefact ->
      noError $
        readArtefact artefact
    --
    StoredArtefact name ->
      input $
        runMaybeT $ do
          manifest <- IORef.readIORef manifestVar
          artefact <- MaybeT (lookupArtefact store name)
          artefact <$ guard (isKnownArtefact artefact manifest)
    --
    RemoteArtefact url name ->
      input $
        downloadArtefact manager store url name
    --
    DiscoveryIndex ->
      noError $ do
        (artefact, list) <-
          fetchArtefactJSON @DirectoryList store directoryListURL "directory-list.json"

        liftIO $
          Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

        pure $! newDirectoryIndex list.items
    --
    DiscoveryDescription name mversion ->
      noError $ do
        index <- fetch DiscoveryIndex

        for (findPreferredVersion name mversion index) $ \item -> do
          let url = item.discoveryRestUrl
              path =
                "services"
                  </> Text.unpack item.name.text
                  </> Text.unpack item.version.text
                  <.> "json"

          (artefact, description) <-
            fetchArtefactJSON @Description store url path

          liftIO $
            Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

          pure description
    --
    PackageDefaults ->
      noError $
        fetchCachedFile store "kuy.cabal" $ \bytes ->
          either (error . show) pure (Cabal.parsePackageDescription bytes)
    --
    CompiledUnit self unit ->
      nonInput $
        case compileUnit self unit of
          Left err -> pure (mempty, [err])
          Right ok -> pure (ok, [])

-- Utiltiies

type Error = String

input :: Functor m => m a -> m ((a, TaskKind), [Error])
input = fmap ((,mempty) . (,Input))

nonInput :: Functor m => m (a, [Error]) -> m ((a, TaskKind), [Error])
nonInput = fmap (first (,NonInput))

noError :: Functor m => m a -> m ((a, TaskKind), [Error])
noError = fmap ((,mempty) . (,NonInput))

-- Idioms

fetchArtefactJSON ::
  forall a m.
  ( MonadIO m,
    MonadFetch Query m,
    Structured a,
    Persist a,
    FromJSON a
  ) =>
  FilePath ->
  String ->
  FilePath ->
  m (Artefact, a)
fetchArtefactJSON store url path =
  fetch (StoredArtefact path) >>= \case
    Nothing -> do
      artefact <- fetch (RemoteArtefact url path)
      item <- fetchCachedJSON store artefact
      pure (artefact, item)
    --
    Just artefact -> do
      item <- fetchCachedJSON store artefact
      pure (artefact, item)

fetchCachedJSON ::
  forall a m.
  ( MonadIO m,
    MonadFetch Query m,
    Structured a,
    Persist a,
    FromJSON a
  ) =>
  FilePath ->
  Artefact ->
  m a
fetchCachedJSON store artefact = do
  let key = newCacheKey @a artefact.hash

  fetch (CachedBytes key) >>= \case
    Right item ->
      pure item
    --
    Left writer -> do
      bytes <- fetch (ArtefactBytes artefact)
      -- FIXME: proper error handling
      item <- either UnliftIO.throwString pure $ Aeson.eitherDecodeStrict' bytes
      item <$ writeCache store writer item

fetchCachedFile ::
  forall a m.
  ( MonadIO m,
    MonadFetch Query m,
    Structured a,
    Persist a
  ) =>
  FilePath ->
  FilePath ->
  (ByteString -> m a) ->
  m a
fetchCachedFile store path decode = do
  key <- newCacheKey @a <$> fetch (FileHash path)

  fetch (CachedBytes key) >>= \case
    Right item ->
      pure item
    --
    Left writer -> do
      bytes <- fetch (FileBytes path)
      item <- decode bytes
      item <$ writeCache store writer item
