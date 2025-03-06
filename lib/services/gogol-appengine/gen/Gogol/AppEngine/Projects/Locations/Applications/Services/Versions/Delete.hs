{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Services.Versions.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing Version resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.services.versions.delete@.
module Gogol.AppEngine.Projects.Locations.Applications.Services.Versions.Delete
  ( -- * Resource
    AppEngineProjectsLocationsApplicationsServicesVersionsDeleteResource,

    -- ** Constructing a Request
    AppEngineProjectsLocationsApplicationsServicesVersionsDelete (..),
    newAppEngineProjectsLocationsApplicationsServicesVersionsDelete,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.projects.locations.applications.services.versions.delete@ method which the
-- 'AppEngineProjectsLocationsApplicationsServicesVersionsDelete' request conforms to.
type AppEngineProjectsLocationsApplicationsServicesVersionsDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectsId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "locationsId" Core.Text
    Core.:> "applications"
    Core.:> Core.Capture "applicationsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> "versions"
    Core.:> Core.Capture "versionsId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes an existing Version resource.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsServicesVersionsDelete' smart constructor.
data AppEngineProjectsLocationsApplicationsServicesVersionsDelete = AppEngineProjectsLocationsApplicationsServicesVersionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @projectsId@.
    applicationsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @projectsId@.
    locationsId :: Core.Text,
    -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1.
    projectsId :: Core.Text,
    -- | Part of @name@. See documentation of @projectsId@.
    servicesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @projectsId@.
    versionsId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsServicesVersionsDelete' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsServicesVersionsDelete ::
  -- |  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
  Core.Text ->
  -- |  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1. See 'projectsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @projectsId@. See 'servicesId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @projectsId@. See 'versionsId'.
  Core.Text ->
  AppEngineProjectsLocationsApplicationsServicesVersionsDelete
newAppEngineProjectsLocationsApplicationsServicesVersionsDelete
  applicationsId
  locationsId
  projectsId
  servicesId
  versionsId =
    AppEngineProjectsLocationsApplicationsServicesVersionsDelete
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        applicationsId = applicationsId,
        callback = Core.Nothing,
        locationsId = locationsId,
        projectsId = projectsId,
        servicesId = servicesId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        versionsId = versionsId
      }

instance
  Core.GoogleRequest
    AppEngineProjectsLocationsApplicationsServicesVersionsDelete
  where
  type
    Rs
      AppEngineProjectsLocationsApplicationsServicesVersionsDelete =
      Operation
  type
    Scopes
      AppEngineProjectsLocationsApplicationsServicesVersionsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    AppEngineProjectsLocationsApplicationsServicesVersionsDelete {..} =
      go
        projectsId
        locationsId
        applicationsId
        servicesId
        versionsId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        appEngineService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AppEngineProjectsLocationsApplicationsServicesVersionsDeleteResource
            )
            Core.mempty
