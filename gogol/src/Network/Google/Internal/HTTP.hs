{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}

-- |
-- Module      : Network.Google.Internal.HTTP
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.HTTP where

import Control.Lens                 ((%~), (&))
import Control.Monad.Catch
import Control.Monad.IO.Class       (MonadIO)
import Control.Monad.Trans.Resource (MonadResource (..))

import Data.Conduit (($$+-))
import Data.Monoid  (Dual (..), Endo (..), (<>))

import GHC.Exts (toList)

import Network.Google.Auth               (AllowScopes, authorize)
import Network.Google.Env                (Env (..))
import Network.Google.Internal.Logger    (logDebug)
import Network.Google.Internal.Multipart
import Network.Google.Types
import Network.HTTP.Conduit
import Network.HTTP.Media                (RenderHeader (..))
import Network.HTTP.Types

import qualified Data.ByteString.Lazy        as LBS
import qualified Data.Conduit.List           as Conduit
import qualified Data.Text.Encoding          as Text
import qualified Data.Text.Lazy              as LText
import qualified Data.Text.Lazy.Builder      as Build
import qualified Network.HTTP.Client.Conduit as Client

-- FIXME: "mediaType" param also comes/calculated from the request body?
--
-- Resumable endpoints - Not supported to begin with, need to figure
-- out how to return session id etc.
--   - Assume initially that every service supports multipart upload.
--
-- "resumable" or "multipart" needs to go into the "uploadType" param

perform :: (MonadCatch m, MonadResource m, AllowScopes s, GoogleRequest a)
        => Env s
        -> a
        -> m (Either Error (Rs a))
perform Env{..} x = catches go handlers
  where
    Request       {..} = _cliRequest
    ServiceConfig {..} = _cliService
    Client        {..} = requestClient x
        & clientService %~ appEndo (getDual _envOverride)

    go = liftResourceT $ do
        (ct, b) <- getContent _rqBody
        rq      <- authorize (request ct b) _envStore _envLogger _envManager

        logDebug _envLogger rq -- debug:ClientRequest

        rs      <- http rq _envManager

        logDebug _envLogger rs -- debug:ClientResponse

        statusCheck rs

        r       <- _cliResponse (responseBody rs)

        pure $! case r of
            Right y       -> Right y
            Left  (e, bs) -> Left . SerializeError $ SerializeError'
                { _serializeId      = _svcId
                , _serializeHeaders = responseHeaders rs
                , _serializeStatus  = responseStatus rs
                , _serializeMessage = e
                , _serializeBody    = Just bs
                }

    request ct b = Client.defaultRequest
        { Client.host            = _svcHost
        , Client.port            = _svcPort
        , Client.secure          = _svcSecure
        , Client.responseTimeout = timeout
        , Client.method          = _cliMethod
        , Client.path            = path
        , Client.queryString     = renderQuery True (toList _rqQuery)
        , Client.requestHeaders  = accept (ct (toList _rqHeaders))
        , Client.requestBody     = b
        }

    accept
         | Just t <- _cliAccept   = ((hAccept, renderHeader t) :)
         | otherwise              = id

    path = Text.encodeUtf8
         . LText.toStrict
         $ Build.toLazyText (_svcPath <> _rqPath)

    statusCheck rs
        | _cliCheck (responseStatus rs) = pure ()
        | otherwise                     = do
                b <- sinkLBS (responseBody rs)
                throwM . toException . ServiceError $ ServiceError'
                    { _serviceId      = _svcId
                    , _serviceStatus  = responseStatus rs
                    , _serviceHeaders = responseHeaders rs
                    , _serviceBody    = Just b
                    }

    timeout =
        maybe Client.responseTimeoutNone
              (Client.responseTimeoutMicro . microseconds)
              _svcTimeout

    handlers =
        [ Handler $ err
        , Handler $ err . TransportError
        ]
      where
        err e = return (Left e)

getContent :: MonadIO m
           => [Body]
           -> m ([Header] -> [Header], RequestBody)
getContent []         = pure (id, mempty)
getContent [Body t s] = pure (((hContentType, renderHeader t) :), s)
getContent bs         = do
    b <- genBoundary
    pure ( (multipartHeader b :)
         , renderParts b bs
         )
