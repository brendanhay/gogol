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
-- Module      : Gogol.YouTubeReporting.Jobs.Reports.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of a specific report.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.reports.get@.
module Gogol.YouTubeReporting.Jobs.Reports.Get
  ( -- * Resource
    YouTubeReportingJobsReportsGetResource,

    -- ** Constructing a Request
    YouTubeReportingJobsReportsGet (..),
    newYouTubeReportingJobsReportsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.reports.get@ method which the
-- 'YouTubeReportingJobsReportsGet' request conforms to.
type YouTubeReportingJobsReportsGetResource =
  "v1"
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "reports"
    Core.:> Core.Capture "reportId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Report

-- | Gets the metadata of a specific report.
--
-- /See:/ 'newYouTubeReportingJobsReportsGet' smart constructor.
data YouTubeReportingJobsReportsGet = YouTubeReportingJobsReportsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the job.
    jobId :: Core.Text,
    -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | The ID of the report to retrieve.
    reportId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingJobsReportsGet' with the minimum fields required to make a request.
newYouTubeReportingJobsReportsGet ::
  -- |  The ID of the job. See 'jobId'.
  Core.Text ->
  -- |  The ID of the report to retrieve. See 'reportId'.
  Core.Text ->
  YouTubeReportingJobsReportsGet
newYouTubeReportingJobsReportsGet jobId reportId =
  YouTubeReportingJobsReportsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      onBehalfOfContentOwner = Core.Nothing,
      reportId = reportId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeReportingJobsReportsGet where
  type Rs YouTubeReportingJobsReportsGet = Report
  type
    Scopes YouTubeReportingJobsReportsGet =
      '[YtAnalyticsMonetary'Readonly, YtAnalytics'Readonly]
  requestClient YouTubeReportingJobsReportsGet {..} =
    go
      jobId
      reportId
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeReportingJobsReportsGetResource)
          Core.mempty
