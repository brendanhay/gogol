{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Example.Storage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Example.Storage where

import Control.Lens ((.~), (<&>), (?~))
import Control.Monad.Trans.Resource (liftResourceT)
import Data.Conduit (runConduit, (.|))
import qualified Data.Conduit.Binary as Conduit
import Data.Function ((&))
import Data.Generics.Labels ()
import Data.Proxy
import Data.Text
import qualified Data.Text as Text
import Gogol
import qualified Gogol.Storage as Storage
import System.IO (stdout)
import Prelude

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
example :: Text -> FilePath -> FilePath -> IO ()
example bucket input output = do
  -- Setup a logger to emit 'Debug' (or higher) log statements to 'stdout':
  lgr <- newLogger Debug stdout

  -- Create a new environment which will discover the appropriate
  -- AuthN/AuthZ credentials, and explicitly state the OAuth scopes
  -- we will be using below, which will be enforced by the compiler:
  env <- newEnv <&> (envLogger .~ lgr) . (envScopes .~ (Proxy :: Proxy '[Storage.Devstorage'ReadWrite]))

  -- Create a streaming 'Conduit' source of the input file contents:
  body <- sourceBody input

  let key = Text.pack input

  runResourceT $ do
    -- Upload the 'input' file contents to the specified bucket, using
    -- the file path as the key:
    _ <- upload env (Storage.newStorageObjectsInsert bucket (Storage.newObject & #name ?~ key)) body

    -- Download from the bucket/key and create a source of the HTTP stream:
    stream <- download env (Storage.newStorageObjectsGet bucket key)

    -- 'Conduit' actions such as '.|' need to be lifted into the 'Google'
    -- monad using 'liftResourceT', this will stream the received bytes
    -- into the 'output' file:
    liftResourceT (runConduit (stream .| Conduit.sinkFile output))
