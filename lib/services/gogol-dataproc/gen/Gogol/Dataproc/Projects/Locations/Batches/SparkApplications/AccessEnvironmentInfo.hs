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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessEnvironmentInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain environment details for a Spark Application
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.accessEnvironmentInfo@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.AccessEnvironmentInfo
    (
    -- * Resource
      DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfoResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo (..)
    , newDataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.accessEnvironmentInfo@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfoResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "accessEnvironmentInfo"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "parent" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON]
                         AccessSparkApplicationEnvironmentInfoResponse

-- | Obtain environment details for a Spark Application
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo = DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
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
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
newDataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo name =
  DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , parent = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
         where
        type Rs
               DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
             = AccessSparkApplicationEnvironmentInfoResponse
        type Scopes
               DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfo{..}
          = go name xgafv accessToken callback parent
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsBatchesSparkApplicationsAccessEnvironmentInfoResource)
                      Core.mempty

