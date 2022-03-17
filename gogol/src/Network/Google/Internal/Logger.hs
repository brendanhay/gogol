{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

-- |
-- Module      : Network.Google.Internal.Logger
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Types and functions for constructing loggers and emitting log messages.
module Network.Google.Internal.Logger
    (
    -- * Constructing a Logger
      Logger
    , newLogger

    -- * Levels
    , LogLevel (..)
    , logError
    , logInfo
    , logDebug
    , logTrace

    -- * Building Messages
    , ToLog    (..)
    , buildLines
    ) where

import           Control.Monad                (when)
import           Control.Monad.IO.Class       (MonadIO (..))
import           Data.ByteString              (ByteString)
import qualified Data.ByteString              as BS
import           Data.ByteString.Builder      (Builder)
import qualified Data.ByteString.Char8        as BS8
import qualified Data.ByteString.Lazy         as LBS
import qualified Data.ByteString.Builder as Build
import           Data.CaseInsensitive         (CI)
import qualified Data.CaseInsensitive         as CI
import           Data.Int                     (Int16, Int8)
import           Data.List                    (intersperse)
import qualified Data.Text.Encoding           as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Encoding      as LText
import           Data.Word                    (Word16)
import           Network.Google.Prelude       hiding (Request)
import           Network.HTTP.Conduit
import           Network.HTTP.Types
import           Numeric                      (showFFloat)
import           System.IO

-- | A function threaded through various request and serialisation routines
-- to log informational and debug messages.
type Logger = LogLevel -> Builder -> IO ()

data LogLevel
    = Info  -- ^ Info messages supplied by the user - this level is not emitted by the library.
    | Error -- ^ Error messages only.
    | Debug -- ^ Useful debug information + info + error levels.
    | Trace -- ^ Includes potentially credentials metadata, and non-streaming response bodies.
      deriving (Eq, Ord, Enum, Show, Data, Typeable)

-- | This is a primitive logger which can be used to log builds to a 'Handle'.
--
-- /Note:/ A more sophisticated logging library such as
-- <http://hackage.haskell.org/package/tinylog tinylog> or
-- <http://hackage.haskell.org/package/FastLogger fast-logger>
-- should be used in production code.
newLogger :: MonadIO m => LogLevel -> Handle -> m Logger
newLogger x hd = liftIO $ do
    hSetBinaryMode hd True
    hSetBuffering  hd LineBuffering
    return $ \y b ->
        when (x >= y) $
            Build.hPutBuilder hd (b <> "\n")

logError, logInfo, logDebug, logTrace
 :: (MonadIO m, ToLog a) => Logger -> a -> m ()
logError f = liftIO . f Error . build
logInfo  f = liftIO . f Info  . build
logDebug f = liftIO . f Debug . build
logTrace f = liftIO . f Trace . build

class ToLog a where
    -- | Convert a value to a loggable builder.
    build :: a -> Builder

instance ToLog Builder        where build = id
instance ToLog LBS.ByteString where build = Build.lazyByteString
instance ToLog ByteString     where build = Build.byteString
instance ToLog Int            where build = Build.intDec
instance ToLog Int8           where build = Build.int8Dec
instance ToLog Int16          where build = Build.int16Dec
instance ToLog Int32          where build = Build.int32Dec
instance ToLog Int64          where build = Build.int64Dec
instance ToLog Integer        where build = Build.integerDec
instance ToLog Word           where build = Build.wordDec
instance ToLog Word8          where build = Build.word8Dec
instance ToLog Word16         where build = Build.word16Dec
instance ToLog Word32         where build = Build.word32Dec
instance ToLog Word64         where build = Build.word64Dec
instance ToLog UTCTime        where build = Build.stringUtf8 . show
instance ToLog Float          where build = build . ($ "") . showFFloat Nothing
instance ToLog Double         where build = build . ($ "") . showFFloat Nothing
instance ToLog Text           where build = build . Text.encodeUtf8
instance ToLog LText.Text     where build = build . LText.encodeUtf8
instance ToLog Char           where build = build . BS8.singleton
instance ToLog [Char]         where build = build . BS8.pack
instance ToLog StdMethod      where build = build . renderStdMethod

-- | Intercalate a list of 'Builder's with newlines.
buildLines :: [Builder] -> Builder
buildLines = mconcat . intersperse "\n"

instance ToLog a => ToLog (CI a) where
    build = build . CI.foldedCase

instance ToLog a => ToLog (Maybe a) where
    build Nothing  = "Nothing"
    build (Just x) = "Just " <> build x

instance ToLog Bool where
    build True  = "True"
    build False = "False"

instance ToLog Status where
    build x = build (statusCode x) <> " " <> build (statusMessage x)

instance ToLog [Header] where
    build = mconcat
        . intersperse "; "
        . map (\(k, v) -> build k <> ": " <> build v)

instance ToLog HttpVersion where
    build HttpVersion{..} =
           "HTTP/"
        <> build httpMajor
        <> build '.'
        <> build httpMinor

instance ToLog RequestBody where
    build = \case
        RequestBodyBuilder     n _ -> " <msger:"   <> build n <> ">"
        RequestBodyStream      n _ -> " <stream:"  <> build n <> ">"

        RequestBodyLBS lbs
            | n <= 4096            -> build lbs
            | otherwise            -> " <lazy:" <> build n <> ">"
          where
            n = LBS.length lbs

        RequestBodyBS bs
            | n <= 4096            -> build bs
            | otherwise            -> " <strict:" <> build n <> ">"
          where
            n = BS.length bs

        _                          -> " <chunked>"

instance ToLog HttpException where
    build x = "[HttpException] {\n" <> build (show x) <> "\n}"

instance ToLog Request where
    build x = buildLines
        [  "[Client Request] {"
        ,  "  host      = " <> build (host x) <> ":" <> build (port x)
        ,  "  secure    = " <> build (secure x)
        ,  "  method    = " <> build (method x)
        ,  "  timeout   = " <> build (show (responseTimeout x))
        ,  "  redirects = " <> build (redirectCount x)
        ,  "  path      = " <> build (path            x)
        ,  "  query     = " <> build (queryString     x)
        ,  "  headers   = " <> build (requestHeaders  x)
        ,  "  body      = " <> build (requestBody     x)
        ,  "}"
        ]

instance ToLog (Response a) where
    build x = buildLines
        [ "[Client Response] {"
        , "  status  = " <> build (responseStatus  x)
        , "  headers = " <> build (responseHeaders x)
        , "}"
        ]
