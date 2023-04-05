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
-- Module      : Gogol.AdSense.Accounts.Reports.Generate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an ad hoc report.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.generate@.
module Gogol.AdSense.Accounts.Reports.Generate
  ( -- * Resource
    AdSenseAccountsReportsGenerateResource,

    -- ** Constructing a Request
    AdSenseAccountsReportsGenerate (..),
    newAdSenseAccountsReportsGenerate,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.reports.generate@ method which the
-- 'AdSenseAccountsReportsGenerate' request conforms to.
type AdSenseAccountsReportsGenerateResource =
  "v2"
    Core.:> Core.Capture "account" Core.Text
    Core.:> "reports:generate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currencyCode" Core.Text
    Core.:> Core.QueryParam
              "dateRange"
              AccountsReportsGenerateDateRange
    Core.:> Core.QueryParams
              "dimensions"
              AccountsReportsGenerateDimensions
    Core.:> Core.QueryParam "endDate.day" Core.Int32
    Core.:> Core.QueryParam "endDate.month" Core.Int32
    Core.:> Core.QueryParam "endDate.year" Core.Int32
    Core.:> Core.QueryParams "filters" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "limit" Core.Int32
    Core.:> Core.QueryParams
              "metrics"
              AccountsReportsGenerateMetrics
    Core.:> Core.QueryParams "orderBy" Core.Text
    Core.:> Core.QueryParam
              "reportingTimeZone"
              AccountsReportsGenerateReportingTimeZone
    Core.:> Core.QueryParam
              "startDate.day"
              Core.Int32
    Core.:> Core.QueryParam
              "startDate.month"
              Core.Int32
    Core.:> Core.QueryParam
              "startDate.year"
              Core.Int32
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ReportResult

-- | Generates an ad hoc report.
--
-- /See:/ 'newAdSenseAccountsReportsGenerate' smart constructor.
data AdSenseAccountsReportsGenerate = AdSenseAccountsReportsGenerate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The account which owns the collection of reports. Format: accounts\/{account}
    account :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The <https://en.wikipedia.org/wiki/ISO_4217 ISO-4217 currency code> to use when reporting on monetary metrics. Defaults to the account\'s currency if not set.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Date range of the report, if unset the range will be considered CUSTOM.
    dateRange :: (Core.Maybe AccountsReportsGenerateDateRange),
    -- | Dimensions to base the report on.
    dimensions :: (Core.Maybe [AccountsReportsGenerateDimensions]),
    -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    endDateDay :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    endDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    endDateYear :: (Core.Maybe Core.Int32),
    -- | A list of </adsense/management/reporting/filtering filters> to apply to the report. All provided filters must match in order for the data to be included in the report.
    filters :: (Core.Maybe [Core.Text]),
    -- | The language to use for translating report output. If unspecified, this defaults to English (\"en\"). If the given language is not supported, report output will be returned in English. The language is specified as an <https://en.wikipedia.org/wiki/IETF_language_tag IETF BCP-47 language code>.
    languageCode :: (Core.Maybe Core.Text),
    -- | The maximum number of rows of report data to return. Reports producing more rows than the requested limit will be truncated. If unset, this defaults to 100,000 rows for @Reports.GenerateReport@ and 1,000,000 rows for @Reports.GenerateCsvReport@, which are also the maximum values permitted here. Report truncation can be identified (for @Reports.GenerateReport@ only) by comparing the number of rows returned to the value returned in @total_matched_rows@.
    limit :: (Core.Maybe Core.Int32),
    -- | Required. Reporting metrics.
    metrics :: (Core.Maybe [AccountsReportsGenerateMetrics]),
    -- | The name of a dimension or metric to sort the resulting report on, can be prefixed with \"+\" to sort ascending or \"-\" to sort descending. If no prefix is specified, the column is sorted ascending.
    orderBy :: (Core.Maybe [Core.Text]),
    -- | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
    reportingTimeZone :: (Core.Maybe AccountsReportsGenerateReportingTimeZone),
    -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    startDateDay :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    startDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    startDateYear :: (Core.Maybe Core.Int32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsReportsGenerate' with the minimum fields required to make a request.
newAdSenseAccountsReportsGenerate ::
  -- |  Required. The account which owns the collection of reports. Format: accounts\/{account} See 'account'.
  Core.Text ->
  AdSenseAccountsReportsGenerate
newAdSenseAccountsReportsGenerate account =
  AdSenseAccountsReportsGenerate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      account = account,
      callback = Core.Nothing,
      currencyCode = Core.Nothing,
      dateRange = Core.Nothing,
      dimensions = Core.Nothing,
      endDateDay = Core.Nothing,
      endDateMonth = Core.Nothing,
      endDateYear = Core.Nothing,
      filters = Core.Nothing,
      languageCode = Core.Nothing,
      limit = Core.Nothing,
      metrics = Core.Nothing,
      orderBy = Core.Nothing,
      reportingTimeZone = Core.Nothing,
      startDateDay = Core.Nothing,
      startDateMonth = Core.Nothing,
      startDateYear = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsReportsGenerate
  where
  type Rs AdSenseAccountsReportsGenerate = ReportResult
  type
    Scopes AdSenseAccountsReportsGenerate =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsReportsGenerate {..} =
    go
      account
      xgafv
      accessToken
      callback
      currencyCode
      dateRange
      (dimensions Core.^. Core._Default)
      endDateDay
      endDateMonth
      endDateYear
      (filters Core.^. Core._Default)
      languageCode
      limit
      (metrics Core.^. Core._Default)
      (orderBy Core.^. Core._Default)
      reportingTimeZone
      startDateDay
      startDateMonth
      startDateYear
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsReportsGenerateResource
          )
          Core.mempty
