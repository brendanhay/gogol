{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchExecutorStageSummary
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain executor summary with respect to a spark stage attempt.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.searchExecutorStageSummary@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchExecutorStageSummary
    (
    -- * Resource
      DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummaryResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary (..)
    , newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.searchExecutorStageSummary@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummaryResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "searchExecutorStageSummary"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "parent" Core.Text Core.:>
                     Core.QueryParam "stageAttemptId" Core.Int32 Core.:>
                       Core.QueryParam "stageId" Core.Int64 Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON]
                                 SearchSparkApplicationExecutorStageSummaryResponse

-- | Obtain executor summary with respect to a spark stage attempt.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary = DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token received from a previous AccessSparkApplicationExecutorsList call. Provide this token to retrieve the subsequent page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Parent (Batch) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Required. Stage Attempt ID
    , stageAttemptId :: (Core.Maybe Core.Int32)
      -- | Required. Stage ID
    , stageId :: (Core.Maybe Core.Int64)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary name =
  DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = Core.Nothing
    , stageAttemptId = Core.Nothing
    , stageId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
         where
        type Rs
               DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
             = SearchSparkApplicationExecutorStageSummaryResponse
        type Scopes
               DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummary{..}
          = go name xgafv accessToken callback pageSize
              pageToken
              parent
              stageAttemptId
              stageId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorStageSummaryResource)
                      Core.mempty

