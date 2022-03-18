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
-- Module      : Network.Google.AdExchangeBuyer.Creatives.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status for a single creative. A creative will be available 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.get@.
module Network.Google.AdExchangeBuyer.Creatives.Get
  ( -- * Resource
    AdExchangeBuyerCreativesGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyerCreativesGet,
    AdExchangeBuyerCreativesGet,
  )
where

import Network.Google.AdExchangeBuyer.Types
import qualified Network.Google.Prelude as Core

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

instance
  Core.GoogleRequest
    AdExchangeBuyerCreativesGet
  where
  type Rs AdExchangeBuyerCreativesGet = Creative
  type
    Scopes AdExchangeBuyerCreativesGet =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient AdExchangeBuyerCreativesGet {..} =
    go
      accountId
      buyerCreativeId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerCreativesGetResource
          )
          Core.mempty
