module Kuy.Driver.Store.Artefact
  ( Artefact (hash, path),
    readArtefact,
    lookupArtefact,
    downloadArtefact,
  )
where

import Data.ByteString qualified as ByteString
import Data.Function qualified as Function
import Kuy.Driver.Store.Fingerprint
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import System.FilePath qualified as FilePath
import UnliftIO qualified
import UnliftIO.Directory qualified as Directory
import UnliftIO.Temporary qualified as Temporary

-- | An artefact key is proof the file (path) exists at that point in time,
-- with the supplied fingerprint.
data Artefact = Artefact
  { hash :: Fingerprint,
    path :: FilePath,
    name :: FilePath
  }
  deriving stock (Show, Ord, Eq, Generic)

instance Hashable Artefact where
  hashWithSalt salt k = salt `hashWithSalt` k.hash

readArtefact :: MonadIO m => Artefact -> m ByteString
readArtefact key = liftIO (ByteString.readFile key.path)

lookupArtefact :: MonadIO m => FilePath -> FilePath -> m (Maybe Artefact)
lookupArtefact store name =
  liftIO $ do
    let path = store </> "artefact" </> name

    exists <- Directory.doesPathExist path

    if not exists
      then pure Nothing
      else do
        hash <- fingerprintFile path
        pure $ Just Artefact {hash, path, name}

downloadArtefact ::
  MonadIO m =>
  Client.Manager ->
  FilePath ->
  String ->
  FilePath ->
  m Artefact
downloadArtefact manager store url name =
  liftIO $ do
    let path = store </> "artefact" </> name

    request <-
      Client.parseUrlThrow url <&> \initial ->
        initial
          { Client.requestHeaders =
              [ ("User-Agent", "gogol/haskell")
              ]
          }

    Temporary.withSystemTempFile "kuy.download" $ \temp handle -> do
      Client.withResponse request manager $ \response -> do
        Function.fix $ \loop -> do
          bytes <- Client.brRead (Client.responseBody response)

          unless (ByteString.null bytes) $
            ByteString.hPut handle bytes
              *> loop

      UnliftIO.hClose handle
        *> Directory.createDirectoryIfMissing True (FilePath.takeDirectory path)
        *> Directory.copyFile temp path

      hash <- fingerprintFile path

      pure Artefact {hash, path, name}
