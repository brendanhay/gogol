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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Instances.Debug
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virtual machine where the instance lives. While in \"debug mode\", the instance continues to serve live traffic. You should delete the instance when you are done debugging and then allow the system to take over and determine if another instance should be started.Only applicable for instances in App Engine flexible environment.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.instances.debug@.
module Gogol.AppEngine.Apps.Services.Versions.Instances.Debug
  ( -- * Resource
    AppEngineAppsServicesVersionsInstancesDebugResource,

    -- ** Constructing a Request
    newAppEngineAppsServicesVersionsInstancesDebug,
    AppEngineAppsServicesVersionsInstancesDebug,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.services.versions.instances.debug@ method which the
-- 'AppEngineAppsServicesVersionsInstancesDebug' request conforms to.
type AppEngineAppsServicesVersionsInstancesDebugResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> "versions"
    Core.:> Core.Capture "versionsId" Core.Text
    Core.:> "instances"
    Core.:> Core.CaptureMode "instancesId" "debug" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              DebugInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virtual machine where the instance lives. While in \"debug mode\", the instance continues to serve live traffic. You should delete the instance when you are done debugging and then allow the system to take over and determine if another instance should be started.Only applicable for instances in App Engine flexible environment.
--
-- /See:/ 'newAppEngineAppsServicesVersionsInstancesDebug' smart constructor.
data AppEngineAppsServicesVersionsInstancesDebug = AppEngineAppsServicesVersionsInstancesDebug
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
    -- | Multipart request metadata.
    payload :: DebugInstanceRequest,
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

-- | Creates a value of 'AppEngineAppsServicesVersionsInstancesDebug' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsInstancesDebug ::
  -- |  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'instancesId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DebugInstanceRequest ->
  -- |  Part of @name@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'versionsId'.
  Core.Text ->
  AppEngineAppsServicesVersionsInstancesDebug
newAppEngineAppsServicesVersionsInstancesDebug appsId instancesId payload servicesId versionsId =
  AppEngineAppsServicesVersionsInstancesDebug
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      instancesId = instancesId,
      payload = payload,
      servicesId = servicesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionsId = versionsId
    }

instance
  Core.GoogleRequest
    AppEngineAppsServicesVersionsInstancesDebug
  where
  type
    Rs AppEngineAppsServicesVersionsInstancesDebug =
      Operation
  type
    Scopes
      AppEngineAppsServicesVersionsInstancesDebug =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AppEngineAppsServicesVersionsInstancesDebug {..} =
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
        payload
        appEngineService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AppEngineAppsServicesVersionsInstancesDebugResource
            )
            Core.mempty
