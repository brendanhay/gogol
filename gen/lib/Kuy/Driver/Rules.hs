module Kuy.Driver.Rules where

import Kuy.Cabal qualified as Cabal
import Data.Aeson qualified as Aeson
import Data.ByteString qualified as ByteString
import Data.Atomics qualified as Atomics
import Data.Text qualified as Text
import Kuy.Discovery
import Kuy.Driver.Query
import Kuy.Prelude
import Kuy.Store.Artefact
import Kuy.Store.Cache
import Kuy.Store.Fingerprint
import Kuy.Store.Manifest
import Network.HTTP.Client qualified as Client
import Rock
import UnliftIO qualified
import UnliftIO.IORef qualified as IORef
import UnliftIO.Directory qualified as Directory

rules ::
  Client.Manager ->
  FilePath ->
  IORef Manifest ->
  GenRules (Writer TaskKind Query) Query
rules manager store manifestVar (Writer query) =
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
      nonInput $
        tryReadCache store key
    --
    ArtefactBytes artefact ->
      nonInput $
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
      nonInput $ do
        (artefact, list) <-
          fetchArtefactJSON @DirectoryList store directoryListURL "directory-list.json"

        liftIO $
          Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

        pure $! newDirectoryIndex list.items
    --
    DiscoveryDescription serviceName serviceVersion ->
      nonInput $ do
        index <- fetch DiscoveryIndex

        for (findPreferredVersion serviceName serviceVersion index) $ \item -> do
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
-- FIXME: Binary instances already exists for Cabal types, consider
-- switching from Persist to Binary and caching the description,
-- or does that defeat the purpose if it's cheap to read the Cabal file
-- given how slow Binary is vs Persist?
    PackageDescription ->
       nonInput $ do
        let path = "kuy.cabal"

        key <- newCacheKey @Cabal.PackageDescription <$> fetch (FileHash path)

        fetch (CachedBytes key) >>= \case
          Right item ->
            pure item
         --
          Left writer -> do
            bytes <- fetch (FileBytes path)

            case Cabal.parsePackageDescription bytes of
                Left errors ->
                    error (show errors)
                Right package ->
                  package <$ writeCache store writer package

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

input :: Functor f => f a -> f (a, TaskKind)
input = fmap (,Input)

nonInput :: Functor f => f a -> f (a, TaskKind)
nonInput = fmap (,NonInput)
