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
-- Module      : Gogol.MachineLearning.Ml.Projects.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the jobs in the project. If there are no jobs that match the request parameters, the list request returns an empty response body: {}.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.jobs.list@.
module Gogol.MachineLearning.Ml.Projects.Jobs.List
  ( -- * Resource
    MlProjectsJobsListResource,

    -- ** Constructing a Request
    MlProjectsJobsList (..),
    newMlProjectsJobsList,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.jobs.list@ method which the
-- 'MlProjectsJobsList' request conforms to.
type MlProjectsJobsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudMlV1__ListJobsResponse

-- | Lists the jobs in the project. If there are no jobs that match the request parameters, the list request returns an empty response body: {}.
--
-- /See:/ 'newMlProjectsJobsList' smart constructor.
data MlProjectsJobsList = MlProjectsJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Specifies the subset of jobs to retrieve. You can filter on the value of one or more attributes of the job object. For example, retrieve jobs with a job identifier that starts with \'census\': gcloud ai-platform jobs list --filter=\'jobId:census/\' List all failed jobs with names that start with \'rnn\': gcloud ai-platform jobs list --filter=\'jobId:rnn/ AND state:FAILED\' For more examples, see the guide to monitoring jobs.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The number of jobs to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the @next_page_token@ field. The default value is 20, and the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token to request the next page of results. You get the token from the @next_page_token@ field of the response from the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project for which to list jobs.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsJobsList' with the minimum fields required to make a request.
newMlProjectsJobsList ::
  -- |  Required. The name of the project for which to list jobs. See 'parent'.
  Core.Text ->
  MlProjectsJobsList
newMlProjectsJobsList parent =
  MlProjectsJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsJobsList where
  type
    Rs MlProjectsJobsList =
      GoogleCloudMlV1__ListJobsResponse
  type
    Scopes MlProjectsJobsList =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient MlProjectsJobsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      machineLearningService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MlProjectsJobsListResource)
          Core.mempty
