{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a channelSection for the authenticated user\'s channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelSectionsInsert@.
module YouTube.ChannelSections.Insert
    (
    -- * REST Resource
      ChannelSectionsInsertAPI

    -- * Creating a Request
    , channelSectionsInsert
    , ChannelSectionsInsert

    -- * Request Lenses
    , csiQuotaUser
    , csiPart
    , csiPrettyPrint
    , csiUserIp
    , csiOnBehalfOfContentOwner
    , csiKey
    , csiOnBehalfOfContentOwnerChannel
    , csiOauthToken
    , csiFields
    , csiAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelSectionsInsert@ which the
-- 'ChannelSectionsInsert' request conforms to.
type ChannelSectionsInsertAPI =
     "channelSections" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             Post '[JSON] ChannelSection

-- | Adds a channelSection for the authenticated user\'s channel.
--
-- /See:/ 'channelSectionsInsert' smart constructor.
data ChannelSectionsInsert = ChannelSectionsInsert
    { _csiQuotaUser                     :: !(Maybe Text)
    , _csiPart                          :: !Text
    , _csiPrettyPrint                   :: !Bool
    , _csiUserIp                        :: !(Maybe Text)
    , _csiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _csiKey                           :: !(Maybe Text)
    , _csiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _csiOauthToken                    :: !(Maybe Text)
    , _csiFields                        :: !(Maybe Text)
    , _csiAlt                           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csiQuotaUser'
--
-- * 'csiPart'
--
-- * 'csiPrettyPrint'
--
-- * 'csiUserIp'
--
-- * 'csiOnBehalfOfContentOwner'
--
-- * 'csiKey'
--
-- * 'csiOnBehalfOfContentOwnerChannel'
--
-- * 'csiOauthToken'
--
-- * 'csiFields'
--
-- * 'csiAlt'
channelSectionsInsert
    :: Text -- ^ 'part'
    -> ChannelSectionsInsert
channelSectionsInsert pCsiPart_ =
    ChannelSectionsInsert
    { _csiQuotaUser = Nothing
    , _csiPart = pCsiPart_
    , _csiPrettyPrint = True
    , _csiUserIp = Nothing
    , _csiOnBehalfOfContentOwner = Nothing
    , _csiKey = Nothing
    , _csiOnBehalfOfContentOwnerChannel = Nothing
    , _csiOauthToken = Nothing
    , _csiFields = Nothing
    , _csiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csiQuotaUser :: Lens' ChannelSectionsInsert' (Maybe Text)
csiQuotaUser
  = lens _csiQuotaUser (\ s a -> s{_csiQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part names that you
-- can include in the parameter value are snippet and contentDetails.
csiPart :: Lens' ChannelSectionsInsert' Text
csiPart = lens _csiPart (\ s a -> s{_csiPart = a})

-- | Returns response with indentations and line breaks.
csiPrettyPrint :: Lens' ChannelSectionsInsert' Bool
csiPrettyPrint
  = lens _csiPrettyPrint
      (\ s a -> s{_csiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csiUserIp :: Lens' ChannelSectionsInsert' (Maybe Text)
csiUserIp
  = lens _csiUserIp (\ s a -> s{_csiUserIp = a})

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
csiOnBehalfOfContentOwner :: Lens' ChannelSectionsInsert' (Maybe Text)
csiOnBehalfOfContentOwner
  = lens _csiOnBehalfOfContentOwner
      (\ s a -> s{_csiOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csiKey :: Lens' ChannelSectionsInsert' (Maybe Text)
csiKey = lens _csiKey (\ s a -> s{_csiKey = a})

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
csiOnBehalfOfContentOwnerChannel :: Lens' ChannelSectionsInsert' (Maybe Text)
csiOnBehalfOfContentOwnerChannel
  = lens _csiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_csiOnBehalfOfContentOwnerChannel = a})

-- | OAuth 2.0 token for the current user.
csiOauthToken :: Lens' ChannelSectionsInsert' (Maybe Text)
csiOauthToken
  = lens _csiOauthToken
      (\ s a -> s{_csiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
csiFields :: Lens' ChannelSectionsInsert' (Maybe Text)
csiFields
  = lens _csiFields (\ s a -> s{_csiFields = a})

-- | Data format for the response.
csiAlt :: Lens' ChannelSectionsInsert' Text
csiAlt = lens _csiAlt (\ s a -> s{_csiAlt = a})

instance GoogleRequest ChannelSectionsInsert' where
        type Rs ChannelSectionsInsert' = ChannelSection
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelSectionsInsert{..}
          = go _csiQuotaUser (Just _csiPart) _csiPrettyPrint
              _csiUserIp
              _csiOnBehalfOfContentOwner
              _csiKey
              _csiOnBehalfOfContentOwnerChannel
              _csiOauthToken
              _csiFields
              _csiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelSectionsInsertAPI)
                      r
                      u
