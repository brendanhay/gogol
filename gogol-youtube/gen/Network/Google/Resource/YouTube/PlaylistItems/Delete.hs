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
-- Module      : Network.Google.Resource.YouTube.PlaylistItems.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a playlist item.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlaylistItemsDelete@.
module Network.Google.Resource.YouTube.PlaylistItems.Delete
    (
    -- * REST Resource
      PlaylistItemsDeleteResource

    -- * Creating a Request
    , playlistItemsDelete'
    , PlaylistItemsDelete'

    -- * Request Lenses
    , pidQuotaUser
    , pidPrettyPrint
    , pidUserIp
    , pidKey
    , pidId
    , pidOauthToken
    , pidFields
    , pidAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlaylistItemsDelete@ which the
-- 'PlaylistItemsDelete'' request conforms to.
type PlaylistItemsDeleteResource =
     "playlistItems" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "id" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a playlist item.
--
-- /See:/ 'playlistItemsDelete'' smart constructor.
data PlaylistItemsDelete' = PlaylistItemsDelete'
    { _pidQuotaUser   :: !(Maybe Text)
    , _pidPrettyPrint :: !Bool
    , _pidUserIp      :: !(Maybe Text)
    , _pidKey         :: !(Maybe Text)
    , _pidId          :: !Text
    , _pidOauthToken  :: !(Maybe Text)
    , _pidFields      :: !(Maybe Text)
    , _pidAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidQuotaUser'
--
-- * 'pidPrettyPrint'
--
-- * 'pidUserIp'
--
-- * 'pidKey'
--
-- * 'pidId'
--
-- * 'pidOauthToken'
--
-- * 'pidFields'
--
-- * 'pidAlt'
playlistItemsDelete'
    :: Text -- ^ 'id'
    -> PlaylistItemsDelete'
playlistItemsDelete' pPidId_ =
    PlaylistItemsDelete'
    { _pidQuotaUser = Nothing
    , _pidPrettyPrint = True
    , _pidUserIp = Nothing
    , _pidKey = Nothing
    , _pidId = pPidId_
    , _pidOauthToken = Nothing
    , _pidFields = Nothing
    , _pidAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pidQuotaUser :: Lens' PlaylistItemsDelete' (Maybe Text)
pidQuotaUser
  = lens _pidQuotaUser (\ s a -> s{_pidQuotaUser = a})

-- | Returns response with indentations and line breaks.
pidPrettyPrint :: Lens' PlaylistItemsDelete' Bool
pidPrettyPrint
  = lens _pidPrettyPrint
      (\ s a -> s{_pidPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pidUserIp :: Lens' PlaylistItemsDelete' (Maybe Text)
pidUserIp
  = lens _pidUserIp (\ s a -> s{_pidUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pidKey :: Lens' PlaylistItemsDelete' (Maybe Text)
pidKey = lens _pidKey (\ s a -> s{_pidKey = a})

-- | The id parameter specifies the YouTube playlist item ID for the playlist
-- item that is being deleted. In a playlistItem resource, the id property
-- specifies the playlist item\'s ID.
pidId :: Lens' PlaylistItemsDelete' Text
pidId = lens _pidId (\ s a -> s{_pidId = a})

-- | OAuth 2.0 token for the current user.
pidOauthToken :: Lens' PlaylistItemsDelete' (Maybe Text)
pidOauthToken
  = lens _pidOauthToken
      (\ s a -> s{_pidOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pidFields :: Lens' PlaylistItemsDelete' (Maybe Text)
pidFields
  = lens _pidFields (\ s a -> s{_pidFields = a})

-- | Data format for the response.
pidAlt :: Lens' PlaylistItemsDelete' Alt
pidAlt = lens _pidAlt (\ s a -> s{_pidAlt = a})

instance GoogleRequest PlaylistItemsDelete' where
        type Rs PlaylistItemsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistItemsDelete'{..}
          = go _pidQuotaUser (Just _pidPrettyPrint) _pidUserIp
              _pidKey
              (Just _pidId)
              _pidOauthToken
              _pidFields
              (Just _pidAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlaylistItemsDeleteResource)
                      r
                      u
