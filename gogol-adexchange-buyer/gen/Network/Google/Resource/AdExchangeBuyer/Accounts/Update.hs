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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerAccountsUpdate@.
module Network.Google.Resource.AdExchangeBuyer.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate'
    , AccountsUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auUserIp
    , auKey
    , auId
    , auOauthToken
    , auFields
    , auAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerAccountsUpdate@ which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     "accounts" :>
       Capture "id" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auUserIp      :: !(Maybe Text)
    , _auKey         :: !(Maybe Text)
    , _auId          :: !Int32
    , _auOauthToken  :: !(Maybe Text)
    , _auFields      :: !(Maybe Text)
    , _auAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIp'
--
-- * 'auKey'
--
-- * 'auId'
--
-- * 'auOauthToken'
--
-- * 'auFields'
--
-- * 'auAlt'
accountsUpdate'
    :: Int32 -- ^ 'id'
    -> AccountsUpdate'
accountsUpdate' pAuId_ =
    AccountsUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIp = Nothing
    , _auKey = Nothing
    , _auId = pAuId_
    , _auOauthToken = Nothing
    , _auFields = Nothing
    , _auAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AccountsUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AccountsUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIp :: Lens' AccountsUpdate' (Maybe Text)
auUserIp = lens _auUserIp (\ s a -> s{_auUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AccountsUpdate' (Maybe Text)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | The account id
auId :: Lens' AccountsUpdate' Int32
auId = lens _auId (\ s a -> s{_auId = a})

-- | OAuth 2.0 token for the current user.
auOauthToken :: Lens' AccountsUpdate' (Maybe Text)
auOauthToken
  = lens _auOauthToken (\ s a -> s{_auOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AccountsUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

-- | Data format for the response.
auAlt :: Lens' AccountsUpdate' Alt
auAlt = lens _auAlt (\ s a -> s{_auAlt = a})

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u AccountsUpdate'{..}
          = go _auQuotaUser (Just _auPrettyPrint) _auUserIp
              _auKey
              _auId
              _auOauthToken
              _auFields
              (Just _auAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsUpdateResource)
                      r
                      u
