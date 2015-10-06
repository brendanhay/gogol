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
-- Module      : Network.Google.Resource.AdSenseHost.AdClients.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about one of the ad clients in the Host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAdClientsGet@.
module Network.Google.Resource.AdSenseHost.AdClients.Get
    (
    -- * REST Resource
      AdClientsGetResource

    -- * Creating a Request
    , adClientsGet'
    , AdClientsGet'

    -- * Request Lenses
    , acgQuotaUser
    , acgPrettyPrint
    , acgUserIP
    , acgAdClientId
    , acgKey
    , acgOAuthToken
    , acgFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAdClientsGet@ which the
-- 'AdClientsGet'' request conforms to.
type AdClientsGetResource =
     "adclients" :>
       Capture "adClientId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AdClient

-- | Get information about one of the ad clients in the Host AdSense account.
--
-- /See:/ 'adClientsGet'' smart constructor.
data AdClientsGet' = AdClientsGet'
    { _acgQuotaUser   :: !(Maybe Text)
    , _acgPrettyPrint :: !Bool
    , _acgUserIP      :: !(Maybe Text)
    , _acgAdClientId  :: !Text
    , _acgKey         :: !(Maybe AuthKey)
    , _acgOAuthToken  :: !(Maybe OAuthToken)
    , _acgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClientsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgQuotaUser'
--
-- * 'acgPrettyPrint'
--
-- * 'acgUserIP'
--
-- * 'acgAdClientId'
--
-- * 'acgKey'
--
-- * 'acgOAuthToken'
--
-- * 'acgFields'
adClientsGet'
    :: Text -- ^ 'adClientId'
    -> AdClientsGet'
adClientsGet' pAcgAdClientId_ =
    AdClientsGet'
    { _acgQuotaUser = Nothing
    , _acgPrettyPrint = True
    , _acgUserIP = Nothing
    , _acgAdClientId = pAcgAdClientId_
    , _acgKey = Nothing
    , _acgOAuthToken = Nothing
    , _acgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acgQuotaUser :: Lens' AdClientsGet' (Maybe Text)
acgQuotaUser
  = lens _acgQuotaUser (\ s a -> s{_acgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acgPrettyPrint :: Lens' AdClientsGet' Bool
acgPrettyPrint
  = lens _acgPrettyPrint
      (\ s a -> s{_acgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acgUserIP :: Lens' AdClientsGet' (Maybe Text)
acgUserIP
  = lens _acgUserIP (\ s a -> s{_acgUserIP = a})

-- | Ad client to get.
acgAdClientId :: Lens' AdClientsGet' Text
acgAdClientId
  = lens _acgAdClientId
      (\ s a -> s{_acgAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acgKey :: Lens' AdClientsGet' (Maybe AuthKey)
acgKey = lens _acgKey (\ s a -> s{_acgKey = a})

-- | OAuth 2.0 token for the current user.
acgOAuthToken :: Lens' AdClientsGet' (Maybe OAuthToken)
acgOAuthToken
  = lens _acgOAuthToken
      (\ s a -> s{_acgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acgFields :: Lens' AdClientsGet' (Maybe Text)
acgFields
  = lens _acgFields (\ s a -> s{_acgFields = a})

instance GoogleAuth AdClientsGet' where
        authKey = acgKey . _Just
        authToken = acgOAuthToken . _Just

instance GoogleRequest AdClientsGet' where
        type Rs AdClientsGet' = AdClient
        request = requestWith adSenseHostRequest
        requestWith rq AdClientsGet'{..}
          = go _acgAdClientId _acgQuotaUser
              (Just _acgPrettyPrint)
              _acgUserIP
              _acgFields
              _acgKey
              _acgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AdClientsGetResource)
                      rq
