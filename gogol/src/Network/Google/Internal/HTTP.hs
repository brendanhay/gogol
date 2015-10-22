{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}

-- |
-- Module      : Network.Google.Internal.HTTP
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.HTTP where


import           Control.Lens
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Control.Monad.Trans.Resource
import           Data.Default.Class
import           Data.Monoid
import qualified Data.Text.Encoding                as Text
import qualified Data.Text.Lazy                    as LText
import qualified Data.Text.Lazy.Builder            as Build
import           GHC.Exts                          (toList)
import           Network.Google.Auth
import           Network.Google.Env                (Env (..))
import           Network.Google.Internal.Logger
import           Network.Google.Internal.Multipart
import           Network.Google.Types
import qualified Network.HTTP.Client.Conduit       as Client
import           Network.HTTP.Conduit
import           Network.HTTP.Media
import           Network.HTTP.Types

-- FIXME: "mediaType" param also comes/calculated from the request body?
--
-- Resumable endpoints - Not supported to begin with, need to figure
-- out how to return session id etc.
--   - Assume initially that every service supports multipart upload.
--
-- "resumable" or "multipart" needs to go into the "uploadType" param

perform :: (MonadCatch m, MonadResource m, GoogleRequest a)
        => Env
        -> a
        -> m (Either Error (Rs a))
perform Env{..} x = catches go handlers
  where
    Request {..} = _cliRequest
    Service {..} = _cliService

    Client  {..} = requestClient x
        & clientService %~ appEndo (getDual _envOverride)

    go = liftResourceT $ do
        (ct, b) <- getContent _rqBody
        rq      <- authorise _envLogger _envManager (request ct b) _envAuth

        logDebug _envLogger rq -- debug:ClientRequest

        rs      <- http rq _envManager

        logDebug _envLogger rs -- debug:ClientResponse

        r       <- _cliResponse (responseBody rs)

        pure $! case r of
            Right y -> Right y
            Left  e -> Left . SerializeError $ SerializeError'
                { _serializeId      = _svcId
                , _serializeHeaders = responseHeaders rs
                , _serializeStatus  = responseStatus rs
                , _serializeMessage = e
                }

    request ct b = def
        { Client.host            = _svcHost
        , Client.port            = _svcPort
        , Client.secure          = _svcSecure
        , Client.checkStatus     = status
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

    status s hs _
         | _cliCheck s = Nothing
         | otherwise   = Just . toException . ServiceError $ ServiceError'
             { _serviceId      = _svcId
             , _serviceStatus  = s
             , _serviceHeaders = hs
             , _serviceBody    = Nothing
             }

    timeout = microseconds <$> _svcTimeout

    handlers =
        [ Handler $ err
        , Handler $ err . TransportError
        ]
      where
        err e = return (Left e)

getContent :: MonadIO m
           => Maybe Payload
           -> m ([Header] -> [Header], RequestBody)
getContent = \case
    Nothing           -> pure (id, mempty)
    Just (Body t s)   -> pure
        ( ((hContentType, renderHeader t) :)
        , Client.requestBodySourceChunked s
        )
    Just (Related ps) -> do
        b <- genBoundary
        pure ( (multipartHeader b :)
             , renderParts b ps
             )
