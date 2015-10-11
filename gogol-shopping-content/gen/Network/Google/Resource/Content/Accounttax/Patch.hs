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
-- Module      : Network.Google.Resource.Content.Accounttax.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the tax settings of the account. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxPatch@.
module Network.Google.Resource.Content.Accounttax.Patch
    (
    -- * REST Resource
      AccounttaxPatchResource

    -- * Creating a Request
    , accounttaxPatch'
    , AccounttaxPatch'

    -- * Request Lenses
    , appQuotaUser
    , appMerchantId
    , appPrettyPrint
    , appUserIP
    , appPayload
    , appAccountId
    , appKey
    , appOAuthToken
    , appDryRun
    , appFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxPatch@ method which the
-- 'AccounttaxPatch'' request conforms to.
type AccounttaxPatchResource =
     Capture "merchantId" Word64 :>
       "accounttax" :>
         Capture "accountId" Word64 :>
           QueryParam "dryRun" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountTax :>
                             Patch '[JSON] AccountTax

-- | Updates the tax settings of the account. This method supports patch
-- semantics.
--
-- /See:/ 'accounttaxPatch'' smart constructor.
data AccounttaxPatch' = AccounttaxPatch'
    { _appQuotaUser   :: !(Maybe Text)
    , _appMerchantId  :: !Word64
    , _appPrettyPrint :: !Bool
    , _appUserIP      :: !(Maybe Text)
    , _appPayload     :: !AccountTax
    , _appAccountId   :: !Word64
    , _appKey         :: !(Maybe AuthKey)
    , _appOAuthToken  :: !(Maybe OAuthToken)
    , _appDryRun      :: !(Maybe Bool)
    , _appFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appQuotaUser'
--
-- * 'appMerchantId'
--
-- * 'appPrettyPrint'
--
-- * 'appUserIP'
--
-- * 'appPayload'
--
-- * 'appAccountId'
--
-- * 'appKey'
--
-- * 'appOAuthToken'
--
-- * 'appDryRun'
--
-- * 'appFields'
accounttaxPatch'
    :: Word64 -- ^ 'merchantId'
    -> AccountTax -- ^ 'payload'
    -> Word64 -- ^ 'accountId'
    -> AccounttaxPatch'
accounttaxPatch' pAppMerchantId_ pAppPayload_ pAppAccountId_ =
    AccounttaxPatch'
    { _appQuotaUser = Nothing
    , _appMerchantId = pAppMerchantId_
    , _appPrettyPrint = True
    , _appUserIP = Nothing
    , _appPayload = pAppPayload_
    , _appAccountId = pAppAccountId_
    , _appKey = Nothing
    , _appOAuthToken = Nothing
    , _appDryRun = Nothing
    , _appFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
appQuotaUser :: Lens' AccounttaxPatch' (Maybe Text)
appQuotaUser
  = lens _appQuotaUser (\ s a -> s{_appQuotaUser = a})

-- | The ID of the managing account.
appMerchantId :: Lens' AccounttaxPatch' Word64
appMerchantId
  = lens _appMerchantId
      (\ s a -> s{_appMerchantId = a})

-- | Returns response with indentations and line breaks.
appPrettyPrint :: Lens' AccounttaxPatch' Bool
appPrettyPrint
  = lens _appPrettyPrint
      (\ s a -> s{_appPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
appUserIP :: Lens' AccounttaxPatch' (Maybe Text)
appUserIP
  = lens _appUserIP (\ s a -> s{_appUserIP = a})

-- | Multipart request metadata.
appPayload :: Lens' AccounttaxPatch' AccountTax
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

-- | The ID of the account for which to get\/update account tax settings.
appAccountId :: Lens' AccounttaxPatch' Word64
appAccountId
  = lens _appAccountId (\ s a -> s{_appAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
appKey :: Lens' AccounttaxPatch' (Maybe AuthKey)
appKey = lens _appKey (\ s a -> s{_appKey = a})

-- | OAuth 2.0 token for the current user.
appOAuthToken :: Lens' AccounttaxPatch' (Maybe OAuthToken)
appOAuthToken
  = lens _appOAuthToken
      (\ s a -> s{_appOAuthToken = a})

-- | Flag to run the request in dry-run mode.
appDryRun :: Lens' AccounttaxPatch' (Maybe Bool)
appDryRun
  = lens _appDryRun (\ s a -> s{_appDryRun = a})

-- | Selector specifying which fields to include in a partial response.
appFields :: Lens' AccounttaxPatch' (Maybe Text)
appFields
  = lens _appFields (\ s a -> s{_appFields = a})

instance GoogleAuth AccounttaxPatch' where
        _AuthKey = appKey . _Just
        _AuthToken = appOAuthToken . _Just

instance GoogleRequest AccounttaxPatch' where
        type Rs AccounttaxPatch' = AccountTax
        request = requestWith shoppingContentRequest
        requestWith rq AccounttaxPatch'{..}
          = go _appMerchantId _appAccountId _appDryRun
              _appQuotaUser
              (Just _appPrettyPrint)
              _appUserIP
              _appFields
              _appKey
              _appOAuthToken
              (Just AltJSON)
              _appPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccounttaxPatchResource)
                      rq
