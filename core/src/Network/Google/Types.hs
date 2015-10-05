{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}

-- |
-- Module      : Network.Google.Types
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Types where

import           Control.Lens        hiding (coerce)
import           Data.Coerce
import           Data.Data
import           Data.Monoid
import           Data.Text           (Text)
import           GHC.Generics
import           Network.HTTP.Types
import           Servant.API
import           Servant.Utils.Links

data AltJSON = AltJSON
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

instance ToText AltJSON where
   toText = const "json"

data AltMedia = AltMedia
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable)

instance ToText AltMedia where
   toText = const "media"

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

_Coerce :: (Coercible a b, Coercible b a) => Iso' a b
_Coerce = iso coerce coerce

-- | Invalid Iso, exists for ease of composition with the current 'Lens . Iso'
-- chaining to hide internal types from the user.
_Default :: Monoid a => Iso' (Maybe a) a
_Default = iso f Just
  where
    f (Just x) = x
    f Nothing  = mempty
