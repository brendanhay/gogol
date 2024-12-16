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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessEnvironmentInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain environment details for a Spark Application
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.accessEnvironmentInfo@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessEnvironmentInfo
    (
    -- * Resource
      DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfoResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo (..)
    , newDataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.accessEnvironmentInfo@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfoResource
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
                         AccessSessionSparkApplicationEnvironmentInfoResponse

-- | Obtain environment details for a Spark Application
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo = DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Required. Parent (Session) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
newDataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo name =
  DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , parent = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
         where
        type Rs
               DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
             =
             AccessSessionSparkApplicationEnvironmentInfoResponse
        type Scopes
               DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfo{..}
          = go name xgafv accessToken callback parent
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsSessionsSparkApplicationsAccessEnvironmentInfoResource)
                      Core.mempty

