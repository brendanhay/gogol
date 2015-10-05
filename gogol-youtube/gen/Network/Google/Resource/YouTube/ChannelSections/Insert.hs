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
module Network.Google.Resource.YouTube.ChannelSections.Insert
    (
    -- * REST Resource
      ChannelSectionsInsertResource

    -- * Creating a Request
    , channelSectionsInsert'
    , ChannelSectionsInsert'

    -- * Request Lenses
    , csiQuotaUser
    , csiPart
    , csiPrettyPrint
    , csiUserIP
    , csiPayload
    , csiOnBehalfOfContentOwner
    , csiKey
    , csiOnBehalfOfContentOwnerChannel
    , csiOAuthToken
    , csiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelSectionsInsert@ which the
-- 'ChannelSectionsInsert'' request conforms to.
type ChannelSectionsInsertResource =
     "channelSections" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "onBehalfOfContentOwnerChannel" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ChannelSection :>
                             Post '[JSON] ChannelSection

-- | Adds a channelSection for the authenticated user\'s channel.
--
-- /See:/ 'channelSectionsInsert'' smart constructor.
data ChannelSectionsInsert' = ChannelSectionsInsert'
    { _csiQuotaUser                     :: !(Maybe Text)
    , _csiPart                          :: !Text
    , _csiPrettyPrint                   :: !Bool
    , _csiUserIP                        :: !(Maybe Text)
    , _csiPayload                       :: !ChannelSection
    , _csiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _csiKey                           :: !(Maybe Key)
    , _csiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _csiOAuthToken                    :: !(Maybe OAuthToken)
    , _csiFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'csiUserIP'
--
-- * 'csiPayload'
--
-- * 'csiOnBehalfOfContentOwner'
--
-- * 'csiKey'
--
-- * 'csiOnBehalfOfContentOwnerChannel'
--
-- * 'csiOAuthToken'
--
-- * 'csiFields'
channelSectionsInsert'
    :: Text -- ^ 'part'
    -> ChannelSection -- ^ 'payload'
    -> ChannelSectionsInsert'
channelSectionsInsert' pCsiPart_ pCsiPayload_ =
    ChannelSectionsInsert'
    { _csiQuotaUser = Nothing
    , _csiPart = pCsiPart_
    , _csiPrettyPrint = True
    , _csiUserIP = Nothing
    , _csiPayload = pCsiPayload_
    , _csiOnBehalfOfContentOwner = Nothing
    , _csiKey = Nothing
    , _csiOnBehalfOfContentOwnerChannel = Nothing
    , _csiOAuthToken = Nothing
    , _csiFields = Nothing
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
csiUserIP :: Lens' ChannelSectionsInsert' (Maybe Text)
csiUserIP
  = lens _csiUserIP (\ s a -> s{_csiUserIP = a})

-- | Multipart request metadata.
csiPayload :: Lens' ChannelSectionsInsert' ChannelSection
csiPayload
  = lens _csiPayload (\ s a -> s{_csiPayload = a})

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
csiKey :: Lens' ChannelSectionsInsert' (Maybe Key)
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
csiOAuthToken :: Lens' ChannelSectionsInsert' (Maybe OAuthToken)
csiOAuthToken
  = lens _csiOAuthToken
      (\ s a -> s{_csiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csiFields :: Lens' ChannelSectionsInsert' (Maybe Text)
csiFields
  = lens _csiFields (\ s a -> s{_csiFields = a})

instance GoogleAuth ChannelSectionsInsert' where
        authKey = csiKey . _Just
        authToken = csiOAuthToken . _Just

instance GoogleRequest ChannelSectionsInsert' where
        type Rs ChannelSectionsInsert' = ChannelSection
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelSectionsInsert'{..}
          = go (Just _csiPart) _csiOnBehalfOfContentOwner
              _csiOnBehalfOfContentOwnerChannel
              _csiQuotaUser
              (Just _csiPrettyPrint)
              _csiUserIP
              _csiFields
              _csiKey
              _csiOAuthToken
              (Just AltJSON)
              _csiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelSectionsInsertResource)
                      r
                      u
