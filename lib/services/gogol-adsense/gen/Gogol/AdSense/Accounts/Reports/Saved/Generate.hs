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
-- Module      : Gogol.AdSense.Accounts.Reports.Saved.Generate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a saved report.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.saved.generate@.
module Gogol.AdSense.Accounts.Reports.Saved.Generate
  ( -- * Resource
    AdSenseAccountsReportsSavedGenerateResource,

    -- ** Constructing a Request
    AdSenseAccountsReportsSavedGenerate (..),
    newAdSenseAccountsReportsSavedGenerate,
  )
where

import Gogol.AdSense.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsense.accounts.reports.saved.generate@ method which the
-- 'AdSenseAccountsReportsSavedGenerate' request conforms to.
type AdSenseAccountsReportsSavedGenerateResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "saved:generate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currencyCode" Core.Text
    Core.:> Core.QueryParam "dateRange" AccountsReportsSavedGenerateDateRange
    Core.:> Core.QueryParam "endDate.day" Core.Int32
    Core.:> Core.QueryParam "endDate.month" Core.Int32
    Core.:> Core.QueryParam "endDate.year" Core.Int32
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam
              "reportingTimeZone"
              AccountsReportsSavedGenerateReportingTimeZone
    Core.:> Core.QueryParam "startDate.day" Core.Int32
    Core.:> Core.QueryParam "startDate.month" Core.Int32
    Core.:> Core.QueryParam "startDate.year" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ReportResult

-- | Generates a saved report.
--
-- /See:/ 'newAdSenseAccountsReportsSavedGenerate' smart constructor.
data AdSenseAccountsReportsSavedGenerate = AdSenseAccountsReportsSavedGenerate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The <https://en.wikipedia.org/wiki/ISO_4217 ISO-4217 currency code> to use when reporting on monetary metrics. Defaults to the account\'s currency if not set.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Date range of the report, if unset the range will be considered CUSTOM.
    dateRange :: (Core.Maybe AccountsReportsSavedGenerateDateRange),
    -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    endDateDay :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    endDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    endDateYear :: (Core.Maybe Core.Int32),
    -- | The language to use for translating report output. If unspecified, this defaults to English (\"en\"). If the given language is not supported, report output will be returned in English. The language is specified as an <https://en.wikipedia.org/wiki/IETF_language_tag IETF BCP-47 language code>.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. Name of the saved report. Format: accounts\/{account}\/reports\/{report}
    name :: Core.Text,
    -- | Timezone in which to generate the report. If unspecified, this defaults to the account timezone. For more information, see <https://support.google.com/adsense/answer/9830725 changing the time zone of your reports>.
    reportingTimeZone :: (Core.Maybe AccountsReportsSavedGenerateReportingTimeZone),
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

-- | Creates a value of 'AdSenseAccountsReportsSavedGenerate' with the minimum fields required to make a request.
newAdSenseAccountsReportsSavedGenerate ::
  -- |  Required. Name of the saved report. Format: accounts\/{account}\/reports\/{report} See 'name'.
  Core.Text ->
  AdSenseAccountsReportsSavedGenerate
newAdSenseAccountsReportsSavedGenerate name =
  AdSenseAccountsReportsSavedGenerate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      currencyCode = Core.Nothing,
      dateRange = Core.Nothing,
      endDateDay = Core.Nothing,
      endDateMonth = Core.Nothing,
      endDateYear = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      reportingTimeZone = Core.Nothing,
      startDateDay = Core.Nothing,
      startDateMonth = Core.Nothing,
      startDateYear = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsReportsSavedGenerate where
  type Rs AdSenseAccountsReportsSavedGenerate = ReportResult
  type
    Scopes AdSenseAccountsReportsSavedGenerate =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsReportsSavedGenerate {..} =
    go
      name
      xgafv
      accessToken
      callback
      currencyCode
      dateRange
      endDateDay
      endDateMonth
      endDateYear
      languageCode
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
              Core.Proxy AdSenseAccountsReportsSavedGenerateResource
          )
          Core.mempty
