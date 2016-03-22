{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Example.Storage
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Example.Storage where

import           Control.Lens
import           Data.Text              (Text)
import qualified Data.Text              as Text
import           Network.Google
import           Network.Google.Storage
import           System.IO

example :: Text -> FilePath -> IO ()
example bkt f = do
    l <- newLogger Debug stdout
    e <- newEnv <&> (envLogger .~ l) . allow devstorageReadWriteScope
    b <- sourceBody f

    let key = Text.pack f
        obj = object' & objContentType ?~ "application/octet-stream"

    runResourceT . runGoogle e $ do
        _ <- upload   (objectsInsert bkt obj & oiName ?~ key) b
        _ <- download (objectsGet bkt key)
        pure ()
