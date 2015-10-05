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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of playlist items that match the API request
-- parameters. You can retrieve all of the playlist items in a specified
-- playlist or retrieve one or more playlist items by their unique IDs.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListItemsList@.
module Network.Google.Resource.YouTube.PlayListItems.List
    (
    -- * REST Resource
      PlayListItemsListResource

    -- * Creating a Request
    , playListItemsList'
    , PlayListItemsList'

    -- * Request Lenses
    , plilQuotaUser
    , plilPart
    , plilPrettyPrint
    , plilUserIP
    , plilOnBehalfOfContentOwner
    , plilVideoId
    , plilKey
    , plilId
    , plilPageToken
    , plilOAuthToken
    , plilPlayListId
    , plilMaxResults
    , plilFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListItemsList@ which the
-- 'PlayListItemsList'' request conforms to.
type PlayListItemsListResource =
     "playlistItems" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "videoId" Text :>
             QueryParam "id" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "playlistId" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] PlayListItemListResponse

-- | Returns a collection of playlist items that match the API request
-- parameters. You can retrieve all of the playlist items in a specified
-- playlist or retrieve one or more playlist items by their unique IDs.
--
-- /See:/ 'playListItemsList'' smart constructor.
data PlayListItemsList' = PlayListItemsList'
    { _plilQuotaUser              :: !(Maybe Text)
    , _plilPart                   :: !Text
    , _plilPrettyPrint            :: !Bool
    , _plilUserIP                 :: !(Maybe Text)
    , _plilOnBehalfOfContentOwner :: !(Maybe Text)
    , _plilVideoId                :: !(Maybe Text)
    , _plilKey                    :: !(Maybe AuthKey)
    , _plilId                     :: !(Maybe Text)
    , _plilPageToken              :: !(Maybe Text)
    , _plilOAuthToken             :: !(Maybe OAuthToken)
    , _plilPlayListId             :: !(Maybe Text)
    , _plilMaxResults             :: !Word32
    , _plilFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plilQuotaUser'
--
-- * 'plilPart'
--
-- * 'plilPrettyPrint'
--
-- * 'plilUserIP'
--
-- * 'plilOnBehalfOfContentOwner'
--
-- * 'plilVideoId'
--
-- * 'plilKey'
--
-- * 'plilId'
--
-- * 'plilPageToken'
--
-- * 'plilOAuthToken'
--
-- * 'plilPlayListId'
--
-- * 'plilMaxResults'
--
-- * 'plilFields'
playListItemsList'
    :: Text -- ^ 'part'
    -> PlayListItemsList'
playListItemsList' pPlilPart_ =
    PlayListItemsList'
    { _plilQuotaUser = Nothing
    , _plilPart = pPlilPart_
    , _plilPrettyPrint = True
    , _plilUserIP = Nothing
    , _plilOnBehalfOfContentOwner = Nothing
    , _plilVideoId = Nothing
    , _plilKey = Nothing
    , _plilId = Nothing
    , _plilPageToken = Nothing
    , _plilOAuthToken = Nothing
    , _plilPlayListId = Nothing
    , _plilMaxResults = 5
    , _plilFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plilQuotaUser :: Lens' PlayListItemsList' (Maybe Text)
plilQuotaUser
  = lens _plilQuotaUser
      (\ s a -> s{_plilQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- playlistItem resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- playlistItem resource, the snippet property contains numerous fields,
-- including the title, description, position, and resourceId properties.
-- As such, if you set part=snippet, the API response will contain all of
-- those properties.
plilPart :: Lens' PlayListItemsList' Text
plilPart = lens _plilPart (\ s a -> s{_plilPart = a})

-- | Returns response with indentations and line breaks.
plilPrettyPrint :: Lens' PlayListItemsList' Bool
plilPrettyPrint
  = lens _plilPrettyPrint
      (\ s a -> s{_plilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plilUserIP :: Lens' PlayListItemsList' (Maybe Text)
plilUserIP
  = lens _plilUserIP (\ s a -> s{_plilUserIP = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
plilOnBehalfOfContentOwner :: Lens' PlayListItemsList' (Maybe Text)
plilOnBehalfOfContentOwner
  = lens _plilOnBehalfOfContentOwner
      (\ s a -> s{_plilOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies that the request should return only the
-- playlist items that contain the specified video.
plilVideoId :: Lens' PlayListItemsList' (Maybe Text)
plilVideoId
  = lens _plilVideoId (\ s a -> s{_plilVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plilKey :: Lens' PlayListItemsList' (Maybe AuthKey)
plilKey = lens _plilKey (\ s a -> s{_plilKey = a})

-- | The id parameter specifies a comma-separated list of one or more unique
-- playlist item IDs.
plilId :: Lens' PlayListItemsList' (Maybe Text)
plilId = lens _plilId (\ s a -> s{_plilId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
plilPageToken :: Lens' PlayListItemsList' (Maybe Text)
plilPageToken
  = lens _plilPageToken
      (\ s a -> s{_plilPageToken = a})

-- | OAuth 2.0 token for the current user.
plilOAuthToken :: Lens' PlayListItemsList' (Maybe OAuthToken)
plilOAuthToken
  = lens _plilOAuthToken
      (\ s a -> s{_plilOAuthToken = a})

-- | The playlistId parameter specifies the unique ID of the playlist for
-- which you want to retrieve playlist items. Note that even though this is
-- an optional parameter, every request to retrieve playlist items must
-- specify a value for either the id parameter or the playlistId parameter.
plilPlayListId :: Lens' PlayListItemsList' (Maybe Text)
plilPlayListId
  = lens _plilPlayListId
      (\ s a -> s{_plilPlayListId = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
plilMaxResults :: Lens' PlayListItemsList' Word32
plilMaxResults
  = lens _plilMaxResults
      (\ s a -> s{_plilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plilFields :: Lens' PlayListItemsList' (Maybe Text)
plilFields
  = lens _plilFields (\ s a -> s{_plilFields = a})

instance GoogleAuth PlayListItemsList' where
        authKey = plilKey . _Just
        authToken = plilOAuthToken . _Just

instance GoogleRequest PlayListItemsList' where
        type Rs PlayListItemsList' = PlayListItemListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlayListItemsList'{..}
          = go (Just _plilPart) _plilOnBehalfOfContentOwner
              _plilVideoId
              _plilId
              _plilPageToken
              _plilPlayListId
              (Just _plilMaxResults)
              _plilQuotaUser
              (Just _plilPrettyPrint)
              _plilUserIP
              _plilFields
              _plilKey
              _plilOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayListItemsListResource)
                      r
                      u
