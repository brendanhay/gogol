{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Payments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the payments for the specified AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsPaymentsList@.
module Network.Google.Resource.AdSense.Accounts.Payments.List
    (
    -- * REST Resource
      AccountsPaymentsListResource

    -- * Creating a Request
    , accountsPaymentsList'
    , AccountsPaymentsList'

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIP
    , aplAccountId
    , aplKey
    , aplOAuthToken
    , aplFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsPaymentsList@ which the
-- 'AccountsPaymentsList'' request conforms to.
type AccountsPaymentsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "payments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Payments

-- | List the payments for the specified AdSense account.
--
-- /See:/ 'accountsPaymentsList'' smart constructor.
data AccountsPaymentsList' = AccountsPaymentsList'
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIP      :: !(Maybe Text)
    , _aplAccountId   :: !Text
    , _aplKey         :: !(Maybe Key)
    , _aplOAuthToken  :: !(Maybe OAuthToken)
    , _aplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPaymentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIP'
--
-- * 'aplAccountId'
--
-- * 'aplKey'
--
-- * 'aplOAuthToken'
--
-- * 'aplFields'
accountsPaymentsList'
    :: Text -- ^ 'accountId'
    -> AccountsPaymentsList'
accountsPaymentsList' pAplAccountId_ =
    AccountsPaymentsList'
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIP = Nothing
    , _aplAccountId = pAplAccountId_
    , _aplKey = Nothing
    , _aplOAuthToken = Nothing
    , _aplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AccountsPaymentsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AccountsPaymentsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIP :: Lens' AccountsPaymentsList' (Maybe Text)
aplUserIP
  = lens _aplUserIP (\ s a -> s{_aplUserIP = a})

-- | Account for which to retrieve the payments.
aplAccountId :: Lens' AccountsPaymentsList' Text
aplAccountId
  = lens _aplAccountId (\ s a -> s{_aplAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AccountsPaymentsList' (Maybe Key)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | OAuth 2.0 token for the current user.
aplOAuthToken :: Lens' AccountsPaymentsList' (Maybe OAuthToken)
aplOAuthToken
  = lens _aplOAuthToken
      (\ s a -> s{_aplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AccountsPaymentsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

instance GoogleAuth AccountsPaymentsList' where
        authKey = aplKey . _Just
        authToken = aplOAuthToken . _Just

instance GoogleRequest AccountsPaymentsList' where
        type Rs AccountsPaymentsList' = Payments
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsPaymentsList'{..}
          = go _aplAccountId _aplQuotaUser
              (Just _aplPrettyPrint)
              _aplUserIP
              _aplFields
              _aplKey
              _aplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPaymentsListResource)
                      r
                      u
