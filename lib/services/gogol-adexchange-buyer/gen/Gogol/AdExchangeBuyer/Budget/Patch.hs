{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AdExchangeBuyer.Budget.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the budget amount for the budget of the adgroup specified by the accountId and billingId, with the budget amount in the request. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.patch@.
module Gogol.AdExchangeBuyer.Budget.Patch
  ( -- * Resource
    AdExchangeBuyerBudgetPatchResource,

    -- ** Constructing a Request
    AdExchangeBuyerBudgetPatch (..),
    newAdExchangeBuyerBudgetPatch,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.budget.patch@ method which the
-- 'AdExchangeBuyerBudgetPatch' request conforms to.
type AdExchangeBuyerBudgetPatchResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "billinginfo"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.Capture "billingId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Budget
    Core.:> Core.Patch '[Core.JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the accountId and billingId, with the budget amount in the request. This method supports patch semantics.
--
-- /See:/ 'newAdExchangeBuyerBudgetPatch' smart constructor.
data AdExchangeBuyerBudgetPatch = AdExchangeBuyerBudgetPatch
  { -- | The account id associated with the budget being updated.
    accountId :: Core.Int64,
    -- | The billing id associated with the budget being updated.
    billingId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: Budget
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerBudgetPatch' with the minimum fields required to make a request.
newAdExchangeBuyerBudgetPatch ::
  -- |  The account id associated with the budget being updated. See 'accountId'.
  Core.Int64 ->
  -- |  The billing id associated with the budget being updated. See 'billingId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  Budget ->
  AdExchangeBuyerBudgetPatch
newAdExchangeBuyerBudgetPatch accountId billingId payload =
  AdExchangeBuyerBudgetPatch
    { accountId = accountId,
      billingId = billingId,
      payload = payload
    }

instance Core.GoogleRequest AdExchangeBuyerBudgetPatch where
  type Rs AdExchangeBuyerBudgetPatch = Budget
  type Scopes AdExchangeBuyerBudgetPatch = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerBudgetPatch {..} =
    go
      accountId
      billingId
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerBudgetPatchResource)
          Core.mempty
