{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Bind_direct
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
module YouTube.LiveBroadcasts.Bind_direct
    (
    -- * REST Resource
      LiveBroadcastsBind_directAPI

    -- * Creating a Request
    , liveBroadcastsBindDirect
    , LiveBroadcastsBindDirect

    -- * Request Lenses
    , lQuotaUser
    , lPart
    , lPrettyPrint
    , lUserIp
    , lOnBehalfOfContentOwner
    , lKey
    , lOnBehalfOfContentOwnerChannel
    , lId
    , lOauthToken
    , lStreamId
    , lFields
    , lAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsBind_direct@ which the
-- 'LiveBroadcastsBindDirect' request conforms to.
type LiveBroadcastsBind_directAPI =
     "liveBroadcasts" :>
       "bind" :>
         "direct" :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "onBehalfOfContentOwnerChannel" Text :>
                 QueryParam "id" Text :>
                   QueryParam "streamId" Text :>
                     Post '[JSON] LiveBroadcast

-- | Binds a YouTube broadcast to a stream or removes an existing binding
-- between a broadcast and a stream. A broadcast can only be bound to one
-- video stream, though a video stream may be bound to more than one
-- broadcast.
--
-- /See:/ 'liveBroadcastsBindDirect' smart constructor.
data LiveBroadcastsBindDirect = LiveBroadcastsBindDirect
    { _lQuotaUser                     :: !(Maybe Text)
    , _lPart                          :: !Text
    , _lPrettyPrint                   :: !Bool
    , _lUserIp                        :: !(Maybe Text)
    , _lOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lKey                           :: !(Maybe Text)
    , _lOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lId                            :: !Text
    , _lOauthToken                    :: !(Maybe Text)
    , _lStreamId                      :: !(Maybe Text)
    , _lFields                        :: !(Maybe Text)
    , _lAlt                           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsBind_direct'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lQuotaUser'
--
-- * 'lPart'
--
-- * 'lPrettyPrint'
--
-- * 'lUserIp'
--
-- * 'lOnBehalfOfContentOwner'
--
-- * 'lKey'
--
-- * 'lOnBehalfOfContentOwnerChannel'
--
-- * 'lId'
--
-- * 'lOauthToken'
--
-- * 'lStreamId'
--
-- * 'lFields'
--
-- * 'lAlt'
liveBroadcastsBindDirect
    :: Text -- ^ 'part'
    -> Text -- ^ 'id'
    -> LiveBroadcastsBindDirect
liveBroadcastsBindDirect pLPart_ pLId_ =
    LiveBroadcastsBindDirect
    { _lQuotaUser = Nothing
    , _lPart = pLPart_
    , _lPrettyPrint = True
    , _lUserIp = Nothing
    , _lOnBehalfOfContentOwner = Nothing
    , _lKey = Nothing
    , _lOnBehalfOfContentOwnerChannel = Nothing
    , _lId = pLId_
    , _lOauthToken = Nothing
    , _lStreamId = Nothing
    , _lFields = Nothing
    , _lAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lQuotaUser :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lQuotaUser
  = lens _lQuotaUser (\ s a -> s{_lQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, and status.
lPart :: Lens' LiveBroadcastsBind_direct' Text
lPart = lens _lPart (\ s a -> s{_lPart = a})

-- | Returns response with indentations and line breaks.
lPrettyPrint :: Lens' LiveBroadcastsBind_direct' Bool
lPrettyPrint
  = lens _lPrettyPrint (\ s a -> s{_lPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lUserIp :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lUserIp = lens _lUserIp (\ s a -> s{_lUserIp = a})

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
lOnBehalfOfContentOwner :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lOnBehalfOfContentOwner
  = lens _lOnBehalfOfContentOwner
      (\ s a -> s{_lOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lKey :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lKey = lens _lKey (\ s a -> s{_lKey = a})

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
lOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lOnBehalfOfContentOwnerChannel
  = lens _lOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the unique ID of the broadcast that is being
-- bound to a video stream.
lId :: Lens' LiveBroadcastsBind_direct' Text
lId = lens _lId (\ s a -> s{_lId = a})

-- | OAuth 2.0 token for the current user.
lOauthToken :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lOauthToken
  = lens _lOauthToken (\ s a -> s{_lOauthToken = a})

-- | The streamId parameter specifies the unique ID of the video stream that
-- is being bound to a broadcast. If this parameter is omitted, the API
-- will remove any existing binding between the broadcast and a video
-- stream.
lStreamId :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lStreamId
  = lens _lStreamId (\ s a -> s{_lStreamId = a})

-- | Selector specifying which fields to include in a partial response.
lFields :: Lens' LiveBroadcastsBind_direct' (Maybe Text)
lFields = lens _lFields (\ s a -> s{_lFields = a})

-- | Data format for the response.
lAlt :: Lens' LiveBroadcastsBind_direct' Text
lAlt = lens _lAlt (\ s a -> s{_lAlt = a})

instance GoogleRequest LiveBroadcastsBind_direct'
         where
        type Rs LiveBroadcastsBind_direct' = LiveBroadcast
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsBindDirect{..}
          = go _lQuotaUser (Just _lPart) _lPrettyPrint _lUserIp
              _lOnBehalfOfContentOwner
              _lKey
              _lOnBehalfOfContentOwnerChannel
              (Just _lId)
              _lOauthToken
              _lStreamId
              _lFields
              _lAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsBind_directAPI)
                      r
                      u
