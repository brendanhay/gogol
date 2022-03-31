{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module      : Gogol.Internal.HTTP
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Internal.HTTP where

import Control.Exception (Handler (..), catches, throwIO, toException)
import Control.Lens ((%~), (&))
import Control.Monad.IO.Class (MonadIO (..))
import Control.Monad.Trans.Resource (MonadResource (..), transResourceT)
import Data.Monoid (Dual (..), Endo (..))
import qualified Data.Text.Encoding as Text
import qualified Data.Text.Lazy as LText
import qualified Data.Text.Lazy.Builder as Build
import GHC.Exts (toList)
import Gogol.Auth (HasScopeFor, authorize)
import Gogol.Env (Env (..))
import Gogol.Internal.Logger (logDebug)
import Gogol.Internal.Multipart
import Gogol.Types
import qualified Network.HTTP.Client.Conduit as Client
import Network.HTTP.Conduit
import Network.HTTP.Media (RenderHeader (..))
import Network.HTTP.Types

-- FIXME: "mediaType" param also comes/calculated from the request body?
--
-- Resumable endpoints - Not supported to begin with, need to figure
-- out how to return session id etc.
--   - Assume initially that every service supports multipart upload.
--
-- "resumable" or "multipart" needs to go into the "uploadType" param

perform ::
  ( MonadResource m,
    HasScopeFor a scopes
  ) =>
  Env scopes ->
  a ->
  m (Either Error (Rs a))
perform Env {..} x =
  liftResourceT (transResourceT (`catches` handlers) go)
  where
    Request {..} = _cliRequest

    ServiceConfig {..} = _cliService

    GClient {..} =
      requestClient x
        & clientService %~ appEndo (getDual _envOverride)

    go = do
      (ct, b) <- getContent _rqBody
      rq <- authorize (request ct b) _envStore _envLogger _envManager

      logDebug _envLogger rq -- debug:ClientRequest
      rs <- http rq _envManager

      logDebug _envLogger rs -- debug:ClientResponse
      statusCheck rs

      r <- _cliResponse (responseBody rs)

      pure $! case r of
        Right y -> Right y
        Left (e, bs) ->
          Left . SerializeError $
            SerializeError'
              { _serializeId = _svcId,
                _serializeHeaders = responseHeaders rs,
                _serializeStatus = responseStatus rs,
                _serializeMessage = e,
                _serializeBody = Just bs
              }

    request ct b =
      Client.defaultRequest
        { Client.host = _svcHost,
          Client.port = _svcPort,
          Client.secure = _svcSecure,
          Client.responseTimeout = timeout,
          Client.method = _cliMethod,
          Client.path = path,
          Client.queryString = renderQuery True (toList _rqQuery),
          Client.requestHeaders = accept (ct (toList _rqHeaders)),
          Client.requestBody = b
        }

    accept
      | Just t <- _cliAccept = ((hAccept, renderHeader t) :)
      | otherwise = id

    path =
      Text.encodeUtf8
        . LText.toStrict
        $ Build.toLazyText (_svcPath <> _rqPath)

    statusCheck rs
      | _cliCheck (responseStatus rs) = pure ()
      | otherwise = do
        b <- sinkLBS (responseBody rs)

        liftIO . throwIO . toException . ServiceError $
          ServiceError'
            { _serviceId = _svcId,
              _serviceStatus = responseStatus rs,
              _serviceHeaders = responseHeaders rs,
              _serviceBody = Just b
            }

    timeout =
      maybe
        Client.responseTimeoutNone
        (Client.responseTimeoutMicro . microseconds)
        _svcTimeout

    handlers =
      [ Handler $ err,
        Handler $ err . TransportError
      ]
      where
        err e = return (Left e)

getContent ::
  MonadIO m =>
  [GBody] ->
  m ([Header] -> [Header], RequestBody)
getContent [] = pure (id, mempty)
getContent [GBody t s] = pure (((hContentType, renderHeader t) :), s)
getContent bs = do
  b <- genBoundary
  pure
    ( (multipartHeader b :),
      renderParts b bs
    )
