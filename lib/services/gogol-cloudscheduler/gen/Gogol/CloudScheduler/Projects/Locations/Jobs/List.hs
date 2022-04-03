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
-- Module      : Gogol.CloudScheduler.Projects.Locations.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.list@.
module Gogol.CloudScheduler.Projects.Locations.Jobs.List
  ( -- * Resource
    CloudSchedulerProjectsLocationsJobsListResource,

    -- ** Constructing a Request
    CloudSchedulerProjectsLocationsJobsList (..),
    newCloudSchedulerProjectsLocationsJobsList,
  )
where

import Gogol.CloudScheduler.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudscheduler.projects.locations.jobs.list@ method which the
-- 'CloudSchedulerProjectsLocationsJobsList' request conforms to.
type CloudSchedulerProjectsLocationsJobsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListJobsResponse

-- | Lists jobs.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsJobsList' smart constructor.
data CloudSchedulerProjectsLocationsJobsList = CloudSchedulerProjectsLocationsJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. The maximum page size is 500. If unspecified, the page size will be the maximum. Fewer jobs than requested might be returned, even if more jobs exist; use next/page/token to determine if more jobs exist.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server will return. To request the first page results, page/token must be empty. To request the next page of results, page/token must be the value of next/page/token returned from the previous call to ListJobs. It is an error to switch the value of filter or order_by while iterating through pages.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The location name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsJobsList' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsJobsList ::
  -- |  Required. The location name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@. See 'parent'.
  Core.Text ->
  CloudSchedulerProjectsLocationsJobsList
newCloudSchedulerProjectsLocationsJobsList parent =
  CloudSchedulerProjectsLocationsJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSchedulerProjectsLocationsJobsList
  where
  type
    Rs CloudSchedulerProjectsLocationsJobsList =
      ListJobsResponse
  type
    Scopes CloudSchedulerProjectsLocationsJobsList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudSchedulerProjectsLocationsJobsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSchedulerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSchedulerProjectsLocationsJobsListResource
            )
            Core.mempty
