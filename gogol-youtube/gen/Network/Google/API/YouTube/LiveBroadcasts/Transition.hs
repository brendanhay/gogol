{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.LiveBroadcasts.Transition
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes the status of a YouTube live broadcast and initiates any
-- processes associated with the new status. For example, when you
-- transition a broadcast\'s status to testing, YouTube starts to transmit
-- video to that broadcast\'s monitor stream. Before calling this method,
-- you should confirm that the value of the status.streamStatus property
-- for the stream bound to your broadcast is active.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.liveBroadcasts.transition@.
module Network.Google.API.YouTube.LiveBroadcasts.Transition
    (
    -- * REST Resource
      LiveBroadcastsTransitionAPI

    -- * Creating a Request
    , liveBroadcastsTransition'
    , LiveBroadcastsTransition'

    -- * Request Lenses
    , lbtQuotaUser
    , lbtPart
    , lbtPrettyPrint
    , lbtUserIp
    , lbtBroadcastStatus
    , lbtOnBehalfOfContentOwner
    , lbtKey
    , lbtOnBehalfOfContentOwnerChannel
    , lbtId
    , lbtOauthToken
    , lbtFields
    , lbtAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.liveBroadcasts.transition which the
-- 'LiveBroadcastsTransition'' request conforms to.
type LiveBroadcastsTransitionAPI =
     "liveBroadcasts" :>
       "transition" :>
         QueryParam "quotaUser" Text :>
           QueryParam "part" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "broadcastStatus"
                   LiveBroadcastsTransition'BroadcastStatus
                   :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "key" Text :>
                       QueryParam "onBehalfOfContentOwnerChannel" Text :>
                         QueryParam "id" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Post '[JSON] LiveBroadcast

-- | Changes the status of a YouTube live broadcast and initiates any
-- processes associated with the new status. For example, when you
-- transition a broadcast\'s status to testing, YouTube starts to transmit
-- video to that broadcast\'s monitor stream. Before calling this method,
-- you should confirm that the value of the status.streamStatus property
-- for the stream bound to your broadcast is active.
--
-- /See:/ 'liveBroadcastsTransition'' smart constructor.
data LiveBroadcastsTransition' = LiveBroadcastsTransition'
    { _lbtQuotaUser                     :: !(Maybe Text)
    , _lbtPart                          :: !Text
    , _lbtPrettyPrint                   :: !Bool
    , _lbtUserIp                        :: !(Maybe Text)
    , _lbtBroadcastStatus               :: !LiveBroadcastsTransition'BroadcastStatus
    , _lbtOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbtKey                           :: !(Maybe Text)
    , _lbtOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbtId                            :: !Text
    , _lbtOauthToken                    :: !(Maybe Text)
    , _lbtFields                        :: !(Maybe Text)
    , _lbtAlt                           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsTransition'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtQuotaUser'
--
-- * 'lbtPart'
--
-- * 'lbtPrettyPrint'
--
-- * 'lbtUserIp'
--
-- * 'lbtBroadcastStatus'
--
-- * 'lbtOnBehalfOfContentOwner'
--
-- * 'lbtKey'
--
-- * 'lbtOnBehalfOfContentOwnerChannel'
--
-- * 'lbtId'
--
-- * 'lbtOauthToken'
--
-- * 'lbtFields'
--
-- * 'lbtAlt'
liveBroadcastsTransition'
    :: Text -- ^ 'part'
    -> LiveBroadcastsTransition'BroadcastStatus -- ^ 'broadcastStatus'
    -> Text -- ^ 'id'
    -> LiveBroadcastsTransition'
liveBroadcastsTransition' pLbtPart_ pLbtBroadcastStatus_ pLbtId_ =
    LiveBroadcastsTransition'
    { _lbtQuotaUser = Nothing
    , _lbtPart = pLbtPart_
    , _lbtPrettyPrint = True
    , _lbtUserIp = Nothing
    , _lbtBroadcastStatus = pLbtBroadcastStatus_
    , _lbtOnBehalfOfContentOwner = Nothing
    , _lbtKey = Nothing
    , _lbtOnBehalfOfContentOwnerChannel = Nothing
    , _lbtId = pLbtId_
    , _lbtOauthToken = Nothing
    , _lbtFields = Nothing
    , _lbtAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbtQuotaUser :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtQuotaUser
  = lens _lbtQuotaUser (\ s a -> s{_lbtQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lbtPart :: Lens' LiveBroadcastsTransition' Text
lbtPart = lens _lbtPart (\ s a -> s{_lbtPart = a})

-- | Returns response with indentations and line breaks.
lbtPrettyPrint :: Lens' LiveBroadcastsTransition' Bool
lbtPrettyPrint
  = lens _lbtPrettyPrint
      (\ s a -> s{_lbtPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbtUserIp :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtUserIp
  = lens _lbtUserIp (\ s a -> s{_lbtUserIp = a})

-- | The broadcastStatus parameter identifies the state to which the
-- broadcast is changing. Note that to transition a broadcast to either the
-- testing or live state, the status.streamStatus must be active for the
-- stream that the broadcast is bound to.
lbtBroadcastStatus :: Lens' LiveBroadcastsTransition' LiveBroadcastsTransition'BroadcastStatus
lbtBroadcastStatus
  = lens _lbtBroadcastStatus
      (\ s a -> s{_lbtBroadcastStatus = a})

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
lbtOnBehalfOfContentOwner :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtOnBehalfOfContentOwner
  = lens _lbtOnBehalfOfContentOwner
      (\ s a -> s{_lbtOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbtKey :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtKey = lens _lbtKey (\ s a -> s{_lbtKey = a})

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
lbtOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtOnBehalfOfContentOwnerChannel
  = lens _lbtOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbtOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the unique ID of the broadcast that is
-- transitioning to another status.
lbtId :: Lens' LiveBroadcastsTransition' Text
lbtId = lens _lbtId (\ s a -> s{_lbtId = a})

-- | OAuth 2.0 token for the current user.
lbtOauthToken :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtOauthToken
  = lens _lbtOauthToken
      (\ s a -> s{_lbtOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lbtFields :: Lens' LiveBroadcastsTransition' (Maybe Text)
lbtFields
  = lens _lbtFields (\ s a -> s{_lbtFields = a})

-- | Data format for the response.
lbtAlt :: Lens' LiveBroadcastsTransition' Alt
lbtAlt = lens _lbtAlt (\ s a -> s{_lbtAlt = a})

instance GoogleRequest LiveBroadcastsTransition'
         where
        type Rs LiveBroadcastsTransition' = LiveBroadcast
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsTransition'{..}
          = go _lbtQuotaUser (Just _lbtPart)
              (Just _lbtPrettyPrint)
              _lbtUserIp
              (Just _lbtBroadcastStatus)
              _lbtOnBehalfOfContentOwner
              _lbtKey
              _lbtOnBehalfOfContentOwnerChannel
              (Just _lbtId)
              _lbtOauthToken
              _lbtFields
              (Just _lbtAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsTransitionAPI)
                      r
                      u
