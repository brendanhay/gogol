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
-- Module      : Gogol.AdExchangeBuyer.BillingInfo.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of billing information for all accounts of the authenticated user.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.billingInfo.list@.
module Gogol.AdExchangeBuyer.BillingInfo.List
  ( -- * Resource
    AdExchangeBuyerBillingInfoListResource,

    -- ** Constructing a Request
    AdExchangeBuyerBillingInfoList (..),
    newAdExchangeBuyerBillingInfoList,
  )
where

import Gogol.AdExchangeBuyer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer.billingInfo.list@ method which the
-- 'AdExchangeBuyerBillingInfoList' request conforms to.
type AdExchangeBuyerBillingInfoListResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "billinginfo"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BillingInfoList

-- | Retrieves a list of billing information for all accounts of the authenticated user.
--
-- /See:/ 'newAdExchangeBuyerBillingInfoList' smart constructor.
data AdExchangeBuyerBillingInfoList = AdExchangeBuyerBillingInfoList
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerBillingInfoList' with the minimum fields required to make a request.
newAdExchangeBuyerBillingInfoList ::
  AdExchangeBuyerBillingInfoList
newAdExchangeBuyerBillingInfoList = AdExchangeBuyerBillingInfoList

instance Core.GoogleRequest AdExchangeBuyerBillingInfoList where
  type Rs AdExchangeBuyerBillingInfoList = BillingInfoList
  type Scopes AdExchangeBuyerBillingInfoList = '[Adexchange'Buyer]
  requestClient AdExchangeBuyerBillingInfoList {} =
    go (Core.Just Core.AltJSON) adExchangeBuyerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AdExchangeBuyerBillingInfoListResource)
          Core.mempty
