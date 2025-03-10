module Gen.IO where

import Control.Error
import Control.Monad
import Control.Monad.Except
import Control.Monad.IO.Class
import Data.Bifunctor (first)
import Data.ByteString (ByteString)
import Data.Text qualified as Text
import Data.Text.Lazy qualified as LText
import Data.Text.Lazy.Builder (toLazyText)
import Data.Text.Lazy.IO qualified as LText
import Filesystem qualified as FS
import Filesystem.Path.CurrentOS
import Gen.Formatting
import Gen.Types
import System.IO
import Text.EDE qualified as EDE
import UnexceptionalIO qualified as UIO

run :: ExceptT Error IO a -> IO a
run = runScript . fmapLT (Text.pack . LText.unpack)

io :: (MonadIO m) => IO a -> ExceptT Error m a
io = ExceptT . fmap (first (LText.pack . show)) . liftIO . UIO.run . UIO.fromIO

title :: (MonadIO m) => Format (ExceptT Error m ()) a -> a
title m = runFormat m (io . LText.putStrLn . toLazyText)

say :: (MonadIO m) => Format (ExceptT Error m ()) a -> a
say = title . (" -> " %)

done :: (MonadIO m) => ExceptT Error m ()
done = title ""

isFile :: (MonadIO m) => Path -> ExceptT Error m Bool
isFile = io . FS.isFile

readBSFile :: (MonadIO m) => Path -> ExceptT Error m ByteString
readBSFile f = do
  p <- isFile f
  if p
    then say ("Reading " % path) f >> io (FS.readFile f)
    else failure ("Missing " % path) f

writeLTFile :: (MonadIO m) => Path -> LText.Text -> ExceptT Error m ()
writeLTFile f t = do
  say ("Writing " % path) f
  io . FS.withFile f FS.WriteMode $ \h -> do
    hSetEncoding h utf8
    LText.hPutStr h t

touchFile :: (MonadIO m) => Path -> ExceptT Error m ()
touchFile f = do
  p <- isFile f
  unless p $
    writeLTFile f mempty

writeOrTouch :: (MonadIO m) => Path -> Maybe LText.Text -> ExceptT Error m ()
writeOrTouch x = maybe (touchFile x) (writeLTFile x)

createDir :: (MonadIO m) => Path -> ExceptT Error m ()
createDir d = do
  p <- io (FS.isDirectory d)
  unless p $ do
    say ("Creating " % path) d
    io (FS.createTree d)

copyDir :: (MonadIO m) => Path -> Path -> ExceptT Error m ()
copyDir src dst = io (FS.listDirectory src >>= mapM_ copy)
  where
    copy f = do
      let p = dst </> filename f
      fprint (" -> Copying " % path % " to " % path % "\n") f (directory p)
      FS.copyFile f p

readTemplate ::
  (MonadIO m) =>
  Path ->
  Path ->
  ExceptT Error m EDE.Template
readTemplate d f =
  liftIO (EDE.eitherParseFile (encodeString (d </> f)))
    >>= either (throwError . LText.pack) return
