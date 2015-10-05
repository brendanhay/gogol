{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsGet@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Get
    (
    -- * REST Resource
      CustomChannelsGetResource

    -- * Creating a Request
    , customChannelsGet'
    , CustomChannelsGet'

    -- * Request Lenses
    , ccgQuotaUser
    , ccgPrettyPrint
    , ccgCustomChannelId
    , ccgUserIP
    , ccgAdClientId
    , ccgKey
    , ccgOAuthToken
    , ccgFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsGet@ which the
-- 'CustomChannelsGet'' request conforms to.
type CustomChannelsGetResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] CustomChannel

-- | Get a specific custom channel from the host AdSense account.
--
-- /See:/ 'customChannelsGet'' smart constructor.
data CustomChannelsGet' = CustomChannelsGet'
    { _ccgQuotaUser       :: !(Maybe Text)
    , _ccgPrettyPrint     :: !Bool
    , _ccgCustomChannelId :: !Text
    , _ccgUserIP          :: !(Maybe Text)
    , _ccgAdClientId      :: !Text
    , _ccgKey             :: !(Maybe Key)
    , _ccgOAuthToken      :: !(Maybe OAuthToken)
    , _ccgFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgQuotaUser'
--
-- * 'ccgPrettyPrint'
--
-- * 'ccgCustomChannelId'
--
-- * 'ccgUserIP'
--
-- * 'ccgAdClientId'
--
-- * 'ccgKey'
--
-- * 'ccgOAuthToken'
--
-- * 'ccgFields'
customChannelsGet'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> CustomChannelsGet'
customChannelsGet' pCcgCustomChannelId_ pCcgAdClientId_ =
    CustomChannelsGet'
    { _ccgQuotaUser = Nothing
    , _ccgPrettyPrint = True
    , _ccgCustomChannelId = pCcgCustomChannelId_
    , _ccgUserIP = Nothing
    , _ccgAdClientId = pCcgAdClientId_
    , _ccgKey = Nothing
    , _ccgOAuthToken = Nothing
    , _ccgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccgQuotaUser :: Lens' CustomChannelsGet' (Maybe Text)
ccgQuotaUser
  = lens _ccgQuotaUser (\ s a -> s{_ccgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccgPrettyPrint :: Lens' CustomChannelsGet' Bool
ccgPrettyPrint
  = lens _ccgPrettyPrint
      (\ s a -> s{_ccgPrettyPrint = a})

-- | Custom channel to get.
ccgCustomChannelId :: Lens' CustomChannelsGet' Text
ccgCustomChannelId
  = lens _ccgCustomChannelId
      (\ s a -> s{_ccgCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccgUserIP :: Lens' CustomChannelsGet' (Maybe Text)
ccgUserIP
  = lens _ccgUserIP (\ s a -> s{_ccgUserIP = a})

-- | Ad client from which to get the custom channel.
ccgAdClientId :: Lens' CustomChannelsGet' Text
ccgAdClientId
  = lens _ccgAdClientId
      (\ s a -> s{_ccgAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccgKey :: Lens' CustomChannelsGet' (Maybe Key)
ccgKey = lens _ccgKey (\ s a -> s{_ccgKey = a})

-- | OAuth 2.0 token for the current user.
ccgOAuthToken :: Lens' CustomChannelsGet' (Maybe OAuthToken)
ccgOAuthToken
  = lens _ccgOAuthToken
      (\ s a -> s{_ccgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccgFields :: Lens' CustomChannelsGet' (Maybe Text)
ccgFields
  = lens _ccgFields (\ s a -> s{_ccgFields = a})

instance GoogleAuth CustomChannelsGet' where
        authKey = ccgKey . _Just
        authToken = ccgOAuthToken . _Just

instance GoogleRequest CustomChannelsGet' where
        type Rs CustomChannelsGet' = CustomChannel
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u CustomChannelsGet'{..}
          = go _ccgAdClientId _ccgCustomChannelId _ccgQuotaUser
              (Just _ccgPrettyPrint)
              _ccgUserIP
              _ccgFields
              _ccgKey
              _ccgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomChannelsGetResource)
                      r
                      u
