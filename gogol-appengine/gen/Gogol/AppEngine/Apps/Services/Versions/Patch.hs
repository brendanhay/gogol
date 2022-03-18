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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance/class (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance/class)automatic scaling in the standard environment: automatic/scaling.min/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automaticScaling.standard/scheduler/settings.max/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.min/instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/cpu/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/throughput/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving/status (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status) manual/scaling.instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)Flexible environment serving/status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status)automatic scaling in the flexible environment: automatic/scaling.min/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cool/down/period/sec (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cpu/utilization.target/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling)manual scaling in the flexible environment: manual_scaling.instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.patch@.
module Gogol.AppEngine.Apps.Services.Versions.Patch
  ( -- * Resource
    AppEngineAppsServicesVersionsPatchResource,

    -- ** Constructing a Request
    newAppEngineAppsServicesVersionsPatch,
    AppEngineAppsServicesVersionsPatch,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.services.versions.patch@ method which the
-- 'AppEngineAppsServicesVersionsPatch' request conforms to.
type AppEngineAppsServicesVersionsPatchResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> "versions"
    Core.:> Core.Capture "versionsId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Version
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance/class (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.instance/class)automatic scaling in the standard environment: automatic/scaling.min/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/idle/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automaticScaling.standard/scheduler/settings.max/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.min/instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/cpu/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard/scheduler/settings.target/throughput/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving/status (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status) manual/scaling.instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)Flexible environment serving/status
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.serving/status)automatic scaling in the flexible environment: automatic/scaling.min/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.max/total/instances (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cool/down/period/sec (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling) automatic/scaling.cpu/utilization.target/utilization (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#Version.FIELDS.automatic/scaling)manual scaling in the flexible environment: manual_scaling.instances
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#manualscaling)
--
-- /See:/ 'newAppEngineAppsServicesVersionsPatch' smart constructor.
data AppEngineAppsServicesVersionsPatch = AppEngineAppsServicesVersionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default\/versions\/1.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Version,
    -- | Part of @name@. See documentation of @appsId@.
    servicesId :: Core.Text,
    -- | Standard field mask for the set of fields to be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    versionsId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsPatch' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsPatch ::
  -- |  Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default\/versions\/1. See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Version ->
  -- |  Part of @name@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'versionsId'.
  Core.Text ->
  AppEngineAppsServicesVersionsPatch
newAppEngineAppsServicesVersionsPatch appsId payload servicesId versionsId =
  AppEngineAppsServicesVersionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      payload = payload,
      servicesId = servicesId,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionsId = versionsId
    }

instance
  Core.GoogleRequest
    AppEngineAppsServicesVersionsPatch
  where
  type
    Rs AppEngineAppsServicesVersionsPatch =
      Operation
  type
    Scopes AppEngineAppsServicesVersionsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient AppEngineAppsServicesVersionsPatch {..} =
    go
      appsId
      servicesId
      versionsId
      xgafv
      accessToken
      callback
      updateMask
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
                AppEngineAppsServicesVersionsPatchResource
          )
          Core.mempty
