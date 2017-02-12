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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the tax settings of the account. This method can only be called
-- for accounts to which the managing account has access: either the
-- managing account itself or sub-accounts if the managing account is a
-- multi-client account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounttax.patch@.
module Network.Google.Resource.Content.Accounttax.Patch
    (
    -- * REST Resource
      AccounttaxPatchResource

    -- * Creating a Request
    , accounttaxPatch
    , AccounttaxPatch

    -- * Request Lenses
    , appMerchantId
    , appPayload
    , appAccountId
    , appDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.patch@ method which the
-- 'AccounttaxPatch' request conforms to.
type AccounttaxPatchResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "accounttax" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] AccountTax :>
                     Patch '[JSON] AccountTax

-- | Updates the tax settings of the account. This method can only be called
-- for accounts to which the managing account has access: either the
-- managing account itself or sub-accounts if the managing account is a
-- multi-client account. This method supports patch semantics.
--
-- /See:/ 'accounttaxPatch' smart constructor.
data AccounttaxPatch = AccounttaxPatch'
    { _appMerchantId :: !(Textual Word64)
    , _appPayload    :: !AccountTax
    , _appAccountId  :: !(Textual Word64)
    , _appDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appMerchantId'
--
-- * 'appPayload'
--
-- * 'appAccountId'
--
-- * 'appDryRun'
accounttaxPatch
    :: Word64 -- ^ 'appMerchantId'
    -> AccountTax -- ^ 'appPayload'
    -> Word64 -- ^ 'appAccountId'
    -> AccounttaxPatch
accounttaxPatch pAppMerchantId_ pAppPayload_ pAppAccountId_ =
    AccounttaxPatch'
    { _appMerchantId = _Coerce # pAppMerchantId_
    , _appPayload = pAppPayload_
    , _appAccountId = _Coerce # pAppAccountId_
    , _appDryRun = Nothing
    }

-- | The ID of the managing account.
appMerchantId :: Lens' AccounttaxPatch Word64
appMerchantId
  = lens _appMerchantId
      (\ s a -> s{_appMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
appPayload :: Lens' AccounttaxPatch AccountTax
appPayload
  = lens _appPayload (\ s a -> s{_appPayload = a})

-- | The ID of the account for which to get\/update account tax settings.
appAccountId :: Lens' AccounttaxPatch Word64
appAccountId
  = lens _appAccountId (\ s a -> s{_appAccountId = a})
      . _Coerce

-- | Flag to run the request in dry-run mode.
appDryRun :: Lens' AccounttaxPatch (Maybe Bool)
appDryRun
  = lens _appDryRun (\ s a -> s{_appDryRun = a})

instance GoogleRequest AccounttaxPatch where
        type Rs AccounttaxPatch = AccountTax
        type Scopes AccounttaxPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxPatch'{..}
          = go _appMerchantId _appAccountId _appDryRun
              (Just AltJSON)
              _appPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxPatchResource)
                      mempty
