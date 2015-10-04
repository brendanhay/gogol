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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a channelSection.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeChannelSectionsUpdate@.
module Network.Google.Resource.YouTube.ChannelSections.Update
    (
    -- * REST Resource
      ChannelSectionsUpdateResource

    -- * Creating a Request
    , channelSectionsUpdate'
    , ChannelSectionsUpdate'

    -- * Request Lenses
    , csuQuotaUser
    , csuPart
    , csuPrettyPrint
    , csuUserIP
    , csuPayload
    , csuOnBehalfOfContentOwner
    , csuKey
    , csuOAuthToken
    , csuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeChannelSectionsUpdate@ which the
-- 'ChannelSectionsUpdate'' request conforms to.
type ChannelSectionsUpdateResource =
     "channelSections" :>
       QueryParam "part" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[OctetStream] ChannelSection :>
                           Put '[JSON] ChannelSection

-- | Update a channelSection.
--
-- /See:/ 'channelSectionsUpdate'' smart constructor.
data ChannelSectionsUpdate' = ChannelSectionsUpdate'
    { _csuQuotaUser              :: !(Maybe Text)
    , _csuPart                   :: !Text
    , _csuPrettyPrint            :: !Bool
    , _csuUserIP                 :: !(Maybe Text)
    , _csuPayload                :: !ChannelSection
    , _csuOnBehalfOfContentOwner :: !(Maybe Text)
    , _csuKey                    :: !(Maybe Key)
    , _csuOAuthToken             :: !(Maybe OAuthToken)
    , _csuFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csuQuotaUser'
--
-- * 'csuPart'
--
-- * 'csuPrettyPrint'
--
-- * 'csuUserIP'
--
-- * 'csuPayload'
--
-- * 'csuOnBehalfOfContentOwner'
--
-- * 'csuKey'
--
-- * 'csuOAuthToken'
--
-- * 'csuFields'
channelSectionsUpdate'
    :: Text -- ^ 'part'
    -> ChannelSection -- ^ 'payload'
    -> ChannelSectionsUpdate'
channelSectionsUpdate' pCsuPart_ pCsuPayload_ =
    ChannelSectionsUpdate'
    { _csuQuotaUser = Nothing
    , _csuPart = pCsuPart_
    , _csuPrettyPrint = True
    , _csuUserIP = Nothing
    , _csuPayload = pCsuPayload_
    , _csuOnBehalfOfContentOwner = Nothing
    , _csuKey = Nothing
    , _csuOAuthToken = Nothing
    , _csuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csuQuotaUser :: Lens' ChannelSectionsUpdate' (Maybe Text)
csuQuotaUser
  = lens _csuQuotaUser (\ s a -> s{_csuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part names that you
-- can include in the parameter value are snippet and contentDetails.
csuPart :: Lens' ChannelSectionsUpdate' Text
csuPart = lens _csuPart (\ s a -> s{_csuPart = a})

-- | Returns response with indentations and line breaks.
csuPrettyPrint :: Lens' ChannelSectionsUpdate' Bool
csuPrettyPrint
  = lens _csuPrettyPrint
      (\ s a -> s{_csuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csuUserIP :: Lens' ChannelSectionsUpdate' (Maybe Text)
csuUserIP
  = lens _csuUserIP (\ s a -> s{_csuUserIP = a})

-- | Multipart request metadata.
csuPayload :: Lens' ChannelSectionsUpdate' ChannelSection
csuPayload
  = lens _csuPayload (\ s a -> s{_csuPayload = a})

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
csuOnBehalfOfContentOwner :: Lens' ChannelSectionsUpdate' (Maybe Text)
csuOnBehalfOfContentOwner
  = lens _csuOnBehalfOfContentOwner
      (\ s a -> s{_csuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csuKey :: Lens' ChannelSectionsUpdate' (Maybe Key)
csuKey = lens _csuKey (\ s a -> s{_csuKey = a})

-- | OAuth 2.0 token for the current user.
csuOAuthToken :: Lens' ChannelSectionsUpdate' (Maybe OAuthToken)
csuOAuthToken
  = lens _csuOAuthToken
      (\ s a -> s{_csuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csuFields :: Lens' ChannelSectionsUpdate' (Maybe Text)
csuFields
  = lens _csuFields (\ s a -> s{_csuFields = a})

instance GoogleAuth ChannelSectionsUpdate' where
        authKey = csuKey . _Just
        authToken = csuOAuthToken . _Just

instance GoogleRequest ChannelSectionsUpdate' where
        type Rs ChannelSectionsUpdate' = ChannelSection
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ChannelSectionsUpdate'{..}
          = go (Just _csuPart) _csuOnBehalfOfContentOwner
              _csuQuotaUser
              (Just _csuPrettyPrint)
              _csuUserIP
              _csuFields
              _csuKey
              _csuOAuthToken
              (Just AltJSON)
              _csuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChannelSectionsUpdateResource)
                      r
                      u
