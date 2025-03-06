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
-- Module      : Gogol.AdExchangeSeller.Accounts.Reports.Generate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an Ad Exchange report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.reports.generate@.
module Gogol.AdExchangeSeller.Accounts.Reports.Generate
  ( -- * Resource
    AdExchangeSellerAccountsReportsGenerateResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsReportsGenerate (..),
    newAdExchangeSellerAccountsReportsGenerate,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.reports.generate@ method which the
-- 'AdExchangeSellerAccountsReportsGenerate' request conforms to.
type AdExchangeSellerAccountsReportsGenerateResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "reports"
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParams "dimension" Core.Text
    Core.:> Core.QueryParams "filter" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParams "metric" Core.Text
    Core.:> Core.QueryParams "sort" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report
    Core.:<|> "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "reports"
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParams "dimension" Core.Text
    Core.:> Core.QueryParams "filter" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParams "metric" Core.Text
    Core.:> Core.QueryParams "sort" Core.Text
    Core.:> Core.QueryParam "startIndex" Core.Word32
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Generate an Ad Exchange report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'newAdExchangeSellerAccountsReportsGenerate' smart constructor.
data AdExchangeSellerAccountsReportsGenerate = AdExchangeSellerAccountsReportsGenerate
  { -- | Account which owns the generated report.
    accountId :: Core.Text,
    -- | Dimensions to base the report on.
    dimension :: (Core.Maybe [Core.Text]),
    -- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
    endDate :: Core.Text,
    -- | Filters to be run on the report.
    filter :: (Core.Maybe [Core.Text]),
    -- | Optional locale to use for translating report output to a local language. Defaults to \"en_US\" if not specified.
    locale :: (Core.Maybe Core.Text),
    -- | The maximum number of rows of report data to return.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Numeric columns to include in the report.
    metric :: (Core.Maybe [Core.Text]),
    -- | The name of a dimension or metric to sort the resulting report on, optionally prefixed with \"+\" to sort ascending or \"-\" to sort descending. If no prefix is specified, the column is sorted ascending.
    sort :: (Core.Maybe [Core.Text]),
    -- | Start of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
    startDate :: Core.Text,
    -- | Index of the first row of report data to return.
    startIndex :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsReportsGenerate' with the minimum fields required to make a request.
newAdExchangeSellerAccountsReportsGenerate ::
  -- |  Account which owns the generated report. See 'accountId'.
  Core.Text ->
  -- |  End of the date range to report on in \"YYYY-MM-DD\" format, inclusive. See 'endDate'.
  Core.Text ->
  -- |  Start of the date range to report on in \"YYYY-MM-DD\" format, inclusive. See 'startDate'.
  Core.Text ->
  AdExchangeSellerAccountsReportsGenerate
newAdExchangeSellerAccountsReportsGenerate
  accountId
  endDate
  startDate =
    AdExchangeSellerAccountsReportsGenerate
      { accountId = accountId,
        dimension = Core.Nothing,
        endDate = endDate,
        filter = Core.Nothing,
        locale = Core.Nothing,
        maxResults = Core.Nothing,
        metric = Core.Nothing,
        sort = Core.Nothing,
        startDate = startDate,
        startIndex = Core.Nothing
      }

instance Core.GoogleRequest AdExchangeSellerAccountsReportsGenerate where
  type Rs AdExchangeSellerAccountsReportsGenerate = Report
  type
    Scopes AdExchangeSellerAccountsReportsGenerate =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsReportsGenerate {..} =
    go
      accountId
      (Core.Just startDate)
      (Core.Just endDate)
      (dimension Core.^. Core._Default)
      (filter Core.^. Core._Default)
      locale
      maxResults
      (metric Core.^. Core._Default)
      (sort Core.^. Core._Default)
      startIndex
      (Core.Just Core.AltJSON)
      adExchangeSellerService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsReportsGenerateResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload AdExchangeSellerAccountsReportsGenerate)
  where
  type
    Rs
      (Core.MediaDownload AdExchangeSellerAccountsReportsGenerate) =
      Core.Stream
  type
    Scopes
      (Core.MediaDownload AdExchangeSellerAccountsReportsGenerate) =
      Core.Scopes AdExchangeSellerAccountsReportsGenerate
  requestClient
    (Core.MediaDownload AdExchangeSellerAccountsReportsGenerate {..}) =
      go
        accountId
        (Core.Just startDate)
        (Core.Just endDate)
        (dimension Core.^. Core._Default)
        (filter Core.^. Core._Default)
        locale
        maxResults
        (metric Core.^. Core._Default)
        (sort Core.^. Core._Default)
        startIndex
        (Core.Just Core.AltMedia)
        adExchangeSellerService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy AdExchangeSellerAccountsReportsGenerateResource
            )
            Core.mempty
