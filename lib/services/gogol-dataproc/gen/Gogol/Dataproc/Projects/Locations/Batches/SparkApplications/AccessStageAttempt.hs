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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessStageAttempt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to a spark stage attempt for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.accessStageAttempt@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessStageAttempt
    (
    -- * Resource
      DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttemptResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt (..)
    , newDataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.accessStageAttempt@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttemptResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "accessStageAttempt"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "parent" Core.Text Core.:>
                 Core.QueryParam "stageAttemptId" Core.Int32 Core.:>
                   Core.QueryParam "stageId" Core.Int64 Core.:>
                     Core.QueryParam "summaryMetricsMask" Core.FieldMask
                       Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               AccessSparkApplicationStageAttemptResponse

-- | Obtain data corresponding to a spark stage attempt for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt = DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Required. Parent (Batch) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Required. Stage Attempt ID
    , stageAttemptId :: (Core.Maybe Core.Int32)
      -- | Required. Stage ID
    , stageId :: (Core.Maybe Core.Int64)
      -- | Optional. The list of summary metrics fields to include. Empty list will default to skip all summary metrics fields. Example, if the response should include TaskQuantileMetrics, the request should have task/quantile/metrics in summary/metrics/mask field
    , summaryMetricsMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
newDataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt name =
  DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , parent = Core.Nothing
    , stageAttemptId = Core.Nothing
    , stageId = Core.Nothing
    , summaryMetricsMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
         where
        type Rs
               DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
             = AccessSparkApplicationStageAttemptResponse
        type Scopes
               DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttempt{..}
          = go name xgafv accessToken callback parent
              stageAttemptId
              stageId
              summaryMetricsMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsBatchesSparkApplicationsAccessStageAttemptResource)
                      Core.mempty

