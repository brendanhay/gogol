{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Budget.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the budget amount for the budget of the adgroup specified by the accountId and billingId, with the budget amount in the request.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.budget.update@.
module Gogol.AdExchangeBuyer.Budget.Update
  ( -- * Resource
    AdExchangeBuyerBudgetUpdateResource,

    -- ** Constructing a Request
    newAdExchangeBuyerBudgetUpdate,
    AdExchangeBuyerBudgetUpdate,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.budget.update@ method which the
-- 'AdExchangeBuyerBudgetUpdate' request conforms to.
type AdExchangeBuyerBudgetUpdateResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "billinginfo"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.Capture "billingId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Budget
    Core.:> Core.Put '[Core.JSON] Budget

-- | Updates the budget amount for the budget of the adgroup specified by the accountId and billingId, with the budget amount in the request.
--
-- /See:/ 'newAdExchangeBuyerBudgetUpdate' smart constructor.
data AdExchangeBuyerBudgetUpdate = AdExchangeBuyerBudgetUpdate
  { -- | The account id associated with the budget being updated.
    accountId :: Core.Int64,
    -- | The billing id associated with the budget being updated.
    billingId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: Budget
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerBudgetUpdate' with the minimum fields required to make a request.
newAdExchangeBuyerBudgetUpdate ::
  -- |  The account id associated with the budget being updated. See 'accountId'.
  Core.Int64 ->
  -- |  The billing id associated with the budget being updated. See 'billingId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  Budget ->
  AdExchangeBuyerBudgetUpdate
newAdExchangeBuyerBudgetUpdate accountId billingId payload =
  AdExchangeBuyerBudgetUpdate
    { accountId = accountId,
      billingId = billingId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerBudgetUpdate
  where
  type Rs AdExchangeBuyerBudgetUpdate = Budget
  type
    Scopes AdExchangeBuyerBudgetUpdate =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient AdExchangeBuyerBudgetUpdate {..} =
    go
      accountId
      billingId
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerBudgetUpdateResource
          )
          Core.mempty
