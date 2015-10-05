{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a broadcast. For example, you could modify the broadcast
-- settings defined in the liveBroadcast resource\'s contentDetails object.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveBroadcastsUpdate@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Update
    (
    -- * REST Resource
      LiveBroadcastsUpdateResource

    -- * Creating a Request
    , liveBroadcastsUpdate'
    , LiveBroadcastsUpdate'

    -- * Request Lenses
    , lbuQuotaUser
    , lbuPart
    , lbuPrettyPrint
    , lbuUserIP
    , lbuPayload
    , lbuOnBehalfOfContentOwner
    , lbuKey
    , lbuOnBehalfOfContentOwnerChannel
    , lbuOAuthToken
    , lbuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsUpdate@ which the
-- 'LiveBroadcastsUpdate'' request conforms to.
type LiveBroadcastsUpdateResource =
     "liveBroadcasts" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LiveBroadcast :>
                             Put '[JSON] LiveBroadcast

-- | Updates a broadcast. For example, you could modify the broadcast
-- settings defined in the liveBroadcast resource\'s contentDetails object.
--
-- /See:/ 'liveBroadcastsUpdate'' smart constructor.
data LiveBroadcastsUpdate' = LiveBroadcastsUpdate'
    { _lbuQuotaUser                     :: !(Maybe Text)
    , _lbuPart                          :: !Text
    , _lbuPrettyPrint                   :: !Bool
    , _lbuUserIP                        :: !(Maybe Text)
    , _lbuPayload                       :: !LiveBroadcast
    , _lbuOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbuKey                           :: !(Maybe AuthKey)
    , _lbuOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbuOAuthToken                    :: !(Maybe OAuthToken)
    , _lbuFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbuQuotaUser'
--
-- * 'lbuPart'
--
-- * 'lbuPrettyPrint'
--
-- * 'lbuUserIP'
--
-- * 'lbuPayload'
--
-- * 'lbuOnBehalfOfContentOwner'
--
-- * 'lbuKey'
--
-- * 'lbuOnBehalfOfContentOwnerChannel'
--
-- * 'lbuOAuthToken'
--
-- * 'lbuFields'
liveBroadcastsUpdate'
    :: Text -- ^ 'part'
    -> LiveBroadcast -- ^ 'payload'
    -> LiveBroadcastsUpdate'
liveBroadcastsUpdate' pLbuPart_ pLbuPayload_ =
    LiveBroadcastsUpdate'
    { _lbuQuotaUser = Nothing
    , _lbuPart = pLbuPart_
    , _lbuPrettyPrint = True
    , _lbuUserIP = Nothing
    , _lbuPayload = pLbuPayload_
    , _lbuOnBehalfOfContentOwner = Nothing
    , _lbuKey = Nothing
    , _lbuOnBehalfOfContentOwnerChannel = Nothing
    , _lbuOAuthToken = Nothing
    , _lbuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbuQuotaUser :: Lens' LiveBroadcastsUpdate' (Maybe Text)
lbuQuotaUser
  = lens _lbuQuotaUser (\ s a -> s{_lbuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part properties that
-- you can include in the parameter value are id, snippet, contentDetails,
-- and status. Note that this method will override the existing values for
-- all of the mutable properties that are contained in any parts that the
-- parameter value specifies. For example, a broadcast\'s privacy status is
-- defined in the status part. As such, if your request is updating a
-- private or unlisted broadcast, and the request\'s part parameter value
-- includes the status part, the broadcast\'s privacy setting will be
-- updated to whatever value the request body specifies. If the request
-- body does not specify a value, the existing privacy setting will be
-- removed and the broadcast will revert to the default privacy setting.
lbuPart :: Lens' LiveBroadcastsUpdate' Text
lbuPart = lens _lbuPart (\ s a -> s{_lbuPart = a})

-- | Returns response with indentations and line breaks.
lbuPrettyPrint :: Lens' LiveBroadcastsUpdate' Bool
lbuPrettyPrint
  = lens _lbuPrettyPrint
      (\ s a -> s{_lbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbuUserIP :: Lens' LiveBroadcastsUpdate' (Maybe Text)
lbuUserIP
  = lens _lbuUserIP (\ s a -> s{_lbuUserIP = a})

-- | Multipart request metadata.
lbuPayload :: Lens' LiveBroadcastsUpdate' LiveBroadcast
lbuPayload
  = lens _lbuPayload (\ s a -> s{_lbuPayload = a})

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
lbuOnBehalfOfContentOwner :: Lens' LiveBroadcastsUpdate' (Maybe Text)
lbuOnBehalfOfContentOwner
  = lens _lbuOnBehalfOfContentOwner
      (\ s a -> s{_lbuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbuKey :: Lens' LiveBroadcastsUpdate' (Maybe AuthKey)
lbuKey = lens _lbuKey (\ s a -> s{_lbuKey = a})

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
lbuOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsUpdate' (Maybe Text)
lbuOnBehalfOfContentOwnerChannel
  = lens _lbuOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbuOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
lbuOAuthToken :: Lens' LiveBroadcastsUpdate' (Maybe OAuthToken)
lbuOAuthToken
  = lens _lbuOAuthToken
      (\ s a -> s{_lbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lbuFields :: Lens' LiveBroadcastsUpdate' (Maybe Text)
lbuFields
  = lens _lbuFields (\ s a -> s{_lbuFields = a})

instance GoogleAuth LiveBroadcastsUpdate' where
        authKey = lbuKey . _Just
        authToken = lbuOAuthToken . _Just

instance GoogleRequest LiveBroadcastsUpdate' where
        type Rs LiveBroadcastsUpdate' = LiveBroadcast
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveBroadcastsUpdate'{..}
          = go (Just _lbuPart) _lbuOnBehalfOfContentOwner
              _lbuOnBehalfOfContentOwnerChannel
              _lbuQuotaUser
              (Just _lbuPrettyPrint)
              _lbuUserIP
              _lbuFields
              _lbuKey
              _lbuOAuthToken
              (Just AltJSON)
              _lbuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveBroadcastsUpdateResource)
                      r
                      u
