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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessJob
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to a spark job for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.accessJob@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessJob
    (
    -- * Resource
      DataprocProjectsLocationsBatchesSparkApplicationsAccessJobResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsBatchesSparkApplicationsAccessJob (..)
    , newDataprocProjectsLocationsBatchesSparkApplicationsAccessJob
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.accessJob@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsAccessJob' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsAccessJobResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "accessJob" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "jobId" Core.Int64 Core.:>
                 Core.QueryParam "parent" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           AccessSparkApplicationJobResponse

-- | Obtain data corresponding to a spark job for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsAccessJob' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsAccessJob = DataprocProjectsLocationsBatchesSparkApplicationsAccessJob
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Job ID to fetch data for.
    , jobId :: (Core.Maybe Core.Int64)
      -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Required. Parent (Batch) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsAccessJob' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsAccessJob 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsBatchesSparkApplicationsAccessJob
newDataprocProjectsLocationsBatchesSparkApplicationsAccessJob name =
  DataprocProjectsLocationsBatchesSparkApplicationsAccessJob
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = Core.Nothing
    , name = name
    , parent = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsBatchesSparkApplicationsAccessJob
         where
        type Rs
               DataprocProjectsLocationsBatchesSparkApplicationsAccessJob
             = AccessSparkApplicationJobResponse
        type Scopes
               DataprocProjectsLocationsBatchesSparkApplicationsAccessJob
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsBatchesSparkApplicationsAccessJob{..}
          = go name xgafv accessToken callback jobId parent
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsBatchesSparkApplicationsAccessJobResource)
                      Core.mempty

