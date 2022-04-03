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
-- Module      : Gogol.AdExchangeBuyer.Creatives.ListDeals
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the external deal ids associated with the creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.listDeals@.
module Gogol.AdExchangeBuyer.Creatives.ListDeals
  ( -- * Resource
    AdExchangeBuyerCreativesListDealsResource,

    -- ** Constructing a Request
    AdExchangeBuyerCreativesListDeals (..),
    newAdExchangeBuyerCreativesListDeals,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.creatives.listDeals@ method which the
-- 'AdExchangeBuyerCreativesListDeals' request conforms to.
type AdExchangeBuyerCreativesListDealsResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "creatives"
    Core.:> Core.Capture "accountId" Core.Int32
    Core.:> Core.Capture "buyerCreativeId" Core.Text
    Core.:> "listDeals"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CreativeDealIds

-- | Lists the external deal ids associated with the creative.
--
-- /See:/ 'newAdExchangeBuyerCreativesListDeals' smart constructor.
data AdExchangeBuyerCreativesListDeals = AdExchangeBuyerCreativesListDeals
  { -- | The id for the account that will serve this creative.
    accountId :: Core.Int32,
    -- | The buyer-specific id for this creative.
    buyerCreativeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerCreativesListDeals' with the minimum fields required to make a request.
newAdExchangeBuyerCreativesListDeals ::
  -- |  The id for the account that will serve this creative. See 'accountId'.
  Core.Int32 ->
  -- |  The buyer-specific id for this creative. See 'buyerCreativeId'.
  Core.Text ->
  AdExchangeBuyerCreativesListDeals
newAdExchangeBuyerCreativesListDeals accountId buyerCreativeId =
  AdExchangeBuyerCreativesListDeals
    { accountId = accountId,
      buyerCreativeId = buyerCreativeId
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerCreativesListDeals
  where
  type
    Rs AdExchangeBuyerCreativesListDeals =
      CreativeDealIds
  type
    Scopes AdExchangeBuyerCreativesListDeals =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerCreativesListDeals {..} =
    go
      accountId
      buyerCreativeId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerCreativesListDealsResource
          )
          Core.mempty
