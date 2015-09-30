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
-- Module      : Network.Google.Resource.YouTube.Playlists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a playlist. For example, you could change a playlist\'s title,
-- description, or privacy status.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlaylistsUpdate@.
module Network.Google.Resource.YouTube.Playlists.Update
    (
    -- * REST Resource
      PlaylistsUpdateResource

    -- * Creating a Request
    , playlistsUpdate'
    , PlaylistsUpdate'

    -- * Request Lenses
    , puQuotaUser
    , puPart
    , puPrettyPrint
    , puUserIp
    , puOnBehalfOfContentOwner
    , puKey
    , puOauthToken
    , puFields
    , puAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlaylistsUpdate@ which the
-- 'PlaylistsUpdate'' request conforms to.
type PlaylistsUpdateResource =
     "playlists" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Playlist

-- | Modifies a playlist. For example, you could change a playlist\'s title,
-- description, or privacy status.
--
-- /See:/ 'playlistsUpdate'' smart constructor.
data PlaylistsUpdate' = PlaylistsUpdate'
    { _puQuotaUser              :: !(Maybe Text)
    , _puPart                   :: !Text
    , _puPrettyPrint            :: !Bool
    , _puUserIp                 :: !(Maybe Text)
    , _puOnBehalfOfContentOwner :: !(Maybe Text)
    , _puKey                    :: !(Maybe Text)
    , _puOauthToken             :: !(Maybe Text)
    , _puFields                 :: !(Maybe Text)
    , _puAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPart'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIp'
--
-- * 'puOnBehalfOfContentOwner'
--
-- * 'puKey'
--
-- * 'puOauthToken'
--
-- * 'puFields'
--
-- * 'puAlt'
playlistsUpdate'
    :: Text -- ^ 'part'
    -> PlaylistsUpdate'
playlistsUpdate' pPuPart_ =
    PlaylistsUpdate'
    { _puQuotaUser = Nothing
    , _puPart = pPuPart_
    , _puPrettyPrint = True
    , _puUserIp = Nothing
    , _puOnBehalfOfContentOwner = Nothing
    , _puKey = Nothing
    , _puOauthToken = Nothing
    , _puFields = Nothing
    , _puAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PlaylistsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for mutable properties that are
-- contained in any parts that the request body specifies. For example, a
-- playlist\'s description is contained in the snippet part, which must be
-- included in the request body. If the request does not specify a value
-- for the snippet.description property, the playlist\'s existing
-- description will be deleted.
puPart :: Lens' PlaylistsUpdate' Text
puPart = lens _puPart (\ s a -> s{_puPart = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PlaylistsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIp :: Lens' PlaylistsUpdate' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

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
puOnBehalfOfContentOwner :: Lens' PlaylistsUpdate' (Maybe Text)
puOnBehalfOfContentOwner
  = lens _puOnBehalfOfContentOwner
      (\ s a -> s{_puOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PlaylistsUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PlaylistsUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PlaylistsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PlaylistsUpdate' Alt
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PlaylistsUpdate' where
        type Rs PlaylistsUpdate' = Playlist
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistsUpdate'{..}
          = go _puQuotaUser (Just _puPart)
              (Just _puPrettyPrint)
              _puUserIp
              _puOnBehalfOfContentOwner
              _puKey
              _puOauthToken
              _puFields
              (Just _puAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlaylistsUpdateResource)
                      r
                      u
