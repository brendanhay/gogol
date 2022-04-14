module Kuy.Driver.Rules
  ( rules,
  )
where

import Data.Aeson qualified as Aeson
import Data.Atomics qualified as Atomics
import Data.ByteString qualified as ByteString
import Data.Text qualified as Text
import Kuy.Cabal qualified as Cabal
import Kuy.CodeGen.Unit
import Kuy.Discovery
import Kuy.Driver.Error (Error)
import Kuy.Driver.Error qualified as Error
import Kuy.Driver.Query
import Kuy.Prelude
import Kuy.Store.Artefact
import Kuy.Store.Cache
import Kuy.Store.Fingerprint
import Kuy.Store.Manifest
import Network.HTTP.Client qualified as Client
import Rock
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
    StoreManifest ->
      nonInput $ do
        info <- fetch BuildInfo
        seen <- Directory.doesPathExist info.manifest

        (manifest, errors) <-
          if seen
            then parseManifest <$> fetch (FileBytes info.manifest)
            else pure mempty

        manifestVar <- IORef.newIORef manifest

        pure (manifestVar, map (Error.Parse info.manifest) errors)
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
          manifestVar <- fetch StoreManifest

          artefact <- MaybeT (lookupArtefact (info.artefact </> name))
          validate <- isKnownArtefact artefact <$> IORef.readIORef manifestVar
          artefact <$ guard validate
    --
    RemoteArtefact url name ->
      input $ do
        info <- fetch BuildInfo
        artefact <- downloadArtefact manager url (info.artefact </> name)
        manifestVar <- fetch StoreManifest

        liftIO . Atomics.atomicModifyIORefCAS_ manifestVar $
          insertArtefact artefact

        pure artefact
    --
    DiscoveryIndex ->
      nonInput $ do
        let path = "directory-list.json"

        fetchArtefactJSON @DirectoryList directoryListURL path <&> \case
          Left err ->
            ( mempty,
              [Error.Parse path err]
            )
          Right list ->
            ( newDirectoryIndex list.items,
              []
            )
    --
    DiscoveryDescription name mversion ->
      nonInput $ do
        index <- fetch DiscoveryIndex

        case findPreferredVersion name mversion index of
          Nothing ->
            pure
              ( Nothing,
                [ Error.NotFound $
                    unwords
                      [ "Missing service description for",
                        Text.unpack name.text,
                        show mversion
                      ]
                ]
              )
          Just item -> do
            let url = item.discoveryRestUrl
                path =
                  "services"
                    </> Text.unpack item.name.text
                    </> Text.unpack item.version.text
                    <.> "json"

            fetchArtefactJSON @Description url path <&> \case
              Left err ->
                ( Nothing,
                  [Error.Parse url err]
                )
              Right description ->
                ( Just description,
                  []
                )
    --
    PackageDefaults ->
      nonInput $ do
        let path = "gen/kuy.cabal"

        fetchCachedFile path Cabal.parsePackageDescription <&> \case
          Left errs ->
            ( Cabal.emptyPackageDescription,
              map (Error.Parse path) (toList errs)
            )
          Right description ->
            ( description,
              []
            )
    --
    CompiledUnit self unit ->
      nonInput $
        pure $
          compileUnit self unit & \case
            Left err ->
              ( mempty,
                [Error.Syntax err]
              )
            Right declarations ->
              ( declarations,
                []
              )

-- Tracing

input :: Functor m => m a -> m ((a, TaskKind), [Error])
input = fmap ((,[]) . (,Input))

nonInput :: Functor m => m (a, [Error]) -> m ((a, TaskKind), [Error])
nonInput = fmap (first (,NonInput))

noError :: Functor m => m a -> m ((a, TaskKind), [Error])
noError = fmap ((,[]) . (,NonInput))

-- Caching

fetchArtefactJSON ::
  forall a.
  ( Structured a,
    Persist a,
    FromJSON a
  ) =>
  String ->
  FilePath ->
  Task Query (Either String a)
fetchArtefactJSON url path = do
  mstored <- fetch (StoredArtefact path)
  artefact <- maybe (fetch (RemoteArtefact url path)) pure mstored

  let cacheKey = newCacheKey @a artefact.hash
      decodeBytes = Aeson.eitherDecodeStrict'

  fetchCachedBytes cacheKey decodeBytes (ArtefactBytes artefact)

fetchCachedFile ::
  forall a e.
  ( Structured a,
    Persist a
  ) =>
  FilePath ->
  (ByteString -> Either e a) ->
  Task Query (Either e a)
fetchCachedFile path decodeBytes = do
  cacheKey <- newCacheKey @a <$> fetch (FileHash path)

  fetchCachedBytes cacheKey decodeBytes (FileBytes path)

fetchCachedBytes ::
  forall a e.
  ( Structured a,
    Persist a
  ) =>
  CacheKey a ->
  (ByteString -> Either e a) ->
  Query ByteString ->
  Task Query (Either e a)
fetchCachedBytes cacheKey decodeBytes queryBytes =
  fetch (CachedBytes cacheKey) >>= \case
    Right item ->
      pure (Right item)
    --
    Left writer -> do
      info <- fetch BuildInfo
      bytes <- fetch queryBytes

      bitraverse pure (\item -> item <$ writeCache info.cache writer item) $
        decodeBytes bytes
