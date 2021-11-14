{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlistItems.insert@.
module Network.Google.Resource.YouTube.PlayListItems.Insert
    (
    -- * REST Resource
      PlayListItemsInsertResource

    -- * Creating a Request
    , playListItemsInsert
    , PlayListItemsInsert

    -- * Request Lenses
    , pliiXgafv
    , pliiPart
    , pliiUploadProtocol
    , pliiAccessToken
    , pliiUploadType
    , pliiPayload
    , pliiOnBehalfOfContentOwner
    , pliiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.insert@ method which the
-- 'PlayListItemsInsert' request conforms to.
type PlayListItemsInsertResource =
     "youtube" :>
       "v3" :>
         "playlistItems" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlayListItem :>
                             Post '[JSON] PlayListItem

-- | Inserts a new resource into this collection.
--
-- /See:/ 'playListItemsInsert' smart constructor.
data PlayListItemsInsert =
  PlayListItemsInsert'
    { _pliiXgafv :: !(Maybe Xgafv)
    , _pliiPart :: ![Text]
    , _pliiUploadProtocol :: !(Maybe Text)
    , _pliiAccessToken :: !(Maybe Text)
    , _pliiUploadType :: !(Maybe Text)
    , _pliiPayload :: !PlayListItem
    , _pliiOnBehalfOfContentOwner :: !(Maybe Text)
    , _pliiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListItemsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliiXgafv'
--
-- * 'pliiPart'
--
-- * 'pliiUploadProtocol'
--
-- * 'pliiAccessToken'
--
-- * 'pliiUploadType'
--
-- * 'pliiPayload'
--
-- * 'pliiOnBehalfOfContentOwner'
--
-- * 'pliiCallback'
playListItemsInsert
    :: [Text] -- ^ 'pliiPart'
    -> PlayListItem -- ^ 'pliiPayload'
    -> PlayListItemsInsert
playListItemsInsert pPliiPart_ pPliiPayload_ =
  PlayListItemsInsert'
    { _pliiXgafv = Nothing
    , _pliiPart = _Coerce # pPliiPart_
    , _pliiUploadProtocol = Nothing
    , _pliiAccessToken = Nothing
    , _pliiUploadType = Nothing
    , _pliiPayload = pPliiPayload_
    , _pliiOnBehalfOfContentOwner = Nothing
    , _pliiCallback = Nothing
    }


-- | V1 error format.
pliiXgafv :: Lens' PlayListItemsInsert (Maybe Xgafv)
pliiXgafv
  = lens _pliiXgafv (\ s a -> s{_pliiXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include.
pliiPart :: Lens' PlayListItemsInsert [Text]
pliiPart
  = lens _pliiPart (\ s a -> s{_pliiPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliiUploadProtocol :: Lens' PlayListItemsInsert (Maybe Text)
pliiUploadProtocol
  = lens _pliiUploadProtocol
      (\ s a -> s{_pliiUploadProtocol = a})

-- | OAuth access token.
pliiAccessToken :: Lens' PlayListItemsInsert (Maybe Text)
pliiAccessToken
  = lens _pliiAccessToken
      (\ s a -> s{_pliiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliiUploadType :: Lens' PlayListItemsInsert (Maybe Text)
pliiUploadType
  = lens _pliiUploadType
      (\ s a -> s{_pliiUploadType = a})

-- | Multipart request metadata.
pliiPayload :: Lens' PlayListItemsInsert PlayListItem
pliiPayload
  = lens _pliiPayload (\ s a -> s{_pliiPayload = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
pliiOnBehalfOfContentOwner :: Lens' PlayListItemsInsert (Maybe Text)
pliiOnBehalfOfContentOwner
  = lens _pliiOnBehalfOfContentOwner
      (\ s a -> s{_pliiOnBehalfOfContentOwner = a})

-- | JSONP
pliiCallback :: Lens' PlayListItemsInsert (Maybe Text)
pliiCallback
  = lens _pliiCallback (\ s a -> s{_pliiCallback = a})

instance GoogleRequest PlayListItemsInsert where
        type Rs PlayListItemsInsert = PlayListItem
        type Scopes PlayListItemsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListItemsInsert'{..}
          = go _pliiPart _pliiXgafv _pliiUploadProtocol
              _pliiAccessToken
              _pliiUploadType
              _pliiOnBehalfOfContentOwner
              _pliiCallback
              (Just AltJSON)
              _pliiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsInsertResource)
                      mempty
