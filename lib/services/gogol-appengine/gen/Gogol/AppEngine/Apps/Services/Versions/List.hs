{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.list@.
module Gogol.AppEngine.Apps.Services.Versions.List
  ( -- * Resource
    AppEngineAppsServicesVersionsListResource,

    -- ** Constructing a Request
    AppEngineAppsServicesVersionsList (..),
    newAppEngineAppsServicesVersionsList,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.apps.services.versions.list@ method which the
-- 'AppEngineAppsServicesVersionsList' request conforms to.
type AppEngineAppsServicesVersionsListResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> "versions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" AppsServicesVersionsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListVersionsResponse

-- | Lists the versions of a service.
--
-- /See:/ 'newAppEngineAppsServicesVersionsList' smart constructor.
data AppEngineAppsServicesVersionsList = AppEngineAppsServicesVersionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Service resource. Example: apps\/myapp\/services\/default.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum results to return per page.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. See documentation of @appsId@.
    servicesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Controls the set of fields returned in the List response.
    view :: (Core.Maybe AppsServicesVersionsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsList' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsList ::
  -- |  Part of @parent@. Name of the parent Service resource. Example: apps\/myapp\/services\/default. See 'appsId'.
  Core.Text ->
  -- |  Part of @parent@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  AppEngineAppsServicesVersionsList
newAppEngineAppsServicesVersionsList appsId servicesId =
  AppEngineAppsServicesVersionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      servicesId = servicesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsServicesVersionsList where
  type Rs AppEngineAppsServicesVersionsList = ListVersionsResponse
  type
    Scopes AppEngineAppsServicesVersionsList =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient AppEngineAppsServicesVersionsList {..} =
    go
      appsId
      servicesId
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      appEngineService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppEngineAppsServicesVersionsListResource
          )
          Core.mempty
