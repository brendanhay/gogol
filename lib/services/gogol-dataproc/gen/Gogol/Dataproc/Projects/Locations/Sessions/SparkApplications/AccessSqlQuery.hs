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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessSqlQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtain data corresponding to a particular SQL Query for a Spark Application.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.accessSqlQuery@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.AccessSqlQuery
    (
    -- * Resource
      DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQueryResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery (..)
    , newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.accessSqlQuery@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQueryResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "accessSqlQuery" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "details" Core.Bool Core.:>
                 Core.QueryParam "executionId" Core.Int64 Core.:>
                   Core.QueryParam "parent" Core.Text Core.:>
                     Core.QueryParam "planDescription" Core.Bool Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               AccessSessionSparkApplicationSqlQueryResponse

-- | Obtain data corresponding to a particular SQL Query for a Spark Application.
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery = DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Lists\/ hides details of Spark plan nodes. True is set to list and false to hide.
    , details :: (Core.Maybe Core.Bool)
      -- | Required. Execution ID
    , executionId :: (Core.Maybe Core.Int64)
      -- | Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Required. Parent (Session) resource reference.
    , parent :: (Core.Maybe Core.Text)
      -- | Optional. Enables\/ disables physical plan description on demand
    , planDescription :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the session to retrieve in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
newDataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery name =
  DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , details = Core.Nothing
    , executionId = Core.Nothing
    , name = name
    , parent = Core.Nothing
    , planDescription = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
         where
        type Rs
               DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
             = AccessSessionSparkApplicationSqlQueryResponse
        type Scopes
               DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQuery{..}
          = go name xgafv accessToken callback details
              executionId
              parent
              planDescription
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsSessionsSparkApplicationsAccessSqlQueryResource)
                      Core.mempty

