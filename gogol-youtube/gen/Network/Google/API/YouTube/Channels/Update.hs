{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Channels.Update
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
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.channels.update@.
module Network.Google.API.YouTube.Channels.Update
    (
    -- * REST Resource
      ChannelsUpdateAPI

    -- * Creating a Request
    , channelsUpdate'
    , ChannelsUpdate'

    -- * Request Lenses
    , cuuQuotaUser
    , cuuPart
    , cuuPrettyPrint
    , cuuUserIp
    , cuuOnBehalfOfContentOwner
    , cuuKey
    , cuuOauthToken
    , cuuFields
    , cuuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.channels.update which the
-- 'ChannelsUpdate'' request conforms to.
type ChannelsUpdateAPI =
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
    { _cuuQuotaUser              :: !(Maybe Text)
    , _cuuPart                   :: !Text
    , _cuuPrettyPrint            :: !Bool
    , _cuuUserIp                 :: !(Maybe Text)
    , _cuuOnBehalfOfContentOwner :: !(Maybe Text)
    , _cuuKey                    :: !(Maybe Text)
    , _cuuOauthToken             :: !(Maybe Text)
    , _cuuFields                 :: !(Maybe Text)
    , _cuuAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuQuotaUser'
--
-- * 'cuuPart'
--
-- * 'cuuPrettyPrint'
--
-- * 'cuuUserIp'
--
-- * 'cuuOnBehalfOfContentOwner'
--
-- * 'cuuKey'
--
-- * 'cuuOauthToken'
--
-- * 'cuuFields'
--
-- * 'cuuAlt'
channelsUpdate'
    :: Text -- ^ 'part'
    -> ChannelsUpdate'
channelsUpdate' pCuuPart_ =
    ChannelsUpdate'
    { _cuuQuotaUser = Nothing
    , _cuuPart = pCuuPart_
    , _cuuPrettyPrint = True
    , _cuuUserIp = Nothing
    , _cuuOnBehalfOfContentOwner = Nothing
    , _cuuKey = Nothing
    , _cuuOauthToken = Nothing
    , _cuuFields = Nothing
    , _cuuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuuQuotaUser :: Lens' ChannelsUpdate' (Maybe Text)
cuuQuotaUser
  = lens _cuuQuotaUser (\ s a -> s{_cuuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The API currently only
-- allows the parameter value to be set to either brandingSettings or
-- invideoPromotion. (You cannot update both of those parts with a single
-- request.) Note that this method overrides the existing values for all of
-- the mutable properties that are contained in any parts that the
-- parameter value specifies.
cuuPart :: Lens' ChannelsUpdate' Text
cuuPart = lens _cuuPart (\ s a -> s{_cuuPart = a})

-- | Returns response with indentations and line breaks.
cuuPrettyPrint :: Lens' ChannelsUpdate' Bool
cuuPrettyPrint
  = lens _cuuPrettyPrint
      (\ s a -> s{_cuuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuuUserIp :: Lens' ChannelsUpdate' (Maybe Text)
cuuUserIp
  = lens _cuuUserIp (\ s a -> s{_cuuUserIp = a})

-- | The onBehalfOfContentOwner parameter indicates that the authenticated
-- user is acting on behalf of the content owner specified in the parameter
-- value. This parameter is intended for YouTube content partners that own
-- and manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with needs
-- to be linked to the specified YouTube content owner.
cuuOnBehalfOfContentOwner :: Lens' ChannelsUpdate' (Maybe Text)
cuuOnBehalfOfContentOwner
  = lens _cuuOnBehalfOfContentOwner
      (\ s a -> s{_cuuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuuKey :: Lens' ChannelsUpdate' (Maybe Text)
cuuKey = lens _cuuKey (\ s a -> s{_cuuKey = a})

-- | OAuth 2.0 token for the current user.
cuuOauthToken :: Lens' ChannelsUpdate' (Maybe Text)
cuuOauthToken
  = lens _cuuOauthToken
      (\ s a -> s{_cuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuuFields :: Lens' ChannelsUpdate' (Maybe Text)
cuuFields
  = lens _cuuFields (\ s a -> s{_cuuFields = a})

-- | Data format for the response.
cuuAlt :: Lens' ChannelsUpdate' Alt
cuuAlt = lens _cuuAlt (\ s a -> s{_cuuAlt = a})

instance GoogleRequest ChannelsUpdate' where
        type Rs ChannelsUpdate' = Channel
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelsUpdate'{..}
          = go _cuuQuotaUser (Just _cuuPart)
              (Just _cuuPrettyPrint)
              _cuuUserIp
              _cuuOnBehalfOfContentOwner
              _cuuKey
              _cuuOauthToken
              _cuuFields
              (Just _cuuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChannelsUpdateAPI)
                      r
                      u
