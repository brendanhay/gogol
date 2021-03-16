{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.IO
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.IO where

import           Control.Error
import           Control.Monad.Except

import           Data.Bifunctor            (first)
import           Data.ByteString           (ByteString)
import qualified Data.ByteString           as ByteString
import           Data.Text.Lazy.Builder    (toLazyText)

import           System.FilePath

import           Gen.Formatting
import           Gen.Types

import           System.IO

import qualified UnexceptionalIO           as UIO

import qualified Data.Text                 as Text
import qualified Data.Text.Lazy            as LText
import qualified Data.Text.Lazy.IO         as LText
import qualified System.Directory          as Dir
import qualified Text.EDE                  as EDE

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
isFile = io . Dir.doesFileExist

readBSFile :: MonadIO m => Path -> ExceptT Error m ByteString
readBSFile f = do
    p <- isFile f
    if p
        then say ("Reading "  % path) f >> io (ByteString.readFile f)
        else failure ("Missing " % path) f

writeLTFile :: MonadIO m => Path -> LText.Text -> ExceptT Error m ()
writeLTFile f t = do
    say ("Writing " % path) f
    io (LText.writeFile f t)

touchFile :: MonadIO m => Path -> ExceptT Error m ()
touchFile f = do
    p <- isFile f
    unless p $
        writeLTFile f mempty

writeOrTouch :: MonadIO m => Path -> Maybe LText.Text -> ExceptT Error m ()
writeOrTouch x = maybe (touchFile x) (writeLTFile x)

createDir :: MonadIO m => Path -> ExceptT Error m ()
createDir d = do
    p <- io (Dir.doesDirectoryExist d)
    unless p $ do
        say ("Creating " % path) d
        io (Dir.createDirectory d)

copyDir :: MonadIO m => Path -> Path -> ExceptT Error m ()
copyDir src dst = io (Dir.listDirectory src >>= mapM_ copy)
  where
    copy filename = do
        let f = src </> filename
            p = dst </> filename
        fprint (" -> Copying " % path % " to " % path % "\n") f (takeDirectory p)
        Dir.copyFile f p

readTemplate :: MonadIO m
             => Path
             -> Path
             -> ExceptT Error m EDE.Template
readTemplate d f =
        liftIO (EDE.eitherParseFile (d </> f))
    >>= either (throwError . LText.pack) return
