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
-- Module      : Network.Google.Resource.Content.Accounts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsDelete@.
module Network.Google.Resource.Content.Accounts.Delete
    (
    -- * REST Resource
      AccountsDeleteResource

    -- * Creating a Request
    , accountsDelete'
    , AccountsDelete'

    -- * Request Lenses
    , adQuotaUser
    , adMerchantId
    , adPrettyPrint
    , adUserIP
    , adAccountId
    , adKey
    , adOAuthToken
    , adDryRun
    , adFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsDelete@ method which the
-- 'AccountsDelete'' request conforms to.
type AccountsDeleteResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Merchant Center sub-account.
--
-- /See:/ 'accountsDelete'' smart constructor.
data AccountsDelete' = AccountsDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adMerchantId  :: !Word64
    , _adPrettyPrint :: !Bool
    , _adUserIP      :: !(Maybe Text)
    , _adAccountId   :: !Word64
    , _adKey         :: !(Maybe AuthKey)
    , _adOAuthToken  :: !(Maybe OAuthToken)
    , _adDryRun      :: !(Maybe Bool)
    , _adFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adMerchantId'
--
-- * 'adPrettyPrint'
--
-- * 'adUserIP'
--
-- * 'adAccountId'
--
-- * 'adKey'
--
-- * 'adOAuthToken'
--
-- * 'adDryRun'
--
-- * 'adFields'
accountsDelete'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountsDelete'
accountsDelete' pAdMerchantId_ pAdAccountId_ =
    AccountsDelete'
    { _adQuotaUser = Nothing
    , _adMerchantId = pAdMerchantId_
    , _adPrettyPrint = True
    , _adUserIP = Nothing
    , _adAccountId = pAdAccountId_
    , _adKey = Nothing
    , _adOAuthToken = Nothing
    , _adDryRun = Nothing
    , _adFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AccountsDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | The ID of the managing account.
adMerchantId :: Lens' AccountsDelete' Word64
adMerchantId
  = lens _adMerchantId (\ s a -> s{_adMerchantId = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AccountsDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIP :: Lens' AccountsDelete' (Maybe Text)
adUserIP = lens _adUserIP (\ s a -> s{_adUserIP = a})

-- | The ID of the account.
adAccountId :: Lens' AccountsDelete' Word64
adAccountId
  = lens _adAccountId (\ s a -> s{_adAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AccountsDelete' (Maybe AuthKey)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | OAuth 2.0 token for the current user.
adOAuthToken :: Lens' AccountsDelete' (Maybe OAuthToken)
adOAuthToken
  = lens _adOAuthToken (\ s a -> s{_adOAuthToken = a})

-- | Flag to run the request in dry-run mode.
adDryRun :: Lens' AccountsDelete' (Maybe Bool)
adDryRun = lens _adDryRun (\ s a -> s{_adDryRun = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AccountsDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

instance GoogleAuth AccountsDelete' where
        _AuthKey = adKey . _Just
        _AuthToken = adOAuthToken . _Just

instance GoogleRequest AccountsDelete' where
        type Rs AccountsDelete' = ()
        request = requestWith shoppingContentRequest
        requestWith rq AccountsDelete'{..}
          = go _adMerchantId _adAccountId _adDryRun
              _adQuotaUser
              (Just _adPrettyPrint)
              _adUserIP
              _adFields
              _adKey
              _adOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AccountsDeleteResource)
                      rq
