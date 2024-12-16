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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchExecutors
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to executors for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.searchExecutors@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.SearchExecutors
    (
    -- * Resource
      DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorsResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors (..)
    , newDataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.searchExecutors@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorsResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "searchExecutors" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "executorStatus"
                 ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus
                 Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "parent" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               SearchSessionSparkApplicationExecutorsResponse

-- | Obtain data corresponding to executors for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors = DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Filter to select whether active\/ dead or all executors should be selected.
    , executorStatus :: (Core.Maybe
   ProjectsLocationsSessionsSparkApplicationsSearchExecutorsExecutorStatus)
      -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Optional. Maximum number of executors to return in each response. The service may return fewer than this. The default page size is 10; the maximum page size is 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A page token received from a previous SearchSessionSparkApplicationExecutors call. Provide this token to retrieve the subsequent page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Parent (Session) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
newDataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors name =
  DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
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
           DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
         where
        type Rs
               DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
             = SearchSessionSparkApplicationExecutorsResponse
        type Scopes
               DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutors{..}
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
                           DataprocProjectsLocationsSessionsSparkApplicationsSearchExecutorsResource)
                      Core.mempty

