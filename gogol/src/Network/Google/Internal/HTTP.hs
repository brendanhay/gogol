{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RecordWildCards  #-}

-- |
-- Module      : Network.Google.Internal.HTTP
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.HTTP where

import           Control.Applicative
import           Control.Lens
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Control.Monad.Morph
import           Data.Bifunctor
-- import           Control.Monad.State.Lazy
import           Control.Monad.Trans.Resource
import           Control.Retry
import           Data.Conduit
import           Data.Default.Class
import           Data.Monoid
import qualified Data.Text                     as Text
import qualified Data.Text.Encoding            as Text
import qualified Data.Text.Lazy                as LText
import qualified Data.Text.Lazy.Builder        as Build
import           GHC.Exts                      (toList)
import           Network.Google.Auth
import           Network.Google.Env            (Env (..))
import           Network.Google.Internal.Types
import           Network.Google.Types
import           Network.HTTP.Conduit
import qualified Network.HTTP.Conduit          as Client
import           Network.HTTP.Media
import           Network.HTTP.Types

perform :: (MonadCatch m, MonadResource m, GoogleRequest a)
        => Env
        -> a
        -> m (Either Error (Rs a))
perform Env{..} x = catches go handlers
  where
    go = liftResourceT $ do
        rs <- http rq _envManager
        r  <- _cliResponse (responseBody rs)
        pure $! case r of
            Right y -> Right y
            Left  e -> Left . SerializeError $ SerializeError'
                { _serializeId      = _svcId
                , _serializeHeaders = responseHeaders rs
                , _serializeStatus  = responseStatus rs
                , _serializeMessage = e
                }

    rq = def
        { Client.host            = _svcHost
        , Client.port            = _svcPort
        , Client.secure          = _svcSecure
        , Client.checkStatus     = status
        , Client.responseTimeout = timeout
        , Client.method          = _cliMethod
        , Client.path            = path
        , Client.queryString     = renderQuery True (toList _rqQuery)
        , Client.requestHeaders  = accept (content (toList _rqHeaders))
        , Client.requestBody     = body
        }

    accept
         | Just t <- _cliAccept   = ((hAccept, renderHeader t) :)
         | otherwise              = id

    content
         | Just (t, _) <- _rqBody = ((hContentType, renderHeader t) :)
         | otherwise              = id

    body | Just (_, b) <- _rqBody = b
         | otherwise              = mempty

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

    timeout = microseconds <$> (_envTimeout <|> _svcTimeout)

    Request {..} = _cliRequest
    Service {..} = _cliService
    Client  {..} = requestClient x

    handlers =
        [ Handler $ err
        , Handler $ err . TransportError
        ]
      where
        err e = return (Left e)
