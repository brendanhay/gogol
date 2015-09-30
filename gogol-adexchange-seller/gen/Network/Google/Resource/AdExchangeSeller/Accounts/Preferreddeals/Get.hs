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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Preferreddeals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsPreferreddealsGet@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Preferreddeals.Get
    (
    -- * REST Resource
      AccountsPreferreddealsGetResource

    -- * Creating a Request
    , accountsPreferreddealsGet'
    , AccountsPreferreddealsGet'

    -- * Request Lenses
    , apgQuotaUser
    , apgPrettyPrint
    , apgUserIp
    , apgDealId
    , apgAccountId
    , apgKey
    , apgOauthToken
    , apgFields
    , apgAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsPreferreddealsGet@ which the
-- 'AccountsPreferreddealsGet'' request conforms to.
type AccountsPreferreddealsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "preferreddeals" :>
           Capture "dealId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] PreferredDeal

-- | Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ 'accountsPreferreddealsGet'' smart constructor.
data AccountsPreferreddealsGet' = AccountsPreferreddealsGet'
    { _apgQuotaUser   :: !(Maybe Text)
    , _apgPrettyPrint :: !Bool
    , _apgUserIp      :: !(Maybe Text)
    , _apgDealId      :: !Text
    , _apgAccountId   :: !Text
    , _apgKey         :: !(Maybe Text)
    , _apgOauthToken  :: !(Maybe Text)
    , _apgFields      :: !(Maybe Text)
    , _apgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPreferreddealsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgQuotaUser'
--
-- * 'apgPrettyPrint'
--
-- * 'apgUserIp'
--
-- * 'apgDealId'
--
-- * 'apgAccountId'
--
-- * 'apgKey'
--
-- * 'apgOauthToken'
--
-- * 'apgFields'
--
-- * 'apgAlt'
accountsPreferreddealsGet'
    :: Text -- ^ 'dealId'
    -> Text -- ^ 'accountId'
    -> AccountsPreferreddealsGet'
accountsPreferreddealsGet' pApgDealId_ pApgAccountId_ =
    AccountsPreferreddealsGet'
    { _apgQuotaUser = Nothing
    , _apgPrettyPrint = True
    , _apgUserIp = Nothing
    , _apgDealId = pApgDealId_
    , _apgAccountId = pApgAccountId_
    , _apgKey = Nothing
    , _apgOauthToken = Nothing
    , _apgFields = Nothing
    , _apgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apgQuotaUser :: Lens' AccountsPreferreddealsGet' (Maybe Text)
apgQuotaUser
  = lens _apgQuotaUser (\ s a -> s{_apgQuotaUser = a})

-- | Returns response with indentations and line breaks.
apgPrettyPrint :: Lens' AccountsPreferreddealsGet' Bool
apgPrettyPrint
  = lens _apgPrettyPrint
      (\ s a -> s{_apgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apgUserIp :: Lens' AccountsPreferreddealsGet' (Maybe Text)
apgUserIp
  = lens _apgUserIp (\ s a -> s{_apgUserIp = a})

-- | Preferred deal to get information about.
apgDealId :: Lens' AccountsPreferreddealsGet' Text
apgDealId
  = lens _apgDealId (\ s a -> s{_apgDealId = a})

-- | Account owning the deal.
apgAccountId :: Lens' AccountsPreferreddealsGet' Text
apgAccountId
  = lens _apgAccountId (\ s a -> s{_apgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apgKey :: Lens' AccountsPreferreddealsGet' (Maybe Text)
apgKey = lens _apgKey (\ s a -> s{_apgKey = a})

-- | OAuth 2.0 token for the current user.
apgOauthToken :: Lens' AccountsPreferreddealsGet' (Maybe Text)
apgOauthToken
  = lens _apgOauthToken
      (\ s a -> s{_apgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apgFields :: Lens' AccountsPreferreddealsGet' (Maybe Text)
apgFields
  = lens _apgFields (\ s a -> s{_apgFields = a})

-- | Data format for the response.
apgAlt :: Lens' AccountsPreferreddealsGet' Alt
apgAlt = lens _apgAlt (\ s a -> s{_apgAlt = a})

instance GoogleRequest AccountsPreferreddealsGet'
         where
        type Rs AccountsPreferreddealsGet' = PreferredDeal
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsPreferreddealsGet'{..}
          = go _apgQuotaUser (Just _apgPrettyPrint) _apgUserIp
              _apgDealId
              _apgAccountId
              _apgKey
              _apgOauthToken
              _apgFields
              (Just _apgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPreferreddealsGetResource)
                      r
                      u
