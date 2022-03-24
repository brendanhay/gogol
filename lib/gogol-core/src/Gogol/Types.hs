{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE UndecidableInstances #-}

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
import Data.Type.Bool (If)
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

-- newStorageService
--   & setParam "key" "foo"

-- -- Corresponds to a partial 'Client.Request', the global service related settings.
-- data Service version = Service
--   {
--     serviceBase :: Client.Request,
--     serviceVersion :: version,

--     -- -- | Whether to use HTTPS/SSL.
--     -- --
--     -- -- Defaults to @True@.
--     -- serviceSecure :: Bool,
--     -- -- | The remote host name, used for both the address to connect to and
--     -- -- setting the host request header.
--     -- serviceHost :: ByteString,
--     -- -- | The remote port to connect to.
--     -- --
--     -- -- Defaults to @443@.
--     -- servicePort :: Int,

--     -- --  A function to rewrite paths, applied to any HTTP 'Request' sent
--     -- -- with this 'serviceId'.
--     -- --
--     -- -- Please note this is not the same as a statically configurable
--     -- -- OpenAPI (et al.) @baseUrl@, as the Google Discovery service
--     -- -- descriptions all have varying behaviour around whether
--     -- -- @baseUrl@ is set to anything meaningful, or if it is empty and
--     -- -- instead baked into individual method paths. The @gogol@
--     -- -- generator prepends the service description\'s @baseUrl@ (if present)
--     -- -- to all method paths for consistency and provides thishook to modify
--     -- -- the complete path prior to sending.
--     -- --
--     -- -- Defaults to @id@.

--     -- -- | Number of seconds to wait for a response.
--     -- --
--     -- -- Defaults to 70 seconds.
--     -- serviceTimeout :: Maybe Client.RequestTimeout,
--   }

-- newService :: ByteString -> Service version a
-- newService serviceHost =
--   undefined
--   -- Service
--   --   { serviceSecure = True,
--   --     servicePort = 443,
--   --     serviceTimeout = Just 70,
--   --     ..
--   --   }

type Allows :: [Symbol] -> [Symbol] -> Constraint
type family Allows have need where
-- No scopes are required.
  Allows have '[] = ()
-- A single scope from need should be present in have.
  Allows (x ': xs) need = If (HasScope x need) (() :: Constraint) (Allows xs need)

-- We've got no scopes in have, this is an authorization error.
-- Allows '[] need = TypeError ...

type HasScope :: Symbol -> [Symbol] -> Bool

-- | Does the scope @have@ exist in the set of required scopes, @need@.
type family HasScope have need where
  HasScope x '[] = 'False
  HasScope x (x ': ys) = 'True
  HasScope x (y ': ys) = HasScope x ys

type Accepts :: Symbol -> [Symbol] -> Constraint

-- | Does the @media@ type exist in the set of acceptable types, @accepts@.
type family Accepts media accepts where
  Accepts x (x ': xs) = ()
  Accepts y (x ': xs) = Accepts y xs

type Service :: Symbol -> Type -> Type
data Service version a = Service
  { serviceRequest :: Client.Request,
    -- host
    -- port
    -- path
    -- headers
    -- query

    serviceParams :: a
  }

-- class IsRequest a where
--   -- | Construct a new request.
--   toRequest :: a -> Request a

data Path
  = Multipart TextBuilder
  | Resumable TextBuilder
  | Regular TextBuilder

-- Setting fields on the serviceRequest (Client.Request) directly via an instance,
-- is unsound as the instance impl can arbitrarily overrite the fields, without
-- properly extending them, ie. it's not a sensible semigroup/monoid.
--
-- Using a minimal RequestBuilder or something, see if we can define semigroup/monoid
-- and then use that as a starting point?
data Request a = Request
  { path :: Path,
    query :: DList (Text, Maybe Text)
    -- alt :: Alt,
    -- upload :: Maybe Upload,
    -- body :: DList Part
  }

-- data Fields
--   = -- | For specifying defaults.
--     Defaults
--   | -- | For making a complete record.
--     Complete

-- -- | Required fields are not usable from a Defaults spec.
-- type family Required (f :: Fields) a where
--   Required Defaults a = () -- When defining defaults, required fields are ().
--   Required Complete a = a

-- -- type ConnSpec' :: Fields -> Type

-- data ConnSpec = ConnSpec
--   { username :: Maybe String,
--     password :: Maybe String,
--     port :: Int, -- Optional and therefore requires a default.
--     host :: String -- Optional and therefore requires a default.
--   }

-- pattern ConnSpecDefaults
--   { host,
--     port
--   } = ConnSpec { host = host, port = port, username = Nothing, password = Nothing }

-- pattern ConnSpecDefaults2
--   { host,
--     port
--   } = ConnSpec { host = host, port = port, username = Nothing, password = Nothing }

-- defaultConnSpec :: ConnSpecDefaults
-- defaultConnSpec = ConnSpec {port = 80, host = "localhost", username = (), password = ()}

-- fun :: ConnSpec -> IO ()
-- fun = print

-- type ConnSpec = ConnSpec' Complete

deriving stock instance Show ConnSpec

type GoogleRequest :: Type -> Constraint

-- | Specify how an google services request can be de/serialised.
class GoogleRequest a where
  -- | A disjoint set of possible OAuth2 scopes, _one_ of which is required to
  -- perform this request.
  type Scopes a :: [Symbol]

  -- | The service configuration.
  type Config a :: Type -- Service "storage:v1" StorageParams

  -- | The response returned by a successful request.
  type Response a :: Type

  -- | Construct a new fully-prepared @http-client@ 'Client.Request'.
  toRequest :: Config a -> a -> Request a

-- -- | Parse a @http-client@ 'Client.Response', consuming the response body.
-- --
-- -- /Note:/ It is up to the implementation whether the 'BodyReader' is only
-- -- partially or fully consumed. You should not rely on this behaviour and
-- -- assume the response body passed to this function is no longer available.
-- parseResponse :: proxy a -> Client.Response BodyReader -> IO (Either Error (Response a))

-- X-Upload-Content-Type. Optional. Set to the MIME type of the file data, which is transferred in subsequent requests. If the MIME type of the data is not specified in metadata or through this header, the object is served as application/octet-stream.

-- X-Upload-Content-Length. Optional. Set to the number of bytes of file data, which is transferred in subsequent requests.

-- Content-Type. Required if you have metadata for the file. Set to application/json; charset=UTF-8.

-- Content-Length. Required unless you use chunked transfer encoding. Set to the number of bytes in the body of this initial request.

-- Previously used deriving via style newtypes here for distinct multipart,
-- resumable etc. instances:
--
--    instance GoogleRequest (MediaDownload a) where ...
--    instance GoogleRequest (MediaUpload   a) where ...
--
-- This resulted in copying (or delegating) all of the type metadata, as well as
-- these sub-instances all having very similar metadata, like every MediaDownload
-- having type Response a = BodyReader, for example.
--
-- Distinct classes with the GoogleRequest superclass constraint end up being
-- less noisy to generate and more ergonomic to use in practice, since you don't
-- propagate a constraint on 'download', like 'GoogleRequest (MediaDownload a)'.

class GoogleRequest a => GoogleMediaRequest a

-- toMediaRequest :: Config a -> a -> Request a

-- Download parseResponse is always the same - we only want the BodyReader?

class GoogleRequest a => GoogleMultipartRequest media a

-- toMultipartRequest :: Config a -> a -> Part -> Request a

-- Has the same Response as GoogleRequest

class GoogleRequest a => GoogleResumableRequest media a

-- toResumableRequest :: Config a -> MediaType -> a -> Request a

-- Has a Location response for the session initiation request

-- toAuthRequest
--   :: ( Allows scopes (Scopes a),
--        GoogleRequest a
--      ) =>
--      proxy scopes ->
--      Config a ->
--      a ->
--      Client.Request
-- toAuthRequest _proxy =
--   toRequest

-- parseJSONResponse ::
--   FromJSON (Response a) =>
--   proxy a ->
--   ServiceId ->
--   Client.Response BodyReader ->
--   IO (Either Error (Response a))
-- parseJSONResponse _proxy service response =
--   Except.runExceptT $ do
--     let status = Client.responseStatus response
--         reader = Client.responseBody response

--     body <- lift (ByteString.Lazy.fromChunks <$> Client.brConsume reader)

--     unless (HTTP.statusIsSuccessful status) $
--       Except.throwE (ServiceError service (body <$ response))

--     case Aeson.eitherDecode' body of
--       Left err -> Except.throwE (SerializeError service (body <$ response) err)
--       Right ok -> pure ok

-- -- | A location header.
-- newtype Location = Location Text
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

-- data Protocol
--   = -- | Upload protocol for media (e.g. "raw", "multipart").
--     UploadProtocol
--   | -- | Legacy upload protocol for media (e.g. "media", "multipart").
--     UploadType
--   deriving stock (Show, Eq, Ord)

-- data MultipartRequest media a = MultipartRequest
--   { simpleRequest :: a,
--     simpleMedia :: Multipart.Part
--   }

-- toMultipartRequest ::
--   GoogleRequest a =>
--   Protocol ->
--   MultipartRequest media a ->
--   Request a
-- toMultipartRequest proto MultipartRequest {..} =
--   undefined

-- -- rq { requestBody = toJSONMultipartBody
-- --    , requestUploadType = Just "simple"
-- --    }
-- -- where
-- --   body = requestBody rq
-- --   rq = toRequest simpleRequest

-- parseMultipartResponse ::
--   ( MultipartRequest media a ~ request,
--     GoogleRequest request,
--     FromJSON (Response request)
--   ) =>
--   proxy request ->
--   ServiceId ->
--   Client.Response BodyReader ->
--   IO (Either Error (Response request))
-- parseMultipartResponse =
--   undefined

-- data ResumableRequest media a = ResumableRequest
--   { resumableRequest :: a,
--     -- -- X-Upload-Content-Type. Set to the media MIME type of the upload data to be
--     -- -- transferred in subsequent requests. -- FIXME: set by media symbol
--     -- resumableType :: Media.MediaType,

--     -- | X-Upload-Content-Length. Set to the number of bytes of upload data to be
--     -- transferred in subsequent requests. If the length is unknown at the time
--     -- of this request, you can omit this header.
--     resumableLength :: Maybe Int64
--   }

-- toResumableRequest ::
--   GoogleRequest a =>
--   Protocol ->
--   ResumableRequest media a ->
--   Request a
-- toResumableRequest proto ResumableRequest {..} =
--   undefined

-- --   rq { requestUploadType = "resumable",
-- --        requestHeaders =
-- --          requestHeaders rq
-- --           <> fromList [("X-Upload-Content-Type",  ), ("X-Upload-Content-Length", )]
-- --      }
-- -- where
-- --   rq = toRequest resumableRequest

-- parseResumableResponse ::
--   ( ResumableRequest media a ~ request,
--     GoogleRequest request,
--     Response request ~ Location
--   ) =>
--   proxy request ->
--   ServiceId ->
--   Client.Response body ->
--   IO (Either Error Location)
-- parseResumableResponse =
--   undefined

-- -- HTTP/1.1 200 OK
-- -- Location: https://www.googleapis.com/upload/bigquery/v2/projects/projectId/jobs?uploadType=resumable&upload_id=xa298sd_sdlkj2
-- -- Content-Length: 0

-- newtype MediaRequest a = MediaRequest
--   { downloadRequest :: a
--   }

-- toMediaRequest :: GoogleRequest a => MediaRequest a -> Request a
-- toMediaRequest MediaRequest {} =
--   undefined

-- -- (toRequest downloadRequest)
-- --   { requestAlt = Just "media"
-- --   }

-- parseMediaResponse ::
--   ( MediaRequest a ~ request,
--     GoogleRequest request,
--     Response request ~ BodyReader
--   ) =>
--   proxy request ->
--   ServiceId ->
--   Client.Response BodyReader ->
--   IO (Either Error BodyReader)
-- parseMediaResponse _proxy service response =
--   undefined
