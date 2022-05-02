module Kuy.Build.Action where

import Data.Text.IO qualified as Text.IO
import Data.Aeson qualified as Aeson
import System.IO qualified as IO
import Data.ByteString qualified as ByteString
import Development.Shake
import Kuy.Build.Path
import Kuy.Build.Console
import Kuy.Prelude
import Network.HTTP.Client qualified as Client
import Network.HTTP.Client.TLS qualified as Client.TLS
import UnliftIO qualified
import UnliftIO.Directory qualified as Directory
import UnliftIO.Temporary qualified as Temporary

downloadURL :: String -> FilePath -> Action ()
downloadURL url path = do
  root <- tempRoot

  putAction "Download" url Nothing -- (Just path)

  traced_ "download-url" $ do
    manager <- Client.TLS.getGlobalManager
    request <- Client.parseUrlThrow url

    Directory.createDirectoryIfMissing True root

    Temporary.withTempFile root "kuy.download" $ \source handle -> do
      Client.withResponse request manager $ \response ->
        fix $ \loop -> do
          bytes <- Client.brRead (Client.responseBody response)

          unless (ByteString.null bytes) $
            ByteString.hPut handle bytes
              *> loop

      UnliftIO.hClose handle

      Directory.createDirectoryIfMissing True (takeDirectory path)
        *> Directory.copyFile source path

readFileJSON :: FromJSON a => FilePath -> Action a
readFileJSON path = do
  need [path]

  putAction "Read" path Nothing

  traced_ "json-read" (Aeson.eitherDecodeFileStrict path) >>= \case
    Left err -> putFailure err >> fail err
    Right ok -> pure ok

writeFileText :: FilePath -> Text -> Action ()
writeFileText path text =
  putAction "Write" path Nothing
    *> Directory.createDirectoryIfMissing True (takeDirectory path)
    *> liftIO writeFile

  where
    writeFile =
      UnliftIO.bracket openFile IO.hClose (`Text.IO.hPutStr` text)

    openFile = do
        handle <- IO.openFile path IO.WriteMode
        IO.hSetEncoding handle IO.utf8
        pure handle

createDirectory :: FilePath -> Action ()
createDirectory path =
  putAction "Create" path Nothing
    *> Directory.createDirectoryIfMissing True path

removeDirectory :: FilePath -> Action ()
removeDirectory path =
  putAction "Remove" path Nothing
    *> Directory.removeDirectoryRecursive path

copyFile :: FilePath -> FilePath -> Action ()
copyFile source target =
  putAction "Copy" source (Just target)
    *> copyFileChanged source target

copyFileUntracked :: FilePath -> FilePath -> Action ()
copyFileUntracked source target =
  putAction "Copy" source (Just target)
    *> Directory.createDirectoryIfMissing True (takeDirectory target)
    *> Directory.copyFile source target

traced_ :: String -> IO a -> Action a
traced_ name = quietly . traced name
