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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlistItems.list@.
module Network.Google.Resource.YouTube.PlayListItems.List
    (
    -- * REST Resource
      PlayListItemsListResource

    -- * Creating a Request
    , playListItemsList
    , PlayListItemsList

    -- * Request Lenses
    , plilXgafv
    , plilPart
    , plilUploadProtocol
    , plilAccessToken
    , plilUploadType
    , plilOnBehalfOfContentOwner
    , plilVideoId
    , plilId
    , plilPageToken
    , plilPlayListId
    , plilMaxResults
    , plilCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.list@ method which the
-- 'PlayListItemsList' request conforms to.
type PlayListItemsListResource =
     "youtube" :>
       "v3" :>
         "playlistItems" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "videoId" Text :>
                         QueryParams "id" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "playlistId" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] PlayListItemListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'playListItemsList' smart constructor.
data PlayListItemsList =
  PlayListItemsList'
    { _plilXgafv :: !(Maybe Xgafv)
    , _plilPart :: ![Text]
    , _plilUploadProtocol :: !(Maybe Text)
    , _plilAccessToken :: !(Maybe Text)
    , _plilUploadType :: !(Maybe Text)
    , _plilOnBehalfOfContentOwner :: !(Maybe Text)
    , _plilVideoId :: !(Maybe Text)
    , _plilId :: !(Maybe [Text])
    , _plilPageToken :: !(Maybe Text)
    , _plilPlayListId :: !(Maybe Text)
    , _plilMaxResults :: !(Textual Word32)
    , _plilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListItemsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plilXgafv'
--
-- * 'plilPart'
--
-- * 'plilUploadProtocol'
--
-- * 'plilAccessToken'
--
-- * 'plilUploadType'
--
-- * 'plilOnBehalfOfContentOwner'
--
-- * 'plilVideoId'
--
-- * 'plilId'
--
-- * 'plilPageToken'
--
-- * 'plilPlayListId'
--
-- * 'plilMaxResults'
--
-- * 'plilCallback'
playListItemsList
    :: [Text] -- ^ 'plilPart'
    -> PlayListItemsList
playListItemsList pPlilPart_ =
  PlayListItemsList'
    { _plilXgafv = Nothing
    , _plilPart = _Coerce # pPlilPart_
    , _plilUploadProtocol = Nothing
    , _plilAccessToken = Nothing
    , _plilUploadType = Nothing
    , _plilOnBehalfOfContentOwner = Nothing
    , _plilVideoId = Nothing
    , _plilId = Nothing
    , _plilPageToken = Nothing
    , _plilPlayListId = Nothing
    , _plilMaxResults = 5
    , _plilCallback = Nothing
    }


-- | V1 error format.
plilXgafv :: Lens' PlayListItemsList (Maybe Xgafv)
plilXgafv
  = lens _plilXgafv (\ s a -> s{_plilXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- playlistItem resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- playlistItem resource, the snippet property contains numerous fields,
-- including the title, description, position, and resourceId properties.
-- As such, if you set *part=snippet*, the API response will contain all of
-- those properties.
plilPart :: Lens' PlayListItemsList [Text]
plilPart
  = lens _plilPart (\ s a -> s{_plilPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plilUploadProtocol :: Lens' PlayListItemsList (Maybe Text)
plilUploadProtocol
  = lens _plilUploadProtocol
      (\ s a -> s{_plilUploadProtocol = a})

-- | OAuth access token.
plilAccessToken :: Lens' PlayListItemsList (Maybe Text)
plilAccessToken
  = lens _plilAccessToken
      (\ s a -> s{_plilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plilUploadType :: Lens' PlayListItemsList (Maybe Text)
plilUploadType
  = lens _plilUploadType
      (\ s a -> s{_plilUploadType = a})

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
plilOnBehalfOfContentOwner :: Lens' PlayListItemsList (Maybe Text)
plilOnBehalfOfContentOwner
  = lens _plilOnBehalfOfContentOwner
      (\ s a -> s{_plilOnBehalfOfContentOwner = a})

-- | Return the playlist items associated with the given video ID.
plilVideoId :: Lens' PlayListItemsList (Maybe Text)
plilVideoId
  = lens _plilVideoId (\ s a -> s{_plilVideoId = a})

plilId :: Lens' PlayListItemsList [Text]
plilId
  = lens _plilId (\ s a -> s{_plilId = a}) . _Default .
      _Coerce

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
plilPageToken :: Lens' PlayListItemsList (Maybe Text)
plilPageToken
  = lens _plilPageToken
      (\ s a -> s{_plilPageToken = a})

-- | Return the playlist items within the given playlist.
plilPlayListId :: Lens' PlayListItemsList (Maybe Text)
plilPlayListId
  = lens _plilPlayListId
      (\ s a -> s{_plilPlayListId = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
plilMaxResults :: Lens' PlayListItemsList Word32
plilMaxResults
  = lens _plilMaxResults
      (\ s a -> s{_plilMaxResults = a})
      . _Coerce

-- | JSONP
plilCallback :: Lens' PlayListItemsList (Maybe Text)
plilCallback
  = lens _plilCallback (\ s a -> s{_plilCallback = a})

instance GoogleRequest PlayListItemsList where
        type Rs PlayListItemsList = PlayListItemListResponse
        type Scopes PlayListItemsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListItemsList'{..}
          = go _plilPart _plilXgafv _plilUploadProtocol
              _plilAccessToken
              _plilUploadType
              _plilOnBehalfOfContentOwner
              _plilVideoId
              (_plilId ^. _Default)
              _plilPageToken
              _plilPlayListId
              (Just _plilMaxResults)
              _plilCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsListResource)
                      mempty
