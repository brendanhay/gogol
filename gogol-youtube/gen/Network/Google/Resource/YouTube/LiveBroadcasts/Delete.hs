{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a broadcast.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveBroadcastsDelete@.
module YouTube.LiveBroadcasts.Delete
    (
    -- * REST Resource
      LiveBroadcastsDeleteAPI

    -- * Creating a Request
    , liveBroadcastsDelete
    , LiveBroadcastsDelete

    -- * Request Lenses
    , lbdQuotaUser
    , lbdPrettyPrint
    , lbdUserIp
    , lbdOnBehalfOfContentOwner
    , lbdKey
    , lbdOnBehalfOfContentOwnerChannel
    , lbdId
    , lbdOauthToken
    , lbdFields
    , lbdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsDelete@ which the
-- 'LiveBroadcastsDelete' request conforms to.
type LiveBroadcastsDeleteAPI =
     "liveBroadcasts" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "onBehalfOfContentOwnerChannel" Text :>
           QueryParam "id" Text :> Delete '[JSON] ()

-- | Deletes a broadcast.
--
-- /See:/ 'liveBroadcastsDelete' smart constructor.
data LiveBroadcastsDelete = LiveBroadcastsDelete
    { _lbdQuotaUser                     :: !(Maybe Text)
    , _lbdPrettyPrint                   :: !Bool
    , _lbdUserIp                        :: !(Maybe Text)
    , _lbdOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbdKey                           :: !(Maybe Text)
    , _lbdOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbdId                            :: !Text
    , _lbdOauthToken                    :: !(Maybe Text)
    , _lbdFields                        :: !(Maybe Text)
    , _lbdAlt                           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbdQuotaUser'
--
-- * 'lbdPrettyPrint'
--
-- * 'lbdUserIp'
--
-- * 'lbdOnBehalfOfContentOwner'
--
-- * 'lbdKey'
--
-- * 'lbdOnBehalfOfContentOwnerChannel'
--
-- * 'lbdId'
--
-- * 'lbdOauthToken'
--
-- * 'lbdFields'
--
-- * 'lbdAlt'
liveBroadcastsDelete
    :: Text -- ^ 'id'
    -> LiveBroadcastsDelete
liveBroadcastsDelete pLbdId_ =
    LiveBroadcastsDelete
    { _lbdQuotaUser = Nothing
    , _lbdPrettyPrint = True
    , _lbdUserIp = Nothing
    , _lbdOnBehalfOfContentOwner = Nothing
    , _lbdKey = Nothing
    , _lbdOnBehalfOfContentOwnerChannel = Nothing
    , _lbdId = pLbdId_
    , _lbdOauthToken = Nothing
    , _lbdFields = Nothing
    , _lbdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbdQuotaUser :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdQuotaUser
  = lens _lbdQuotaUser (\ s a -> s{_lbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
lbdPrettyPrint :: Lens' LiveBroadcastsDelete' Bool
lbdPrettyPrint
  = lens _lbdPrettyPrint
      (\ s a -> s{_lbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbdUserIp :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdUserIp
  = lens _lbdUserIp (\ s a -> s{_lbdUserIp = a})

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
lbdOnBehalfOfContentOwner :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdOnBehalfOfContentOwner
  = lens _lbdOnBehalfOfContentOwner
      (\ s a -> s{_lbdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbdKey :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdKey = lens _lbdKey (\ s a -> s{_lbdKey = a})

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
lbdOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdOnBehalfOfContentOwnerChannel
  = lens _lbdOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbdOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies the YouTube live broadcast ID for the
-- resource that is being deleted.
lbdId :: Lens' LiveBroadcastsDelete' Text
lbdId = lens _lbdId (\ s a -> s{_lbdId = a})

-- | OAuth 2.0 token for the current user.
lbdOauthToken :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdOauthToken
  = lens _lbdOauthToken
      (\ s a -> s{_lbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lbdFields :: Lens' LiveBroadcastsDelete' (Maybe Text)
lbdFields
  = lens _lbdFields (\ s a -> s{_lbdFields = a})

-- | Data format for the response.
lbdAlt :: Lens' LiveBroadcastsDelete' Text
lbdAlt = lens _lbdAlt (\ s a -> s{_lbdAlt = a})

instance GoogleRequest LiveBroadcastsDelete' where
        type Rs LiveBroadcastsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsDelete{..}
          = go _lbdQuotaUser _lbdPrettyPrint _lbdUserIp
              _lbdOnBehalfOfContentOwner
              _lbdKey
              _lbdOnBehalfOfContentOwnerChannel
              (Just _lbdId)
              _lbdOauthToken
              _lbdFields
              _lbdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsDeleteAPI)
                      r
                      u
