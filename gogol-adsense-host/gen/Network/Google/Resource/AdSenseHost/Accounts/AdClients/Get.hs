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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdClientsGet@.
module Network.Google.Resource.AdSenseHost.Accounts.AdClients.Get
    (
    -- * REST Resource
      AccountsAdClientsGetResource

    -- * Creating a Request
    , accountsAdClientsGet'
    , AccountsAdClientsGet'

    -- * Request Lenses
    , aacgQuotaUser
    , aacgPrettyPrint
    , aacgUserIP
    , aacgAdClientId
    , aacgAccountId
    , aacgKey
    , aacgOAuthToken
    , aacgFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdClientsGet@ method which the
-- 'AccountsAdClientsGet'' request conforms to.
type AccountsAdClientsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AdClient

-- | Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
--
-- /See:/ 'accountsAdClientsGet'' smart constructor.
data AccountsAdClientsGet' = AccountsAdClientsGet'
    { _aacgQuotaUser   :: !(Maybe Text)
    , _aacgPrettyPrint :: !Bool
    , _aacgUserIP      :: !(Maybe Text)
    , _aacgAdClientId  :: !Text
    , _aacgAccountId   :: !Text
    , _aacgKey         :: !(Maybe AuthKey)
    , _aacgOAuthToken  :: !(Maybe OAuthToken)
    , _aacgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdClientsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacgQuotaUser'
--
-- * 'aacgPrettyPrint'
--
-- * 'aacgUserIP'
--
-- * 'aacgAdClientId'
--
-- * 'aacgAccountId'
--
-- * 'aacgKey'
--
-- * 'aacgOAuthToken'
--
-- * 'aacgFields'
accountsAdClientsGet'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdClientsGet'
accountsAdClientsGet' pAacgAdClientId_ pAacgAccountId_ =
    AccountsAdClientsGet'
    { _aacgQuotaUser = Nothing
    , _aacgPrettyPrint = True
    , _aacgUserIP = Nothing
    , _aacgAdClientId = pAacgAdClientId_
    , _aacgAccountId = pAacgAccountId_
    , _aacgKey = Nothing
    , _aacgOAuthToken = Nothing
    , _aacgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aacgQuotaUser :: Lens' AccountsAdClientsGet' (Maybe Text)
aacgQuotaUser
  = lens _aacgQuotaUser
      (\ s a -> s{_aacgQuotaUser = a})

-- | Returns response with indentations and line breaks.
aacgPrettyPrint :: Lens' AccountsAdClientsGet' Bool
aacgPrettyPrint
  = lens _aacgPrettyPrint
      (\ s a -> s{_aacgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aacgUserIP :: Lens' AccountsAdClientsGet' (Maybe Text)
aacgUserIP
  = lens _aacgUserIP (\ s a -> s{_aacgUserIP = a})

-- | Ad client to get.
aacgAdClientId :: Lens' AccountsAdClientsGet' Text
aacgAdClientId
  = lens _aacgAdClientId
      (\ s a -> s{_aacgAdClientId = a})

-- | Account which contains the ad client.
aacgAccountId :: Lens' AccountsAdClientsGet' Text
aacgAccountId
  = lens _aacgAccountId
      (\ s a -> s{_aacgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aacgKey :: Lens' AccountsAdClientsGet' (Maybe AuthKey)
aacgKey = lens _aacgKey (\ s a -> s{_aacgKey = a})

-- | OAuth 2.0 token for the current user.
aacgOAuthToken :: Lens' AccountsAdClientsGet' (Maybe OAuthToken)
aacgOAuthToken
  = lens _aacgOAuthToken
      (\ s a -> s{_aacgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aacgFields :: Lens' AccountsAdClientsGet' (Maybe Text)
aacgFields
  = lens _aacgFields (\ s a -> s{_aacgFields = a})

instance GoogleAuth AccountsAdClientsGet' where
        _AuthKey = aacgKey . _Just
        _AuthToken = aacgOAuthToken . _Just

instance GoogleRequest AccountsAdClientsGet' where
        type Rs AccountsAdClientsGet' = AdClient
        request = requestWith adSenseHostRequest
        requestWith rq AccountsAdClientsGet'{..}
          = go _aacgAccountId _aacgAdClientId _aacgQuotaUser
              (Just _aacgPrettyPrint)
              _aacgUserIP
              _aacgFields
              _aacgKey
              _aacgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAdClientsGetResource)
                      rq
