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
-- Module      : Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchExecutors
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to executors for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.sparkApplications.searchExecutors@.
module Gogol.Dataproc.Projects.Locations.Batches.SparkApplications.SearchExecutors
    (
    -- * Resource
      DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorsResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors (..)
    , newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.batches.sparkApplications.searchExecutors@ method which the
-- 'DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors' request conforms to.
type DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorsResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "searchExecutors" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "executorStatus"
                 ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus
                 Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "parent" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               SearchSparkApplicationExecutorsResponse

-- | Obtain data corresponding to executors for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors' smart constructor.
data DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors = DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter to select whether active\/ dead or all executors should be selected.
    , executorStatus :: (Core.Maybe
   ProjectsLocationsBatchesSparkApplicationsSearchExecutorsExecutorStatus)
      -- | Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token received from a previous AccessSparkApplicationExecutorsList call. Provide this token to retrieve the subsequent page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Parent (Batch) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the batch to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/batches\/BATCH/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
newDataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors name =
  DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , executorStatus = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
         where
        type Rs
               DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
             = SearchSparkApplicationExecutorsResponse
        type Scopes
               DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutors{..}
          = go name xgafv accessToken callback executorStatus
              pageSize
              pageToken
              parent
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsBatchesSparkApplicationsSearchExecutorsResource)
                      Core.mempty

