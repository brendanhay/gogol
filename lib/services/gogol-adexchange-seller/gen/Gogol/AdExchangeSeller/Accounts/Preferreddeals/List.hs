{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeSeller.Accounts.Preferreddeals.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the preferred deals for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.preferreddeals.list@.
module Gogol.AdExchangeSeller.Accounts.Preferreddeals.List
    (
    -- * Resource
      AdExchangeSellerAccountsPreferreddealsListResource

    -- ** Constructing a Request
    , newAdExchangeSellerAccountsPreferreddealsList
    , AdExchangeSellerAccountsPreferreddealsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeSeller.Types

-- | A resource alias for @adexchangeseller.accounts.preferreddeals.list@ method which the
-- 'AdExchangeSellerAccountsPreferreddealsList' request conforms to.
type AdExchangeSellerAccountsPreferreddealsListResource
     =
     "adexchangeseller" Core.:>
       "v2.0" Core.:>
         "accounts" Core.:>
           Core.Capture "accountId" Core.Text Core.:>
             "preferreddeals" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] PreferredDeals

-- | List the preferred deals for this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsPreferreddealsList' smart constructor.
newtype AdExchangeSellerAccountsPreferreddealsList = AdExchangeSellerAccountsPreferreddealsList
    {
      -- | Account owning the deals.
      accountId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsPreferreddealsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsPreferreddealsList 
    ::  Core.Text
       -- ^  Account owning the deals. See 'accountId'.
    -> AdExchangeSellerAccountsPreferreddealsList
newAdExchangeSellerAccountsPreferreddealsList accountId =
  AdExchangeSellerAccountsPreferreddealsList {accountId = accountId}

instance Core.GoogleRequest
           AdExchangeSellerAccountsPreferreddealsList
         where
        type Rs AdExchangeSellerAccountsPreferreddealsList =
             PreferredDeals
        type Scopes
               AdExchangeSellerAccountsPreferreddealsList
             =
             '["https://www.googleapis.com/auth/adexchange.seller",
               "https://www.googleapis.com/auth/adexchange.seller.readonly"]
        requestClient
          AdExchangeSellerAccountsPreferreddealsList{..}
          = go accountId (Core.Just Core.AltJSON)
              adExchangeSellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeSellerAccountsPreferreddealsListResource)
                      Core.mempty

