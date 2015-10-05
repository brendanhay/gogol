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

-- |
-- Module      : Network.Google.Prelude
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prelude
    ( module Export
    , module Network.Google.Prelude
    ) where

import           Control.Applicative         as Export (pure, (<$>), (<*>))
import           Control.Lens                as Export (Lens', lens, mapping,
                                                        (^.), _Just)
import           Control.Lens                hiding (coerce)
import           Control.Monad.Trans.Either  as Export (EitherT)
import           Data.Coerce
import           Data.Data                   as Export (Data, Typeable)
import           Data.Hashable               as Export
import           Data.Int                    as Export (Int32, Int64)
import           Data.Maybe                  as Export
import           Data.Monoid                 as Export (mempty, (<>))
import           Data.Proxy                  as Export
import           Data.Text                   as Export (Text)
import qualified Data.Text                   as Text
import           Data.Time                   as Export
import           Data.Word                   as Export (Word32, Word64, Word8)
import           GHC.Generics                as Export (Generic)
import           GHC.TypeLits
import           Network.Google.Data.JSON    as Export
import           Network.Google.Data.Numeric as Export
-- import           Network.HTTP.Media
import           Numeric.Natural             as Export (Natural)
import           Prelude                     as Export hiding (product)
import           Servant.API                 as Export
import           Servant.Client              as Export
import           Servant.Common.Req          as Export (Req, defReq)
import           Servant.Common.Req          (appendToPath)
import           Servant.Utils.Links         as Export hiding (Link)

_Coerce :: (Coercible a b, Coercible b a) => Iso' a b
_Coerce = iso coerce coerce

-- | Invalid Iso, exists for ease of composition with the current 'Lens . Iso'
-- chaining to hide internal types from the user.
_Default :: Monoid a => Iso' (Maybe a) a
_Default = iso f Just
  where
    f (Just x) = x
    f Nothing  = mempty

_Time     = undefined
_Date     = undefined
_DateTime = undefined

newtype Time' = Time' Text -- TimeOfDay
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, FromText, ToText, FromJSON, ToJSON)

newtype Date' = Date' Text -- LocalTime
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, FromText, ToText, FromJSON, ToJSON)

newtype DateTime' = DateTime' Text -- UTCTime
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, FromText, ToText, FromJSON, ToJSON)

data AltJSON = AltJSON
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

instance ToText AltJSON where
   toText = const "json"

data AltMedia = AltMedia
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

instance ToText AltMedia where
   toText = const "media"

class GoogleRequest a where
    type Rs a :: *

    requestWithRoute :: Req -> BaseUrl -> a -> EitherT ServantError IO (Rs a)
    request          ::                   a -> EitherT ServantError IO (Rs a)

newtype AuthKey = AuthKey Text
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, ToText, FromText)

newtype OAuthToken = OAuthToken Text
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, ToText, FromText)

class GoogleAuth a where
    authKey   :: Traversal' a AuthKey
    authToken :: Traversal' a OAuthToken
    -- ^ only set if unset semantics?

newtype MediaDownload a = MediaDownload a

_MediaDownload :: Iso' (MediaDownload a) a
_MediaDownload = iso (\(MediaDownload x) -> x) MediaDownload

instance GoogleAuth a => GoogleAuth (MediaDownload a) where
    authKey   = _MediaDownload . authKey
    authToken = _MediaDownload . authToken

data Body = Body -- MediaType
    deriving (Eq, Show, Generic, Data, Typeable)

data Captures (capture :: Symbol) a
    deriving (Typeable)

instance (KnownSymbol capture, ToText a, HasClient sublayout)
        => HasClient (Captures capture a :> sublayout) where
    type Client (Captures capture a :> sublayout) = [a] -> Client sublayout

    clientWithRoute Proxy req baseUrl xs =
        clientWithRoute (Proxy :: Proxy sublayout) (appendToPath vs req) baseUrl
      where
        vs = Text.unpack $ Text.intercalate "/" (map toText xs)

data CaptureMode (capture :: Symbol) (mode :: Symbol) a
    deriving (Typeable)

instance (KnownSymbol capture, KnownSymbol mode, ToText a, HasClient sublayout)
        => HasClient (CaptureMode capture mode a :> sublayout) where
    type Client (CaptureMode capture mode a :> sublayout) = a -> Client sublayout

    clientWithRoute Proxy req baseUrl val =
        clientWithRoute (Proxy :: Proxy sublayout) (appendToPath p req) baseUrl
      where
        p = Text.unpack (toText val) <> m
        m = symbolVal (Proxy :: Proxy mode)

instance MimeRender   OctetStream Body
instance MimeUnrender OctetStream Body

data MultipartRelated (metatypes :: [*]) meta media
    deriving (Typeable)

instance (MimeUnrender ct a, HasClient sublayout)
        => HasClient (MultipartRelated (ct ': cts) a b :> sublayout) where

    type Client (MultipartRelated (ct ': cts) a b :> sublayout) =
        a -> b -> Client sublayout

    clientWithRoute Proxy req baseurl meta media = undefined

    -- clientWithRoute (Proxy :: Proxy sublayout)
    --                 (let ctProxy = Proxy :: Proxy ct
    --                  in setRQBody (mimeRender ctProxy body)
    --                               (contentType ctProxy)
    --                               req
    --                 )
    --                 baseurl


-- IsElem sa (ReqBody y x :> sb)           = IsElem sa sb

-- instance HasLink sub => HasLink (ReqBody ct a :> sub) where
--     type MkLink (ReqBody ct a :> sub) = MkLink sub
--     toLink _ = toLink (Proxy :: Proxy sub)

-- instance (MimeRender ct a, HasClient sublayout)
--       => HasClient (ReqBody (ct ': cts) a :> sublayout) where
--   type Client (ReqBody (ct ': cts) a :> sublayout) =
--     a -> Client sublayout

--   clientWithRoute Proxy req baseurl body =
--     clientWithRoute (Proxy :: Proxy sublayout)
--                     (let ctProxy = Proxy :: Proxy ct
--                      in setRQBody (mimeRender ctProxy body)
--                                   (contentType ctProxy)
--                                   req
--                     )
--                     baseurl

-- POST /upload/drive/v2/files?uploadType=multipart HTTP/1.1
-- Host: www.googleapis.com
-- Authorization: Bearer your_auth_token
-- Content-Type: multipart/related; boundary="foo_bar_baz"
-- Content-Length: number_of_bytes_in_entire_request_body
--
-- --foo_bar_baz
-- Content-Type: application/json; charset=UTF-8
-- {
--   "title": "My File"
-- }
-- --foo_bar_baz
-- Content-Type: image/jpeg
-- JPEG data
-- --foo_bar_baz--

-- "mediaType" param also comes/calculated from the request body?
--
-- Resumable endpoints - Not supported to begin with, need to figure
-- out how to return session id etc.
--
-- Assume initially that every service supports multipart upload.
--
-- When downloading media you must set the alt query parameter
-- to media in the request URL.
--
-- "resumable" or "multipart" needs to go into the "uploadType" param
--

-- if c.protocol_ == "resumable" {
--     if c.mediaType_ == "" {
--         c.mediaType_ = googleapi.DetectMediaType(c.resumable_)
--     }
--     req.Header.Set("X-Upload-Content-Type", c.mediaType_)
--     req.Header.Set("Content-Type", "application/json; charset=utf-8")
-- } else {
--     req.Header.Set("Content-Type", ctype)
-- }
