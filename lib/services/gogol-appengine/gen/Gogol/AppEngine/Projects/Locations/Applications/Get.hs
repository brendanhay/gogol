{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.get@.
module Gogol.AppEngine.Projects.Locations.Applications.Get
  ( -- * Resource
    AppEngineProjectsLocationsApplicationsGetResource,

    -- ** Constructing a Request
    AppEngineProjectsLocationsApplicationsGet (..),
    newAppEngineProjectsLocationsApplicationsGet,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.projects.locations.applications.get@ method which the
-- 'AppEngineProjectsLocationsApplicationsGet' request conforms to.
type AppEngineProjectsLocationsApplicationsGetResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectsId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "locationsId" Core.Text
    Core.:> "applications"
    Core.:> Core.Capture "applicationsId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Application

-- | Gets information about an application.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsGet' smart constructor.
data AppEngineProjectsLocationsApplicationsGet = AppEngineProjectsLocationsApplicationsGet
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
    -- | Part of @name@. Name of the Application resource to get. Example: apps\/myapp.
    projectsId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsGet' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsGet ::
  -- |  Part of @name@. See documentation of @projectsId@. See 'applicationsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @projectsId@. See 'locationsId'.
  Core.Text ->
  -- |  Part of @name@. Name of the Application resource to get. Example: apps\/myapp. See 'projectsId'.
  Core.Text ->
  AppEngineProjectsLocationsApplicationsGet
newAppEngineProjectsLocationsApplicationsGet applicationsId locationsId projectsId =
  AppEngineProjectsLocationsApplicationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationsId = applicationsId,
      callback = Core.Nothing,
      locationsId = locationsId,
      projectsId = projectsId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineProjectsLocationsApplicationsGet
  where
  type
    Rs AppEngineProjectsLocationsApplicationsGet =
      Application
  type
    Scopes AppEngineProjectsLocationsApplicationsGet =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    AppEngineProjectsLocationsApplicationsGet {..} =
      go
        projectsId
        locationsId
        applicationsId
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
                  AppEngineProjectsLocationsApplicationsGetResource
            )
            Core.mempty
