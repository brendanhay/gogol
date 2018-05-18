{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TupleSections              #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UndecidableInstances       #-}

-- |
-- Module      : Network.Google.Types
-- Copyright   : (c) 2015-2016 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Types where

import Control.Applicative
import Control.Exception.Lens       (exception)
import Control.Lens
import Control.Monad.Catch
import Control.Monad.Trans.Resource

import Data.Aeson
import Data.ByteString        (ByteString)
import Data.Coerce
import Data.Conduit
import Data.Data
import Data.DList             (DList)
import Data.Foldable          (foldMap, foldl')
import Data.Monoid
import Data.String
import Data.Text              (Text)
import Data.Text.Lazy.Builder (Builder)

import GHC.Generics
import GHC.TypeLits

import Network.HTTP.Client (HttpException, RequestBody (..))
import Network.HTTP.Media  hiding (Accept)
import Network.HTTP.Types  hiding (Header)

import Servant.API hiding (Stream)

import qualified Data.ByteString.Char8    as BS8
import qualified Data.ByteString.Lazy     as LBS
import qualified Data.CaseInsensitive     as CI
import qualified Data.Conduit.Combinators as Conduit
import qualified Data.DList               as DList
import qualified Data.Text.Encoding       as Text
import qualified Data.Text.Lazy.Builder   as Build
import qualified Network.HTTP.Types       as HTTP

data AltJSON   = AltJSON   deriving (Eq, Ord, Show, Read, Generic, Typeable)
data AltMedia  = AltMedia  deriving (Eq, Ord, Show, Read, Generic, Typeable)
data Multipart = Multipart deriving (Eq, Ord, Show, Read, Generic, Typeable)

instance ToHttpApiData AltJSON   where toQueryParam = const "json"
instance ToHttpApiData AltMedia  where toQueryParam = const "media"
instance ToHttpApiData Multipart where toQueryParam = const "multipart"

-- | An OAuth2 scope.
newtype OAuthScope = OAuthScope Text
    deriving
        ( Eq
        , Ord
        , Show
        , Read
        , IsString
        , Generic
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )

-- | An OAuth2 access token.
newtype AccessToken = AccessToken Text
    deriving
        ( Eq
        , Ord
        , Show
        , Read
        , IsString
        , Generic
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )

-- | An OAuth2 refresh token.
newtype RefreshToken = RefreshToken Text
    deriving
        ( Eq
        , Ord
        , Show
        , Read
        , IsString
        , Generic
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )

-- | A client identifier.
newtype ClientId = ClientId Text
    deriving
        ( Eq
        , Ord
        , Show
        , Read
        , IsString
        , Generic
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )

-- | A service identifier.
newtype ServiceId = ServiceId Text
    deriving
        ( Eq
        , Ord
        , Show
        , Read
        , IsString
        , Generic
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )

-- | An opaque client secret.
newtype Secret = Secret Text
    deriving
        ( Eq
        , Ord
        , Read
        , IsString
        , Generic
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )

instance Show Secret where
    show = const "*****"

newtype MediaDownload a = MediaDownload a

data MediaUpload a = MediaUpload a Body

_Coerce :: (Coercible a b, Coercible b a) => Iso' a b
_Coerce = iso coerce coerce

-- | Invalid Iso, exists for ease of composition with the current 'Lens . Iso'
-- chaining to hide internal types from the user.
_Default :: Monoid a => Iso' (Maybe a) a
_Default = iso f Just
  where
    f (Just x) = x
    f Nothing  = mempty

type Stream = ConduitM () ByteString (ResourceT IO) ()

data Error
    = TransportError HttpException
    | SerializeError SerializeError
    | ServiceError   ServiceError
      deriving (Show, Typeable)

instance Exception Error

data SerializeError = SerializeError'
    { _serializeId      :: !ServiceId
    , _serializeHeaders :: [HTTP.Header]
    , _serializeStatus  :: !Status
    , _serializeMessage :: !String
    , _serializeBody    :: !(Maybe LBS.ByteString)
    } deriving (Eq, Show, Typeable)

data ServiceError = ServiceError'
    { _serviceId      :: !ServiceId
    , _serviceStatus  :: !Status
    , _serviceHeaders :: ![HTTP.Header]
    , _serviceBody    :: !(Maybe LBS.ByteString)
    } deriving (Eq, Show, Typeable)

class AsError a where
    -- | A general Amazonka error.
    _Error          :: Prism' a Error
    {-# MINIMAL _Error #-}

    -- | An error occured while communicating over HTTP with a remote service.
    _TransportError :: Prism' a HttpException

    -- | A serialisation error occured when attempting to deserialise a response.
    _SerializeError :: Prism' a SerializeError

    -- | A service specific error returned by the remote service.
    _ServiceError   :: Prism' a ServiceError

    _TransportError = _Error . _TransportError
    _SerializeError = _Error . _SerializeError
    _ServiceError   = _Error . _ServiceError

instance AsError SomeException where
    _Error = exception

instance AsError Error where
    _Error = id

    _TransportError = prism TransportError $ \case
        TransportError e -> Right e
        x                -> Left x

    _SerializeError = prism SerializeError $ \case
        SerializeError e -> Right e
        x                -> Left  x

    _ServiceError = prism ServiceError $ \case
        ServiceError e -> Right e
        x              -> Left  x

data ServiceConfig = ServiceConfig
    { _svcId      :: !ServiceId
    , _svcHost    :: !ByteString
    , _svcPath    :: !Builder
    , _svcPort    :: !Int
    , _svcSecure  :: !Bool
    , _svcTimeout :: !(Maybe Seconds)
    }

defaultService :: ServiceId -> ByteString -> ServiceConfig
defaultService i h = ServiceConfig
    { _svcId      = i
    , _svcHost    = h
    , _svcPath    = mempty
    , _svcPort    = 443
    , _svcSecure  = True
    , _svcTimeout = Just 70
    }

-- | The remote host name, used for both the IP address to connect to and the
-- host request header.
serviceHost :: Lens' ServiceConfig ByteString
serviceHost = lens _svcHost (\s a -> s { _svcHost = a })

-- | The remote port to connect to.
--
-- Defaults to @443@.
servicePort :: Lens' ServiceConfig Int
servicePort = lens _svcPort (\s a -> s { _svcPort = a })

-- | A path prefix that is prepended to any sent HTTP request.
--
-- Defaults to @mempty@.
servicePath :: Lens' ServiceConfig Builder
servicePath = lens _svcPath (\s a -> s { _svcPath = a })

-- | Whether to use HTTPS/SSL.
--
-- Defaults to @True@.
serviceSecure :: Lens' ServiceConfig Bool
serviceSecure = lens _svcSecure (\s a -> s { _svcSecure = a })

-- | Number of seconds to wait for a response.
serviceTimeout :: Lens' ServiceConfig (Maybe Seconds)
serviceTimeout = lens _svcTimeout (\s a -> s { _svcTimeout = a })

-- | A single part of a (potentially multipart) request body.
--
-- /Note:/ The 'IsString' instance defaults to a @text/plain@ MIME type.
data Body = Body !MediaType !RequestBody

instance IsString Body where
    fromString = Body ("text" // "plain") . fromString

-- | A lens into the 'MediaType' of a request 'Body'.
bodyContentType :: Lens' Body MediaType
bodyContentType = lens (\(Body m _) -> m) (\(Body _ b) m -> Body m b)

-- | An intermediary request builder.
data Request = Request
    { _rqPath    :: !Builder
    , _rqQuery   :: !(DList (ByteString, Maybe ByteString))
    , _rqHeaders :: !(DList (HeaderName, ByteString))
    , _rqBody    :: ![Body]
    }

instance Monoid Request where
    mempty      = Request mempty mempty mempty mempty
    mappend     = (<>)

instance Semigroup Request where
    a <> b = Request
        (_rqPath    a <> "/" <> _rqPath b)
        (_rqQuery   a <> _rqQuery b)
        (_rqHeaders a <> _rqHeaders b)
        (_rqBody    b <> _rqBody a)

appendPath :: Request -> Builder -> Request
appendPath rq x = rq { _rqPath = _rqPath rq <> "/" <> x }

appendPaths :: ToHttpApiData a => Request -> [a] -> Request
appendPaths rq = appendPath rq . foldMap (mappend "/" . buildText)

appendQuery :: Request -> ByteString -> Maybe Text -> Request
appendQuery rq k v = rq
    { _rqQuery = DList.snoc (_rqQuery rq) (k, Text.encodeUtf8 <$> v)
    }

appendHeader :: Request -> HeaderName -> Maybe Text -> Request
appendHeader rq _ Nothing  = rq
appendHeader rq k (Just v) = rq
    { _rqHeaders = DList.snoc (_rqHeaders rq) (k, Text.encodeUtf8 v)
    }

setBody :: Request -> [Body] -> Request
setBody rq bs = rq { _rqBody = bs }

-- | A materialised 'http-client' request and associated response parser.
data Client a = Client
    { _cliAccept   :: !(Maybe MediaType)
    , _cliMethod   :: !Method
    , _cliCheck    :: !(Status -> Bool)
    , _cliService  :: !ServiceConfig
    , _cliRequest  :: !Request
    , _cliResponse :: !(Stream -> ResourceT IO (Either (String, LBS.ByteString) a))
    }

clientService :: Lens' (Client a) ServiceConfig
clientService = lens _cliService (\s a -> s { _cliService = a })

mime :: FromStream c a
     => Proxy c
     -> Method
     -> [Int]
     -> Request
     -> ServiceConfig
     -> Client a
mime p = client (fromStream p) (Just (contentType p))

discard :: Method
        -> [Int]
        -> Request
        -> ServiceConfig
        -> Client ()
discard = client (\b -> runConduit (b .| Conduit.sinkNull) >> pure (Right ())) Nothing

client :: (Stream -> ResourceT IO (Either (String, LBS.ByteString) a))
       -> Maybe MediaType
       -> Method
       -> [Int]
       -> Request
       -> ServiceConfig
       -> Client a
client f cs m statuses rq s = Client
    { _cliAccept   = cs
    , _cliMethod   = m
    , _cliCheck    = \status -> fromEnum status `elem` statuses
    , _cliService  = s
    , _cliRequest  = rq
    , _cliResponse = f
    }

class Accept c => ToBody c a where
    toBody :: Proxy c -> a -> Body

instance ToBody OctetStream ByteString where
    toBody p = Body (contentType p) . RequestBodyBS

instance ToBody OctetStream LBS.ByteString where
    toBody p = Body (contentType p) . RequestBodyLBS

instance ToBody PlainText ByteString where
    toBody p = Body (contentType p) . RequestBodyBS

instance ToBody PlainText LBS.ByteString where
    toBody p = Body (contentType p) . RequestBodyLBS

instance ToJSON a => ToBody JSON a where
    toBody p = Body (contentType p) . RequestBodyLBS . encode

class Accept c => FromStream c a where
    fromStream :: Proxy c
               -> Stream
               -> ResourceT IO (Either (String, LBS.ByteString) a)

instance FromStream OctetStream Stream where
    fromStream Proxy = pure . Right

instance FromJSON a => FromStream JSON a where
    fromStream Proxy  s = do
        bs <- sinkLBS s
        case eitherDecode bs of
            Left  e -> pure $! Left (e, bs)
            Right x -> pure $! Right x

class GoogleRequest a where
    type Rs     a :: *
    type Scopes a :: [Symbol]

    requestClient :: a -> Client (Rs a)

class GoogleClient fn where
    type Fn fn :: *

    buildClient :: Proxy fn -> Request -> Fn fn

-- | Multiple path captures, with @[xs]@ forming @/<x1>/<x2>/<x2>/...@.
data Captures (s :: Symbol) a
    deriving (Typeable)

-- | Form a Google style sub-resource, such as @/<capture>:<mode>@.
data CaptureMode (s :: Symbol) (m :: Symbol) a
    deriving (Typeable)

data MultipartRelated (cs :: [*]) m
    deriving (Typeable)

instance ( ToBody c m
         , GoogleClient fn
         ) => GoogleClient (MultipartRelated (c ': cs) m :> fn) where
    type Fn (MultipartRelated (c ': cs) m :> fn) = m -> Body -> Fn fn

    buildClient Proxy rq m b =
        buildClient (Proxy :: Proxy fn) $
           setBody rq [toBody (Proxy :: Proxy c) m, b]

instance GoogleClient fn => GoogleClient (AltMedia :> fn) where
    type Fn (AltMedia :> fn) = Body -> Fn fn

    buildClient Proxy rq b =
        buildClient (Proxy :: Proxy fn) $
           setBody rq [b]

instance (KnownSymbol s, GoogleClient fn) => GoogleClient (s :> fn) where
    type Fn (s :> fn) = Fn fn

    buildClient Proxy rq = buildClient (Proxy :: Proxy fn) $
        appendPath rq (buildSymbol (Proxy :: Proxy s))

instance (GoogleClient a, GoogleClient b) => GoogleClient (a :<|> b) where
    type Fn (a :<|> b) = Fn a :<|> Fn b

    buildClient Proxy rq =
             buildClient (Proxy :: Proxy a) rq
        :<|> buildClient (Proxy :: Proxy b) rq

instance ( KnownSymbol   s
         , ToHttpApiData a
         , GoogleClient  fn
         ) => GoogleClient (Capture s a :> fn) where
    type Fn (Capture s a :> fn) = a -> Fn fn

    buildClient Proxy rq = buildClient (Proxy :: Proxy fn)
        . appendPath rq
        . buildText

instance ( KnownSymbol   s
         , ToHttpApiData a
         , GoogleClient  fn
         ) => GoogleClient (Captures s a :> fn) where
    type Fn (Captures s a :> fn) = [a] -> Fn fn

    buildClient Proxy rq = buildClient (Proxy :: Proxy fn)
        . appendPaths rq

instance ( KnownSymbol   s
         , KnownSymbol   m
         , ToHttpApiData a
         , GoogleClient  fn
         ) => GoogleClient (CaptureMode s m a :> fn) where
    type Fn (CaptureMode s m a :> fn) = a -> Fn fn

    buildClient Proxy rq x = buildClient (Proxy :: Proxy fn)
        . appendPath rq
        $ buildText x <> ":" <> buildSymbol (Proxy :: Proxy m)

instance ( KnownSymbol   s
         , ToHttpApiData a
         , GoogleClient  fn
         ) => GoogleClient (QueryParam s a :> fn) where
    type Fn (QueryParam s a :> fn) = Maybe a -> Fn fn

    buildClient Proxy rq mx = buildClient (Proxy :: Proxy fn) $
        case mx of
            Nothing -> rq
            Just x  -> appendQuery rq k v
              where
                k = byteSymbol (Proxy :: Proxy s)
                v = Just (toQueryParam x)

instance ( KnownSymbol   s
         , ToHttpApiData a
         , GoogleClient  fn
         ) => GoogleClient (QueryParams s a :> fn) where
    type Fn (QueryParams s a :> fn) = [a] -> Fn fn

    buildClient Proxy rq = buildClient (Proxy :: Proxy fn) . foldl' go rq
      where
        go r = appendQuery r k . Just . toQueryParam

        k = byteSymbol (Proxy :: Proxy s)

instance ( KnownSymbol   s
         , ToHttpApiData a
         , GoogleClient  fn
         ) => GoogleClient (Header s a :> fn) where
    type Fn (Header s a :> fn) = Maybe a -> Fn fn

    buildClient Proxy rq mx = buildClient (Proxy :: Proxy fn) $
        case mx of
            Nothing -> rq
            Just x  -> appendHeader rq (CI.mk k) v
              where
                k = byteSymbol (Proxy :: Proxy s)
                v = Just (toQueryParam x)

instance ( ToBody c a
         , GoogleClient fn
         ) => GoogleClient (ReqBody (c ': cs) a :> fn) where
    type Fn (ReqBody (c ': cs) a :> fn) = a -> Fn fn

    buildClient Proxy rq x =
        buildClient (Proxy :: Proxy fn) $
            setBody rq [toBody (Proxy :: Proxy c) x]

instance {-# OVERLAPPABLE #-}
  FromStream c a => GoogleClient (Get (c ': cs) a) where
    type Fn (Get (c ': cs) a) = ServiceConfig -> Client a

    buildClient Proxy = mime (Proxy :: Proxy c) methodGet [200, 203]

instance {-# OVERLAPPING #-}
  GoogleClient (Get (c ': cs) ()) where
    type Fn (Get (c ': cs) ()) = ServiceConfig -> Client ()

    buildClient Proxy = discard methodGet [204]

instance {-# OVERLAPPABLE #-}
  (FromStream c a, cs' ~ (c ': cs)) => GoogleClient (Post cs' a) where
    type Fn (Post cs' a) = ServiceConfig -> Client a

    buildClient Proxy = mime (Proxy :: Proxy c) methodPost [200, 201]

instance {-# OVERLAPPING #-}
  GoogleClient (Post cs ()) where
    type Fn (Post cs ()) = ServiceConfig -> Client ()

    buildClient Proxy = discard methodPost [204]

instance {-# OVERLAPPABLE #-}
  FromStream c a => GoogleClient (Put (c ': cs) a) where
    type Fn (Put (c ': cs) a) = ServiceConfig -> Client a

    buildClient Proxy = mime (Proxy :: Proxy c) methodPut [200, 201]

instance {-# OVERLAPPING #-}
  GoogleClient (Put (c ': cs) ()) where
    type Fn (Put (c ': cs) ()) = ServiceConfig -> Client ()

    buildClient Proxy = discard methodPut [204]

instance {-# OVERLAPPABLE #-}
  FromStream c a => GoogleClient (Patch (c ': cs) a) where
    type Fn (Patch (c ': cs) a) = ServiceConfig -> Client a

    buildClient Proxy = mime (Proxy :: Proxy c) methodPatch [200, 201]

instance {-# OVERLAPPING #-}
  GoogleClient (Patch (c ': cs) ()) where
    type Fn (Patch (c ': cs) ()) = ServiceConfig -> Client ()

    buildClient Proxy = discard methodPatch [204]

instance {-# OVERLAPPABLE #-}
  FromStream c a => GoogleClient (Delete (c ': cs) a) where
    type Fn (Delete (c ': cs) a) = ServiceConfig -> Client a

    buildClient Proxy = mime (Proxy :: Proxy c) methodDelete [200, 202]

instance {-# OVERLAPPING #-}
  GoogleClient (Delete (c ': cs) ()) where
    type Fn (Delete (c ': cs) ()) = ServiceConfig -> Client ()

    buildClient Proxy = discard methodDelete [204]

sinkLBS :: Stream -> ResourceT IO LBS.ByteString
sinkLBS = runConduit . (.| Conduit.sinkLazy)

buildText :: ToHttpApiData a => a -> Builder
buildText = Build.fromText . toQueryParam

buildSymbol :: forall n proxy. KnownSymbol n => proxy n -> Builder
buildSymbol = Build.fromString . symbolVal

byteSymbol :: forall n proxy. KnownSymbol n => proxy n -> ByteString
byteSymbol = BS8.pack . symbolVal

-- | An integral value representing seconds.
newtype Seconds = Seconds Int
    deriving
        ( Eq
        , Ord
        , Read
        , Show
        , Enum
        , Num
        , Bounded
        , Integral
        , Real
        , Data
        , Typeable
        , Generic
        )

seconds :: Seconds -> Int
seconds (Seconds n)
    | n < 0     = 0
    | otherwise = n

microseconds :: Seconds -> Int
microseconds =  (1000000 *) . seconds

newtype FieldMask = FieldMask Text
    deriving
        ( Eq
        , Ord
        , Show
        , Read
        , IsString
        , Generic
        , Data
        , Typeable
        , FromHttpApiData
        , ToHttpApiData
        , FromJSON
        , ToJSON
        )
