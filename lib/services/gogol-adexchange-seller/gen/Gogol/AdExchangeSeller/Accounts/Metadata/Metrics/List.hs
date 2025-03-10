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
-- Module      : Gogol.AdExchangeSeller.Accounts.Metadata.Metrics.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.metadata.metrics.list@.
module Gogol.AdExchangeSeller.Accounts.Metadata.Metrics.List
  ( -- * Resource
    AdExchangeSellerAccountsMetadataMetricsListResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsMetadataMetricsList (..),
    newAdExchangeSellerAccountsMetadataMetricsList,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.metadata.metrics.list@ method which the
-- 'AdExchangeSellerAccountsMetadataMetricsList' request conforms to.
type AdExchangeSellerAccountsMetadataMetricsListResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "metadata"
    Core.:> "metrics"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Metadata

-- | List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsMetadataMetricsList' smart constructor.
newtype AdExchangeSellerAccountsMetadataMetricsList = AdExchangeSellerAccountsMetadataMetricsList
  { -- | Account with visibility to the metrics.
    accountId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsMetadataMetricsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsMetadataMetricsList ::
  -- |  Account with visibility to the metrics. See 'accountId'.
  Core.Text ->
  AdExchangeSellerAccountsMetadataMetricsList
newAdExchangeSellerAccountsMetadataMetricsList accountId =
  AdExchangeSellerAccountsMetadataMetricsList
    { accountId =
        accountId
    }

instance
  Core.GoogleRequest
    AdExchangeSellerAccountsMetadataMetricsList
  where
  type Rs AdExchangeSellerAccountsMetadataMetricsList = Metadata
  type
    Scopes AdExchangeSellerAccountsMetadataMetricsList =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsMetadataMetricsList {..} =
    go accountId (Core.Just Core.AltJSON) adExchangeSellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsMetadataMetricsListResource
          )
          Core.mempty
