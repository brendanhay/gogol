{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    , chaUserIp
    , chaOnBehalfOfContentOwner
    , chaKey
    , chaOauthToken
    , chaFields
    , chaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelsUpdate@ which the
-- 'ChannelsUpdate'' request conforms to.
type ChannelsUpdateResource =
     "channels" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Channel

-- | Updates a channel\'s metadata. Note that this method currently only
-- supports updates to the channel resource\'s brandingSettings and
-- invideoPromotion objects and their child properties.
--
-- /See:/ 'channelsUpdate'' smart constructor.
data ChannelsUpdate' = ChannelsUpdate'
    { _chaQuotaUser              :: !(Maybe Text)
    , _chaPart                   :: !Text
    , _chaPrettyPrint            :: !Bool
    , _chaUserIp                 :: !(Maybe Text)
    , _chaOnBehalfOfContentOwner :: !(Maybe Text)
    , _chaKey                    :: !(Maybe Text)
    , _chaOauthToken             :: !(Maybe Text)
    , _chaFields                 :: !(Maybe Text)
    , _chaAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'chaUserIp'
--
-- * 'chaOnBehalfOfContentOwner'
--
-- * 'chaKey'
--
-- * 'chaOauthToken'
--
-- * 'chaFields'
--
-- * 'chaAlt'
channelsUpdate'
    :: Text -- ^ 'part'
    -> ChannelsUpdate'
channelsUpdate' pChaPart_ =
    ChannelsUpdate'
    { _chaQuotaUser = Nothing
    , _chaPart = pChaPart_
    , _chaPrettyPrint = True
    , _chaUserIp = Nothing
    , _chaOnBehalfOfContentOwner = Nothing
    , _chaKey = Nothing
    , _chaOauthToken = Nothing
    , _chaFields = Nothing
    , _chaAlt = JSON
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
chaUserIp :: Lens' ChannelsUpdate' (Maybe Text)
chaUserIp
  = lens _chaUserIp (\ s a -> s{_chaUserIp = a})

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
chaKey :: Lens' ChannelsUpdate' (Maybe Text)
chaKey = lens _chaKey (\ s a -> s{_chaKey = a})

-- | OAuth 2.0 token for the current user.
chaOauthToken :: Lens' ChannelsUpdate' (Maybe Text)
chaOauthToken
  = lens _chaOauthToken
      (\ s a -> s{_chaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
chaFields :: Lens' ChannelsUpdate' (Maybe Text)
chaFields
  = lens _chaFields (\ s a -> s{_chaFields = a})

-- | Data format for the response.
chaAlt :: Lens' ChannelsUpdate' Alt
chaAlt = lens _chaAlt (\ s a -> s{_chaAlt = a})

instance GoogleRequest ChannelsUpdate' where
        type Rs ChannelsUpdate' = Channel
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelsUpdate'{..}
          = go _chaQuotaUser (Just _chaPart)
              (Just _chaPrettyPrint)
              _chaUserIp
              _chaOnBehalfOfContentOwner
              _chaKey
              _chaOauthToken
              _chaFields
              (Just _chaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelsUpdateResource)
                      r
                      u
