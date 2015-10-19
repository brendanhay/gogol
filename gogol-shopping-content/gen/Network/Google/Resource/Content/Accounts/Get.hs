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
-- Module      : Network.Google.Resource.Content.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsGet@.
module Network.Google.Resource.Content.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet'
    , AccountsGet'

    -- * Request Lenses
    , ag1MerchantId
    , ag1AccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsGet@ method which the
-- 'AccountsGet'' request conforms to.
type AccountsGetResource =
     Capture "merchantId" Word64 :>
       "accounts" :>
         Capture "accountId" Word64 :>
           QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Retrieves a Merchant Center account.
--
-- /See:/ 'accountsGet'' smart constructor.
data AccountsGet' = AccountsGet'
    { _ag1MerchantId :: !Word64
    , _ag1AccountId  :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ag1MerchantId'
--
-- * 'ag1AccountId'
accountsGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'accountId'
    -> AccountsGet'
accountsGet' pAg1MerchantId_ pAg1AccountId_ =
    AccountsGet'
    { _ag1MerchantId = pAg1MerchantId_
    , _ag1AccountId = pAg1AccountId_
    }

-- | The ID of the managing account.
ag1MerchantId :: Lens' AccountsGet' Word64
ag1MerchantId
  = lens _ag1MerchantId
      (\ s a -> s{_ag1MerchantId = a})

-- | The ID of the account.
ag1AccountId :: Lens' AccountsGet' Word64
ag1AccountId
  = lens _ag1AccountId (\ s a -> s{_ag1AccountId = a})

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        requestClient AccountsGet'{..}
          = go _ag1MerchantId _ag1AccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
