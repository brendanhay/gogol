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
-- Module      : Gogol.AdExchangeBuyer.Marketplaceprivateauction.Updateproposal
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a given private auction proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceprivateauction.updateproposal@.
module Gogol.AdExchangeBuyer.Marketplaceprivateauction.Updateproposal
  ( -- * Resource
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposalResource,

    -- ** Constructing a Request
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposal (..),
    newAdExchangeBuyerMarketplaceprivateauctionUpdateproposal,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.marketplaceprivateauction.updateproposal@ method which the
-- 'AdExchangeBuyerMarketplaceprivateauctionUpdateproposal' request conforms to.
type AdExchangeBuyerMarketplaceprivateauctionUpdateproposalResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "privateauction"
    Core.:> Core.Capture "privateAuctionId" Core.Text
    Core.:> "updateproposal"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdatePrivateAuctionProposalRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Update a given private auction proposal
--
-- /See:/ 'newAdExchangeBuyerMarketplaceprivateauctionUpdateproposal' smart constructor.
data AdExchangeBuyerMarketplaceprivateauctionUpdateproposal = AdExchangeBuyerMarketplaceprivateauctionUpdateproposal
  { -- | Multipart request metadata.
    payload :: UpdatePrivateAuctionProposalRequest,
    -- | The private auction id to be updated.
    privateAuctionId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplaceprivateauctionUpdateproposal' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplaceprivateauctionUpdateproposal ::
  -- |  Multipart request metadata. See 'payload'.
  UpdatePrivateAuctionProposalRequest ->
  -- |  The private auction id to be updated. See 'privateAuctionId'.
  Core.Text ->
  AdExchangeBuyerMarketplaceprivateauctionUpdateproposal
newAdExchangeBuyerMarketplaceprivateauctionUpdateproposal
  payload
  privateAuctionId =
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposal
      { payload =
          payload,
        privateAuctionId = privateAuctionId
      }

instance
  Core.GoogleRequest
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposal
  where
  type Rs AdExchangeBuyerMarketplaceprivateauctionUpdateproposal = ()
  type
    Scopes AdExchangeBuyerMarketplaceprivateauctionUpdateproposal =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyerMarketplaceprivateauctionUpdateproposal {..} =
      go
        privateAuctionId
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyerMarketplaceprivateauctionUpdateproposalResource
            )
            Core.mempty
