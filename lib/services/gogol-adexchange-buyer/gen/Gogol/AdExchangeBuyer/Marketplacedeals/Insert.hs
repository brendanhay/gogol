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
-- Module      : Gogol.AdExchangeBuyer.Marketplacedeals.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add new deals for the specified proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.insert@.
module Gogol.AdExchangeBuyer.Marketplacedeals.Insert
  ( -- * Resource
    AdExchangeBuyerMarketplacedealsInsertResource,

    -- ** Constructing a Request
    AdExchangeBuyerMarketplacedealsInsert (..),
    newAdExchangeBuyerMarketplacedealsInsert,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.marketplacedeals.insert@ method which the
-- 'AdExchangeBuyerMarketplacedealsInsert' request conforms to.
type AdExchangeBuyerMarketplacedealsInsertResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> "deals"
    Core.:> "insert"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddOrderDealsRequest
    Core.:> Core.Post '[Core.JSON] AddOrderDealsResponse

-- | Add new deals for the specified proposal
--
-- /See:/ 'newAdExchangeBuyerMarketplacedealsInsert' smart constructor.
data AdExchangeBuyerMarketplacedealsInsert = AdExchangeBuyerMarketplacedealsInsert
  { -- | Multipart request metadata.
    payload :: AddOrderDealsRequest,
    -- | proposalId for which deals need to be added.
    proposalId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplacedealsInsert' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplacedealsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  AddOrderDealsRequest ->
  -- |  proposalId for which deals need to be added. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyerMarketplacedealsInsert
newAdExchangeBuyerMarketplacedealsInsert payload proposalId =
  AdExchangeBuyerMarketplacedealsInsert
    { payload = payload,
      proposalId = proposalId
    }

instance Core.GoogleRequest AdExchangeBuyerMarketplacedealsInsert where
  type
    Rs AdExchangeBuyerMarketplacedealsInsert =
      AddOrderDealsResponse
  type
    Scopes AdExchangeBuyerMarketplacedealsInsert =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerMarketplacedealsInsert {..} =
    go
      proposalId
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerMarketplacedealsInsertResource
          )
          Core.mempty
