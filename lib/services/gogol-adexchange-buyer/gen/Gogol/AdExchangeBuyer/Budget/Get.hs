{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Budget.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the budget information for the adgroup specified by the accountId and billingId.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.get@.
module Gogol.AdExchangeBuyer.Budget.Get
  ( -- * Resource
    AdExchangeBuyerBudgetGetResource,

    -- ** Constructing a Request
    AdExchangeBuyerBudgetGet (..),
    newAdExchangeBuyerBudgetGet,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.budget.get@ method which the
-- 'AdExchangeBuyerBudgetGet' request conforms to.
type AdExchangeBuyerBudgetGetResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "billinginfo"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.Capture "billingId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Budget

-- | Returns the budget information for the adgroup specified by the accountId and billingId.
--
-- /See:/ 'newAdExchangeBuyerBudgetGet' smart constructor.
data AdExchangeBuyerBudgetGet = AdExchangeBuyerBudgetGet
  { -- | The account id to get the budget information for.
    accountId :: Core.Int64,
    -- | The billing id to get the budget information for.
    billingId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerBudgetGet' with the minimum fields required to make a request.
newAdExchangeBuyerBudgetGet ::
  -- |  The account id to get the budget information for. See 'accountId'.
  Core.Int64 ->
  -- |  The billing id to get the budget information for. See 'billingId'.
  Core.Int64 ->
  AdExchangeBuyerBudgetGet
newAdExchangeBuyerBudgetGet accountId billingId =
  AdExchangeBuyerBudgetGet
    { accountId = accountId,
      billingId = billingId
    }

instance Core.GoogleRequest AdExchangeBuyerBudgetGet where
  type Rs AdExchangeBuyerBudgetGet = Budget
  type Scopes AdExchangeBuyerBudgetGet = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerBudgetGet {..} =
    go
      accountId
      billingId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerBudgetGetResource)
          Core.mempty
