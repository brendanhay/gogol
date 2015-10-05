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
-- Module      : Network.Google.Resource.YouTube.LiveStreams.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a video stream. If the properties that you want to change cannot
-- be updated, then you need to create a new stream with the proper
-- settings.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveStreamsUpdate@.
module Network.Google.Resource.YouTube.LiveStreams.Update
    (
    -- * REST Resource
      LiveStreamsUpdateResource

    -- * Creating a Request
    , liveStreamsUpdate'
    , LiveStreamsUpdate'

    -- * Request Lenses
    , lsuQuotaUser
    , lsuPart
    , lsuPrettyPrint
    , lsuUserIP
    , lsuPayload
    , lsuOnBehalfOfContentOwner
    , lsuKey
    , lsuOnBehalfOfContentOwnerChannel
    , lsuOAuthToken
    , lsuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveStreamsUpdate@ which the
-- 'LiveStreamsUpdate'' request conforms to.
type LiveStreamsUpdateResource =
     "liveStreams" :>
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
                           ReqBody '[JSON] LiveStream :> Put '[JSON] LiveStream

-- | Updates a video stream. If the properties that you want to change cannot
-- be updated, then you need to create a new stream with the proper
-- settings.
--
-- /See:/ 'liveStreamsUpdate'' smart constructor.
data LiveStreamsUpdate' = LiveStreamsUpdate'
    { _lsuQuotaUser                     :: !(Maybe Text)
    , _lsuPart                          :: !Text
    , _lsuPrettyPrint                   :: !Bool
    , _lsuUserIP                        :: !(Maybe Text)
    , _lsuPayload                       :: !LiveStream
    , _lsuOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lsuKey                           :: !(Maybe AuthKey)
    , _lsuOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsuOAuthToken                    :: !(Maybe OAuthToken)
    , _lsuFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsuQuotaUser'
--
-- * 'lsuPart'
--
-- * 'lsuPrettyPrint'
--
-- * 'lsuUserIP'
--
-- * 'lsuPayload'
--
-- * 'lsuOnBehalfOfContentOwner'
--
-- * 'lsuKey'
--
-- * 'lsuOnBehalfOfContentOwnerChannel'
--
-- * 'lsuOAuthToken'
--
-- * 'lsuFields'
liveStreamsUpdate'
    :: Text -- ^ 'part'
    -> LiveStream -- ^ 'payload'
    -> LiveStreamsUpdate'
liveStreamsUpdate' pLsuPart_ pLsuPayload_ =
    LiveStreamsUpdate'
    { _lsuQuotaUser = Nothing
    , _lsuPart = pLsuPart_
    , _lsuPrettyPrint = True
    , _lsuUserIP = Nothing
    , _lsuPayload = pLsuPayload_
    , _lsuOnBehalfOfContentOwner = Nothing
    , _lsuKey = Nothing
    , _lsuOnBehalfOfContentOwnerChannel = Nothing
    , _lsuOAuthToken = Nothing
    , _lsuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lsuQuotaUser :: Lens' LiveStreamsUpdate' (Maybe Text)
lsuQuotaUser
  = lens _lsuQuotaUser (\ s a -> s{_lsuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part properties that
-- you can include in the parameter value are id, snippet, cdn, and status.
-- Note that this method will override the existing values for all of the
-- mutable properties that are contained in any parts that the parameter
-- value specifies. If the request body does not specify a value for a
-- mutable property, the existing value for that property will be removed.
lsuPart :: Lens' LiveStreamsUpdate' Text
lsuPart = lens _lsuPart (\ s a -> s{_lsuPart = a})

-- | Returns response with indentations and line breaks.
lsuPrettyPrint :: Lens' LiveStreamsUpdate' Bool
lsuPrettyPrint
  = lens _lsuPrettyPrint
      (\ s a -> s{_lsuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lsuUserIP :: Lens' LiveStreamsUpdate' (Maybe Text)
lsuUserIP
  = lens _lsuUserIP (\ s a -> s{_lsuUserIP = a})

-- | Multipart request metadata.
lsuPayload :: Lens' LiveStreamsUpdate' LiveStream
lsuPayload
  = lens _lsuPayload (\ s a -> s{_lsuPayload = a})

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
lsuOnBehalfOfContentOwner :: Lens' LiveStreamsUpdate' (Maybe Text)
lsuOnBehalfOfContentOwner
  = lens _lsuOnBehalfOfContentOwner
      (\ s a -> s{_lsuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lsuKey :: Lens' LiveStreamsUpdate' (Maybe AuthKey)
lsuKey = lens _lsuKey (\ s a -> s{_lsuKey = a})

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
lsuOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsUpdate' (Maybe Text)
lsuOnBehalfOfContentOwnerChannel
  = lens _lsuOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsuOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
lsuOAuthToken :: Lens' LiveStreamsUpdate' (Maybe OAuthToken)
lsuOAuthToken
  = lens _lsuOAuthToken
      (\ s a -> s{_lsuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lsuFields :: Lens' LiveStreamsUpdate' (Maybe Text)
lsuFields
  = lens _lsuFields (\ s a -> s{_lsuFields = a})

instance GoogleAuth LiveStreamsUpdate' where
        authKey = lsuKey . _Just
        authToken = lsuOAuthToken . _Just

instance GoogleRequest LiveStreamsUpdate' where
        type Rs LiveStreamsUpdate' = LiveStream
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u LiveStreamsUpdate'{..}
          = go (Just _lsuPart) _lsuOnBehalfOfContentOwner
              _lsuOnBehalfOfContentOwnerChannel
              _lsuQuotaUser
              (Just _lsuPrettyPrint)
              _lsuUserIP
              _lsuFields
              _lsuKey
              _lsuOAuthToken
              (Just AltJSON)
              _lsuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LiveStreamsUpdateResource)
                      r
                      u
