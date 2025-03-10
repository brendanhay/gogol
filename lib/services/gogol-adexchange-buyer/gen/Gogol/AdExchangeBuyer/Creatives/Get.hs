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
-- Module      : Gogol.AdExchangeBuyer.Creatives.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status for a single creative. A creative will be available 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.get@.
module Gogol.AdExchangeBuyer.Creatives.Get
  ( -- * Resource
    AdExchangeBuyerCreativesGetResource,

    -- ** Constructing a Request
    AdExchangeBuyerCreativesGet (..),
    newAdExchangeBuyerCreativesGet,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.creatives.get@ method which the
-- 'AdExchangeBuyerCreativesGet' request conforms to.
type AdExchangeBuyerCreativesGetResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "creatives"
    Core.:> Core.Capture "accountId" Core.Int32
    Core.:> Core.Capture "buyerCreativeId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Creative

-- | Gets the status for a single creative. A creative will be available 30-40 minutes after submission.
--
-- /See:/ 'newAdExchangeBuyerCreativesGet' smart constructor.
data AdExchangeBuyerCreativesGet = AdExchangeBuyerCreativesGet
  { -- | The id for the account that will serve this creative.
    accountId :: Core.Int32,
    -- | The buyer-specific id for this creative.
    buyerCreativeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerCreativesGet' with the minimum fields required to make a request.
newAdExchangeBuyerCreativesGet ::
  -- |  The id for the account that will serve this creative. See 'accountId'.
  Core.Int32 ->
  -- |  The buyer-specific id for this creative. See 'buyerCreativeId'.
  Core.Text ->
  AdExchangeBuyerCreativesGet
newAdExchangeBuyerCreativesGet accountId buyerCreativeId =
  AdExchangeBuyerCreativesGet
    { accountId = accountId,
      buyerCreativeId = buyerCreativeId
    }

instance Core.GoogleRequest AdExchangeBuyerCreativesGet where
  type Rs AdExchangeBuyerCreativesGet = Creative
  type Scopes AdExchangeBuyerCreativesGet = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerCreativesGet {..} =
    go
      accountId
      buyerCreativeId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerCreativesGetResource)
          Core.mempty
