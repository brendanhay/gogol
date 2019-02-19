{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Network.Google.Internal.Body
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.Body where

import           Control.Monad.IO.Class (MonadIO (..))
import           Data.Conduit.Binary    (sourceFile)
import           Data.Maybe             (fromMaybe)
import qualified Data.Text              as Text
import           Network.Google.Types   (GBody (..))
import           Network.HTTP.Conduit   (requestBodySource)
import           Network.HTTP.Media     (MediaType, parseAccept, (//))
import qualified Network.Mime           as MIME
import           System.IO

-- | Convenience function for obtaining the size of a file.
getFileSize :: MonadIO m => FilePath -> m Integer
getFileSize f = liftIO (withBinaryFile f ReadMode hFileSize)

-- | Attempt to calculate the MIME type based on file extension.
--
-- Defaults to @application/octet-stream@ if no file extension is recognised.
getMIMEType :: FilePath -> MediaType
getMIMEType =
      fromMaybe ("application" // "octet-stream")
    . parseAccept
    . MIME.defaultMimeLookup
    . Text.takeWhileEnd (/= '/')
    . Text.pack

-- | Construct a 'GBody' from a 'FilePath'.
--
-- This uses 'getMIMEType' to calculate the MIME type from the file extension,
-- you can use 'bodyContentType' to set a MIME type explicitly.
sourceBody :: MonadIO m => FilePath -> m GBody
sourceBody f = do
    n <- getFileSize f
    pure $ GBody
        (getMIMEType f)
        (requestBodySource (fromIntegral n) (sourceFile f))
