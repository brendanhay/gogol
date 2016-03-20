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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.preferreddeals.get@.
module Network.Google.Resource.AdExchangeSeller.Accounts.PreferredDeals.Get
    (
    -- * REST Resource
      AccountsPreferredDealsGetResource

    -- * Creating a Request
    , accountsPreferredDealsGet
    , AccountsPreferredDealsGet

    -- * Request Lenses
    , apdgDealId
    , apdgAccountId
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangeseller.accounts.preferreddeals.get@ method which the
-- 'AccountsPreferredDealsGet' request conforms to.
type AccountsPreferredDealsGetResource =
     "adexchangeseller" :>
       "v2.0" :>
         "accounts" :>
           Capture "accountId" Text :>
             "preferreddeals" :>
               Capture "dealId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] PreferredDeal

-- | Get information about the selected Ad Exchange Preferred Deal.
--
-- /See:/ 'accountsPreferredDealsGet' smart constructor.
data AccountsPreferredDealsGet = AccountsPreferredDealsGet
    { _apdgDealId    :: !Text
    , _apdgAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPreferredDealsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apdgDealId'
--
-- * 'apdgAccountId'
accountsPreferredDealsGet
    :: Text -- ^ 'apdgDealId'
    -> Text -- ^ 'apdgAccountId'
    -> AccountsPreferredDealsGet
accountsPreferredDealsGet pApdgDealId_ pApdgAccountId_ =
    AccountsPreferredDealsGet
    { _apdgDealId = pApdgDealId_
    , _apdgAccountId = pApdgAccountId_
    }

-- | Preferred deal to get information about.
apdgDealId :: Lens' AccountsPreferredDealsGet Text
apdgDealId
  = lens _apdgDealId (\ s a -> s{_apdgDealId = a})

-- | Account owning the deal.
apdgAccountId :: Lens' AccountsPreferredDealsGet Text
apdgAccountId
  = lens _apdgAccountId
      (\ s a -> s{_apdgAccountId = a})

instance GoogleRequest AccountsPreferredDealsGet
         where
        type Rs AccountsPreferredDealsGet = PreferredDeal
        requestClient AccountsPreferredDealsGet{..}
          = go _apdgAccountId _apdgDealId (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPreferredDealsGetResource)
                      mempty
