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
-- Module      : Gogol.AdExchangeBuyer.Marketplacedeals.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces all the deals in the proposal with the passed in deals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.update@.
module Gogol.AdExchangeBuyer.Marketplacedeals.Update
  ( -- * Resource
    AdExchangeBuyerMarketplacedealsUpdateResource,

    -- ** Constructing a Request
    AdExchangeBuyerMarketplacedealsUpdate (..),
    newAdExchangeBuyerMarketplacedealsUpdate,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.marketplacedeals.update@ method which the
-- 'AdExchangeBuyerMarketplacedealsUpdate' request conforms to.
type AdExchangeBuyerMarketplacedealsUpdateResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "proposals"
    Core.:> Core.Capture "proposalId" Core.Text
    Core.:> "deals"
    Core.:> "update"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EditAllOrderDealsRequest
    Core.:> Core.Post '[Core.JSON] EditAllOrderDealsResponse

-- | Replaces all the deals in the proposal with the passed in deals
--
-- /See:/ 'newAdExchangeBuyerMarketplacedealsUpdate' smart constructor.
data AdExchangeBuyerMarketplacedealsUpdate = AdExchangeBuyerMarketplacedealsUpdate
  { -- | Multipart request metadata.
    payload :: EditAllOrderDealsRequest,
    -- | The proposalId to edit deals on.
    proposalId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplacedealsUpdate' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplacedealsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  EditAllOrderDealsRequest ->
  -- |  The proposalId to edit deals on. See 'proposalId'.
  Core.Text ->
  AdExchangeBuyerMarketplacedealsUpdate
newAdExchangeBuyerMarketplacedealsUpdate payload proposalId =
  AdExchangeBuyerMarketplacedealsUpdate
    { payload = payload,
      proposalId = proposalId
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerMarketplacedealsUpdate
  where
  type
    Rs AdExchangeBuyerMarketplacedealsUpdate =
      EditAllOrderDealsResponse
  type
    Scopes AdExchangeBuyerMarketplacedealsUpdate =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyerMarketplacedealsUpdate {..} =
      go
        proposalId
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyerMarketplacedealsUpdateResource
            )
            Core.mempty
