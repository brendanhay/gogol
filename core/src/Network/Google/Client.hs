{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UndecidableInstances       #-}

-- |
-- Module      : Network.Google.Client
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Client where

import           Control.Monad.Catch
-- import           Control.Exception
import           Control.Lens
import           Control.Monad.Trans.Class
import           Control.Monad.Trans.Reader
import           Control.Monad.Trans.Resource
import           Data.Bifunctor
import           Data.ByteString              (ByteString)
import qualified Data.ByteString.Lazy         as LBS
import           Data.Conduit
import qualified Data.Conduit.List            as CL
import           Data.Data
import           Data.Default.Class           (def)
import           Data.DList                   (DList)
import qualified Data.DList                   as DList
import           Data.Foldable                (foldMap, foldl')
import           Data.List                    (intersperse)
import           Data.Maybe
import           Data.Monoid
import           Data.Proxy
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import           Data.Text.Lazy.Builder       (Builder)
import qualified Data.Text.Lazy.Builder       as Build
import           GHC.Generics
import           GHC.TypeLits
import           Network.Google.Types
import           Network.HTTP.Client          (HttpException)
import qualified Network.HTTP.Client          as Client
import           Network.HTTP.Media           hiding (Accept)
import           Network.HTTP.Types
import           Servant.API                  hiding (Header)

-- | A convenience alias to avoid type ambiguity.
type ClientRequest = Client.Request

-- | A convenience alias encapsulating the common 'Response'.
type ClientResponse = Client.Response ResponseBody

-- | A convenience alias encapsulating the common 'Response' body.
type ResponseBody = ResumableSource (ResourceT IO) ByteString

-- import           Servant.API
-- import           Servant.Utils.Links

data Body = Body -- MediaType
    deriving (Eq, Show, Generic, Data, Typeable)

data Error
    = TransportError HttpException
    | SerializeError SerializeError
    | ServiceError   ServiceError
      deriving (Show, Typeable)

instance Exception Error

data SerializeError = SerializeError'
    -- , _serializeHeaders :: [Header]
    { -- _serializeAbbrev  :: !Abbrev
    -- , _serializeStatus  :: !Status
    -- , _serializeMessage :: String
    } deriving (Eq, Show, Typeable)

data ServiceError = ServiceError' !Status !MediaType [Header] LBS.ByteString
     -- _serviceAbbrev    :: !Abbrev
    -- , _serviceStatus    :: !Status
    -- , _serviceHeaders   :: [Header]
    -- , _serviceCode      :: !ErrorCode
    -- , _serviceMessage   :: Maybe ErrorMessage
    -- , _serviceRequestId :: Maybe RequestId
     deriving (Eq, Show, Typeable)

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

-- | Multiple path captures, with @[xs]@ forming @/<x1>/<x2>/<x2>/...@.
data Captures (s :: Symbol) a
    deriving (Typeable)

-- | Form a Google style sub-resource, such as @/<capture>:<mode>@.
data CaptureMode (s :: Symbol) (m :: Symbol) a
    deriving (Typeable)

data MultipartRelated (cs :: [*]) m b
    deriving (Typeable)

-- | An intermediary request builder.
data RequestBuilder = RequestBuilder
    { _rqHost     :: ByteString
    , _rqBasePath :: ByteString
    , _rqPath     :: Builder
    , _rqQuery    :: DList (Text, Maybe Text)
    , _rqBody     :: Maybe (MediaType, LBS.ByteString)
    }

-- | Construct a default request builder. Since the Google service descriptions
-- have http/https in the host (rootUrl), the scheme is assumed.
defaultRequest :: ByteString -- ^ Host. (rootUrl)
               -> ByteString -- ^ Path. (servicePath)
               -> RequestBuilder
defaultRequest h p = RequestBuilder
    { _rqHost     = h
    , _rqBasePath = p
    , _rqPath     = mempty
    , _rqQuery    = mempty
    , _rqBody     = Nothing
    }

appendPath :: RequestBuilder -> Builder -> RequestBuilder
appendPath rq x = rq { _rqPath = _rqPath rq <> "/" <> x }

appendPaths :: ToText a => RequestBuilder -> [a] -> RequestBuilder
appendPaths rq = appendPath rq . foldMap (mappend "/" . buildText)

appendQuery :: RequestBuilder -> Text -> Maybe Text -> RequestBuilder
appendQuery rq k v = rq { _rqQuery = DList.snoc (_rqQuery rq) (k, v) }

setBody :: RequestBuilder -> MediaType -> LBS.ByteString -> RequestBuilder
setBody rq c x = rq { _rqBody = Just (c, x) }

-- | A materialised 'http-client' request and associated response parser.
data Client a = Client
    { _clientAccept   :: Maybe MediaType
    , _clientCheck    :: Int -> Bool
    , _clientResponse :: ResponseBody -> ResourceT IO (Either SerializeError a)
    , _clientRequest  :: ClientRequest
    }

client :: (ResponseBody -> ResourceT IO (Either SerializeError a))
       -> Maybe MediaType
       -> Method
       -> [Int]
       -> RequestBuilder
       -> Client a
client f cs m ns rq = Client
    { _clientAccept   = cs
    , _clientCheck    = (`elem` ns)
    , _clientResponse = f
    , _clientRequest  = clientRequest cs m rq
    }

clientRequest :: Maybe MediaType -> Method -> RequestBuilder -> ClientRequest
clientRequest cs m RequestBuilder {..} = def
     { Client.method      = m
     , Client.checkStatus = \_ _ _ -> Nothing
     }

clientMime :: MimeUnrender c a
           => Proxy c
           -> Method
           -> [Int]
           -> RequestBuilder
           -> Client a
clientMime p = client go (Just (contentType p))
  where
    go b = do
        lbs <- sinkLBS b
        case mimeUnrender p lbs of
            Left  e -> undefined
            Right x -> pure (Right x)

clientStream :: Accept c
             => Proxy  c
             -> Method
             -> [Int]
             -> RequestBuilder
             -> Client ResponseBody
clientStream p = client (pure . Right) (Just (contentType p))

clientEmpty :: Method -> [Int] -> RequestBuilder -> Client ()
clientEmpty = client go Nothing
  where
    go b = closeResumableSource b >> pure (Right ())

-- sinkLBS :: ResponseBody -> Client LBS.ByteString
sinkLBS = fmap LBS.fromChunks . ($$+- CL.consume)

class GoogleRequest a where
    type Rs a :: *

    request     ::                   a -> Client (Rs a)
    requestWith :: RequestBuilder -> a -> Client (Rs a)

class GoogleClient fn where
    type Fn fn :: *

    clientBuild :: Proxy fn -> RequestBuilder -> Fn fn

instance ( MimeRender   c m
         , GoogleClient fn
         ) => GoogleClient (MultipartRelated (c ': cs) m b :> fn) where
    type Fn (MultipartRelated (c ': cs) m b :> fn) = m -> b -> Fn fn

    -- requestBuild Proxy rq m b = requestBuild (Proxy :: Proxy fn) $
    --     mimeRender p m
    --     mimeRender (Proxy :: Proxy OctetStream) b
    --   where
    --     p = Proxy :: Proxy c

instance (KnownSymbol s, GoogleClient fn) => GoogleClient (s :> fn) where
    type Fn (s :> fn) = Fn fn

    clientBuild Proxy rq = clientBuild (Proxy :: Proxy fn) $
        appendPath rq (buildSymbol (Proxy :: Proxy s))

instance (GoogleClient a, GoogleClient b) => GoogleClient (a :<|> b) where
    type Fn (a :<|> b) = Fn a :<|> Fn b

    clientBuild Proxy rq =
             clientBuild (Proxy :: Proxy a) rq
        :<|> clientBuild (Proxy :: Proxy b) rq

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (Capture s a :> fn) where
    type Fn (Capture s a :> fn) = a -> Fn fn

    clientBuild Proxy rq = clientBuild (Proxy :: Proxy fn)
        . appendPath rq
        . buildText

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (Captures s a :> fn) where
    type Fn (Captures s a :> fn) = [a] -> Fn fn

    clientBuild Proxy rq = clientBuild (Proxy :: Proxy fn)
        . appendPaths rq

instance ( KnownSymbol  s
         , KnownSymbol  m
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (CaptureMode s m a :> fn) where
    type Fn (CaptureMode s m a :> fn) = a -> Fn fn

    clientBuild Proxy rq x = clientBuild (Proxy :: Proxy fn)
        . appendPath rq
        $ buildText x <> buildSymbol (Proxy :: Proxy m)

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (QueryParam s a :> fn) where
    type Fn (QueryParam s a :> fn) = Maybe a -> Fn fn

    clientBuild Proxy rq mx = clientBuild (Proxy :: Proxy fn) $
        case mx of
            Nothing -> rq
            Just x  -> appendQuery rq k v
              where
                k = textSymbol (Proxy :: Proxy s)
                v = Just (toText x)

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (QueryParams s a :> fn) where
    type Fn (QueryParams s a :> fn) = [a] -> Fn fn

    clientBuild Proxy rq = clientBuild (Proxy :: Proxy fn) . foldl' go rq
      where
        go r = appendQuery r k . Just . toText

        k = textSymbol (Proxy :: Proxy s)

instance ( MimeRender   c a
         , GoogleClient fn
         ) => GoogleClient (ReqBody (c ': cs) a :> fn) where
    type Fn (ReqBody (c ': cs) a :> fn) = a -> Fn fn

    clientBuild Proxy rq = clientBuild (Proxy :: Proxy fn)
        . setBody rq (contentType p)
        . mimeRender p
      where
        p = Proxy :: Proxy c

-- instance GoogleClient fn => GoogleClient (ReqBody (c ': cs) Body :> fn) where

instance {-# OVERLAPPABLE #-}
  MimeUnrender c a => GoogleClient (Get (c ': cs) a) where
    type Fn (Get (c ': cs) a) = Client a

    clientBuild Proxy = clientMime (Proxy :: Proxy c) methodGet [200, 203]

instance {-# OVERLAPPING #-}
  Accept c => GoogleClient (Get (c ': cs) ResponseBody) where
    type Fn (Get (c ': cs) ResponseBody) = Client ResponseBody

    clientBuild Proxy = clientStream (Proxy :: Proxy c) methodGet [200, 203]

instance {-# OVERLAPPING #-}
  GoogleClient (Get (c ': cs) ()) where
    type Fn (Get (c ': cs) ()) = Client ()

    clientBuild Proxy = clientEmpty methodGet [204]

instance {-# OVERLAPPABLE #-}
  MimeUnrender c a => GoogleClient (Post (c ': cs) a) where
    type Fn (Post (c ': cs) a) = Client a

    clientBuild Proxy = clientMime (Proxy :: Proxy c) methodPost [200, 201]

instance {-# OVERLAPPING #-}
  GoogleClient (Post (c ': cs) ()) where
    type Fn (Post (c ': cs) ()) = Client ()

    clientBuild Proxy = clientEmpty methodPost [204]

instance {-# OVERLAPPABLE #-}
  MimeUnrender c a => GoogleClient (Put (c ': cs) a) where
    type Fn (Put (c ': cs) a) = Client a

    clientBuild Proxy = clientMime (Proxy :: Proxy c) methodPut [200, 201]

instance {-# OVERLAPPING #-}
  GoogleClient (Put (c ': cs) ()) where
    type Fn (Put (c ': cs) ()) = Client ()

    clientBuild Proxy = clientEmpty methodPut [204]

instance {-# OVERLAPPABLE #-}
  MimeUnrender c a => GoogleClient (Patch (c ': cs) a) where
    type Fn (Patch (c ': cs) a) = Client a

    clientBuild Proxy = clientMime (Proxy :: Proxy c) methodPatch [200, 201]

instance {-# OVERLAPPING #-}
  GoogleClient (Patch (c ': cs) ()) where
    type Fn (Patch (c ': cs) ()) = Client ()

    clientBuild Proxy = clientEmpty methodPatch [204]

instance {-# OVERLAPPABLE #-}
  MimeUnrender c a => GoogleClient (Delete (c ': cs) a) where
    type Fn (Delete (c ': cs) a) = Client a

    clientBuild Proxy = clientMime (Proxy :: Proxy c) methodDelete [200, 202]

instance {-# OVERLAPPING #-}
   GoogleClient (Delete (c ': cs) ()) where
    type Fn (Delete (c ': cs) ()) = Client ()

    clientBuild Proxy = clientEmpty methodDelete [204]

-- perform :: Accept
--         -> (ResponseBody -> Client (Either SerializeError a))
--         -> Method
--         -> [Int]
--         -> RequestBuilder
--         -> Client a
-- perform a meth ns f rq = undefined -- do
  --   m <- ask
  --   x <- lift . try $ Client.http m (clientRequest meth a rq)
  --   either (failure . TransportError) success x
  -- where
  --   failure = pure . Left

  --   success rs = do
  --       let s  = Client.responseStatus  rs
  --           b  = Client.responseBody    rs
  --           hs = Client.responseHeaders rs
  --       case content hs of
  --       unless (matches respCT (acceptCT)) $
  --           left $ UnsupportedContentType respCT respBody

  --           Nothing -> failure (SerializeError' (SerializeError hs))

  --           Just _ | statusInvalid s -> do
  --               lbs <- sinkLBS b
  --               failure (ServiceError' (ServiceError s c hs lbs))

  --           Just c | contentInvalid c -> do
  --               lbs <- sinkLBS b
  --               failure (SerializeError' (SerializeError s c hs lbs))


  --           Just c -> first SerializeError' <$> f b

  --   content :: [Header] -> Maybe c
  --   content = parseAccept
  --       . fromMaybe "application/octet-stream"
  --       . lookup hContentType

  --   statusCheck s = fromEnum s `elem` ns
  --   contentCheck  = matches a

buildText :: ToText a => a -> Builder
buildText = Build.fromText . toText

buildSymbol :: forall n proxy. KnownSymbol n => proxy n -> Builder
buildSymbol = Build.fromString . symbolVal

textSymbol :: forall n proxy. KnownSymbol n => proxy n -> Text
textSymbol = Text.pack . symbolVal
