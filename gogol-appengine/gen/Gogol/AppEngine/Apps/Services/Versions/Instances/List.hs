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
-- Module      : Gogol.AppEngine.Apps.Services.Versions.Instances.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the instances of a version.Tip: To aggregate details about instances over time, see the Stackdriver Monitoring API (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list).
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.instances.list@.
module Gogol.AppEngine.Apps.Services.Versions.Instances.List
  ( -- * Resource
    AppEngineAppsServicesVersionsInstancesListResource,

    -- ** Constructing a Request
    newAppEngineAppsServicesVersionsInstancesList,
    AppEngineAppsServicesVersionsInstancesList,
  )
where

import Gogol.AppEngine.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appengine.apps.services.versions.instances.list@ method which the
-- 'AppEngineAppsServicesVersionsInstancesList' request conforms to.
type AppEngineAppsServicesVersionsInstancesListResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "services"
    Core.:> Core.Capture "servicesId" Core.Text
    Core.:> "versions"
    Core.:> Core.Capture "versionsId" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListInstancesResponse

-- | Lists the instances of a version.Tip: To aggregate details about instances over time, see the Stackdriver Monitoring API (https:\/\/cloud.google.com\/monitoring\/api\/ref_v3\/rest\/v3\/projects.timeSeries\/list).
--
-- /See:/ 'newAppEngineAppsServicesVersionsInstancesList' smart constructor.
data AppEngineAppsServicesVersionsInstancesList = AppEngineAppsServicesVersionsInstancesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @parent@. Name of the parent Version resource. Example: apps\/myapp\/services\/default\/versions\/v1.
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
    -- | Part of @parent@. See documentation of @appsId@.
    versionsId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsServicesVersionsInstancesList' with the minimum fields required to make a request.
newAppEngineAppsServicesVersionsInstancesList ::
  -- |  Part of @parent@. Name of the parent Version resource. Example: apps\/myapp\/services\/default\/versions\/v1. See 'appsId'.
  Core.Text ->
  -- |  Part of @parent@. See documentation of @appsId@. See 'servicesId'.
  Core.Text ->
  -- |  Part of @parent@. See documentation of @appsId@. See 'versionsId'.
  Core.Text ->
  AppEngineAppsServicesVersionsInstancesList
newAppEngineAppsServicesVersionsInstancesList appsId servicesId versionsId =
  AppEngineAppsServicesVersionsInstancesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      servicesId = servicesId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      versionsId = versionsId
    }

instance
  Core.GoogleRequest
    AppEngineAppsServicesVersionsInstancesList
  where
  type
    Rs AppEngineAppsServicesVersionsInstancesList =
      ListInstancesResponse
  type
    Scopes
      AppEngineAppsServicesVersionsInstancesList =
      '[ "https://www.googleapis.com/auth/appengine.admin",
         "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    AppEngineAppsServicesVersionsInstancesList {..} =
      go
        appsId
        servicesId
        versionsId
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
                  AppEngineAppsServicesVersionsInstancesListResource
            )
            Core.mempty
