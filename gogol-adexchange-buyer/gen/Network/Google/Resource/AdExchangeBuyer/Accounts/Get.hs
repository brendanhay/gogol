{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , agUserIP
    , agKey
    , agId
    , agOAuthToken
    , agFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet'' smart constructor.
data AccountsGet' = AccountsGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIP      :: !(Maybe Text)
    , _agKey         :: !(Maybe Key)
    , _agId          :: !Int32
    , _agOAuthToken  :: !(Maybe OAuthToken)
    , _agFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'agKey'
--
-- * 'agId'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
accountsGet'
    :: Int32 -- ^ 'id'
    -> AccountsGet'
accountsGet' pAgId_ =
    AccountsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agKey = Nothing
    , _agId = pAgId_
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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AccountsGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | The account id
agId :: Lens' AccountsGet' Int32
agId = lens _agId (\ s a -> s{_agId = a})

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
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u AccountsGet'{..}
          = go _agId _agQuotaUser (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsGetResource)
                      r
                      u
