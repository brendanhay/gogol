{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Watermarks.Unset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a channel\'s watermark image.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.watermarks.unset@.
module Network.Google.API.YouTube.Watermarks.Unset
    (
    -- * REST Resource
      WatermarksUnsetAPI

    -- * Creating a Request
    , watermarksUnset'
    , WatermarksUnset'

    -- * Request Lenses
    , wuQuotaUser
    , wuPrettyPrint
    , wuUserIp
    , wuChannelId
    , wuOnBehalfOfContentOwner
    , wuKey
    , wuOauthToken
    , wuFields
    , wuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.watermarks.unset which the
-- 'WatermarksUnset'' request conforms to.
type WatermarksUnsetAPI =
     "watermarks" :>
       "unset" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "channelId" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Deletes a channel\'s watermark image.
--
-- /See:/ 'watermarksUnset'' smart constructor.
data WatermarksUnset' = WatermarksUnset'
    { _wuQuotaUser              :: !(Maybe Text)
    , _wuPrettyPrint            :: !Bool
    , _wuUserIp                 :: !(Maybe Text)
    , _wuChannelId              :: !Text
    , _wuOnBehalfOfContentOwner :: !(Maybe Text)
    , _wuKey                    :: !(Maybe Text)
    , _wuOauthToken             :: !(Maybe Text)
    , _wuFields                 :: !(Maybe Text)
    , _wuAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatermarksUnset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wuQuotaUser'
--
-- * 'wuPrettyPrint'
--
-- * 'wuUserIp'
--
-- * 'wuChannelId'
--
-- * 'wuOnBehalfOfContentOwner'
--
-- * 'wuKey'
--
-- * 'wuOauthToken'
--
-- * 'wuFields'
--
-- * 'wuAlt'
watermarksUnset'
    :: Text -- ^ 'channelId'
    -> WatermarksUnset'
watermarksUnset' pWuChannelId_ =
    WatermarksUnset'
    { _wuQuotaUser = Nothing
    , _wuPrettyPrint = True
    , _wuUserIp = Nothing
    , _wuChannelId = pWuChannelId_
    , _wuOnBehalfOfContentOwner = Nothing
    , _wuKey = Nothing
    , _wuOauthToken = Nothing
    , _wuFields = Nothing
    , _wuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wuQuotaUser :: Lens' WatermarksUnset' (Maybe Text)
wuQuotaUser
  = lens _wuQuotaUser (\ s a -> s{_wuQuotaUser = a})

-- | Returns response with indentations and line breaks.
wuPrettyPrint :: Lens' WatermarksUnset' Bool
wuPrettyPrint
  = lens _wuPrettyPrint
      (\ s a -> s{_wuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wuUserIp :: Lens' WatermarksUnset' (Maybe Text)
wuUserIp = lens _wuUserIp (\ s a -> s{_wuUserIp = a})

-- | The channelId parameter specifies the YouTube channel ID for which the
-- watermark is being unset.
wuChannelId :: Lens' WatermarksUnset' Text
wuChannelId
  = lens _wuChannelId (\ s a -> s{_wuChannelId = a})

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
wuOnBehalfOfContentOwner :: Lens' WatermarksUnset' (Maybe Text)
wuOnBehalfOfContentOwner
  = lens _wuOnBehalfOfContentOwner
      (\ s a -> s{_wuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wuKey :: Lens' WatermarksUnset' (Maybe Text)
wuKey = lens _wuKey (\ s a -> s{_wuKey = a})

-- | OAuth 2.0 token for the current user.
wuOauthToken :: Lens' WatermarksUnset' (Maybe Text)
wuOauthToken
  = lens _wuOauthToken (\ s a -> s{_wuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wuFields :: Lens' WatermarksUnset' (Maybe Text)
wuFields = lens _wuFields (\ s a -> s{_wuFields = a})

-- | Data format for the response.
wuAlt :: Lens' WatermarksUnset' Alt
wuAlt = lens _wuAlt (\ s a -> s{_wuAlt = a})

instance GoogleRequest WatermarksUnset' where
        type Rs WatermarksUnset' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u WatermarksUnset'{..}
          = go _wuQuotaUser (Just _wuPrettyPrint) _wuUserIp
              (Just _wuChannelId)
              _wuOnBehalfOfContentOwner
              _wuKey
              _wuOauthToken
              _wuFields
              (Just _wuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy WatermarksUnsetAPI)
                      r
                      u
