-- |
-- Module      : Gen.IO
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.IO where

import qualified Control.Monad.Except as Except
import qualified Data.Text as Text
import qualified Data.Text.Lazy as Text.Lazy
import qualified Data.Text.Lazy.Builder as TextBuilder
import qualified Data.Text.Lazy.IO as Text.Lazy.IO
import Gen.Prelude
import Gen.Types
import qualified System.IO as IO
import qualified Text.EDE as EDE

run :: ExceptT Error IO a -> IO a
run = runScript . fmapLT (Text.pack . LText.unpack)

io :: MonadIO m => IO a -> ExceptT Error m a
io = ExceptT . fmap (first (LText.pack . show)) . liftIO . UIO.run . UIO.fromIO

title :: MonadIO m => Format (ExceptT Error m ()) a -> a
title m = runFormat m (io . LText.putStrLn . toLazyText)

say :: MonadIO m => Format (ExceptT Error m ()) a -> a
say = title . (" -> " %)

done :: MonadIO m => ExceptT Error m ()
done = title ""

isFile :: MonadIO m => Path -> ExceptT Error m Bool
isFile = io . FS.isFile

readBSFile :: MonadIO m => Path -> ExceptT Error m ByteString
readBSFile f = do
  p <- isFile f
  if p
    then say ("Reading " % path) f >> io (FS.readFile f)
    else failure ("Missing " % path) f

writeLTFile :: MonadIO m => Path -> LText.Text -> ExceptT Error m ()
writeLTFile f t = do
  say ("Writing " % path) f
  io . FS.withFile f FS.WriteMode $ \h -> do
    hSetEncoding h utf8
    LText.hPutStr h t

touchFile :: MonadIO m => Path -> ExceptT Error m ()
touchFile f = do
  p <- isFile f
  unless p $
    writeLTFile f mempty

writeOrTouch :: MonadIO m => Path -> Maybe LText.Text -> ExceptT Error m ()
writeOrTouch x = maybe (touchFile x) (writeLTFile x)

createDir :: MonadIO m => Path -> ExceptT Error m ()
createDir d = do
  p <- io (FS.isDirectory d)
  unless p $ do
    say ("Creating " % path) d
    io (FS.createTree d)

copyDir :: MonadIO m => Path -> Path -> ExceptT Error m ()
copyDir src dst = io (FS.listDirectory src >>= mapM_ copy)
  where
    copy f = do
      let p = dst </> filename f
      fprint (" -> Copying " % path % " to " % path % "\n") f (directory p)
      FS.copyFile f p

readTemplate ::
  MonadIO m =>
  Path ->
  Path ->
  ExceptT Error m EDE.Template
readTemplate d f =
  liftIO (EDE.eitherParseFile (encodeString (d </> f)))
    >>= either (throwError . LText.pack) return
