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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Version resource. By default, only a BASIC/VIEW will be returned. Specify the FULL/VIEW parameter to get the full resource.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.get@.
module Gogol.AppEngine.Apps.Services.Versions.Get
  ( -- * Resource
    AppEngineAppsServicesVersionsGetResource,

    -- ** Constructing a Request
    newAppEngineAppsServicesVersionsGet,
    AppEngineAppsServicesVersionsGet,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.services.versions.get@ method which the
-- 'AppEngineAppsServicesVersionsGet' request conforms to.
type AppEngineAppsServicesVersionsGetResource =
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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" AppsServicesVersionsGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Version

-- | Gets the specified Version resource. By default, only a BASIC/VIEW will be returned. Specify the FULL/VIEW parameter to get the full resource.
--
-- /See:/ 'newAppEngineAppsServicesVersionsGet' smart constructor.
data AppEngineAppsServicesVersionsGet = AppEngineAppsServicesVersionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    servicesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    versionsId :: Core.Text,
    -- | Controls the set of fields returned in the Get response.
    view :: (Core.Maybe AppsServicesVersionsGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsGet' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsGet ::
  -- |  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default\/versions\/v1. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'versionsId'.
  Core.Text ->
  AppEngineAppsServicesVersionsGet
newAppEngineAppsServicesVersionsGet appsId servicesId versionsId =
  AppEngineAppsServicesVersionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      servicesId = servicesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionsId = versionsId,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    AppEngineAppsServicesVersionsGet
  where
  type Rs AppEngineAppsServicesVersionsGet = Version
  type
    Scopes AppEngineAppsServicesVersionsGet =
      '[ "https://www.googleapis.com/auth/appengine.admin",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient AppEngineAppsServicesVersionsGet {..} =
    go
      appsId
      servicesId
      versionsId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      appEngineService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppEngineAppsServicesVersionsGetResource
          )
          Core.mempty
