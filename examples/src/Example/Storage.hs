{-# LANGUAGE FlexibleContexts    #-}
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

import Control.Lens                 ((&), (.~), (<&>), (?~))
import Control.Monad.Trans.Resource (liftResourceT, runResourceT)

import Data.Conduit (runConduit, (.|))
import Data.Text    (Text)

import System.IO (stdout)

import qualified Data.Conduit.Binary    as Conduit
import qualified Data.Text              as Text
import qualified Network.Google         as Google
import qualified Network.Google.Storage as Storage


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
--example :: Text -> FilePath -> IO ()
example bucket input output = do
    -- Setup a logger to emit 'Debug' (or higher) log statements to 'stdout':
    lgr  <- Google.newLogger Google.Debug stdout

    -- Create a new environment which will discover the appropriate
    -- AuthN/AuthZ credentials, and explicitly state the OAuth scopes
    -- we will be using below, which will be enforced by the compiler:
    env  <- Google.newEnv <&>
          (Google.envLogger .~ lgr)
        . (Google.envScopes .~ Storage.storageReadWriteScope)

    -- Create a streaming 'Conduit' source of the input file contents:
    body <- Google.sourceBody input

    let key = Text.pack input

    runResourceT . Google.runGoogle env $ do
        -- Upload the 'input' file contents to the specified bucket, using
        -- the file path as the key:
        _     <- Google.upload (Storage.objectsInsert bucket Storage.object' & Storage.oiName ?~ key) body

        -- Download from the bucket/key and create a source of the HTTP stream:
        stream <- Google.download (Storage.objectsGet bucket key)

        -- 'Conduit' actions such as '.|' need to be lifted into the 'Google'
        -- monad using 'liftResourceT', this will stream the received bytes
        -- into the 'output' file:
        liftResourceT (runConduit (stream .| Conduit.sinkFile output))
