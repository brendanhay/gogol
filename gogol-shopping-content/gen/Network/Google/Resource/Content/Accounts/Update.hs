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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.update@.
module Network.Google.Resource.Content.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auuMerchantId
    , auuPayload
    , auuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates a Merchant Center account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate =
  AccountsUpdate'
    { _auuMerchantId :: !(Textual Word64)
    , _auuPayload    :: !Account
    , _auuAccountId  :: !(Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuMerchantId'
--
-- * 'auuPayload'
--
-- * 'auuAccountId'
accountsUpdate
    :: Word64 -- ^ 'auuMerchantId'
    -> Account -- ^ 'auuPayload'
    -> Word64 -- ^ 'auuAccountId'
    -> AccountsUpdate
accountsUpdate pAuuMerchantId_ pAuuPayload_ pAuuAccountId_ =
  AccountsUpdate'
    { _auuMerchantId = _Coerce # pAuuMerchantId_
    , _auuPayload = pAuuPayload_
    , _auuAccountId = _Coerce # pAuuAccountId_
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
auuMerchantId :: Lens' AccountsUpdate Word64
auuMerchantId
  = lens _auuMerchantId
      (\ s a -> s{_auuMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
auuPayload :: Lens' AccountsUpdate Account
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

-- | The ID of the account.
auuAccountId :: Lens' AccountsUpdate Word64
auuAccountId
  = lens _auuAccountId (\ s a -> s{_auuAccountId = a})
      . _Coerce

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsUpdate'{..}
          = go _auuMerchantId _auuAccountId (Just AltJSON)
              _auuPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
