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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsPreferredDealsGet@.
module Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.Get
    (
    -- * REST Resource
      AccountsPreferredDealsGetResource

    -- * Creating a Request
    , accountsPreferredDealsGet'
    , AccountsPreferredDealsGet'

    -- * Request Lenses
    , apdgQuotaUser
    , apdgPrettyPrint
    , apdgUserIP
    , apdgDealId
    , apdgAccountId
    , apdgKey
    , apdgOAuthToken
    , apdgFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsPreferredDealsGet@ which the
-- 'AccountsPreferredDealsGet'' request conforms to.
type AccountsPreferredDealsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "preferreddeals" :>
           Capture "dealId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] PreferredDeal

-- | Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ 'accountsPreferredDealsGet'' smart constructor.
data AccountsPreferredDealsGet' = AccountsPreferredDealsGet'
    { _apdgQuotaUser   :: !(Maybe Text)
    , _apdgPrettyPrint :: !Bool
    , _apdgUserIP      :: !(Maybe Text)
    , _apdgDealId      :: !Text
    , _apdgAccountId   :: !Text
    , _apdgKey         :: !(Maybe AuthKey)
    , _apdgOAuthToken  :: !(Maybe OAuthToken)
    , _apdgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPreferredDealsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdgQuotaUser'
--
-- * 'apdgPrettyPrint'
--
-- * 'apdgUserIP'
--
-- * 'apdgDealId'
--
-- * 'apdgAccountId'
--
-- * 'apdgKey'
--
-- * 'apdgOAuthToken'
--
-- * 'apdgFields'
accountsPreferredDealsGet'
    :: Text -- ^ 'dealId'
    -> Text -- ^ 'accountId'
    -> AccountsPreferredDealsGet'
accountsPreferredDealsGet' pApdgDealId_ pApdgAccountId_ =
    AccountsPreferredDealsGet'
    { _apdgQuotaUser = Nothing
    , _apdgPrettyPrint = True
    , _apdgUserIP = Nothing
    , _apdgDealId = pApdgDealId_
    , _apdgAccountId = pApdgAccountId_
    , _apdgKey = Nothing
    , _apdgOAuthToken = Nothing
    , _apdgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apdgQuotaUser :: Lens' AccountsPreferredDealsGet' (Maybe Text)
apdgQuotaUser
  = lens _apdgQuotaUser
      (\ s a -> s{_apdgQuotaUser = a})

-- | Returns response with indentations and line breaks.
apdgPrettyPrint :: Lens' AccountsPreferredDealsGet' Bool
apdgPrettyPrint
  = lens _apdgPrettyPrint
      (\ s a -> s{_apdgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apdgUserIP :: Lens' AccountsPreferredDealsGet' (Maybe Text)
apdgUserIP
  = lens _apdgUserIP (\ s a -> s{_apdgUserIP = a})

-- | Preferred deal to get information about.
apdgDealId :: Lens' AccountsPreferredDealsGet' Text
apdgDealId
  = lens _apdgDealId (\ s a -> s{_apdgDealId = a})

-- | Account owning the deal.
apdgAccountId :: Lens' AccountsPreferredDealsGet' Text
apdgAccountId
  = lens _apdgAccountId
      (\ s a -> s{_apdgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apdgKey :: Lens' AccountsPreferredDealsGet' (Maybe AuthKey)
apdgKey = lens _apdgKey (\ s a -> s{_apdgKey = a})

-- | OAuth 2.0 token for the current user.
apdgOAuthToken :: Lens' AccountsPreferredDealsGet' (Maybe OAuthToken)
apdgOAuthToken
  = lens _apdgOAuthToken
      (\ s a -> s{_apdgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apdgFields :: Lens' AccountsPreferredDealsGet' (Maybe Text)
apdgFields
  = lens _apdgFields (\ s a -> s{_apdgFields = a})

instance GoogleAuth AccountsPreferredDealsGet' where
        _AuthKey = apdgKey . _Just
        _AuthToken = apdgOAuthToken . _Just

instance GoogleRequest AccountsPreferredDealsGet'
         where
        type Rs AccountsPreferredDealsGet' = PreferredDeal
        request = requestWith adExchangeSellerRequest
        requestWith rq AccountsPreferredDealsGet'{..}
          = go _apdgAccountId _apdgDealId _apdgQuotaUser
              (Just _apdgPrettyPrint)
              _apdgUserIP
              _apdgFields
              _apdgKey
              _apdgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsPreferredDealsGetResource)
                      rq
