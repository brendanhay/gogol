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
-- Module      : Gogol.YouTubeReporting.Jobs.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job and returns it.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.create@.
module Gogol.YouTubeReporting.Jobs.Create
  ( -- * Resource
    YouTubeReportingJobsCreateResource,

    -- ** Constructing a Request
    YouTubeReportingJobsCreate (..),
    newYouTubeReportingJobsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.create@ method which the
-- 'YouTubeReportingJobsCreate' request conforms to.
type YouTubeReportingJobsCreateResource =
  "v1"
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Post '[Core.JSON] Job

-- | Creates a job and returns it.
--
-- /See:/ 'newYouTubeReportingJobsCreate' smart constructor.
data YouTubeReportingJobsCreate = YouTubeReportingJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Job,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingJobsCreate' with the minimum fields required to make a request.
newYouTubeReportingJobsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  YouTubeReportingJobsCreate
newYouTubeReportingJobsCreate payload =
  YouTubeReportingJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeReportingJobsCreate where
  type Rs YouTubeReportingJobsCreate = Job
  type
    Scopes YouTubeReportingJobsCreate =
      '[YtAnalyticsMonetary'Readonly, YtAnalytics'Readonly]
  requestClient YouTubeReportingJobsCreate {..} =
    go
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeReportingJobsCreateResource)
          Core.mempty
