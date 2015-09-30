{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Preferreddeals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the preferred deals for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsPreferreddealsList@.
module AdExchangeSeller.Accounts.Preferreddeals.List
    (
    -- * REST Resource
      AccountsPreferreddealsListAPI

    -- * Creating a Request
    , accountsPreferreddealsList
    , AccountsPreferreddealsList

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIp
    , aplAccountId
    , aplKey
    , aplOauthToken
    , aplFields
    , aplAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsPreferreddealsList@ which the
-- 'AccountsPreferreddealsList' request conforms to.
type AccountsPreferreddealsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "preferreddeals" :> Get '[JSON] PreferredDeals

-- | List the preferred deals for this Ad Exchange account.
--
-- /See:/ 'accountsPreferreddealsList' smart constructor.
data AccountsPreferreddealsList = AccountsPreferreddealsList
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIp      :: !(Maybe Text)
    , _aplAccountId   :: !Text
    , _aplKey         :: !(Maybe Text)
    , _aplOauthToken  :: !(Maybe Text)
    , _aplFields      :: !(Maybe Text)
    , _aplAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPreferreddealsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIp'
--
-- * 'aplAccountId'
--
-- * 'aplKey'
--
-- * 'aplOauthToken'
--
-- * 'aplFields'
--
-- * 'aplAlt'
accountsPreferreddealsList
    :: Text -- ^ 'accountId'
    -> AccountsPreferreddealsList
accountsPreferreddealsList pAplAccountId_ =
    AccountsPreferreddealsList
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIp = Nothing
    , _aplAccountId = pAplAccountId_
    , _aplKey = Nothing
    , _aplOauthToken = Nothing
    , _aplFields = Nothing
    , _aplAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AccountsPreferreddealsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AccountsPreferreddealsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIp :: Lens' AccountsPreferreddealsList' (Maybe Text)
aplUserIp
  = lens _aplUserIp (\ s a -> s{_aplUserIp = a})

-- | Account owning the deals.
aplAccountId :: Lens' AccountsPreferreddealsList' Text
aplAccountId
  = lens _aplAccountId (\ s a -> s{_aplAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AccountsPreferreddealsList' (Maybe Text)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | OAuth 2.0 token for the current user.
aplOauthToken :: Lens' AccountsPreferreddealsList' (Maybe Text)
aplOauthToken
  = lens _aplOauthToken
      (\ s a -> s{_aplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AccountsPreferreddealsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

-- | Data format for the response.
aplAlt :: Lens' AccountsPreferreddealsList' Text
aplAlt = lens _aplAlt (\ s a -> s{_aplAlt = a})

instance GoogleRequest AccountsPreferreddealsList'
         where
        type Rs AccountsPreferreddealsList' = PreferredDeals
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsPreferreddealsList{..}
          = go _aplQuotaUser _aplPrettyPrint _aplUserIp
              _aplAccountId
              _aplKey
              _aplOauthToken
              _aplFields
              _aplAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPreferreddealsListAPI)
                      r
                      u
