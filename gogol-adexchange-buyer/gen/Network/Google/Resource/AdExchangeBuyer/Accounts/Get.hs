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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account by ID.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerAccountsGet@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet'
    , AccountsGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agKey
    , agId
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerAccountsGet@ which the
-- 'AccountsGet'' request conforms to.
type AccountsGetResource =
     "accounts" :>
       Capture "id" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet'' smart constructor.
data AccountsGet' = AccountsGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIp      :: !(Maybe Text)
    , _agKey         :: !(Maybe Text)
    , _agId          :: !Int32
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agKey'
--
-- * 'agId'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
accountsGet'
    :: Int32 -- ^ 'id'
    -> AccountsGet'
accountsGet' pAgId_ =
    AccountsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agKey = Nothing
    , _agId = pAgId_
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
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
agUserIp :: Lens' AccountsGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AccountsGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | The account id
agId :: Lens' AccountsGet' Int32
agId = lens _agId (\ s a -> s{_agId = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AccountsGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AccountsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AccountsGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u AccountsGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agUserIp
              _agKey
              _agId
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsGetResource)
                      r
                      u
