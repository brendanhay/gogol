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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Services.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified service and all enclosed versions.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.services.delete@.
module Gogol.AppEngine.Projects.Locations.Applications.Services.Delete
    (
    -- * Resource
      AppEngineProjectsLocationsApplicationsServicesDeleteResource

    -- ** Constructing a Request
    , AppEngineProjectsLocationsApplicationsServicesDelete (..)
    , newAppEngineProjectsLocationsApplicationsServicesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppEngine.Types

-- | A resource alias for @appengine.projects.locations.applications.services.delete@ method which the
-- 'AppEngineProjectsLocationsApplicationsServicesDelete' request conforms to.
type AppEngineProjectsLocationsApplicationsServicesDeleteResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectsId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "locationsId" Core.Text Core.:>
               "applications" Core.:>
                 Core.Capture "applicationsId" Core.Text Core.:>
                   "services" Core.:>
                     Core.Capture "servicesId" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Delete '[Core.JSON] Operation

-- | Deletes the specified service and all enclosed versions.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsServicesDelete' smart constructor.
data AppEngineProjectsLocationsApplicationsServicesDelete = AppEngineProjectsLocationsApplicationsServicesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , applicationsId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Part of @name@. See documentation of @projectsId@.
    , locationsId :: Core.Text
      -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default.
    , projectsId :: Core.Text
      -- | Part of @name@. See documentation of @projectsId@.
    , servicesId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsServicesDelete' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsServicesDelete 
    ::  Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
    -> Core.Text
       -- ^  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default. See 'projectsId'.
    -> Core.Text
       -- ^  Part of @name@. See documentation of @projectsId@. See 'servicesId'.
    -> AppEngineProjectsLocationsApplicationsServicesDelete
newAppEngineProjectsLocationsApplicationsServicesDelete applicationsId locationsId projectsId servicesId =
  AppEngineProjectsLocationsApplicationsServicesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , applicationsId = applicationsId
    , callback = Core.Nothing
    , locationsId = locationsId
    , projectsId = projectsId
    , servicesId = servicesId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AppEngineProjectsLocationsApplicationsServicesDelete
         where
        type Rs
               AppEngineProjectsLocationsApplicationsServicesDelete
             = Operation
        type Scopes
               AppEngineProjectsLocationsApplicationsServicesDelete
             = '[CloudPlatform'FullControl]
        requestClient
          AppEngineProjectsLocationsApplicationsServicesDelete{..}
          = go projectsId locationsId applicationsId servicesId
              xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              appEngineService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AppEngineProjectsLocationsApplicationsServicesDeleteResource)
                      Core.mempty

