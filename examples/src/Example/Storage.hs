{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Example.Storage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Example.Storage where

import Control.Lens           ((&), (.~), (<&>), (?~))
import Data.Text              (Text)
import Network.Google
import Network.Google.Storage
import System.IO              (stdout)

import qualified Data.Text as Text

-- This will calculate the MIME type (and therefore Content-Type) of
-- the stored object based on the file extension.
--
-- You can explicitly set the desired MIME type by using:
-- {-
-- import Network.HTTP.Media ((//))
----
-- b <- sourceBody f <&> bodyContentType .~ "application" // "json"
-- ...
--
-- -}
example :: Text -> FilePath -> IO ()
example bkt f = do
    l <- newLogger Debug stdout
    e <- newEnv <&> (envLogger .~ l) . (envScopes .~ storageReadWriteScope)
    b <- sourceBody f

    let key = Text.pack f

    runResourceT . runGoogle e $ do
        _ <- upload (objectsInsert bkt object' & oiName ?~ key) b
        _ <- download (objectsGet bkt key)
        pure ()
