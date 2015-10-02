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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about the selected associated AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsGet@.
module Network.Google.Resource.AdSenseHost.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet'
    , AccountsGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIP
    , agAccountId
    , agKey
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsGet@ which the
-- 'AccountsGet'' request conforms to.
type AccountsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Get information about the selected associated AdSense account.
--
-- /See:/ 'accountsGet'' smart constructor.
data AccountsGet' = AccountsGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIP      :: !(Maybe Text)
    , _agAccountId   :: !Text
    , _agKey         :: !(Maybe Key)
    , _agOAuthToken  :: !(Maybe OAuthToken)
    , _agFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agAccountId'
--
-- * 'agKey'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
accountsGet'
    :: Text -- ^ 'accountId'
    -> AccountsGet'
accountsGet' pAgAccountId_ =
    AccountsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agAccountId = pAgAccountId_
    , _agKey = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AccountsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AccountsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' AccountsGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | Account to get information about.
agAccountId :: Lens' AccountsGet' Text
agAccountId
  = lens _agAccountId (\ s a -> s{_agAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AccountsGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' AccountsGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AccountsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth AccountsGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agUserIP
              _agAccountId
              _agKey
              _agOAuthToken
              _agFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsGetResource)
                      r
                      u
