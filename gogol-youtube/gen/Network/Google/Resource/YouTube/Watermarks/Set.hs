{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Watermarks.Set
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a watermark image to YouTube and sets it for a channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeWatermarksSet@.
module Network.Google.Resource.YouTube.Watermarks.Set
    (
    -- * REST Resource
      WatermarksSetResource

    -- * Creating a Request
    , watermarksSet'
    , WatermarksSet'

    -- * Request Lenses
    , wsQuotaUser
    , wsPrettyPrint
    , wsUserIP
    , wsChannelId
    , wsPayload
    , wsMedia
    , wsOnBehalfOfContentOwner
    , wsKey
    , wsOAuthToken
    , wsFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeWatermarksSet@ which the
-- 'WatermarksSet'' request conforms to.
type WatermarksSetResource =
     "watermarks" :>
       "set" :>
         QueryParam "channelId" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           MultipartRelated '[JSON] InvideoBranding Body :>
                             Post '[JSON] ()

-- | Uploads a watermark image to YouTube and sets it for a channel.
--
-- /See:/ 'watermarksSet'' smart constructor.
data WatermarksSet' = WatermarksSet'
    { _wsQuotaUser              :: !(Maybe Text)
    , _wsPrettyPrint            :: !Bool
    , _wsUserIP                 :: !(Maybe Text)
    , _wsChannelId              :: !Text
    , _wsPayload                :: !InvideoBranding
    , _wsMedia                  :: !Body
    , _wsOnBehalfOfContentOwner :: !(Maybe Text)
    , _wsKey                    :: !(Maybe Key)
    , _wsOAuthToken             :: !(Maybe OAuthToken)
    , _wsFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatermarksSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsQuotaUser'
--
-- * 'wsPrettyPrint'
--
-- * 'wsUserIP'
--
-- * 'wsChannelId'
--
-- * 'wsPayload'
--
-- * 'wsMedia'
--
-- * 'wsOnBehalfOfContentOwner'
--
-- * 'wsKey'
--
-- * 'wsOAuthToken'
--
-- * 'wsFields'
watermarksSet'
    :: Text -- ^ 'channelId'
    -> InvideoBranding -- ^ 'payload'
    -> Body -- ^ 'media'
    -> WatermarksSet'
watermarksSet' pWsChannelId_ pWsPayload_ pWsMedia_ =
    WatermarksSet'
    { _wsQuotaUser = Nothing
    , _wsPrettyPrint = True
    , _wsUserIP = Nothing
    , _wsChannelId = pWsChannelId_
    , _wsPayload = pWsPayload_
    , _wsMedia = pWsMedia_
    , _wsOnBehalfOfContentOwner = Nothing
    , _wsKey = Nothing
    , _wsOAuthToken = Nothing
    , _wsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wsQuotaUser :: Lens' WatermarksSet' (Maybe Text)
wsQuotaUser
  = lens _wsQuotaUser (\ s a -> s{_wsQuotaUser = a})

-- | Returns response with indentations and line breaks.
wsPrettyPrint :: Lens' WatermarksSet' Bool
wsPrettyPrint
  = lens _wsPrettyPrint
      (\ s a -> s{_wsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wsUserIP :: Lens' WatermarksSet' (Maybe Text)
wsUserIP = lens _wsUserIP (\ s a -> s{_wsUserIP = a})

-- | The channelId parameter specifies the YouTube channel ID for which the
-- watermark is being provided.
wsChannelId :: Lens' WatermarksSet' Text
wsChannelId
  = lens _wsChannelId (\ s a -> s{_wsChannelId = a})

-- | Multipart request metadata.
wsPayload :: Lens' WatermarksSet' InvideoBranding
wsPayload
  = lens _wsPayload (\ s a -> s{_wsPayload = a})

wsMedia :: Lens' WatermarksSet' Body
wsMedia = lens _wsMedia (\ s a -> s{_wsMedia = a})

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
wsOnBehalfOfContentOwner :: Lens' WatermarksSet' (Maybe Text)
wsOnBehalfOfContentOwner
  = lens _wsOnBehalfOfContentOwner
      (\ s a -> s{_wsOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wsKey :: Lens' WatermarksSet' (Maybe Key)
wsKey = lens _wsKey (\ s a -> s{_wsKey = a})

-- | OAuth 2.0 token for the current user.
wsOAuthToken :: Lens' WatermarksSet' (Maybe OAuthToken)
wsOAuthToken
  = lens _wsOAuthToken (\ s a -> s{_wsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wsFields :: Lens' WatermarksSet' (Maybe Text)
wsFields = lens _wsFields (\ s a -> s{_wsFields = a})

instance GoogleAuth WatermarksSet' where
        authKey = wsKey . _Just
        authToken = wsOAuthToken . _Just

instance GoogleRequest WatermarksSet' where
        type Rs WatermarksSet' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u WatermarksSet'{..}
          = go (Just _wsChannelId) _wsOnBehalfOfContentOwner
              _wsQuotaUser
              (Just _wsPrettyPrint)
              _wsUserIP
              _wsFields
              _wsKey
              _wsOAuthToken
              (Just AltJSON)
              _wsPayload
              _wsMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy WatermarksSetResource)
                      r
                      u
