{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Channels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a channel\'s metadata. Note that this method currently only
-- supports updates to the channel resource\'s brandingSettings and
-- invideoPromotion objects and their child properties.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelsUpdate@.
module Network.Google.Resource.YouTube.Channels.Update
    (
    -- * REST Resource
      ChannelsUpdateResource

    -- * Creating a Request
    , channelsUpdate'
    , ChannelsUpdate'

    -- * Request Lenses
    , chaQuotaUser
    , chaPart
    , chaPrettyPrint
    , chaUserIP
    , chaPayload
    , chaOnBehalfOfContentOwner
    , chaKey
    , chaOAuthToken
    , chaFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelsUpdate@ which the
-- 'ChannelsUpdate'' request conforms to.
type ChannelsUpdateResource =
     "channels" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Channel :> Put '[JSON] Channel

-- | Updates a channel\'s metadata. Note that this method currently only
-- supports updates to the channel resource\'s brandingSettings and
-- invideoPromotion objects and their child properties.
--
-- /See:/ 'channelsUpdate'' smart constructor.
data ChannelsUpdate' = ChannelsUpdate'
    { _chaQuotaUser              :: !(Maybe Text)
    , _chaPart                   :: !Text
    , _chaPrettyPrint            :: !Bool
    , _chaUserIP                 :: !(Maybe Text)
    , _chaPayload                :: !Channel
    , _chaOnBehalfOfContentOwner :: !(Maybe Text)
    , _chaKey                    :: !(Maybe Key)
    , _chaOAuthToken             :: !(Maybe OAuthToken)
    , _chaFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaQuotaUser'
--
-- * 'chaPart'
--
-- * 'chaPrettyPrint'
--
-- * 'chaUserIP'
--
-- * 'chaPayload'
--
-- * 'chaOnBehalfOfContentOwner'
--
-- * 'chaKey'
--
-- * 'chaOAuthToken'
--
-- * 'chaFields'
channelsUpdate'
    :: Text -- ^ 'part'
    -> Channel -- ^ 'payload'
    -> ChannelsUpdate'
channelsUpdate' pChaPart_ pChaPayload_ =
    ChannelsUpdate'
    { _chaQuotaUser = Nothing
    , _chaPart = pChaPart_
    , _chaPrettyPrint = True
    , _chaUserIP = Nothing
    , _chaPayload = pChaPayload_
    , _chaOnBehalfOfContentOwner = Nothing
    , _chaKey = Nothing
    , _chaOAuthToken = Nothing
    , _chaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chaQuotaUser :: Lens' ChannelsUpdate' (Maybe Text)
chaQuotaUser
  = lens _chaQuotaUser (\ s a -> s{_chaQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The API currently only
-- allows the parameter value to be set to either brandingSettings or
-- invideoPromotion. (You cannot update both of those parts with a single
-- request.) Note that this method overrides the existing values for all of
-- the mutable properties that are contained in any parts that the
-- parameter value specifies.
chaPart :: Lens' ChannelsUpdate' Text
chaPart = lens _chaPart (\ s a -> s{_chaPart = a})

-- | Returns response with indentations and line breaks.
chaPrettyPrint :: Lens' ChannelsUpdate' Bool
chaPrettyPrint
  = lens _chaPrettyPrint
      (\ s a -> s{_chaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chaUserIP :: Lens' ChannelsUpdate' (Maybe Text)
chaUserIP
  = lens _chaUserIP (\ s a -> s{_chaUserIP = a})

-- | Multipart request metadata.
chaPayload :: Lens' ChannelsUpdate' Channel
chaPayload
  = lens _chaPayload (\ s a -> s{_chaPayload = a})

-- | The onBehalfOfContentOwner parameter indicates that the authenticated
-- user is acting on behalf of the content owner specified in the parameter
-- value. This parameter is intended for YouTube content partners that own
-- and manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with needs
-- to be linked to the specified YouTube content owner.
chaOnBehalfOfContentOwner :: Lens' ChannelsUpdate' (Maybe Text)
chaOnBehalfOfContentOwner
  = lens _chaOnBehalfOfContentOwner
      (\ s a -> s{_chaOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chaKey :: Lens' ChannelsUpdate' (Maybe Key)
chaKey = lens _chaKey (\ s a -> s{_chaKey = a})

-- | OAuth 2.0 token for the current user.
chaOAuthToken :: Lens' ChannelsUpdate' (Maybe OAuthToken)
chaOAuthToken
  = lens _chaOAuthToken
      (\ s a -> s{_chaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
chaFields :: Lens' ChannelsUpdate' (Maybe Text)
chaFields
  = lens _chaFields (\ s a -> s{_chaFields = a})

instance GoogleAuth ChannelsUpdate' where
        authKey = chaKey . _Just
        authToken = chaOAuthToken . _Just

instance GoogleRequest ChannelsUpdate' where
        type Rs ChannelsUpdate' = Channel
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelsUpdate'{..}
          = go (Just _chaPart) _chaOnBehalfOfContentOwner
              _chaQuotaUser
              (Just _chaPrettyPrint)
              _chaUserIP
              _chaFields
              _chaKey
              _chaOAuthToken
              (Just AltJSON)
              _chaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelsUpdateResource)
                      r
                      u
