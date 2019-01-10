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
-- Module      : Network.Google.Resource.Content.Accounts.Claimwebsite
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims the website of a Merchant Center sub-account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.claimwebsite@.
module Network.Google.Resource.Content.Accounts.Claimwebsite
    (
    -- * REST Resource
      AccountsClaimwebsiteResource

    -- * Creating a Request
    , accountsClaimwebsite
    , AccountsClaimwebsite

    -- * Request Lenses
    , acMerchantId
    , acAccountId
    , acOverwrite
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.claimwebsite@ method which the
-- 'AccountsClaimwebsite' request conforms to.
type AccountsClaimwebsiteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               "claimwebsite" :>
                 QueryParam "overwrite" Bool :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] AccountsClaimWebsiteResponse

-- | Claims the website of a Merchant Center sub-account.
--
-- /See:/ 'accountsClaimwebsite' smart constructor.
data AccountsClaimwebsite = AccountsClaimwebsite'
    { _acMerchantId :: !(Textual Word64)
    , _acAccountId  :: !(Textual Word64)
    , _acOverwrite  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsClaimwebsite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acMerchantId'
--
-- * 'acAccountId'
--
-- * 'acOverwrite'
accountsClaimwebsite
    :: Word64 -- ^ 'acMerchantId'
    -> Word64 -- ^ 'acAccountId'
    -> AccountsClaimwebsite
accountsClaimwebsite pAcMerchantId_ pAcAccountId_ =
    AccountsClaimwebsite'
    { _acMerchantId = _Coerce # pAcMerchantId_
    , _acAccountId = _Coerce # pAcAccountId_
    , _acOverwrite = Nothing
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
acMerchantId :: Lens' AccountsClaimwebsite Word64
acMerchantId
  = lens _acMerchantId (\ s a -> s{_acMerchantId = a})
      . _Coerce

-- | The ID of the account whose website is claimed.
acAccountId :: Lens' AccountsClaimwebsite Word64
acAccountId
  = lens _acAccountId (\ s a -> s{_acAccountId = a}) .
      _Coerce

-- | Only available to selected merchants. When set to True, this flag
-- removes any existing claim on the requested website by another account
-- and replaces it with a claim from this account.
acOverwrite :: Lens' AccountsClaimwebsite (Maybe Bool)
acOverwrite
  = lens _acOverwrite (\ s a -> s{_acOverwrite = a})

instance GoogleRequest AccountsClaimwebsite where
        type Rs AccountsClaimwebsite =
             AccountsClaimWebsiteResponse
        type Scopes AccountsClaimwebsite =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsClaimwebsite'{..}
          = go _acMerchantId _acAccountId _acOverwrite
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsClaimwebsiteResource)
                      mempty
