{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeReporting.Jobs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.delete@.
module Gogol.YouTubeReporting.Jobs.Delete
    (
    -- * Resource
      YouTubeReportingJobsDeleteResource

    -- ** Constructing a Request
    , newYouTubeReportingJobsDelete
    , YouTubeReportingJobsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.delete@ method which the
-- 'YouTubeReportingJobsDelete' request conforms to.
type YouTubeReportingJobsDeleteResource =
     "v1" Core.:>
       "jobs" Core.:>
         Core.Capture "jobId" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "onBehalfOfContentOwner" Core.Text
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] Empty

-- | Deletes a job.
--
-- /See:/ 'newYouTubeReportingJobsDelete' smart constructor.
data YouTubeReportingJobsDelete = YouTubeReportingJobsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the job to delete.
    , jobId :: Core.Text
      -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    , onBehalfOfContentOwner :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingJobsDelete' with the minimum fields required to make a request.
newYouTubeReportingJobsDelete 
    ::  Core.Text
       -- ^  The ID of the job to delete. See 'jobId'.
    -> YouTubeReportingJobsDelete
newYouTubeReportingJobsDelete jobId =
  YouTubeReportingJobsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , onBehalfOfContentOwner = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeReportingJobsDelete
         where
        type Rs YouTubeReportingJobsDelete = Empty
        type Scopes YouTubeReportingJobsDelete =
             '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient YouTubeReportingJobsDelete{..}
          = go jobId xgafv accessToken callback
              onBehalfOfContentOwner
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeReportingJobsDeleteResource)
                      Core.mempty

