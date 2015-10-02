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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsUpdate@.
module Network.Google.Resource.DFAReporting.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate'
    , AccountsUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auPrettyPrint
    , auUserIP
    , auProfileId
    , auAccount
    , auKey
    , auOAuthToken
    , auFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsUpdate@ which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auUserIP      :: !(Maybe Text)
    , _auProfileId   :: !Int64
    , _auAccount     :: !Account
    , _auKey         :: !(Maybe Key)
    , _auOAuthToken  :: !(Maybe OAuthToken)
    , _auFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIP'
--
-- * 'auProfileId'
--
-- * 'auAccount'
--
-- * 'auKey'
--
-- * 'auOAuthToken'
--
-- * 'auFields'
accountsUpdate'
    :: Int64 -- ^ 'profileId'
    -> Account -- ^ 'Account'
    -> AccountsUpdate'
accountsUpdate' pAuProfileId_ pAuAccount_ =
    AccountsUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIP = Nothing
    , _auProfileId = pAuProfileId_
    , _auAccount = pAuAccount_
    , _auKey = Nothing
    , _auOAuthToken = Nothing
    , _auFields = Nothing
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
auUserIP :: Lens' AccountsUpdate' (Maybe Text)
auUserIP = lens _auUserIP (\ s a -> s{_auUserIP = a})

-- | User profile ID associated with this request.
auProfileId :: Lens' AccountsUpdate' Int64
auProfileId
  = lens _auProfileId (\ s a -> s{_auProfileId = a})

-- | Multipart request metadata.
auAccount :: Lens' AccountsUpdate' Account
auAccount
  = lens _auAccount (\ s a -> s{_auAccount = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AccountsUpdate' (Maybe Key)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOAuthToken :: Lens' AccountsUpdate' (Maybe OAuthToken)
auOAuthToken
  = lens _auOAuthToken (\ s a -> s{_auOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AccountsUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

instance GoogleAuth AccountsUpdate' where
        authKey = auKey . _Just
        authToken = auOAuthToken . _Just

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsUpdate'{..}
          = go _auQuotaUser (Just _auPrettyPrint) _auUserIP
              _auProfileId
              _auKey
              _auOAuthToken
              _auFields
              (Just AltJSON)
              _auAccount
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsUpdateResource)
                      r
                      u
