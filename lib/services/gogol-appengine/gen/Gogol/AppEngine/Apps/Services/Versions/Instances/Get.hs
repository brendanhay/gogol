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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Instances.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets instance information.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.instances.get@.
module Gogol.AppEngine.Apps.Services.Versions.Instances.Get
  ( -- * Resource
    AppEngineAppsServicesVersionsInstancesGetResource,

    -- ** Constructing a Request
    AppEngineAppsServicesVersionsInstancesGet (..),
    newAppEngineAppsServicesVersionsInstancesGet,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.apps.services.versions.instances.get@ method which the
-- 'AppEngineAppsServicesVersionsInstancesGet' request conforms to.
type AppEngineAppsServicesVersionsInstancesGetResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> "versions"
    Core.:> Core.Capture "versionsId" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instancesId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Instance

-- | Gets instance information.
--
-- /See:/ 'newAppEngineAppsServicesVersionsInstancesGet' smart constructor.
data AppEngineAppsServicesVersionsInstancesGet = AppEngineAppsServicesVersionsInstancesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    instancesId :: Core.Text,
    -- | Part of @name@. See documentation of @appsId@.
    servicesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    versionsId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsInstancesGet' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsInstancesGet ::
  -- |  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'instancesId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'versionsId'.
  Core.Text ->
  AppEngineAppsServicesVersionsInstancesGet
newAppEngineAppsServicesVersionsInstancesGet
  appsId
  instancesId
  servicesId
  versionsId =
    AppEngineAppsServicesVersionsInstancesGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        appsId = appsId,
        callback = Core.Nothing,
        instancesId = instancesId,
        servicesId = servicesId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        versionsId = versionsId
      }

instance
  Core.GoogleRequest
    AppEngineAppsServicesVersionsInstancesGet
  where
  type Rs AppEngineAppsServicesVersionsInstancesGet = Instance
  type
    Scopes AppEngineAppsServicesVersionsInstancesGet =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient AppEngineAppsServicesVersionsInstancesGet {..} =
    go
      appsId
      servicesId
      versionsId
      instancesId
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
              Core.Proxy AppEngineAppsServicesVersionsInstancesGetResource
          )
          Core.mempty
