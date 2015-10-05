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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Bind
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveBroadcastsBind@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Bind
    (
    -- * REST Resource
      LiveBroadcastsBindResource

    -- * Creating a Request
    , liveBroadcastsBind'
    , LiveBroadcastsBind'

    -- * Request Lenses
    , lbbQuotaUser
    , lbbPart
    , lbbPrettyPrint
    , lbbUserIP
    , lbbOnBehalfOfContentOwner
    , lbbKey
    , lbbOnBehalfOfContentOwnerChannel
    , lbbId
    , lbbOAuthToken
    , lbbStreamId
    , lbbFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsBind@ which the
-- 'LiveBroadcastsBind'' request conforms to.
type LiveBroadcastsBindResource =
     "liveBroadcasts" :>
       "bind" :>
         QueryParam "id" Text :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "onBehalfOfContentOwnerChannel" Text :>
                 QueryParam "streamId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] LiveBroadcast

-- | Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
--
-- /See:/ 'liveBroadcastsBind'' smart constructor.
data LiveBroadcastsBind' = LiveBroadcastsBind'
    { _lbbQuotaUser                     :: !(Maybe Text)
    , _lbbPart                          :: !Text
    , _lbbPrettyPrint                   :: !Bool
    , _lbbUserIP                        :: !(Maybe Text)
    , _lbbOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbbKey                           :: !(Maybe Key)
    , _lbbOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbbId                            :: !Text
    , _lbbOAuthToken                    :: !(Maybe OAuthToken)
    , _lbbStreamId                      :: !(Maybe Text)
    , _lbbFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsBind'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbQuotaUser'
--
-- * 'lbbPart'
--
-- * 'lbbPrettyPrint'
--
-- * 'lbbUserIP'
--
-- * 'lbbOnBehalfOfContentOwner'
--
-- * 'lbbKey'
--
-- * 'lbbOnBehalfOfContentOwnerChannel'
--
-- * 'lbbId'
--
-- * 'lbbOAuthToken'
--
-- * 'lbbStreamId'
--
-- * 'lbbFields'
liveBroadcastsBind'
    :: Text -- ^ 'part'
    -> Text -- ^ 'id'
    -> LiveBroadcastsBind'
liveBroadcastsBind' pLbbPart_ pLbbId_ =
    LiveBroadcastsBind'
    { _lbbQuotaUser = Nothing
    , _lbbPart = pLbbPart_
    , _lbbPrettyPrint = True
    , _lbbUserIP = Nothing
    , _lbbOnBehalfOfContentOwner = Nothing
    , _lbbKey = Nothing
    , _lbbOnBehalfOfContentOwnerChannel = Nothing
    , _lbbId = pLbbId_
    , _lbbOAuthToken = Nothing
    , _lbbStreamId = Nothing
    , _lbbFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbbQuotaUser :: Lens' LiveBroadcastsBind' (Maybe Text)
lbbQuotaUser
  = lens _lbbQuotaUser (\ s a -> s{_lbbQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbbPart :: Lens' LiveBroadcastsBind' Text
lbbPart = lens _lbbPart (\ s a -> s{_lbbPart = a})

-- | Returns response with indentations and line breaks.
lbbPrettyPrint :: Lens' LiveBroadcastsBind' Bool
lbbPrettyPrint
  = lens _lbbPrettyPrint
      (\ s a -> s{_lbbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbbUserIP :: Lens' LiveBroadcastsBind' (Maybe Text)
lbbUserIP
  = lens _lbbUserIP (\ s a -> s{_lbbUserIP = a})

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
lbbOnBehalfOfContentOwner :: Lens' LiveBroadcastsBind' (Maybe Text)
lbbOnBehalfOfContentOwner
  = lens _lbbOnBehalfOfContentOwner
      (\ s a -> s{_lbbOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbbKey :: Lens' LiveBroadcastsBind' (Maybe Key)
lbbKey = lens _lbbKey (\ s a -> s{_lbbKey = a})

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
lbbOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsBind' (Maybe Text)
lbbOnBehalfOfContentOwnerChannel
  = lens _lbbOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbbOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the unique ID of the broadcast that is being
-- bound to a video stream.
lbbId :: Lens' LiveBroadcastsBind' Text
lbbId = lens _lbbId (\ s a -> s{_lbbId = a})

-- | OAuth 2.0 token for the current user.
lbbOAuthToken :: Lens' LiveBroadcastsBind' (Maybe OAuthToken)
lbbOAuthToken
  = lens _lbbOAuthToken
      (\ s a -> s{_lbbOAuthToken = a})

-- | The streamId parameter specifies the unique ID of the video stream that
-- is being bound to a broadcast. If this parameter is omitted, the API
-- will remove any existing binding between the broadcast and a video
-- stream.
lbbStreamId :: Lens' LiveBroadcastsBind' (Maybe Text)
lbbStreamId
  = lens _lbbStreamId (\ s a -> s{_lbbStreamId = a})

-- | Selector specifying which fields to include in a partial response.
lbbFields :: Lens' LiveBroadcastsBind' (Maybe Text)
lbbFields
  = lens _lbbFields (\ s a -> s{_lbbFields = a})

instance GoogleAuth LiveBroadcastsBind' where
        authKey = lbbKey . _Just
        authToken = lbbOAuthToken . _Just

instance GoogleRequest LiveBroadcastsBind' where
        type Rs LiveBroadcastsBind' = LiveBroadcast
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsBind'{..}
          = go (Just _lbbId) (Just _lbbPart)
              _lbbOnBehalfOfContentOwner
              _lbbOnBehalfOfContentOwnerChannel
              _lbbStreamId
              _lbbQuotaUser
              (Just _lbbPrettyPrint)
              _lbbUserIP
              _lbbFields
              _lbbKey
              _lbbOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsBindResource)
                      r
                      u
