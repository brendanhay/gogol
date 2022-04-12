module Kuy.Driver.Rules where

import Data.Aeson qualified as Aeson
import Data.Atomics qualified as Atomics
import Data.Text qualified as Text
import Kuy.Discovery
import Kuy.Driver.Query
import Kuy.Driver.Store.Artefact
import Kuy.Driver.Store.Cache
import Kuy.Driver.Store.Manifest
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import Rock
import UnliftIO qualified
import UnliftIO.IORef qualified as IORef

rules ::
  Client.Manager ->
  FilePath ->
  IORef Manifest ->
  GenRules (Writer TaskKind Query) Query
rules manager storePath manifestVar (Writer query) =
  case query of
    --
    CachedBytes cacheKey ->
      input $
        tryReadCache storePath cacheKey
    --
    ArtefactBytes artefact ->
      input $
        readArtefact artefact
    --
    LocalArtefact fileName ->
      input $
        runMaybeT $ do
          manifest <- IORef.readIORef manifestVar
          artefact <- MaybeT (lookupArtefact storePath fileName)
          artefact <$ guard (isKnownArtefact artefact manifest)
    --
    RemoteArtefact url fileName ->
      input $
        downloadArtefact manager storePath url fileName
    --
    DiscoveryIndex ->
      nonInput $ do
        (artefact, list) <-
          fetchArtefactJSON @DirectoryList storePath directoryListURL "directory-list.json"

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
            fetchArtefactJSON @Description storePath url path

          liftIO $
            Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

          pure description

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
  fetch (LocalArtefact path) >>= \case
    Just artefact -> do
      item <- fetchCachedJSON store artefact
      pure (artefact, item)
    --
    Nothing -> do
      artefact <- fetch (RemoteArtefact url path)
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
      json <- fetch (ArtefactBytes artefact)
      -- FIXME:
      item <- either UnliftIO.throwString pure $ Aeson.eitherDecodeStrict' json

      writeCache store writer item

      pure item

input :: Functor f => f a -> f (a, TaskKind)
input = fmap (,Input)

nonInput :: Functor f => f a -> f (a, TaskKind)
nonInput = fmap (,NonInput)
