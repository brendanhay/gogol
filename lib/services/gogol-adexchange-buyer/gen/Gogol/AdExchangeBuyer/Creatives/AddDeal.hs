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
-- Module      : Gogol.AdExchangeBuyer.Creatives.AddDeal
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a deal id association for the creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.addDeal@.
module Gogol.AdExchangeBuyer.Creatives.AddDeal
  ( -- * Resource
    AdExchangeBuyerCreativesAddDealResource,

    -- ** Constructing a Request
    AdExchangeBuyerCreativesAddDeal (..),
    newAdExchangeBuyerCreativesAddDeal,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.creatives.addDeal@ method which the
-- 'AdExchangeBuyerCreativesAddDeal' request conforms to.
type AdExchangeBuyerCreativesAddDealResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "creatives"
    Core.:> Core.Capture "accountId" Core.Int32
    Core.:> Core.Capture "buyerCreativeId" Core.Text
    Core.:> "addDeal"
    Core.:> Core.Capture "dealId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Add a deal id association for the creative.
--
-- /See:/ 'newAdExchangeBuyerCreativesAddDeal' smart constructor.
data AdExchangeBuyerCreativesAddDeal = AdExchangeBuyerCreativesAddDeal
  { -- | The id for the account that will serve this creative.
    accountId :: Core.Int32,
    -- | The buyer-specific id for this creative.
    buyerCreativeId :: Core.Text,
    -- | The id of the deal id to associate with this creative.
    dealId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerCreativesAddDeal' with the minimum fields required to make a request.
newAdExchangeBuyerCreativesAddDeal ::
  -- |  The id for the account that will serve this creative. See 'accountId'.
  Core.Int32 ->
  -- |  The buyer-specific id for this creative. See 'buyerCreativeId'.
  Core.Text ->
  -- |  The id of the deal id to associate with this creative. See 'dealId'.
  Core.Int64 ->
  AdExchangeBuyerCreativesAddDeal
newAdExchangeBuyerCreativesAddDeal accountId buyerCreativeId dealId =
  AdExchangeBuyerCreativesAddDeal
    { accountId = accountId,
      buyerCreativeId = buyerCreativeId,
      dealId = dealId
    }

instance Core.GoogleRequest AdExchangeBuyerCreativesAddDeal where
  type Rs AdExchangeBuyerCreativesAddDeal = ()
  type Scopes AdExchangeBuyerCreativesAddDeal = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerCreativesAddDeal {..} =
    go
      accountId
      buyerCreativeId
      dealId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerCreativesAddDealResource)
          Core.mempty
