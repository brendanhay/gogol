{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
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

import           Control.Lens
import           Data.ByteString        (ByteString)
import qualified Data.ByteString.Lazy   as LBS
import           Data.Data
import           Data.DList             (DList)
import qualified Data.DList             as DList
import           Data.Foldable          (foldMap, foldl')
import           Data.List              (intersperse)
import           Data.Monoid
import           Data.Proxy
import           Data.Text              (Text)
import qualified Data.Text              as Text
import           Data.Text.Lazy.Builder (Builder)
import qualified Data.Text.Lazy.Builder as Build
import           GHC.Generics
import           GHC.TypeLits
import           Network.Google.Types
import           Network.HTTP.Media
import           Network.HTTP.Types
import           Servant.API            hiding (Header)

-- import           Servant.API
-- import           Servant.Utils.Links

data Body = Body -- MediaType
    deriving (Eq, Show, Generic, Data, Typeable)

data Request = Request
    { _rqHost     :: ByteString
    , _rqPort     :: Int
    , _rqBasePath :: ByteString
    , _rqPath     :: Builder
    , _rqQuery    :: DList (Text, Maybe Text)
    , _rqHeaders  :: [Header]
    , _rqBody     :: Maybe (MediaType, LBS.ByteString)
    , _rqAccept   :: [MediaType]
    }

defaultRequest :: ByteString -- ^ Host.
               -> Int        -- ^ Port.
               -> ByteString -- ^ Base Path.
               -> Request
defaultRequest h n p = Request
    { _rqHost     = h
    , _rqPort     = n
    , _rqBasePath = p
    , _rqPath     = mempty
    , _rqQuery    = mempty
    , _rqHeaders  = mempty
    , _rqBody     = Nothing
    , _rqAccept   = mempty
    }

appendPath :: Request -> Builder -> Request
appendPath rq x = rq { _rqPath = _rqPath rq <> "/" <> x }

appendPaths :: ToText a => Request -> [a] -> Request
appendPaths rq = appendPath rq . foldMap (mappend "/" . buildText)

appendQuery :: Request -> Text -> Maybe Text -> Request
appendQuery rq k v = rq { _rqQuery = DList.snoc (_rqQuery rq) (k, v) }

setBody :: Request -> MediaType -> LBS.ByteString -> Request
setBody rq c x = rq { _rqBody = Just (c, x) }

buildText :: ToText a => a -> Builder
buildText = Build.fromText . toText

buildSymbol :: forall n proxy. KnownSymbol n => proxy n -> Builder
buildSymbol = Build.fromString . symbolVal

textSymbol :: forall n proxy. KnownSymbol n => proxy n -> Text
textSymbol = Text.pack . symbolVal

data Error = Error
    deriving (Generic, Data, Typeable)

data Captures (s :: Symbol) a
    deriving (Typeable)

data CaptureMode (s :: Symbol) (m :: Symbol) a
    deriving (Typeable)

data MultipartRelated (cs :: [*]) meta body
    deriving (Typeable)

class GoogleRequest a where
    type Rs a :: *

    request     ::            a -> IO (Either Error (Rs a))
    requestWith :: Request -> a -> IO (Either Error (Rs a))

class GoogleClient fn where
    type Fn fn :: *

    requestBuild :: Proxy fn -> Request -> Fn fn

instance (KnownSymbol s, GoogleClient fn) => GoogleClient (s :> fn) where
    type Fn (s :> fn) = Fn fn

    requestBuild Proxy rq = requestBuild (Proxy :: Proxy fn) $
        appendPath rq (buildSymbol (Proxy :: Proxy s))

instance (GoogleClient a, GoogleClient b) => GoogleClient (a :<|> b) where
    type Fn (a :<|> b) = Fn a :<|> Fn b

    requestBuild Proxy rq =
             requestBuild (Proxy :: Proxy a) rq
        :<|> requestBuild (Proxy :: Proxy b) rq

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (Capture s a :> fn) where
    type Fn (Capture s a :> fn) = a -> Fn fn

    requestBuild Proxy rq = requestBuild (Proxy :: Proxy fn)
        . appendPath rq
        . buildText

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (Captures s a :> fn) where
    type Fn (Captures s a :> fn) = [a] -> Fn fn

    requestBuild Proxy rq = requestBuild (Proxy :: Proxy fn)
        . appendPaths rq

instance ( KnownSymbol  s
         , KnownSymbol  m
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (CaptureMode s m a :> fn) where
    type Fn (CaptureMode s m a :> fn) = a -> Fn fn

    requestBuild Proxy rq x = requestBuild (Proxy :: Proxy fn)
        . appendPath rq
        $ buildText x <> buildSymbol (Proxy :: Proxy m)

instance ( KnownSymbol  s
         , ToText       a
         , GoogleClient fn
         ) => GoogleClient (QueryParam s a :> fn) where
    type Fn (QueryParam s a :> fn) = Maybe a -> Fn fn

    requestBuild Proxy rq mx = requestBuild (Proxy :: Proxy fn) $
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

    requestBuild Proxy rq = requestBuild (Proxy :: Proxy fn) . foldl' go rq
      where
        go r = appendQuery r k . Just . toText

        k = textSymbol (Proxy :: Proxy s)

instance ( MimeRender   c a
         , GoogleClient fn
         ) => GoogleClient (ReqBody (c ': cs) a :> fn) where
    type Fn (ReqBody (c ': cs) a :> fn) = a -> Fn fn

    requestBuild Proxy rq = requestBuild (Proxy :: Proxy fn)
        . setBody rq (contentType p)
        . mimeRender p
      where
        p = Proxy :: Proxy c

instance MimeUnrender c a => GoogleClient (Get (c ': cs) a) where
    type Fn (Get (c ': cs) a) = IO (Either Error a)

    requestBuild Proxy rq = undefined -- perform . methodGet [200, 203]

instance GoogleClient (Get (c ': cs) ()) where
    type Fn (Get (c ': cs) ()) = IO (Either Error ())

    requestBuild Proxy rq = undefined -- perform . methodGet [204]

instance MimeUnrender c a => GoogleClient (Post (c ': cs) a) where
    type Fn (Post (c ': cs) a) = IO (Either Error a)

    requestBuild Proxy rq = undefined -- perform . methodPost [200, 201]

instance GoogleClient (Post (c ': cs) ()) where
    type Fn (Post (c ': cs) ()) = IO (Either Error ())

    requestBuild Proxy rq = undefined -- perform . methodPost [204]

instance MimeUnrender c a => GoogleClient (Put (c ': cs) a) where
    type Fn (Put (c ': cs) a) = IO (Either Error a)

    requestBuild Proxy rq = undefined -- perform . methodPut [200, 201]

instance GoogleClient (Put (c ': cs) ()) where
    type Fn (Put (c ': cs) ()) = IO (Either Error ())

    requestBuild Proxy rq = undefined -- perform . methodPut [204]

instance MimeUnrender c a => GoogleClient (Patch (c ': cs) a) where
    type Fn (Patch (c ': cs) a) = IO (Either Error a)

    requestBuild Proxy rq = undefined -- perform . methodPatch [200, 201]

instance GoogleClient (Patch (c ': cs) ()) where
    type Fn (Patch (c ': cs) ()) = IO (Either Error ())

    requestBuild Proxy rq = undefined -- perform . methodPatch [204]

-- MultipartRelated
