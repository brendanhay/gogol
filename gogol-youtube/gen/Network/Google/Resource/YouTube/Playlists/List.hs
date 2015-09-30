{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Playlists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of playlists that match the API request parameters.
-- For example, you can retrieve all playlists that the authenticated user
-- owns, or you can retrieve one or more playlists by their unique IDs.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlaylistsList@.
module YouTube.Playlists.List
    (
    -- * REST Resource
      PlaylistsListAPI

    -- * Creating a Request
    , playlistsList
    , PlaylistsList

    -- * Request Lenses
    , plQuotaUser
    , plPart
    , plPrettyPrint
    , plMine
    , plUserIp
    , plChannelId
    , plHl
    , plOnBehalfOfContentOwner
    , plKey
    , plOnBehalfOfContentOwnerChannel
    , plId
    , plPageToken
    , plOauthToken
    , plMaxResults
    , plFields
    , plAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlaylistsList@ which the
-- 'PlaylistsList' request conforms to.
type PlaylistsListAPI =
     "playlists" :>
       QueryParam "part" Text :>
         QueryParam "mine" Bool :>
           QueryParam "channelId" Text :>
             QueryParam "hl" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "onBehalfOfContentOwnerChannel" Text :>
                   QueryParam "id" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         Get '[JSON] PlaylistListResponse

-- | Returns a collection of playlists that match the API request parameters.
-- For example, you can retrieve all playlists that the authenticated user
-- owns, or you can retrieve one or more playlists by their unique IDs.
--
-- /See:/ 'playlistsList' smart constructor.
data PlaylistsList = PlaylistsList
    { _plQuotaUser                     :: !(Maybe Text)
    , _plPart                          :: !Text
    , _plPrettyPrint                   :: !Bool
    , _plMine                          :: !(Maybe Bool)
    , _plUserIp                        :: !(Maybe Text)
    , _plChannelId                     :: !(Maybe Text)
    , _plHl                            :: !(Maybe Text)
    , _plOnBehalfOfContentOwner        :: !(Maybe Text)
    , _plKey                           :: !(Maybe Text)
    , _plOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _plId                            :: !(Maybe Text)
    , _plPageToken                     :: !(Maybe Text)
    , _plOauthToken                    :: !(Maybe Text)
    , _plMaxResults                    :: !Word32
    , _plFields                        :: !(Maybe Text)
    , _plAlt                           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPart'
--
-- * 'plPrettyPrint'
--
-- * 'plMine'
--
-- * 'plUserIp'
--
-- * 'plChannelId'
--
-- * 'plHl'
--
-- * 'plOnBehalfOfContentOwner'
--
-- * 'plKey'
--
-- * 'plOnBehalfOfContentOwnerChannel'
--
-- * 'plId'
--
-- * 'plPageToken'
--
-- * 'plOauthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
--
-- * 'plAlt'
playlistsList
    :: Text -- ^ 'part'
    -> PlaylistsList
playlistsList pPlPart_ =
    PlaylistsList
    { _plQuotaUser = Nothing
    , _plPart = pPlPart_
    , _plPrettyPrint = True
    , _plMine = Nothing
    , _plUserIp = Nothing
    , _plChannelId = Nothing
    , _plHl = Nothing
    , _plOnBehalfOfContentOwner = Nothing
    , _plKey = Nothing
    , _plOnBehalfOfContentOwnerChannel = Nothing
    , _plId = Nothing
    , _plPageToken = Nothing
    , _plOauthToken = Nothing
    , _plMaxResults = 5
    , _plFields = Nothing
    , _plAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PlaylistsList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- playlist resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- playlist resource, the snippet property contains properties like author,
-- title, description, tags, and timeCreated. As such, if you set
-- part=snippet, the API response will contain all of those properties.
plPart :: Lens' PlaylistsList' Text
plPart = lens _plPart (\ s a -> s{_plPart = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PlaylistsList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | Set this parameter\'s value to true to instruct the API to only return
-- playlists owned by the authenticated user.
plMine :: Lens' PlaylistsList' (Maybe Bool)
plMine = lens _plMine (\ s a -> s{_plMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' PlaylistsList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | This value indicates that the API should only return the specified
-- channel\'s playlists.
plChannelId :: Lens' PlaylistsList' (Maybe Text)
plChannelId
  = lens _plChannelId (\ s a -> s{_plChannelId = a})

-- | The hl parameter should be used for filter out the properties that are
-- not in the given language. Used for the snippet part.
plHl :: Lens' PlaylistsList' (Maybe Text)
plHl = lens _plHl (\ s a -> s{_plHl = a})

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
plOnBehalfOfContentOwner :: Lens' PlaylistsList' (Maybe Text)
plOnBehalfOfContentOwner
  = lens _plOnBehalfOfContentOwner
      (\ s a -> s{_plOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PlaylistsList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
plOnBehalfOfContentOwnerChannel :: Lens' PlaylistsList' (Maybe Text)
plOnBehalfOfContentOwnerChannel
  = lens _plOnBehalfOfContentOwnerChannel
      (\ s a -> s{_plOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of the YouTube
-- playlist ID(s) for the resource(s) that are being retrieved. In a
-- playlist resource, the id property specifies the playlist\'s YouTube
-- playlist ID.
plId :: Lens' PlaylistsList' (Maybe Text)
plId = lens _plId (\ s a -> s{_plId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
plPageToken :: Lens' PlaylistsList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PlaylistsList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
plMaxResults :: Lens' PlaylistsList' Word32
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PlaylistsList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PlaylistsList' Text
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PlaylistsList' where
        type Rs PlaylistsList' = PlaylistListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistsList{..}
          = go _plQuotaUser (Just _plPart) _plPrettyPrint
              _plMine
              _plUserIp
              _plChannelId
              _plHl
              _plOnBehalfOfContentOwner
              _plKey
              _plOnBehalfOfContentOwnerChannel
              _plId
              _plPageToken
              _plOauthToken
              (Just _plMaxResults)
              _plFields
              _plAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PlaylistsListAPI) r
                      u
