module Kuy.Driver.Rules where

import Data.Aeson qualified as Aeson
import Data.Atomics qualified as Atomics
import Data.Text qualified as Text
import Kuy.Discovery
import Kuy.Driver.Query
import Kuy.Store.Artefact
import Kuy.Store.Manifest
import Kuy.Store.Cache
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import Rock
import UnliftIO.IORef qualified as IORef

rules ::
  Client.Manager ->
  FilePath ->
  IORef Manifest ->
  GenRules (Writer TaskKind Query) Query
rules manager store manifestVar (Writer query) =
  case query of
    --
    CachedBytes reader ->
      input $
        readCache store reader
    --
    ArtefactBytes key ->
      input $
        readArtefact key
    --
    LocalArtefact name ->
      input $
        runMaybeT $ do
          manifest <- IORef.readIORef manifestVar
          artefact <- MaybeT (getArtefact store name)
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
    DiscoveryItem name mversion ->
      nonInput $
        findPreferredVersion name mversion <$> fetch DiscoveryIndex
    --
    DiscoveryDescription name mversion ->
      nonInput $ do
        mitem <- fetch (DiscoveryItem name mversion)

        for mitem $ \item -> do
          let url = item.discoveryRestUrl
              path =
                "services"
                  </> Text.unpack item.name.text
                  </> Text.unpack item.version.text
                  <.> "json"

          (artefact, desc) <-
            fetchArtefactJSON @Description store url path

          liftIO $
            Atomics.atomicModifyIORefCAS_ manifestVar (insertArtefact artefact)

          pure desc

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
  let reader = getCacheReader @a artefact.hash

  fetch (CachedBytes reader) >>= \case
    Right item ->
      pure item
    --
    Left writer -> do
      json <- fetch (ArtefactBytes artefact)
      item <- either error pure $ Aeson.eitherDecodeStrict' json

      writeCache store writer item

      pure item

input :: Functor f => f a -> f (a, TaskKind)
input = fmap (,Input)

nonInput :: Functor f => f a -> f (a, TaskKind)
nonInput = fmap (,NonInput)
