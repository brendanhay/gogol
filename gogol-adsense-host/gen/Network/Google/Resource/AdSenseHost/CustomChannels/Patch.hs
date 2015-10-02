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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsPatch@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Patch
    (
    -- * REST Resource
      CustomChannelsPatchResource

    -- * Creating a Request
    , customChannelsPatch'
    , CustomChannelsPatch'

    -- * Request Lenses
    , ccpQuotaUser
    , ccpPrettyPrint
    , ccpCustomChannelId
    , ccpUserIP
    , ccpAdClientId
    , ccpKey
    , ccpCustomChannel
    , ccpOAuthToken
    , ccpFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsPatch@ which the
-- 'CustomChannelsPatch'' request conforms to.
type CustomChannelsPatchResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "customChannelId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CustomChannel :>
                             Patch '[JSON] CustomChannel

-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
--
-- /See:/ 'customChannelsPatch'' smart constructor.
data CustomChannelsPatch' = CustomChannelsPatch'
    { _ccpQuotaUser       :: !(Maybe Text)
    , _ccpPrettyPrint     :: !Bool
    , _ccpCustomChannelId :: !Text
    , _ccpUserIP          :: !(Maybe Text)
    , _ccpAdClientId      :: !Text
    , _ccpKey             :: !(Maybe Key)
    , _ccpCustomChannel   :: !CustomChannel
    , _ccpOAuthToken      :: !(Maybe OAuthToken)
    , _ccpFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpQuotaUser'
--
-- * 'ccpPrettyPrint'
--
-- * 'ccpCustomChannelId'
--
-- * 'ccpUserIP'
--
-- * 'ccpAdClientId'
--
-- * 'ccpKey'
--
-- * 'ccpCustomChannel'
--
-- * 'ccpOAuthToken'
--
-- * 'ccpFields'
customChannelsPatch'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomChannel -- ^ 'CustomChannel'
    -> CustomChannelsPatch'
customChannelsPatch' pCcpCustomChannelId_ pCcpAdClientId_ pCcpCustomChannel_ =
    CustomChannelsPatch'
    { _ccpQuotaUser = Nothing
    , _ccpPrettyPrint = True
    , _ccpCustomChannelId = pCcpCustomChannelId_
    , _ccpUserIP = Nothing
    , _ccpAdClientId = pCcpAdClientId_
    , _ccpKey = Nothing
    , _ccpCustomChannel = pCcpCustomChannel_
    , _ccpOAuthToken = Nothing
    , _ccpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccpQuotaUser :: Lens' CustomChannelsPatch' (Maybe Text)
ccpQuotaUser
  = lens _ccpQuotaUser (\ s a -> s{_ccpQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccpPrettyPrint :: Lens' CustomChannelsPatch' Bool
ccpPrettyPrint
  = lens _ccpPrettyPrint
      (\ s a -> s{_ccpPrettyPrint = a})

-- | Custom channel to get.
ccpCustomChannelId :: Lens' CustomChannelsPatch' Text
ccpCustomChannelId
  = lens _ccpCustomChannelId
      (\ s a -> s{_ccpCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccpUserIP :: Lens' CustomChannelsPatch' (Maybe Text)
ccpUserIP
  = lens _ccpUserIP (\ s a -> s{_ccpUserIP = a})

-- | Ad client in which the custom channel will be updated.
ccpAdClientId :: Lens' CustomChannelsPatch' Text
ccpAdClientId
  = lens _ccpAdClientId
      (\ s a -> s{_ccpAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccpKey :: Lens' CustomChannelsPatch' (Maybe Key)
ccpKey = lens _ccpKey (\ s a -> s{_ccpKey = a})

-- | Multipart request metadata.
ccpCustomChannel :: Lens' CustomChannelsPatch' CustomChannel
ccpCustomChannel
  = lens _ccpCustomChannel
      (\ s a -> s{_ccpCustomChannel = a})

-- | OAuth 2.0 token for the current user.
ccpOAuthToken :: Lens' CustomChannelsPatch' (Maybe OAuthToken)
ccpOAuthToken
  = lens _ccpOAuthToken
      (\ s a -> s{_ccpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccpFields :: Lens' CustomChannelsPatch' (Maybe Text)
ccpFields
  = lens _ccpFields (\ s a -> s{_ccpFields = a})

instance GoogleAuth CustomChannelsPatch' where
        authKey = ccpKey . _Just
        authToken = ccpOAuthToken . _Just

instance GoogleRequest CustomChannelsPatch' where
        type Rs CustomChannelsPatch' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomChannelsPatch'{..}
          = go _ccpAdClientId (Just _ccpCustomChannelId)
              _ccpQuotaUser
              (Just _ccpPrettyPrint)
              _ccpUserIP
              _ccpFields
              _ccpKey
              _ccpOAuthToken
              (Just AltJSON)
              _ccpCustomChannel
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomChannelsPatchResource)
                      r
                      u
