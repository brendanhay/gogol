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
-- Module      : Gogol.AppEngine.Apps.Services.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the specified service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.patch@.
module Gogol.AppEngine.Apps.Services.Patch
  ( -- * Resource
    AppEngineAppsServicesPatchResource,

    -- ** Constructing a Request
    newAppEngineAppsServicesPatch,
    AppEngineAppsServicesPatch,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.services.patch@ method which the
-- 'AppEngineAppsServicesPatch' request conforms to.
type AppEngineAppsServicesPatchResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "migrateTraffic" Core.Bool
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Service
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the configuration of the specified service.
--
-- /See:/ 'newAppEngineAppsServicesPatch' smart constructor.
data AppEngineAppsServicesPatch = AppEngineAppsServicesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Set to true to gradually shift traffic to one or more versions that you specify. By default, traffic is shifted immediately. For gradual traffic migration, the target versions must be located within instances that are configured for both warmup requests (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#InboundServiceType) and automatic scaling (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#AutomaticScaling). You must specify the shardBy (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services#ShardBy) field in the Service resource. Gradual traffic migration is not supported in the App Engine flexible environment. For examples, see Migrating and Splitting Traffic (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/migrating-splitting-traffic).
    migrateTraffic :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: Service,
    -- | Part of @name@. See documentation of @appsId@.
    servicesId :: Core.Text,
    -- | Required. Standard field mask for the set of fields to be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesPatch' with the minimum fields required to make a request.
newAppEngineAppsServicesPatch ::
  -- |  Part of @name@. Name of the resource to update. Example: apps\/myapp\/services\/default. See 'appsId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Service ->
  -- |  Part of @name@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  AppEngineAppsServicesPatch
newAppEngineAppsServicesPatch appsId payload servicesId =
  AppEngineAppsServicesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      migrateTraffic = Core.Nothing,
      payload = payload,
      servicesId = servicesId,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsServicesPatch
  where
  type Rs AppEngineAppsServicesPatch = Operation
  type
    Scopes AppEngineAppsServicesPatch =
      '[CloudPlatform'FullControl]
  requestClient AppEngineAppsServicesPatch {..} =
    go
      appsId
      servicesId
      xgafv
      accessToken
      callback
      migrateTraffic
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
              Core.Proxy AppEngineAppsServicesPatchResource
          )
          Core.mempty
