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
-- Module      : Gogol.AdExchangeBuyer.Creatives.RemoveDeal
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a deal id associated with the creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.removeDeal@.
module Gogol.AdExchangeBuyer.Creatives.RemoveDeal
  ( -- * Resource
    AdExchangeBuyerCreativesRemoveDealResource,

    -- ** Constructing a Request
    AdExchangeBuyerCreativesRemoveDeal (..),
    newAdExchangeBuyerCreativesRemoveDeal,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.creatives.removeDeal@ method which the
-- 'AdExchangeBuyerCreativesRemoveDeal' request conforms to.
type AdExchangeBuyerCreativesRemoveDealResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "creatives"
    Core.:> Core.Capture "accountId" Core.Int32
    Core.:> Core.Capture "buyerCreativeId" Core.Text
    Core.:> "removeDeal"
    Core.:> Core.Capture "dealId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Remove a deal id associated with the creative.
--
-- /See:/ 'newAdExchangeBuyerCreativesRemoveDeal' smart constructor.
data AdExchangeBuyerCreativesRemoveDeal = AdExchangeBuyerCreativesRemoveDeal
  { -- | The id for the account that will serve this creative.
    accountId :: Core.Int32,
    -- | The buyer-specific id for this creative.
    buyerCreativeId :: Core.Text,
    -- | The id of the deal id to disassociate with this creative.
    dealId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerCreativesRemoveDeal' with the minimum fields required to make a request.
newAdExchangeBuyerCreativesRemoveDeal ::
  -- |  The id for the account that will serve this creative. See 'accountId'.
  Core.Int32 ->
  -- |  The buyer-specific id for this creative. See 'buyerCreativeId'.
  Core.Text ->
  -- |  The id of the deal id to disassociate with this creative. See 'dealId'.
  Core.Int64 ->
  AdExchangeBuyerCreativesRemoveDeal
newAdExchangeBuyerCreativesRemoveDeal
  accountId
  buyerCreativeId
  dealId =
    AdExchangeBuyerCreativesRemoveDeal
      { accountId = accountId,
        buyerCreativeId = buyerCreativeId,
        dealId = dealId
      }

instance Core.GoogleRequest AdExchangeBuyerCreativesRemoveDeal where
  type Rs AdExchangeBuyerCreativesRemoveDeal = ()
  type
    Scopes AdExchangeBuyerCreativesRemoveDeal =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerCreativesRemoveDeal {..} =
    go
      accountId
      buyerCreativeId
      dealId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerCreativesRemoveDealResource
          )
          Core.mempty
