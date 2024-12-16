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
-- Module      : Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.Write
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Write wrapper objects from dataplane to spanner
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.sessions.sparkApplications.write@.
module Gogol.Dataproc.Projects.Locations.Sessions.SparkApplications.Write
    (
    -- * Resource
      DataprocProjectsLocationsSessionsSparkApplicationsWriteResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsSessionsSparkApplicationsWrite (..)
    , newDataprocProjectsLocationsSessionsSparkApplicationsWrite
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.sessions.sparkApplications.write@ method which the
-- 'DataprocProjectsLocationsSessionsSparkApplicationsWrite' request conforms to.
type DataprocProjectsLocationsSessionsSparkApplicationsWriteResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "write" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       WriteSessionSparkApplicationContextRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         WriteSessionSparkApplicationContextResponse

-- | Write wrapper objects from dataplane to spanner
--
-- /See:/ 'newDataprocProjectsLocationsSessionsSparkApplicationsWrite' smart constructor.
data DataprocProjectsLocationsSessionsSparkApplicationsWrite = DataprocProjectsLocationsSessionsSparkApplicationsWrite
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The fully qualified name of the spark application to write data about in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\"
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: WriteSessionSparkApplicationContextRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsSessionsSparkApplicationsWrite' with the minimum fields required to make a request.
newDataprocProjectsLocationsSessionsSparkApplicationsWrite 
    ::  Core.Text
       -- ^  Required. The fully qualified name of the spark application to write data about in the format \"projects\/PROJECT/ID\/locations\/DATAPROC/REGION\/sessions\/SESSION/ID\/sparkApplications\/APPLICATION/ID\" See 'name'.
    -> WriteSessionSparkApplicationContextRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsLocationsSessionsSparkApplicationsWrite
newDataprocProjectsLocationsSessionsSparkApplicationsWrite name payload =
  DataprocProjectsLocationsSessionsSparkApplicationsWrite
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsSessionsSparkApplicationsWrite
         where
        type Rs
               DataprocProjectsLocationsSessionsSparkApplicationsWrite
             = WriteSessionSparkApplicationContextResponse
        type Scopes
               DataprocProjectsLocationsSessionsSparkApplicationsWrite
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsSessionsSparkApplicationsWrite{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsSessionsSparkApplicationsWriteResource)
                      Core.mempty

