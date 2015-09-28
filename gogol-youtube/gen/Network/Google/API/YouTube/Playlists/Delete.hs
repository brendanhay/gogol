{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Playlists.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlists.delete@.
module Network.Google.API.YouTube.Playlists.Delete
    (
    -- * REST Resource
      PlaylistsDeleteAPI

    -- * Creating a Request
    , playlistsDelete'
    , PlaylistsDelete'

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdUserIp
    , pdOnBehalfOfContentOwner
    , pdKey
    , pdId
    , pdOauthToken
    , pdFields
    , pdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.playlists.delete which the
-- 'PlaylistsDelete'' request conforms to.
type PlaylistsDeleteAPI =
     "playlists" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "id" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a playlist.
--
-- /See:/ 'playlistsDelete'' smart constructor.
data PlaylistsDelete' = PlaylistsDelete'
    { _pdQuotaUser              :: !(Maybe Text)
    , _pdPrettyPrint            :: !Bool
    , _pdUserIp                 :: !(Maybe Text)
    , _pdOnBehalfOfContentOwner :: !(Maybe Text)
    , _pdKey                    :: !(Maybe Text)
    , _pdId                     :: !Text
    , _pdOauthToken             :: !(Maybe Text)
    , _pdFields                 :: !(Maybe Text)
    , _pdAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIp'
--
-- * 'pdOnBehalfOfContentOwner'
--
-- * 'pdKey'
--
-- * 'pdId'
--
-- * 'pdOauthToken'
--
-- * 'pdFields'
--
-- * 'pdAlt'
playlistsDelete'
    :: Text -- ^ 'id'
    -> PlaylistsDelete'
playlistsDelete' pPdId_ =
    PlaylistsDelete'
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUserIp = Nothing
    , _pdOnBehalfOfContentOwner = Nothing
    , _pdKey = Nothing
    , _pdId = pPdId_
    , _pdOauthToken = Nothing
    , _pdFields = Nothing
    , _pdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' PlaylistsDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' PlaylistsDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIp :: Lens' PlaylistsDelete' (Maybe Text)
pdUserIp = lens _pdUserIp (\ s a -> s{_pdUserIp = a})

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
pdOnBehalfOfContentOwner :: Lens' PlaylistsDelete' (Maybe Text)
pdOnBehalfOfContentOwner
  = lens _pdOnBehalfOfContentOwner
      (\ s a -> s{_pdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PlaylistsDelete' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The id parameter specifies the YouTube playlist ID for the playlist that
-- is being deleted. In a playlist resource, the id property specifies the
-- playlist\'s ID.
pdId :: Lens' PlaylistsDelete' Text
pdId = lens _pdId (\ s a -> s{_pdId = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' PlaylistsDelete' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PlaylistsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | Data format for the response.
pdAlt :: Lens' PlaylistsDelete' Alt
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest PlaylistsDelete' where
        type Rs PlaylistsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistsDelete'{..}
          = go _pdQuotaUser (Just _pdPrettyPrint) _pdUserIp
              _pdOnBehalfOfContentOwner
              _pdKey
              (Just _pdId)
              _pdOauthToken
              _pdFields
              (Just _pdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlaylistsDeleteAPI)
                      r
                      u
