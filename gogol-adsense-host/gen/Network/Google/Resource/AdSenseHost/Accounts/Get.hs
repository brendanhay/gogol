{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdSenseHost.Accounts.Get
    (
    -- * REST Resource
      AccountsGetAPI

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , aggQuotaUser
    , aggPrettyPrint
    , aggUserIp
    , aggAccountId
    , aggKey
    , aggOauthToken
    , aggFields
    , aggAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsGet@ which the
-- 'AccountsGet' request conforms to.
type AccountsGetAPI =
     "accounts" :>
       Capture "accountId" Text :> Get '[JSON] Account

-- | Get information about the selected associated AdSense account.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet = AccountsGet
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggUserIp      :: !(Maybe Text)
    , _aggAccountId   :: !Text
    , _aggKey         :: !(Maybe Text)
    , _aggOauthToken  :: !(Maybe Text)
    , _aggFields      :: !(Maybe Text)
    , _aggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggUserIp'
--
-- * 'aggAccountId'
--
-- * 'aggKey'
--
-- * 'aggOauthToken'
--
-- * 'aggFields'
--
-- * 'aggAlt'
accountsGet
    :: Text -- ^ 'accountId'
    -> AccountsGet
accountsGet pAggAccountId_ =
    AccountsGet
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggUserIp = Nothing
    , _aggAccountId = pAggAccountId_
    , _aggKey = Nothing
    , _aggOauthToken = Nothing
    , _aggFields = Nothing
    , _aggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AccountsGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AccountsGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIp :: Lens' AccountsGet' (Maybe Text)
aggUserIp
  = lens _aggUserIp (\ s a -> s{_aggUserIp = a})

-- | Account to get information about.
aggAccountId :: Lens' AccountsGet' Text
aggAccountId
  = lens _aggAccountId (\ s a -> s{_aggAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AccountsGet' (Maybe Text)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | OAuth 2.0 token for the current user.
aggOauthToken :: Lens' AccountsGet' (Maybe Text)
aggOauthToken
  = lens _aggOauthToken
      (\ s a -> s{_aggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AccountsGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

-- | Data format for the response.
aggAlt :: Lens' AccountsGet' Text
aggAlt = lens _aggAlt (\ s a -> s{_aggAlt = a})

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsGet{..}
          = go _aggQuotaUser _aggPrettyPrint _aggUserIp
              _aggAccountId
              _aggKey
              _aggOauthToken
              _aggFields
              _aggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsGetAPI) r u
