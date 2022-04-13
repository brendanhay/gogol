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
import UnliftIO.Directory qualified as Directory
import UnliftIO.IORef qualified as IORef

rules ::
  Client.Manager ->
  FilePath ->
  GenRules (Writer [Error] (Writer TaskKind Query)) Query
rules manager buildDir (Writer (Writer query)) =
  case query of
    BuildInfo ->
      noError $
        pure
          Info
            { manifest = buildDir </> "manifest",
              artefact = buildDir </> "artefact",
              cache = buildDir </> "cache",
              temporary = buildDir </> "tmp",
              output = buildDir </> "out"
            }
    --
    ArtefactManifest ->
      nonInput $ do
        info <- fetch BuildInfo
        seen <- Directory.doesPathExist info.manifest

        (manifest, errors) <-
          if seen
            then parseManifest <$> fetch (FileBytes info.manifest)
            else pure mempty

        (,errors) <$> IORef.newIORef manifest
    --
    FileBytes path ->
      input $
        liftIO (ByteString.readFile path)
    --
    FileHash path ->
      input $
        fingerprintFile path
    --
    CachedBytes key ->
      noError $ do
        info <- fetch BuildInfo
        tryReadCache info.cache key
    --
    ArtefactBytes artefact ->
      noError $
        readArtefact artefact
    --
    StoredArtefact name ->
      input $
        runMaybeT $ do
          info <- fetch BuildInfo
          manifestVar <- fetch ArtefactManifest

          artefact <- MaybeT (lookupArtefact (info.artefact </> name))
          validate <- isKnownArtefact artefact <$> IORef.readIORef manifestVar
          artefact <$ guard validate
    --
    RemoteArtefact url name ->
      input $ do
        info <- fetch BuildInfo
        downloadArtefact manager url (info.artefact </> name)
    --
    DiscoveryIndex ->
      noError $ do
        (artefact, list) <-
          fetchArtefactJSON @DirectoryList directoryListURL "directory-list.json"

        manifestVar <- fetch ArtefactManifest

        liftIO $ Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

        pure (newDirectoryIndex list.items)
    --
    DiscoveryDescription name mversion ->
      nonInput $ do
        index <- fetch DiscoveryIndex

        case findPreferredVersion name mversion index of
          Nothing -> pure (Nothing, ["Missing service description"])
          Just item -> do
            let url = item.discoveryRestUrl
                path =
                  "services"
                    </> Text.unpack item.name.text
                    </> Text.unpack item.version.text
                    <.> "json"

            (artefact, description) <-
              fetchArtefactJSON @Description url path

            manifestVar <- fetch ArtefactManifest

            liftIO $ Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

            pure (Just description, [])
    --
    PackageDefaults ->
      noError $
        fetchCachedFile "kuy.cabal" $ \bytes ->
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
  String ->
  FilePath ->
  m (Artefact, a)
fetchArtefactJSON url path =
  fetch (StoredArtefact path) >>= \case
    Nothing -> do
      artefact <- fetch (RemoteArtefact url path)
      item <- fetchCachedJSON artefact
      pure (artefact, item)
    --
    Just artefact -> do
      item <- fetchCachedJSON artefact
      pure (artefact, item)

fetchCachedJSON ::
  forall a m.
  ( MonadIO m,
    MonadFetch Query m,
    Structured a,
    Persist a,
    FromJSON a
  ) =>
  Artefact ->
  m a
fetchCachedJSON artefact = do
  let key = newCacheKey @a artefact.hash

  fetch (CachedBytes key) >>= \case
    Right item ->
      pure item
    --
    Left writer -> do
      info <- fetch BuildInfo
      bytes <- fetch (ArtefactBytes artefact)
      -- FIXME: proper error handling
      item <- either UnliftIO.throwString pure $ Aeson.eitherDecodeStrict' bytes
      item <$ writeCache info.cache writer item

fetchCachedFile ::
  forall a m.
  ( MonadIO m,
    MonadFetch Query m,
    Structured a,
    Persist a
  ) =>
  FilePath ->
  (ByteString -> m a) ->
  m a
fetchCachedFile path decode = do
  key <- newCacheKey @a <$> fetch (FileHash path)

  fetch (CachedBytes key) >>= \case
    Right item ->
      pure item
    --
    Left writer -> do
      info <- fetch BuildInfo
      bytes <- fetch (FileBytes path)
      item <- decode bytes
      item <$ writeCache info.cache writer item
