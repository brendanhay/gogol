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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the preferred deals for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsPreferredDealsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.List
    (
    -- * REST Resource
      AccountsPreferredDealsListResource

    -- * Creating a Request
    , accountsPreferredDealsList'
    , AccountsPreferredDealsList'

    -- * Request Lenses
    , apdlQuotaUser
    , apdlPrettyPrint
    , apdlUserIP
    , apdlAccountId
    , apdlKey
    , apdlOAuthToken
    , apdlFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsPreferredDealsList@ which the
-- 'AccountsPreferredDealsList'' request conforms to.
type AccountsPreferredDealsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "preferreddeals" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PreferredDeals

-- | List the preferred deals for this Ad Exchange account.
--
-- /See:/ 'accountsPreferredDealsList'' smart constructor.
data AccountsPreferredDealsList' = AccountsPreferredDealsList'
    { _apdlQuotaUser   :: !(Maybe Text)
    , _apdlPrettyPrint :: !Bool
    , _apdlUserIP      :: !(Maybe Text)
    , _apdlAccountId   :: !Text
    , _apdlKey         :: !(Maybe AuthKey)
    , _apdlOAuthToken  :: !(Maybe OAuthToken)
    , _apdlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPreferredDealsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdlQuotaUser'
--
-- * 'apdlPrettyPrint'
--
-- * 'apdlUserIP'
--
-- * 'apdlAccountId'
--
-- * 'apdlKey'
--
-- * 'apdlOAuthToken'
--
-- * 'apdlFields'
accountsPreferredDealsList'
    :: Text -- ^ 'accountId'
    -> AccountsPreferredDealsList'
accountsPreferredDealsList' pApdlAccountId_ =
    AccountsPreferredDealsList'
    { _apdlQuotaUser = Nothing
    , _apdlPrettyPrint = True
    , _apdlUserIP = Nothing
    , _apdlAccountId = pApdlAccountId_
    , _apdlKey = Nothing
    , _apdlOAuthToken = Nothing
    , _apdlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apdlQuotaUser :: Lens' AccountsPreferredDealsList' (Maybe Text)
apdlQuotaUser
  = lens _apdlQuotaUser
      (\ s a -> s{_apdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
apdlPrettyPrint :: Lens' AccountsPreferredDealsList' Bool
apdlPrettyPrint
  = lens _apdlPrettyPrint
      (\ s a -> s{_apdlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apdlUserIP :: Lens' AccountsPreferredDealsList' (Maybe Text)
apdlUserIP
  = lens _apdlUserIP (\ s a -> s{_apdlUserIP = a})

-- | Account owning the deals.
apdlAccountId :: Lens' AccountsPreferredDealsList' Text
apdlAccountId
  = lens _apdlAccountId
      (\ s a -> s{_apdlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apdlKey :: Lens' AccountsPreferredDealsList' (Maybe AuthKey)
apdlKey = lens _apdlKey (\ s a -> s{_apdlKey = a})

-- | OAuth 2.0 token for the current user.
apdlOAuthToken :: Lens' AccountsPreferredDealsList' (Maybe OAuthToken)
apdlOAuthToken
  = lens _apdlOAuthToken
      (\ s a -> s{_apdlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apdlFields :: Lens' AccountsPreferredDealsList' (Maybe Text)
apdlFields
  = lens _apdlFields (\ s a -> s{_apdlFields = a})

instance GoogleAuth AccountsPreferredDealsList' where
        authKey = apdlKey . _Just
        authToken = apdlOAuthToken . _Just

instance GoogleRequest AccountsPreferredDealsList'
         where
        type Rs AccountsPreferredDealsList' = PreferredDeals
        request = requestWith adExchangeSellerRequest
        requestWith rq AccountsPreferredDealsList'{..}
          = go _apdlAccountId _apdlQuotaUser
              (Just _apdlPrettyPrint)
              _apdlUserIP
              _apdlFields
              _apdlKey
              _apdlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsPreferredDealsListResource)
                      rq
