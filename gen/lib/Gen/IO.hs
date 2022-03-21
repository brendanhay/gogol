module Gen.IO where

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson.Types
import qualified Data.ByteString as ByteString
import qualified Data.Text.Lazy.Builder as Text.Builder
import qualified Data.Text.Lazy.IO as Text.Lazy.IO
import Gen.Formatting
import Gen.Prelude
import qualified System.Directory as Directory
import qualified System.FilePath as FilePath
import qualified System.IO as IO
import qualified Text.EDE as EDE

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
readByteString f =
  liftIO $ do
    exists <- Directory.doesFileExist f

    if exists
      then say ("Reading " % string) f >> ByteString.readFile f
      else error (formatToString ("Missing " % string) f)

writeByteString :: MonadIO m => FilePath -> ByteString -> m ()
writeByteString f bs =
  liftIO $ do
    say ("Writing " % string) f

    IO.withFile f IO.WriteMode $ \h -> do
      IO.hSetEncoding h IO.utf8
      ByteString.hPutStr h bs

touchFile :: MonadIO m => FilePath -> m ()
touchFile f =
  liftIO $ do
    exists <- Directory.doesPathExist f

    unless exists $
      writeByteString f mempty

writeOrTouch :: MonadIO m => FilePath -> Maybe ByteString -> m ()
writeOrTouch x = maybe (touchFile x) (writeByteString x)

createDir :: MonadIO m => FilePath -> m ()
createDir d =
  liftIO $ do
    exists <- Directory.doesPathExist d

    unless exists $ do
      say ("Creating " % string) d
      Directory.createDirectoryIfMissing True d

copyDir :: MonadIO m => FilePath -> FilePath -> m ()
copyDir src dst =
  liftIO (Directory.listDirectory src >>= mapM_ copy)
  where
    copy f = do
      let p = dst </> f

      fprint (" -> Copying " % string % " to " % string % "\n") f (FilePath.takeDirectory p)

      Directory.copyFile f p

readTemplate :: MonadIO m => FilePath -> FilePath -> m EDE.Template
readTemplate dir file =
  liftIO $
    EDE.eitherParseFile (dir </> file)
      >>= either (error . fromString) pure
