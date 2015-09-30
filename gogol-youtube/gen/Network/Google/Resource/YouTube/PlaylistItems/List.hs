{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.PlaylistItems.List
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
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlaylistItemsList@.
module YouTube.PlaylistItems.List
    (
    -- * REST Resource
      PlaylistItemsListAPI

    -- * Creating a Request
    , playlistItemsList
    , PlaylistItemsList

    -- * Request Lenses
    , pilQuotaUser
    , pilPart
    , pilPrettyPrint
    , pilUserIp
    , pilOnBehalfOfContentOwner
    , pilVideoId
    , pilKey
    , pilId
    , pilPageToken
    , pilOauthToken
    , pilPlaylistId
    , pilMaxResults
    , pilFields
    , pilAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlaylistItemsList@ which the
-- 'PlaylistItemsList' request conforms to.
type PlaylistItemsListAPI =
     "playlistItems" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "videoId" Text :>
             QueryParam "id" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "playlistId" Text :>
                   QueryParam "maxResults" Word32 :>
                     Get '[JSON] PlaylistItemListResponse

-- | Returns a collection of playlist items that match the API request
-- parameters. You can retrieve all of the playlist items in a specified
-- playlist or retrieve one or more playlist items by their unique IDs.
--
-- /See:/ 'playlistItemsList' smart constructor.
data PlaylistItemsList = PlaylistItemsList
    { _pilQuotaUser              :: !(Maybe Text)
    , _pilPart                   :: !Text
    , _pilPrettyPrint            :: !Bool
    , _pilUserIp                 :: !(Maybe Text)
    , _pilOnBehalfOfContentOwner :: !(Maybe Text)
    , _pilVideoId                :: !(Maybe Text)
    , _pilKey                    :: !(Maybe Text)
    , _pilId                     :: !(Maybe Text)
    , _pilPageToken              :: !(Maybe Text)
    , _pilOauthToken             :: !(Maybe Text)
    , _pilPlaylistId             :: !(Maybe Text)
    , _pilMaxResults             :: !Word32
    , _pilFields                 :: !(Maybe Text)
    , _pilAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilQuotaUser'
--
-- * 'pilPart'
--
-- * 'pilPrettyPrint'
--
-- * 'pilUserIp'
--
-- * 'pilOnBehalfOfContentOwner'
--
-- * 'pilVideoId'
--
-- * 'pilKey'
--
-- * 'pilId'
--
-- * 'pilPageToken'
--
-- * 'pilOauthToken'
--
-- * 'pilPlaylistId'
--
-- * 'pilMaxResults'
--
-- * 'pilFields'
--
-- * 'pilAlt'
playlistItemsList
    :: Text -- ^ 'part'
    -> PlaylistItemsList
playlistItemsList pPilPart_ =
    PlaylistItemsList
    { _pilQuotaUser = Nothing
    , _pilPart = pPilPart_
    , _pilPrettyPrint = True
    , _pilUserIp = Nothing
    , _pilOnBehalfOfContentOwner = Nothing
    , _pilVideoId = Nothing
    , _pilKey = Nothing
    , _pilId = Nothing
    , _pilPageToken = Nothing
    , _pilOauthToken = Nothing
    , _pilPlaylistId = Nothing
    , _pilMaxResults = 5
    , _pilFields = Nothing
    , _pilAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pilQuotaUser :: Lens' PlaylistItemsList' (Maybe Text)
pilQuotaUser
  = lens _pilQuotaUser (\ s a -> s{_pilQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- playlistItem resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- playlistItem resource, the snippet property contains numerous fields,
-- including the title, description, position, and resourceId properties.
-- As such, if you set part=snippet, the API response will contain all of
-- those properties.
pilPart :: Lens' PlaylistItemsList' Text
pilPart = lens _pilPart (\ s a -> s{_pilPart = a})

-- | Returns response with indentations and line breaks.
pilPrettyPrint :: Lens' PlaylistItemsList' Bool
pilPrettyPrint
  = lens _pilPrettyPrint
      (\ s a -> s{_pilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pilUserIp :: Lens' PlaylistItemsList' (Maybe Text)
pilUserIp
  = lens _pilUserIp (\ s a -> s{_pilUserIp = a})

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
pilOnBehalfOfContentOwner :: Lens' PlaylistItemsList' (Maybe Text)
pilOnBehalfOfContentOwner
  = lens _pilOnBehalfOfContentOwner
      (\ s a -> s{_pilOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies that the request should return only the
-- playlist items that contain the specified video.
pilVideoId :: Lens' PlaylistItemsList' (Maybe Text)
pilVideoId
  = lens _pilVideoId (\ s a -> s{_pilVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pilKey :: Lens' PlaylistItemsList' (Maybe Text)
pilKey = lens _pilKey (\ s a -> s{_pilKey = a})

-- | The id parameter specifies a comma-separated list of one or more unique
-- playlist item IDs.
pilId :: Lens' PlaylistItemsList' (Maybe Text)
pilId = lens _pilId (\ s a -> s{_pilId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
pilPageToken :: Lens' PlaylistItemsList' (Maybe Text)
pilPageToken
  = lens _pilPageToken (\ s a -> s{_pilPageToken = a})

-- | OAuth 2.0 token for the current user.
pilOauthToken :: Lens' PlaylistItemsList' (Maybe Text)
pilOauthToken
  = lens _pilOauthToken
      (\ s a -> s{_pilOauthToken = a})

-- | The playlistId parameter specifies the unique ID of the playlist for
-- which you want to retrieve playlist items. Note that even though this is
-- an optional parameter, every request to retrieve playlist items must
-- specify a value for either the id parameter or the playlistId parameter.
pilPlaylistId :: Lens' PlaylistItemsList' (Maybe Text)
pilPlaylistId
  = lens _pilPlaylistId
      (\ s a -> s{_pilPlaylistId = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
pilMaxResults :: Lens' PlaylistItemsList' Word32
pilMaxResults
  = lens _pilMaxResults
      (\ s a -> s{_pilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
pilFields :: Lens' PlaylistItemsList' (Maybe Text)
pilFields
  = lens _pilFields (\ s a -> s{_pilFields = a})

-- | Data format for the response.
pilAlt :: Lens' PlaylistItemsList' Text
pilAlt = lens _pilAlt (\ s a -> s{_pilAlt = a})

instance GoogleRequest PlaylistItemsList' where
        type Rs PlaylistItemsList' = PlaylistItemListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistItemsList{..}
          = go _pilQuotaUser (Just _pilPart) _pilPrettyPrint
              _pilUserIp
              _pilOnBehalfOfContentOwner
              _pilVideoId
              _pilKey
              _pilId
              _pilPageToken
              _pilOauthToken
              _pilPlaylistId
              (Just _pilMaxResults)
              _pilFields
              _pilAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlaylistItemsListAPI)
                      r
                      u
