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
-- Module      : Gogol.YouTubeReporting.Jobs.Reports.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists reports created by a specific job. Returns NOT_FOUND if the job does not exist.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.reports.list@.
module Gogol.YouTubeReporting.Jobs.Reports.List
  ( -- * Resource
    YouTubeReportingJobsReportsListResource,

    -- ** Constructing a Request
    YouTubeReportingJobsReportsList (..),
    newYouTubeReportingJobsReportsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.reports.list@ method which the
-- 'YouTubeReportingJobsReportsList' request conforms to.
type YouTubeReportingJobsReportsListResource =
  "v1"
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> "reports"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "createdAfter" Core.DateTime
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTimeAtOrAfter" Core.DateTime
    Core.:> Core.QueryParam "startTimeBefore" Core.DateTime
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListReportsResponse

-- | Lists reports created by a specific job. Returns NOT_FOUND if the job does not exist.
--
-- /See:/ 'newYouTubeReportingJobsReportsList' smart constructor.
data YouTubeReportingJobsReportsList = YouTubeReportingJobsReportsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set, only reports created after the specified date\/time are returned.
    createdAfter :: (Core.Maybe Core.DateTime),
    -- | The ID of the job.
    jobId :: Core.Text,
    -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Requested page size. Server may return fewer report types than requested. If unspecified, server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListReportsResponse.next/page/token returned in response to the previous call to the @ListReports@ method.
    pageToken :: (Core.Maybe Core.Text),
    -- | If set, only reports whose start time is greater than or equal the specified date\/time are returned.
    startTimeAtOrAfter :: (Core.Maybe Core.DateTime),
    -- | If set, only reports whose start time is smaller than the specified date\/time are returned.
    startTimeBefore :: (Core.Maybe Core.DateTime),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingJobsReportsList' with the minimum fields required to make a request.
newYouTubeReportingJobsReportsList ::
  -- |  The ID of the job. See 'jobId'.
  Core.Text ->
  YouTubeReportingJobsReportsList
newYouTubeReportingJobsReportsList jobId =
  YouTubeReportingJobsReportsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      createdAfter = Core.Nothing,
      jobId = jobId,
      onBehalfOfContentOwner = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      startTimeAtOrAfter = Core.Nothing,
      startTimeBefore = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeReportingJobsReportsList where
  type Rs YouTubeReportingJobsReportsList = ListReportsResponse
  type
    Scopes YouTubeReportingJobsReportsList =
      '[YtAnalyticsMonetary'Readonly, YtAnalytics'Readonly]
  requestClient YouTubeReportingJobsReportsList {..} =
    go
      jobId
      xgafv
      accessToken
      callback
      createdAfter
      onBehalfOfContentOwner
      pageSize
      pageToken
      startTimeAtOrAfter
      startTimeBefore
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeReportingJobsReportsListResource)
          Core.mempty
