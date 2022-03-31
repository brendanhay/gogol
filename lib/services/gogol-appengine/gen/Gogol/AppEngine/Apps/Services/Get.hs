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
-- Module      : Gogol.AppEngine.Apps.Services.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current configuration of the specified service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.get@.
module Gogol.AppEngine.Apps.Services.Get
  ( -- * Resource
    AppEngineAppsServicesGetResource,

    -- ** Constructing a Request
    newAppEngineAppsServicesGet,
    AppEngineAppsServicesGet,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.services.get@ method which the
-- 'AppEngineAppsServicesGet' request conforms to.
type AppEngineAppsServicesGetResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Service

-- | Gets the current configuration of the specified service.
--
-- /See:/ 'newAppEngineAppsServicesGet' smart constructor.
data AppEngineAppsServicesGet = AppEngineAppsServicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Part of @name@. See documentation of @appsId@.
    servicesId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesGet' with the minimum fields required to make a request.
newAppEngineAppsServicesGet ::
  -- |  Part of @name@. Name of the resource requested. Example: apps\/myapp\/services\/default. See 'appsId'.
  Core.Text ->
  -- |  Part of @name@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  AppEngineAppsServicesGet
newAppEngineAppsServicesGet appsId servicesId =
  AppEngineAppsServicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      servicesId = servicesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsServicesGet where
  type Rs AppEngineAppsServicesGet = Service
  type
    Scopes AppEngineAppsServicesGet =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient AppEngineAppsServicesGet {..} =
    go
      appsId
      servicesId
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
              Core.Proxy AppEngineAppsServicesGetResource
          )
          Core.mempty
