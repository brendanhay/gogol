module Gen.IO where

import Data.Aeson qualified as Aeson
import Data.Aeson.Types qualified as Aeson.Types
import Data.ByteString qualified as ByteString
import Data.Text.Encoding qualified as Text.Encoding
import Data.Text.Lazy qualified as Text.Lazy
import Data.Text.Lazy.Builder qualified as Text.Builder
import Data.Text.Lazy.IO qualified as Text.Lazy.IO
import Gen.Formatting
import Gen.Prelude
import System.Directory qualified as Directory
import System.FilePath qualified as FilePath
import System.IO qualified as IO
import Text.EDE qualified as EDE

title :: MonadIO m => Format (m ()) a -> a
title m = runFormat m (liftIO . Text.Lazy.IO.putStrLn . Text.Builder.toLazyText)

say :: MonadIO m => Format (m ()) a -> a
say = title . (" -> " %)

done :: MonadIO m => m ()
done = title ""

loadObject :: MonadIO m => FilePath -> m Aeson.Object
loadObject = readByteString >=> either error pure . Aeson.eitherDecodeStrict'

parseObject :: (MonadIO m, FromJSON a) => Aeson.Object -> m a
parseObject = either error pure . Aeson.Types.parseEither Aeson.parseJSON . Aeson.toJSON

readByteString :: MonadIO m => FilePath -> m ByteString
readByteString path =
  liftIO $ do
    exists <- Directory.doesFileExist path

    if exists
      then say ("Reading " % string) path >> ByteString.readFile path
      else error (formatToString ("Missing " % string) path)

writeByteString :: MonadIO m => FilePath -> ByteString -> m ()
writeByteString path bs =
  liftIO $ do
    createDir (FilePath.takeDirectory path)

    say ("Writing " % string) path

    IO.withFile path IO.WriteMode $ \handle -> do
      IO.hSetEncoding handle IO.utf8
      ByteString.hPutStr handle bs

touchFile :: MonadIO m => FilePath -> m ()
touchFile path =
  liftIO $ do
    exists <- Directory.doesPathExist path

    unless exists $
      writeByteString path mempty

writeOrTouch :: MonadIO m => FilePath -> Maybe ByteString -> m ()
writeOrTouch x = maybe (touchFile x) (writeByteString x)

createDir :: MonadIO m => FilePath -> m ()
createDir dir =
  liftIO $ do
    exists <- Directory.doesPathExist dir

    unless exists $
      Directory.createDirectoryIfMissing True dir

copyDir :: MonadIO m => FilePath -> FilePath -> m ()
copyDir src dst =
  liftIO (Directory.listDirectory src >>= mapM_ copy)
  where
    copy path = do
      let file = dst </> path

      fprint (" -> Copying " % string % " to " % string % "\n") path $
        FilePath.takeDirectory file

      Directory.copyFile path file

writeTemplate :: MonadIO m => FilePath -> EDE.Template -> HashMap Text Aeson.Value -> m ()
writeTemplate path template env = do
  case EDE.eitherRender template env of
    Left err -> error err
    Right ok ->
      writeByteString path
        . Text.Encoding.encodeUtf8
        . Text.Lazy.toStrict
        $ ok

readTemplate :: MonadIO m => FilePath -> FilePath -> m EDE.Template
readTemplate dir file =
  liftIO $
    EDE.eitherParseFile (dir </> file)
      >>= either (error . fromString) pure
