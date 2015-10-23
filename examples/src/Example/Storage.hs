-- |
-- Module      : Example.Storage
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Example.Storage where

import           Control.Lens
import           Data.Conduit.Binary
import           Data.Text              (Text)
import qualified Data.Text              as Text
import           Data.Time.Clock.POSIX
import           Network.Google
import           Network.Google.Storage
import           System.IO

example :: Text -> FilePath -> IO ()
example b f = do
--    ts <- truncate <$> getPOSIXTime

    l  <- newLogger Debug stdout
    e  <- newEnv Discover <&> envLogger .~ l

    let key = Text.pack f
        src = requestBodySourceChunked (sourceFile f)
        obj = object' & objContentType ?~ "application/octet-stream"

    runResourceT . runGoogle e $ do
        _ <- upload (objectsInsert b obj & oiName ?~ key) src
        pure ()
