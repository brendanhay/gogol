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
-- Module      : Gogol.AdExchangeSeller.Accounts.Reports.Saved.Generate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an Ad Exchange report based on the saved report ID sent in the query parameters.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.reports.saved.generate@.
module Gogol.AdExchangeSeller.Accounts.Reports.Saved.Generate
  ( -- * Resource
    AdExchangeSellerAccountsReportsSavedGenerateResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsReportsSavedGenerate (..),
    newAdExchangeSellerAccountsReportsSavedGenerate,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.reports.saved.generate@ method which the
-- 'AdExchangeSellerAccountsReportsSavedGenerate' request conforms to.
type AdExchangeSellerAccountsReportsSavedGenerateResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "reports"
    Core.:> Core.Capture "savedReportId" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "startIndex" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report

-- | Generate an Ad Exchange report based on the saved report ID sent in the query parameters.
--
-- /See:/ 'newAdExchangeSellerAccountsReportsSavedGenerate' smart constructor.
data AdExchangeSellerAccountsReportsSavedGenerate = AdExchangeSellerAccountsReportsSavedGenerate
  { -- | Account owning the saved report.
    accountId :: Core.Text,
    -- | Optional locale to use for translating report output to a local language. Defaults to \"en_US\" if not specified.
    locale :: (Core.Maybe Core.Text),
    -- | The maximum number of rows of report data to return.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The saved report to retrieve.
    savedReportId :: Core.Text,
    -- | Index of the first row of report data to return.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsReportsSavedGenerate' with the minimum fields required to make a request.
newAdExchangeSellerAccountsReportsSavedGenerate ::
  -- |  Account owning the saved report. See 'accountId'.
  Core.Text ->
  -- |  The saved report to retrieve. See 'savedReportId'.
  Core.Text ->
  AdExchangeSellerAccountsReportsSavedGenerate
newAdExchangeSellerAccountsReportsSavedGenerate
  accountId
  savedReportId =
    AdExchangeSellerAccountsReportsSavedGenerate
      { accountId =
          accountId,
        locale = Core.Nothing,
        maxResults = Core.Nothing,
        savedReportId = savedReportId,
        startIndex = Core.Nothing
      }

instance
  Core.GoogleRequest
    AdExchangeSellerAccountsReportsSavedGenerate
  where
  type Rs AdExchangeSellerAccountsReportsSavedGenerate = Report
  type
    Scopes AdExchangeSellerAccountsReportsSavedGenerate =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsReportsSavedGenerate {..} =
    go
      accountId
      savedReportId
      locale
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      adExchangeSellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsReportsSavedGenerateResource
          )
          Core.mempty
