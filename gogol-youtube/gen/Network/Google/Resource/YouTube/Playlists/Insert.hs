{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Playlists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlaylistsInsert@.
module Network.Google.Resource.YouTube.Playlists.Insert
    (
    -- * REST Resource
      PlaylistsInsertResource

    -- * Creating a Request
    , playlistsInsert'
    , PlaylistsInsert'

    -- * Request Lenses
    , piQuotaUser
    , piPart
    , piPrettyPrint
    , piUserIp
    , piOnBehalfOfContentOwner
    , piKey
    , piOnBehalfOfContentOwnerChannel
    , piOauthToken
    , piFields
    , piAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlaylistsInsert@ which the
-- 'PlaylistsInsert'' request conforms to.
type PlaylistsInsertResource =
     "playlists" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "onBehalfOfContentOwnerChannel" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Playlist

-- | Creates a playlist.
--
-- /See:/ 'playlistsInsert'' smart constructor.
data PlaylistsInsert' = PlaylistsInsert'
    { _piQuotaUser                     :: !(Maybe Text)
    , _piPart                          :: !Text
    , _piPrettyPrint                   :: !Bool
    , _piUserIp                        :: !(Maybe Text)
    , _piOnBehalfOfContentOwner        :: !(Maybe Text)
    , _piKey                           :: !(Maybe Text)
    , _piOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _piOauthToken                    :: !(Maybe Text)
    , _piFields                        :: !(Maybe Text)
    , _piAlt                           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPart'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIp'
--
-- * 'piOnBehalfOfContentOwner'
--
-- * 'piKey'
--
-- * 'piOnBehalfOfContentOwnerChannel'
--
-- * 'piOauthToken'
--
-- * 'piFields'
--
-- * 'piAlt'
playlistsInsert'
    :: Text -- ^ 'part'
    -> PlaylistsInsert'
playlistsInsert' pPiPart_ =
    PlaylistsInsert'
    { _piQuotaUser = Nothing
    , _piPart = pPiPart_
    , _piPrettyPrint = True
    , _piUserIp = Nothing
    , _piOnBehalfOfContentOwner = Nothing
    , _piKey = Nothing
    , _piOnBehalfOfContentOwnerChannel = Nothing
    , _piOauthToken = Nothing
    , _piFields = Nothing
    , _piAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PlaylistsInsert' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
piPart :: Lens' PlaylistsInsert' Text
piPart = lens _piPart (\ s a -> s{_piPart = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PlaylistsInsert' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIp :: Lens' PlaylistsInsert' (Maybe Text)
piUserIp = lens _piUserIp (\ s a -> s{_piUserIp = a})

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
piOnBehalfOfContentOwner :: Lens' PlaylistsInsert' (Maybe Text)
piOnBehalfOfContentOwner
  = lens _piOnBehalfOfContentOwner
      (\ s a -> s{_piOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PlaylistsInsert' (Maybe Text)
piKey = lens _piKey (\ s a -> s{_piKey = a})

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
piOnBehalfOfContentOwnerChannel :: Lens' PlaylistsInsert' (Maybe Text)
piOnBehalfOfContentOwnerChannel
  = lens _piOnBehalfOfContentOwnerChannel
      (\ s a -> s{_piOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
piOauthToken :: Lens' PlaylistsInsert' (Maybe Text)
piOauthToken
  = lens _piOauthToken (\ s a -> s{_piOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PlaylistsInsert' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

-- | Data format for the response.
piAlt :: Lens' PlaylistsInsert' Alt
piAlt = lens _piAlt (\ s a -> s{_piAlt = a})

instance GoogleRequest PlaylistsInsert' where
        type Rs PlaylistsInsert' = Playlist
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistsInsert'{..}
          = go _piQuotaUser (Just _piPart)
              (Just _piPrettyPrint)
              _piUserIp
              _piOnBehalfOfContentOwner
              _piKey
              _piOnBehalfOfContentOwnerChannel
              _piOauthToken
              _piFields
              (Just _piAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlaylistsInsertResource)
                      r
                      u
