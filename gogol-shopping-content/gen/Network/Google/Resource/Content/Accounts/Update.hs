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
-- Module      : Network.Google.Resource.Content.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsUpdate@.
module Network.Google.Resource.Content.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate'
    , AccountsUpdate'

    -- * Request Lenses
    , auQuotaUser
    , auMerchantId
    , auPrettyPrint
    , auUserIP
    , auPayload
    , auAccountId
    , auKey
    , auOAuthToken
    , auDryRun
    , auFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsUpdate@ method which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a Merchant Center account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auQuotaUser   :: !(Maybe Text)
    , _auMerchantId  :: !Word64
    , _auPrettyPrint :: !Bool
    , _auUserIP      :: !(Maybe Text)
    , _auPayload     :: !Account
    , _auAccountId   :: !Word64
    , _auKey         :: !(Maybe AuthKey)
    , _auOAuthToken  :: !(Maybe OAuthToken)
    , _auDryRun      :: !(Maybe Bool)
    , _auFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auQuotaUser'
--
-- * 'auMerchantId'
--
-- * 'auPrettyPrint'
--
-- * 'auUserIP'
--
-- * 'auPayload'
--
-- * 'auAccountId'
--
-- * 'auKey'
--
-- * 'auOAuthToken'
--
-- * 'auDryRun'
--
-- * 'auFields'
accountsUpdate'
    :: Word64 -- ^ 'merchantId'
    -> Account -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccountsUpdate'
accountsUpdate' pAuMerchantId_ pAuPayload_ pAuAccountId_ =
    AccountsUpdate'
    { _auQuotaUser = Nothing
    , _auMerchantId = pAuMerchantId_
    , _auPrettyPrint = True
    , _auUserIP = Nothing
    , _auPayload = pAuPayload_
    , _auAccountId = pAuAccountId_
    , _auKey = Nothing
    , _auOAuthToken = Nothing
    , _auDryRun = Nothing
    , _auFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auQuotaUser :: Lens' AccountsUpdate' (Maybe Text)
auQuotaUser
  = lens _auQuotaUser (\ s a -> s{_auQuotaUser = a})

-- | The ID of the managing account.
auMerchantId :: Lens' AccountsUpdate' Word64
auMerchantId
  = lens _auMerchantId (\ s a -> s{_auMerchantId = a})

-- | Returns response with indentations and line breaks.
auPrettyPrint :: Lens' AccountsUpdate' Bool
auPrettyPrint
  = lens _auPrettyPrint
      (\ s a -> s{_auPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auUserIP :: Lens' AccountsUpdate' (Maybe Text)
auUserIP = lens _auUserIP (\ s a -> s{_auUserIP = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate' Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | The ID of the account.
auAccountId :: Lens' AccountsUpdate' Word64
auAccountId
  = lens _auAccountId (\ s a -> s{_auAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auKey :: Lens' AccountsUpdate' (Maybe AuthKey)
auKey = lens _auKey (\ s a -> s{_auKey = a})

-- | OAuth 2.0 token for the current user.
auOAuthToken :: Lens' AccountsUpdate' (Maybe OAuthToken)
auOAuthToken
  = lens _auOAuthToken (\ s a -> s{_auOAuthToken = a})

-- | Flag to run the request in dry-run mode.
auDryRun :: Lens' AccountsUpdate' (Maybe Bool)
auDryRun = lens _auDryRun (\ s a -> s{_auDryRun = a})

-- | Selector specifying which fields to include in a partial response.
auFields :: Lens' AccountsUpdate' (Maybe Text)
auFields = lens _auFields (\ s a -> s{_auFields = a})

instance GoogleAuth AccountsUpdate' where
        _AuthKey = auKey . _Just
        _AuthToken = auOAuthToken . _Just

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        request = requestWith shoppingContentRequest
        requestWith rq AccountsUpdate'{..}
          = go _auMerchantId _auAccountId _auDryRun
              _auQuotaUser
              (Just _auPrettyPrint)
              _auUserIP
              _auFields
              _auKey
              _auOAuthToken
              (Just AltJSON)
              _auPayload
          where go
                  = clientBuild (Proxy :: Proxy AccountsUpdateResource)
                      rq
