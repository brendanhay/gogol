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
-- Module      : Gogol.AppEngine.Projects.Locations.Applications.AuthorizedDomains.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all domains the user is authorized to administer.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.projects.locations.applications.authorizedDomains.list@.
module Gogol.AppEngine.Projects.Locations.Applications.AuthorizedDomains.List
  ( -- * Resource
    AppEngineProjectsLocationsApplicationsAuthorizedDomainsListResource,

    -- ** Constructing a Request
    AppEngineProjectsLocationsApplicationsAuthorizedDomainsList (..),
    newAppEngineProjectsLocationsApplicationsAuthorizedDomainsList,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.projects.locations.applications.authorizedDomains.list@ method which the
-- 'AppEngineProjectsLocationsApplicationsAuthorizedDomainsList' request conforms to.
type AppEngineProjectsLocationsApplicationsAuthorizedDomainsListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectsId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "locationsId" Core.Text
    Core.:> "applications"
    Core.:> Core.Capture "applicationsId" Core.Text
    Core.:> "authorizedDomains"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAuthorizedDomainsResponse

-- | Lists all domains the user is authorized to administer.
--
-- /See:/ 'newAppEngineProjectsLocationsApplicationsAuthorizedDomainsList' smart constructor.
data AppEngineProjectsLocationsApplicationsAuthorizedDomainsList = AppEngineProjectsLocationsApplicationsAuthorizedDomainsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. See documentation of @projectsId@.
    applicationsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @parent@. See documentation of @projectsId@.
    locationsId :: Core.Text,
    -- | Maximum results to return per page.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Application resource. Example: apps\/myapp.
    projectsId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineProjectsLocationsApplicationsAuthorizedDomainsList' with the minimum fields required to make a request.
newAppEngineProjectsLocationsApplicationsAuthorizedDomainsList ::
  -- |  Part of @parent@. See documentation of @projectsId@. See 'applicationsId'.
  Core.Text ->
  -- |  Part of @parent@. See documentation of @projectsId@. See 'locationsId'.
  Core.Text ->
  -- |  Part of @parent@. Name of the parent Application resource. Example: apps\/myapp. See 'projectsId'.
  Core.Text ->
  AppEngineProjectsLocationsApplicationsAuthorizedDomainsList
newAppEngineProjectsLocationsApplicationsAuthorizedDomainsList
  applicationsId
  locationsId
  projectsId =
    AppEngineProjectsLocationsApplicationsAuthorizedDomainsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        applicationsId = applicationsId,
        callback = Core.Nothing,
        locationsId = locationsId,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        projectsId = projectsId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AppEngineProjectsLocationsApplicationsAuthorizedDomainsList
  where
  type
    Rs AppEngineProjectsLocationsApplicationsAuthorizedDomainsList =
      ListAuthorizedDomainsResponse
  type
    Scopes
      AppEngineProjectsLocationsApplicationsAuthorizedDomainsList =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    AppEngineProjectsLocationsApplicationsAuthorizedDomainsList {..} =
      go
        projectsId
        locationsId
        applicationsId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        appEngineService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AppEngineProjectsLocationsApplicationsAuthorizedDomainsListResource
            )
            Core.mempty
