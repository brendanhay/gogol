{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module YouTube.Channels.Update
    (
    -- * REST Resource
      ChannelsUpdateAPI

    -- * Creating a Request
    , channelsUpdate
    , ChannelsUpdate

    -- * Request Lenses
    , cQuotaUser
    , cPart
    , cPrettyPrint
    , cUserIp
    , cOnBehalfOfContentOwner
    , cKey
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelsUpdate@ which the
-- 'ChannelsUpdate' request conforms to.
type ChannelsUpdateAPI =
     "channels" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           Put '[JSON] Channel

-- | Updates a channel\'s metadata. Note that this method currently only
-- supports updates to the channel resource\'s brandingSettings and
-- invideoPromotion objects and their child properties.
--
-- /See:/ 'channelsUpdate' smart constructor.
data ChannelsUpdate = ChannelsUpdate
    { _cQuotaUser              :: !(Maybe Text)
    , _cPart                   :: !Text
    , _cPrettyPrint            :: !Bool
    , _cUserIp                 :: !(Maybe Text)
    , _cOnBehalfOfContentOwner :: !(Maybe Text)
    , _cKey                    :: !(Maybe Text)
    , _cOauthToken             :: !(Maybe Text)
    , _cFields                 :: !(Maybe Text)
    , _cAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPart'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cOnBehalfOfContentOwner'
--
-- * 'cKey'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
channelsUpdate
    :: Text -- ^ 'part'
    -> ChannelsUpdate
channelsUpdate pCPart_ =
    ChannelsUpdate
    { _cQuotaUser = Nothing
    , _cPart = pCPart_
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cOnBehalfOfContentOwner = Nothing
    , _cKey = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' ChannelsUpdate' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The API currently only
-- allows the parameter value to be set to either brandingSettings or
-- invideoPromotion. (You cannot update both of those parts with a single
-- request.) Note that this method overrides the existing values for all of
-- the mutable properties that are contained in any parts that the
-- parameter value specifies.
cPart :: Lens' ChannelsUpdate' Text
cPart = lens _cPart (\ s a -> s{_cPart = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' ChannelsUpdate' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' ChannelsUpdate' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | The onBehalfOfContentOwner parameter indicates that the authenticated
-- user is acting on behalf of the content owner specified in the parameter
-- value. This parameter is intended for YouTube content partners that own
-- and manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with needs
-- to be linked to the specified YouTube content owner.
cOnBehalfOfContentOwner :: Lens' ChannelsUpdate' (Maybe Text)
cOnBehalfOfContentOwner
  = lens _cOnBehalfOfContentOwner
      (\ s a -> s{_cOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ChannelsUpdate' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' ChannelsUpdate' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ChannelsUpdate' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' ChannelsUpdate' Text
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest ChannelsUpdate' where
        type Rs ChannelsUpdate' = Channel
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelsUpdate{..}
          = go _cQuotaUser (Just _cPart) _cPrettyPrint _cUserIp
              _cOnBehalfOfContentOwner
              _cKey
              _cOauthToken
              _cFields
              _cAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ChannelsUpdateAPI)
                      r
                      u
