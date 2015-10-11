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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a broadcast.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveBroadcastsInsert@.
module Network.Google.Resource.YouTube.LiveBroadcasts.Insert
    (
    -- * REST Resource
      LiveBroadcastsInsertResource

    -- * Creating a Request
    , liveBroadcastsInsert'
    , LiveBroadcastsInsert'

    -- * Request Lenses
    , lbiQuotaUser
    , lbiPart
    , lbiPrettyPrint
    , lbiUserIP
    , lbiPayload
    , lbiOnBehalfOfContentOwner
    , lbiKey
    , lbiOnBehalfOfContentOwnerChannel
    , lbiOAuthToken
    , lbiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveBroadcastsInsert@ method which the
-- 'LiveBroadcastsInsert'' request conforms to.
type LiveBroadcastsInsertResource =
     "liveBroadcasts" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LiveBroadcast :>
                             Post '[JSON] LiveBroadcast

-- | Creates a broadcast.
--
-- /See:/ 'liveBroadcastsInsert'' smart constructor.
data LiveBroadcastsInsert' = LiveBroadcastsInsert'
    { _lbiQuotaUser                     :: !(Maybe Text)
    , _lbiPart                          :: !Text
    , _lbiPrettyPrint                   :: !Bool
    , _lbiUserIP                        :: !(Maybe Text)
    , _lbiPayload                       :: !LiveBroadcast
    , _lbiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lbiKey                           :: !(Maybe AuthKey)
    , _lbiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lbiOAuthToken                    :: !(Maybe OAuthToken)
    , _lbiFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbiQuotaUser'
--
-- * 'lbiPart'
--
-- * 'lbiPrettyPrint'
--
-- * 'lbiUserIP'
--
-- * 'lbiPayload'
--
-- * 'lbiOnBehalfOfContentOwner'
--
-- * 'lbiKey'
--
-- * 'lbiOnBehalfOfContentOwnerChannel'
--
-- * 'lbiOAuthToken'
--
-- * 'lbiFields'
liveBroadcastsInsert'
    :: Text -- ^ 'part'
    -> LiveBroadcast -- ^ 'payload'
    -> LiveBroadcastsInsert'
liveBroadcastsInsert' pLbiPart_ pLbiPayload_ =
    LiveBroadcastsInsert'
    { _lbiQuotaUser = Nothing
    , _lbiPart = pLbiPart_
    , _lbiPrettyPrint = True
    , _lbiUserIP = Nothing
    , _lbiPayload = pLbiPayload_
    , _lbiOnBehalfOfContentOwner = Nothing
    , _lbiKey = Nothing
    , _lbiOnBehalfOfContentOwnerChannel = Nothing
    , _lbiOAuthToken = Nothing
    , _lbiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lbiQuotaUser :: Lens' LiveBroadcastsInsert' (Maybe Text)
lbiQuotaUser
  = lens _lbiQuotaUser (\ s a -> s{_lbiQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part properties that
-- you can include in the parameter value are id, snippet, contentDetails,
-- and status.
lbiPart :: Lens' LiveBroadcastsInsert' Text
lbiPart = lens _lbiPart (\ s a -> s{_lbiPart = a})

-- | Returns response with indentations and line breaks.
lbiPrettyPrint :: Lens' LiveBroadcastsInsert' Bool
lbiPrettyPrint
  = lens _lbiPrettyPrint
      (\ s a -> s{_lbiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lbiUserIP :: Lens' LiveBroadcastsInsert' (Maybe Text)
lbiUserIP
  = lens _lbiUserIP (\ s a -> s{_lbiUserIP = a})

-- | Multipart request metadata.
lbiPayload :: Lens' LiveBroadcastsInsert' LiveBroadcast
lbiPayload
  = lens _lbiPayload (\ s a -> s{_lbiPayload = a})

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
lbiOnBehalfOfContentOwner :: Lens' LiveBroadcastsInsert' (Maybe Text)
lbiOnBehalfOfContentOwner
  = lens _lbiOnBehalfOfContentOwner
      (\ s a -> s{_lbiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lbiKey :: Lens' LiveBroadcastsInsert' (Maybe AuthKey)
lbiKey = lens _lbiKey (\ s a -> s{_lbiKey = a})

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
lbiOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsInsert' (Maybe Text)
lbiOnBehalfOfContentOwnerChannel
  = lens _lbiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lbiOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
lbiOAuthToken :: Lens' LiveBroadcastsInsert' (Maybe OAuthToken)
lbiOAuthToken
  = lens _lbiOAuthToken
      (\ s a -> s{_lbiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lbiFields :: Lens' LiveBroadcastsInsert' (Maybe Text)
lbiFields
  = lens _lbiFields (\ s a -> s{_lbiFields = a})

instance GoogleAuth LiveBroadcastsInsert' where
        _AuthKey = lbiKey . _Just
        _AuthToken = lbiOAuthToken . _Just

instance GoogleRequest LiveBroadcastsInsert' where
        type Rs LiveBroadcastsInsert' = LiveBroadcast
        request = requestWith youTubeRequest
        requestWith rq LiveBroadcastsInsert'{..}
          = go (Just _lbiPart) _lbiOnBehalfOfContentOwner
              _lbiOnBehalfOfContentOwnerChannel
              _lbiQuotaUser
              (Just _lbiPrettyPrint)
              _lbiUserIP
              _lbiFields
              _lbiKey
              _lbiOAuthToken
              (Just AltJSON)
              _lbiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy LiveBroadcastsInsertResource)
                      rq
