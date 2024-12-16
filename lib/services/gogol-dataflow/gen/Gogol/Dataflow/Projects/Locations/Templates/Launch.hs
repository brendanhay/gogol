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
-- Module      : Gogol.Dataflow.Projects.Locations.Templates.Launch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches a template. To launch a template, we recommend using @projects.locations.templates.launch@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.templates.launch@ is not recommended, because jobs launched from the template will always start in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.templates.launch@.
module Gogol.Dataflow.Projects.Locations.Templates.Launch
    (
    -- * Resource
      DataflowProjectsLocationsTemplatesLaunchResource

    -- ** Constructing a Request
    , DataflowProjectsLocationsTemplatesLaunch (..)
    , newDataflowProjectsLocationsTemplatesLaunch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.locations.templates.launch@ method which the
-- 'DataflowProjectsLocationsTemplatesLaunch' request conforms to.
type DataflowProjectsLocationsTemplatesLaunchResource
     =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "location" Core.Text Core.:>
               "templates:launch" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "dynamicTemplate.gcsPath" Core.Text
                         Core.:>
                         Core.QueryParam "dynamicTemplate.stagingLocation"
                           Core.Text
                           Core.:>
                           Core.QueryParam "gcsPath" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "validateOnly" Core.Bool
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       LaunchTemplateParameters
                                       Core.:>
                                       Core.Post '[Core.JSON]
                                         LaunchTemplateResponse

-- | Launches a template. To launch a template, we recommend using @projects.locations.templates.launch@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.templates.launch@ is not recommended, because jobs launched from the template will always start in @us-central1@.
--
-- /See:/ 'newDataflowProjectsLocationsTemplatesLaunch' smart constructor.
data DataflowProjectsLocationsTemplatesLaunch = DataflowProjectsLocationsTemplatesLaunch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Path to the dynamic template specification file on Cloud Storage. The file must be a JSON serialized @DynamicTemplateFileSpec@ object.
    , dynamicTemplateGcsPath :: (Core.Maybe Core.Text)
      -- | Cloud Storage path for staging dependencies. Must be a valid Cloud Storage URL, beginning with @gs:\/\/@.
    , dynamicTemplateStagingLocation :: (Core.Maybe Core.Text)
      -- | A Cloud Storage path to the template to use to create the job. Must be valid Cloud Storage URL, beginning with @gs:\/\/@.
    , gcsPath :: (Core.Maybe Core.Text)
      -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request.
    , location :: Core.Text
      -- | Multipart request metadata.
    , payload :: LaunchTemplateParameters
      -- | Required. The ID of the Cloud Platform project that the job belongs to.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | If true, the request is validated but not actually executed. Defaults to false.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsTemplatesLaunch' with the minimum fields required to make a request.
newDataflowProjectsLocationsTemplatesLaunch 
    ::  Core.Text
       -- ^  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request. See 'location'.
    -> LaunchTemplateParameters
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
    -> DataflowProjectsLocationsTemplatesLaunch
newDataflowProjectsLocationsTemplatesLaunch location payload projectId =
  DataflowProjectsLocationsTemplatesLaunch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , dynamicTemplateGcsPath = Core.Nothing
    , dynamicTemplateStagingLocation = Core.Nothing
    , gcsPath = Core.Nothing
    , location = location
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , validateOnly = Core.Nothing
    }

instance Core.GoogleRequest
           DataflowProjectsLocationsTemplatesLaunch
         where
        type Rs DataflowProjectsLocationsTemplatesLaunch =
             LaunchTemplateResponse
        type Scopes DataflowProjectsLocationsTemplatesLaunch
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          DataflowProjectsLocationsTemplatesLaunch{..}
          = go projectId location xgafv accessToken callback
              dynamicTemplateGcsPath
              dynamicTemplateStagingLocation
              gcsPath
              uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              payload
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataflowProjectsLocationsTemplatesLaunchResource)
                      Core.mempty

