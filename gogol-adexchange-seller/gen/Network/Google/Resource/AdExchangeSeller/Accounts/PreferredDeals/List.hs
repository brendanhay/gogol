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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the preferred deals for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.preferreddeals.list@.
module Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.List
    (
    -- * REST Resource
      AccountsPreferredDealsListResource

    -- * Creating a Request
    , accountsPreferredDealsList
    , AccountsPreferredDealsList

    -- * Request Lenses
    , apdlAccountId
    ) where

import Network.Google.AdExchangeSeller.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangeseller.accounts.preferreddeals.list@ method which the
-- 'AccountsPreferredDealsList' request conforms to.
type AccountsPreferredDealsListResource =
     "adexchangeseller" :>
       "v2.0" :>
         "accounts" :>
           Capture "accountId" Text :>
             "preferreddeals" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] PreferredDeals

-- | List the preferred deals for this Ad Exchange account.
--
-- /See:/ 'accountsPreferredDealsList' smart constructor.
newtype AccountsPreferredDealsList =
  AccountsPreferredDealsList'
    { _apdlAccountId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsPreferredDealsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdlAccountId'
accountsPreferredDealsList
    :: Text -- ^ 'apdlAccountId'
    -> AccountsPreferredDealsList
accountsPreferredDealsList pApdlAccountId_ =
  AccountsPreferredDealsList' {_apdlAccountId = pApdlAccountId_}


-- | Account owning the deals.
apdlAccountId :: Lens' AccountsPreferredDealsList Text
apdlAccountId
  = lens _apdlAccountId
      (\ s a -> s{_apdlAccountId = a})

instance GoogleRequest AccountsPreferredDealsList
         where
        type Rs AccountsPreferredDealsList = PreferredDeals
        type Scopes AccountsPreferredDealsList =
             '["https://www.googleapis.com/auth/adexchange.seller",
               "https://www.googleapis.com/auth/adexchange.seller.readonly"]
        requestClient AccountsPreferredDealsList'{..}
          = go _apdlAccountId (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPreferredDealsListResource)
                      mempty
