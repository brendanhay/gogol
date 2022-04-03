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
-- Module      : Gogol.YouTubeReporting.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.list@.
module Gogol.YouTubeReporting.Jobs.List
  ( -- * Resource
    YouTubeReportingJobsListResource,

    -- ** Constructing a Request
    YouTubeReportingJobsList (..),
    newYouTubeReportingJobsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.list@ method which the
-- 'YouTubeReportingJobsList' request conforms to.
type YouTubeReportingJobsListResource =
  "v1"
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeSystemManaged" Core.Bool
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | Lists jobs.
--
-- /See:/ 'newYouTubeReportingJobsList' smart constructor.
data YouTubeReportingJobsList = YouTubeReportingJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set to true, also system-managed jobs will be returned; otherwise only user-created jobs will be returned. System-managed jobs can neither be modified nor deleted.
    includeSystemManaged :: (Core.Maybe Core.Bool),
    -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Requested page size. Server may return fewer jobs than requested. If unspecified, server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListReportTypesResponse.next/page/token returned in response to the previous call to the @ListJobs@ method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingJobsList' with the minimum fields required to make a request.
newYouTubeReportingJobsList ::
  YouTubeReportingJobsList
newYouTubeReportingJobsList =
  YouTubeReportingJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeSystemManaged = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeReportingJobsList where
  type Rs YouTubeReportingJobsList = ListJobsResponse
  type
    Scopes YouTubeReportingJobsList =
      '[YtAnalyticsMonetary'Readonly, YtAnalytics'Readonly]
  requestClient YouTubeReportingJobsList {..} =
    go
      xgafv
      accessToken
      callback
      includeSystemManaged
      onBehalfOfContentOwner
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeReportingJobsListResource
          )
          Core.mempty
