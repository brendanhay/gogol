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
-- Module      : Network.Google.Resource.Content.Accounts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsInsert@.
module Network.Google.Resource.Content.Accounts.Insert
    (
    -- * REST Resource
      AccountsInsertResource

    -- * Creating a Request
    , accountsInsert'
    , AccountsInsert'

    -- * Request Lenses
    , aiiQuotaUser
    , aiiMerchantId
    , aiiPrettyPrint
    , aiiUserIP
    , aiiPayload
    , aiiKey
    , aiiOAuthToken
    , aiiDryRun
    , aiiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsInsert@ method which the
-- 'AccountsInsert'' request conforms to.
type AccountsInsertResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Account :> Post '[JSON] Account

-- | Creates a Merchant Center sub-account.
--
-- /See:/ 'accountsInsert'' smart constructor.
data AccountsInsert' = AccountsInsert'
    { _aiiQuotaUser   :: !(Maybe Text)
    , _aiiMerchantId  :: !Word64
    , _aiiPrettyPrint :: !Bool
    , _aiiUserIP      :: !(Maybe Text)
    , _aiiPayload     :: !Account
    , _aiiKey         :: !(Maybe AuthKey)
    , _aiiOAuthToken  :: !(Maybe OAuthToken)
    , _aiiDryRun      :: !(Maybe Bool)
    , _aiiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiQuotaUser'
--
-- * 'aiiMerchantId'
--
-- * 'aiiPrettyPrint'
--
-- * 'aiiUserIP'
--
-- * 'aiiPayload'
--
-- * 'aiiKey'
--
-- * 'aiiOAuthToken'
--
-- * 'aiiDryRun'
--
-- * 'aiiFields'
accountsInsert'
    :: Word64 -- ^ 'merchantId'
    -> Account -- ^ 'payload'
    -> AccountsInsert'
accountsInsert' pAiiMerchantId_ pAiiPayload_ =
    AccountsInsert'
    { _aiiQuotaUser = Nothing
    , _aiiMerchantId = pAiiMerchantId_
    , _aiiPrettyPrint = True
    , _aiiUserIP = Nothing
    , _aiiPayload = pAiiPayload_
    , _aiiKey = Nothing
    , _aiiOAuthToken = Nothing
    , _aiiDryRun = Nothing
    , _aiiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiiQuotaUser :: Lens' AccountsInsert' (Maybe Text)
aiiQuotaUser
  = lens _aiiQuotaUser (\ s a -> s{_aiiQuotaUser = a})

-- | The ID of the managing account.
aiiMerchantId :: Lens' AccountsInsert' Word64
aiiMerchantId
  = lens _aiiMerchantId
      (\ s a -> s{_aiiMerchantId = a})

-- | Returns response with indentations and line breaks.
aiiPrettyPrint :: Lens' AccountsInsert' Bool
aiiPrettyPrint
  = lens _aiiPrettyPrint
      (\ s a -> s{_aiiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiiUserIP :: Lens' AccountsInsert' (Maybe Text)
aiiUserIP
  = lens _aiiUserIP (\ s a -> s{_aiiUserIP = a})

-- | Multipart request metadata.
aiiPayload :: Lens' AccountsInsert' Account
aiiPayload
  = lens _aiiPayload (\ s a -> s{_aiiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiiKey :: Lens' AccountsInsert' (Maybe AuthKey)
aiiKey = lens _aiiKey (\ s a -> s{_aiiKey = a})

-- | OAuth 2.0 token for the current user.
aiiOAuthToken :: Lens' AccountsInsert' (Maybe OAuthToken)
aiiOAuthToken
  = lens _aiiOAuthToken
      (\ s a -> s{_aiiOAuthToken = a})

-- | Flag to run the request in dry-run mode.
aiiDryRun :: Lens' AccountsInsert' (Maybe Bool)
aiiDryRun
  = lens _aiiDryRun (\ s a -> s{_aiiDryRun = a})

-- | Selector specifying which fields to include in a partial response.
aiiFields :: Lens' AccountsInsert' (Maybe Text)
aiiFields
  = lens _aiiFields (\ s a -> s{_aiiFields = a})

instance GoogleAuth AccountsInsert' where
        _AuthKey = aiiKey . _Just
        _AuthToken = aiiOAuthToken . _Just

instance GoogleRequest AccountsInsert' where
        type Rs AccountsInsert' = Account
        request = requestWith shoppingContentRequest
        requestWith rq AccountsInsert'{..}
          = go _aiiMerchantId _aiiDryRun _aiiQuotaUser
              (Just _aiiPrettyPrint)
              _aiiUserIP
              _aiiFields
              _aiiKey
              _aiiOAuthToken
              (Just AltJSON)
              _aiiPayload
          where go
                  = clientBuild (Proxy :: Proxy AccountsInsertResource)
                      rq
