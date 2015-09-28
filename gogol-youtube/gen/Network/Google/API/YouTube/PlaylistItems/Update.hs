{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.PlaylistItems.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.playlistItems.update@.
module Network.Google.API.YouTube.PlaylistItems.Update
    (
    -- * REST Resource
      PlaylistItemsUpdateAPI

    -- * Creating a Request
    , playlistItemsUpdate'
    , PlaylistItemsUpdate'

    -- * Request Lenses
    , piuQuotaUser
    , piuPart
    , piuPrettyPrint
    , piuUserIp
    , piuKey
    , piuOauthToken
    , piuFields
    , piuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.playlistItems.update which the
-- 'PlaylistItemsUpdate'' request conforms to.
type PlaylistItemsUpdateAPI =
     "playlistItems" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] PlaylistItem

-- | Modifies a playlist item. For example, you could update the item\'s
-- position in the playlist.
--
-- /See:/ 'playlistItemsUpdate'' smart constructor.
data PlaylistItemsUpdate' = PlaylistItemsUpdate'
    { _piuQuotaUser   :: !(Maybe Text)
    , _piuPart        :: !Text
    , _piuPrettyPrint :: !Bool
    , _piuUserIp      :: !(Maybe Text)
    , _piuKey         :: !(Maybe Text)
    , _piuOauthToken  :: !(Maybe Text)
    , _piuFields      :: !(Maybe Text)
    , _piuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlaylistItemsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piuQuotaUser'
--
-- * 'piuPart'
--
-- * 'piuPrettyPrint'
--
-- * 'piuUserIp'
--
-- * 'piuKey'
--
-- * 'piuOauthToken'
--
-- * 'piuFields'
--
-- * 'piuAlt'
playlistItemsUpdate'
    :: Text -- ^ 'part'
    -> PlaylistItemsUpdate'
playlistItemsUpdate' pPiuPart_ =
    PlaylistItemsUpdate'
    { _piuQuotaUser = Nothing
    , _piuPart = pPiuPart_
    , _piuPrettyPrint = True
    , _piuUserIp = Nothing
    , _piuKey = Nothing
    , _piuOauthToken = Nothing
    , _piuFields = Nothing
    , _piuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piuQuotaUser :: Lens' PlaylistItemsUpdate' (Maybe Text)
piuQuotaUser
  = lens _piuQuotaUser (\ s a -> s{_piuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a playlist item can specify a start time and end time, which
-- identify the times portion of the video that should play when users
-- watch the video in the playlist. If your request is updating a playlist
-- item that sets these values, and the request\'s part parameter value
-- includes the contentDetails part, the playlist item\'s start and end
-- times will be updated to whatever value the request body specifies. If
-- the request body does not specify values, the existing start and end
-- times will be removed and replaced with the default settings.
piuPart :: Lens' PlaylistItemsUpdate' Text
piuPart = lens _piuPart (\ s a -> s{_piuPart = a})

-- | Returns response with indentations and line breaks.
piuPrettyPrint :: Lens' PlaylistItemsUpdate' Bool
piuPrettyPrint
  = lens _piuPrettyPrint
      (\ s a -> s{_piuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piuUserIp :: Lens' PlaylistItemsUpdate' (Maybe Text)
piuUserIp
  = lens _piuUserIp (\ s a -> s{_piuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piuKey :: Lens' PlaylistItemsUpdate' (Maybe Text)
piuKey = lens _piuKey (\ s a -> s{_piuKey = a})

-- | OAuth 2.0 token for the current user.
piuOauthToken :: Lens' PlaylistItemsUpdate' (Maybe Text)
piuOauthToken
  = lens _piuOauthToken
      (\ s a -> s{_piuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piuFields :: Lens' PlaylistItemsUpdate' (Maybe Text)
piuFields
  = lens _piuFields (\ s a -> s{_piuFields = a})

-- | Data format for the response.
piuAlt :: Lens' PlaylistItemsUpdate' Alt
piuAlt = lens _piuAlt (\ s a -> s{_piuAlt = a})

instance GoogleRequest PlaylistItemsUpdate' where
        type Rs PlaylistItemsUpdate' = PlaylistItem
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlaylistItemsUpdate'{..}
          = go _piuQuotaUser (Just _piuPart)
              (Just _piuPrettyPrint)
              _piuUserIp
              _piuKey
              _piuOauthToken
              _piuFields
              (Just _piuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlaylistItemsUpdateAPI)
                      r
                      u
