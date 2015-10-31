-- |
-- Module      : Network.Google.Internal.Body
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Network.Google.Internal.Body where

import           Control.Monad.IO.Class (MonadIO (..))
import           Data.Conduit.Binary    (sourceFile)
import           Network.HTTP.Conduit   (RequestBody, requestBodySource)
import           System.IO

-- | Convenience function for obtaining the size of a file.
getFileSize :: MonadIO m => FilePath -> m Integer
getFileSize f = liftIO (withBinaryFile f ReadMode hFileSize)

-- | Construct a 'RequestBody' from a 'FilePath'.
--
-- /See:/ 'ToBody'.
sourceBody :: MonadIO m => FilePath -> m RequestBody
sourceBody f = do
    n <- getFileSize f
    pure $ requestBodySource (fromIntegral n) (sourceFile f)
