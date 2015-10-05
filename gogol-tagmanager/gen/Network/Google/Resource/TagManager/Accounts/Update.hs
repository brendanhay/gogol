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
-- Module      : Network.Google.Resource.TagManager.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsUpdate@.
module Network.Google.Resource.TagManager.Accounts.Update
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
    , auFingerprint
    , auPayload
    , auAccountId
    , auKey
    , auOAuthToken
    , auFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsUpdate@ which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         QueryParam "fingerprint" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a GTM Account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auPrettyPrint :: !Bool
    , _auUserIP      :: !(Maybe Text)
    , _auFingerprint :: !(Maybe Text)
    , _auPayload     :: !Account
    , _auAccountId   :: !Text
    , _auKey         :: !(Maybe Key)
    , _auOAuthToken  :: !(Maybe OAuthToken)
    , _auFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'auFingerprint'
--
-- * 'auPayload'
--
-- * 'auAccountId'
--
-- * 'auKey'
--
-- * 'auOAuthToken'
--
-- * 'auFields'
accountsUpdate'
    :: Account -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsUpdate'
accountsUpdate' pAuPayload_ pAuAccountId_ =
    AccountsUpdate'
    { _auQuotaUser = Nothing
    , _auPrettyPrint = True
    , _auUserIP = Nothing
    , _auFingerprint = Nothing
    , _auPayload = pAuPayload_
    , _auAccountId = pAuAccountId_
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

-- | When provided, this fingerprint must match the fingerprint of the
-- account in storage.
auFingerprint :: Lens' AccountsUpdate' (Maybe Text)
auFingerprint
  = lens _auFingerprint
      (\ s a -> s{_auFingerprint = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate' Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | The GTM Account ID.
auAccountId :: Lens' AccountsUpdate' Text
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a})

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
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsUpdate'{..}
          = go _auAccountId _auFingerprint _auQuotaUser
              (Just _auPrettyPrint)
              _auUserIP
              _auFields
              _auKey
              _auOAuthToken
              (Just AltJSON)
              _auPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsUpdateResource)
                      r
                      u
