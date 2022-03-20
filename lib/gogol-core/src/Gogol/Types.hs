-- |
-- Module      : Gogol.Types
-- Copyright   : (c) 2015-2022 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gogol.Types where

-- import Control.Exception.Lens (exception)
-- import Control.Lens
-- import Control.Monad.Catch
-- import Control.Monad.Trans.Resource

-- import Network.HTTP.Client (HttpException, RequestBody (..))

-- import Network.HTTP.Types hiding (Header)

import qualified Control.Monad.Trans.Except as Except
import qualified Data.Aeson as Aeson
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Char8 as ByteString.Char8
import qualified Data.ByteString.Lazy as ByteString.Lazy
import qualified Data.CaseInsensitive as CI
import qualified Data.DList as DList
import qualified Data.Text.Encoding as Text
import qualified Data.Text.Lazy.Builder as Text.Builder
import Gogol.Data.Body
import Gogol.Data.JSON
import Gogol.Prelude
import Network.HTTP.Client (BodyReader)
import qualified Network.HTTP.Client as Client
import qualified Network.HTTP.Client.MultipartFormData as Multipart
import Network.HTTP.Media (MediaType, (//), (/:))
import qualified Network.HTTP.Media as Media
import qualified Network.HTTP.Types as HTTP

-- -- | An OAuth2 scope.
-- newtype OAuthScope = OAuthScope Text
--   deriving stock (Show, Read, Eq, Ord, Generic)
--   deriving newtype
--     ( Hashable,
--       NFData,
--       IsString,
--       ToHttpApiData,
--       FromHttpApiData,
--       ToJSON,
--       FromJSON,
--       ToJSONKey,
--       FromJSONKey
--     )

-- -- | An OAuth2 access token.
-- newtype AccessToken = AccessToken Text
--   deriving stock (Show, Read, Eq, Ord, Generic)
--   deriving newtype
--     ( Hashable,
--       NFData,
--       IsString,
--       ToHttpApiData,
--       FromHttpApiData,
--       ToJSON,
--       FromJSON
--     )

-- -- | An OAuth2 refresh token.
-- newtype RefreshToken = RefreshToken Text
--   deriving stock (Show, Read, Eq, Ord, Generic)
--   deriving newtype
--     ( Hashable,
--       NFData,
--       IsString,
--       ToHttpApiData,
--       FromHttpApiData,
--       ToJSON,
--       FromJSON
--     )

-- -- | A client identifier.
-- newtype ClientId = ClientId Text
--   deriving stock (Show, Read, Eq, Ord, Generic)
--   deriving newtype
--     ( Hashable,
--       NFData,
--       IsString,
--       ToHttpApiData,
--       FromHttpApiData,
--       ToJSON,
--       FromJSON,
--       ToJSONKey,
--       FromJSONKey
--     )

-- | A service identifier.
newtype ServiceId = ServiceId Text
  deriving stock (Show, Read, Eq, Ord, Generic)
  deriving newtype
    ( Hashable,
      NFData,
      IsString,
      ToHttpApiData,
      FromHttpApiData,
      ToJSON,
      FromJSON,
      ToJSONKey,
      FromJSONKey
    )

-- -- | An opaque client secret.
-- newtype Secret = Secret Text
--   deriving stock (Eq, Ord, Generic)
--   deriving newtype
--     ( Hashable,
--       NFData,
--       IsString,
--       ToHttpApiData,
--       FromHttpApiData,
--       ToJSON,
--       FromJSON
--     )

-- instance Show Secret where
--   showsPrec _ = showString "Secret *****"

-- data MediaType
--   = Media
--   | Multipart
--   | Resumable

-- newtype MediaRequest a = MediaRequest
--   { downloadMeta :: a
--   }

-- data MediaUpload a = MediaUpload
--   { uploadMeta :: a,
--     uploadBody :: HTTP.RequestBody,
--     uploadType :: MediaType
--   }

-- _Coerce :: (Coercible a b, Coercible b a) => Iso' a b
-- _Coerce = iso coerce coerce

-- -- | Invalid Iso, exists for ease of composition with the current 'Lens . Iso'
-- -- chaining to hide internal types from the user.
-- _Default :: Monoid a => Iso' (Maybe a) a
-- _Default = iso f Just
--   where
--     f (Just x) = x
--     f Nothing = mempty

-- data SerializeError = SerializeError'
--   { serializeErrorId :: ServiceId,
--     serializeErrorMessage :: String,
--     serializeErrorResponse :: Client.Response ByteStringLazy
--   }
--   deriving stock (Show)

-- data ServiceError = ServiceError'
--   { serviceErrorId :: ServiceId,
--     serviceErrorStatus :: HTTP.Status,
--     serviceErrorResponse ::
--   }
--   deriving stock (Show)

-- | A general client error.
data Error
  = TransportError Client.HttpException
  | ServiceError ServiceId (Client.Response ByteStringLazy)
  | SerializeError ServiceId (Client.Response ByteStringLazy) String
  deriving stock (Show)

instance Exception Error

-- class AsError a where
--   -- | A general client error.
--   _Error :: Prism' a Error

--   {-# MINIMAL _Error #-}

--   -- | An error occured while communicating over HTTP with a remote service.
--   _TransportError :: Prism' a Client.HttpException

--   -- | A serialisation error occured when attempting to deserialise a response.
--   _SerializeError :: Prism' a SerializeError

--   -- | A service specific error returned by the remote service.
--   _ServiceError :: Prism' a ServiceError

--   _TransportError = _Error . _TransportError
--   _SerializeError = _Error . _SerializeError
--   _ServiceError = _Error . _ServiceError

-- instance AsError SomeException where
--   _Error = exception

-- instance AsError Error where
--   _Error = id

--   _TransportError = prism TransportError $ \case
--     TransportError e -> Right e
--     x -> Left x

--   _SerializeError = prism SerializeError $ \case
--     SerializeError e -> Right e
--     x -> Left x

--   _ServiceError = prism ServiceError $ \case
--     ServiceError e -> Right e
--     x -> Left x

data Service = Service
  { -- | A unique identifier for the service.
    -- This must be unique across all service descriptions and gogol libraries.
    serviceId :: ServiceId,
    -- | The remote host name, used for both the address to connect to and
    -- setting the host request header.
    serviceHost :: ByteString,
    -- | The remote port to connect to.
    --
    -- Defaults to @443@.
    servicePath :: Maybe Text,
    -- | A path prefix that is prepended to any sent HTTP request.
    --
    -- Defaults to @mempty@.
    servicePort :: Int,
    -- | Whether to use HTTPS/SSL.
    --
    -- Defaults to @True@.
    serviceSecure :: Bool,
    -- | Number of seconds to wait for a response.
    --
    -- Defaults to 70 seconds.
    serviceTimeout :: Maybe Micro
  }

newDefaultService :: ServiceId -> ByteString -> Service
newDefaultService sid host =
  Service
    { serviceId = sid,
      serviceHost = host,
      servicePath = Nothing,
      servicePort = 443,
      serviceSecure = True,
      serviceTimeout = Just 70
    }

-- | An intermediary request builder.
data Request a = Request
  { requestMethod :: HTTP.StdMethod,
    requestPath :: TextBuilder,
    requestQuery :: DList (Text, Maybe Text),
    requestAlt :: Maybe Text,
    requestUploadType :: Maybe Text,
    requestHeaders :: DList (HTTP.HeaderName, ByteString),
    requestBody :: Body
  }

-- | Specify how an google services request can be de/serialised.
class GoogleRequest a where
  -- | A disjoint set of possible OAuth2 scopes - _one_ of which is required to
  -- perform this request.
  type Scopes a :: [Symbol]

  -- | The successful, expected response associated with a request.
  type Response a :: Type

  -- | Construct a request builder from @a@.
  toRequest :: a -> Request a

  -- | Parse a 'Client.Response', potentially consuming the response body.
  parseResponse ::
    proxy a ->
    ServiceId ->
    Client.Response BodyReader ->
    IO (Either Error (Response a))

-- default parseResponse ::
--   FromJSON (Response a) =>
--   proxy a ->
--   ServiceId ->
--   Client.Response BodyReader ->
--   IO (Either Error (Response a))
-- parseResponse = parseJSONResponse

parseJSONResponse ::
  FromJSON (Response a) =>
  proxy a ->
  ServiceId ->
  Client.Response BodyReader ->
  IO (Either Error (Response a))
parseJSONResponse _proxy service response =
  Except.runExceptT $ do
    let status = Client.responseStatus response
        reader = Client.responseBody response

    body <- lift (ByteString.Lazy.fromChunks <$> Client.brConsume reader)

    unless (HTTP.statusIsSuccessful status) $
      Except.throwE (ServiceError service (body <$ response))

    case Aeson.eitherDecode' body of
      Left err -> Except.throwE (SerializeError service (body <$ response) err)
      Right ok -> pure ok

data SimpleRequest a = SimpleRequest
  { simpleRequest :: a,
    simpleMedia :: Multipart.Part
  }

toSimpleRequest :: GoogleRequest a => SimpleRequest a -> Request a
toSimpleRequest SimpleRequest {..} =
  undefined

-- rq { requestBody = toJSONSimpleBody
--    , requestUploadType = Just "simple"
--    }
-- where
--   body = requestBody rq
--   rq = toRequest simpleRequest

parseSimpleResponse ::
  ( SimpleRequest a ~ request,
    GoogleRequest request,
    FromJSON (Response request)
  ) =>
  proxy request ->
  ServiceId ->
  Client.Response BodyReader ->
  IO (Either Error (Response request))
parseSimpleResponse =
  undefined

data ResumableRequest a = ResumableRequest
  { resumableRequest :: a,
    -- | X-Upload-Content-Type. Set to the media MIME type of the upload data to be
    -- transferred in subsequent requests.
    resumableType :: Media.MediaType,
    -- | X-Upload-Content-Length. Set to the number of bytes of upload data to be
    -- transferred in subsequent requests. If the length is unknown at the time
    -- of this request, you can omit this header.
    resumableLength :: Maybe Int64
  }

toResumableRequest :: GoogleRequest a => ResumableRequest a -> Request a
toResumableRequest ResumableRequest {..} =
  undefined

--   rq { requestUploadType = "resumable",
--        requestHeaders =
--          requestHeaders rq
--           <> fromList [("X-Upload-Content-Type",  ), ("X-Upload-Content-Length", )]
--      }
-- where
--   rq = toRequest resumableRequest

parseResumableResponse ::
  ( ResumableRequest a ~ request,
    GoogleRequest request,
    Response request ~ Location
  ) =>
  proxy request ->
  ServiceId ->
  Client.Response body ->
  IO (Either Error Location)
parseResumableResponse =
  undefined

-- HTTP/1.1 200 OK
-- Location: https://www.googleapis.com/upload/bigquery/v2/projects/projectId/jobs?uploadType=resumable&upload_id=xa298sd_sdlkj2
-- Content-Length: 0

newtype MediaRequest a = MediaRequest
  { downloadRequest :: a
  }

toMediaRequest :: GoogleRequest a => MediaRequest a -> Request a
toMediaRequest MediaRequest {downloadRequest} =
  (toRequest downloadRequest)
    { requestAlt = Just "media"
    }

parseMediaResponse ::
  ( MediaRequest a ~ request,
    GoogleRequest request,
    Response request ~ BodyReader
  ) =>
  proxy request ->
  ServiceId ->
  Client.Response BodyReader ->
  IO (Either Error BodyReader)
parseMediaResponse _proxy service response =
  undefined
