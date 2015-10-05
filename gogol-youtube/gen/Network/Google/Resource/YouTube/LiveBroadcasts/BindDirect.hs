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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.BindDirect
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
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveBroadcastsBind_direct@.
module Network.Google.Resource.YouTube.LiveBroadcasts.BindDirect
    (
    -- * REST Resource
      LiveBroadcastsBindDirectResource

    -- * Creating a Request
    , liveBroadcastsBindDirect'
    , LiveBroadcastsBindDirect'

    -- * Request Lenses
    , lbbdQuotaUser
    , lbbdPart
    , lbbdPrettyPrint
    , lbbdUserIP
    , lbbdOnBehalfOfContentOwner
    , lbbdKey
    , lbbdOnBehalfOfContentOwnerChannel
    , lbbdId
    , lbbdOAuthToken
    , lbbdStreamId
    , lbbdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsBind_direct@ which the
-- 'LiveBroadcastsBindDirect'' request conforms to.
type LiveBroadcastsBindDirectResource =
     "liveBroadcasts" :>
       "bind" :>
         "direct" :>
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
-- /See:/ 'liveBroadcastsBindDirect'' smart constructor.
data LiveBroadcastsBindDirect' = LiveBroadcastsBindDirect'
    { _lbbdQuotaUser                     :: !(Maybe Text)
    , _lbbdPart                          :: !Text
    , _lbbdPrettyPrint                   :: !Bool
    , _lbbdUserIP                        :: !(Maybe Text)
    , _lbbdOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbbdKey                           :: !(Maybe Key)
    , _lbbdOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbbdId                            :: !Text
    , _lbbdOAuthToken                    :: !(Maybe OAuthToken)
    , _lbbdStreamId                      :: !(Maybe Text)
    , _lbbdFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsBindDirect'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbbdQuotaUser'
--
-- * 'lbbdPart'
--
-- * 'lbbdPrettyPrint'
--
-- * 'lbbdUserIP'
--
-- * 'lbbdOnBehalfOfContentOwner'
--
-- * 'lbbdKey'
--
-- * 'lbbdOnBehalfOfContentOwnerChannel'
--
-- * 'lbbdId'
--
-- * 'lbbdOAuthToken'
--
-- * 'lbbdStreamId'
--
-- * 'lbbdFields'
liveBroadcastsBindDirect'
    :: Text -- ^ 'part'
    -> Text -- ^ 'id'
    -> LiveBroadcastsBindDirect'
liveBroadcastsBindDirect' pLbbdPart_ pLbbdId_ =
    LiveBroadcastsBindDirect'
    { _lbbdQuotaUser = Nothing
    , _lbbdPart = pLbbdPart_
    , _lbbdPrettyPrint = True
    , _lbbdUserIP = Nothing
    , _lbbdOnBehalfOfContentOwner = Nothing
    , _lbbdKey = Nothing
    , _lbbdOnBehalfOfContentOwnerChannel = Nothing
    , _lbbdId = pLbbdId_
    , _lbbdOAuthToken = Nothing
    , _lbbdStreamId = Nothing
    , _lbbdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbbdQuotaUser :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdQuotaUser
  = lens _lbbdQuotaUser
      (\ s a -> s{_lbbdQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbbdPart :: Lens' LiveBroadcastsBindDirect' Text
lbbdPart = lens _lbbdPart (\ s a -> s{_lbbdPart = a})

-- | Returns response with indentations and line breaks.
lbbdPrettyPrint :: Lens' LiveBroadcastsBindDirect' Bool
lbbdPrettyPrint
  = lens _lbbdPrettyPrint
      (\ s a -> s{_lbbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbbdUserIP :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdUserIP
  = lens _lbbdUserIP (\ s a -> s{_lbbdUserIP = a})

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
lbbdOnBehalfOfContentOwner :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdOnBehalfOfContentOwner
  = lens _lbbdOnBehalfOfContentOwner
      (\ s a -> s{_lbbdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbbdKey :: Lens' LiveBroadcastsBindDirect' (Maybe Key)
lbbdKey = lens _lbbdKey (\ s a -> s{_lbbdKey = a})

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
lbbdOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdOnBehalfOfContentOwnerChannel
  = lens _lbbdOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbbdOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the unique ID of the broadcast that is being
-- bound to a video stream.
lbbdId :: Lens' LiveBroadcastsBindDirect' Text
lbbdId = lens _lbbdId (\ s a -> s{_lbbdId = a})

-- | OAuth 2.0 token for the current user.
lbbdOAuthToken :: Lens' LiveBroadcastsBindDirect' (Maybe OAuthToken)
lbbdOAuthToken
  = lens _lbbdOAuthToken
      (\ s a -> s{_lbbdOAuthToken = a})

-- | The streamId parameter specifies the unique ID of the video stream that
-- is being bound to a broadcast. If this parameter is omitted, the API
-- will remove any existing binding between the broadcast and a video
-- stream.
lbbdStreamId :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdStreamId
  = lens _lbbdStreamId (\ s a -> s{_lbbdStreamId = a})

-- | Selector specifying which fields to include in a partial response.
lbbdFields :: Lens' LiveBroadcastsBindDirect' (Maybe Text)
lbbdFields
  = lens _lbbdFields (\ s a -> s{_lbbdFields = a})

instance GoogleAuth LiveBroadcastsBindDirect' where
        authKey = lbbdKey . _Just
        authToken = lbbdOAuthToken . _Just

instance GoogleRequest LiveBroadcastsBindDirect'
         where
        type Rs LiveBroadcastsBindDirect' = LiveBroadcast
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsBindDirect'{..}
          = go (Just _lbbdId) (Just _lbbdPart)
              _lbbdOnBehalfOfContentOwner
              _lbbdOnBehalfOfContentOwnerChannel
              _lbbdStreamId
              _lbbdQuotaUser
              (Just _lbbdPrettyPrint)
              _lbbdUserIP
              _lbbdFields
              _lbbdKey
              _lbbdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsBindDirectResource)
                      r
                      u
