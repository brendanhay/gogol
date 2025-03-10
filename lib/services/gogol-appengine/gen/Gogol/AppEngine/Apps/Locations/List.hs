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
-- Module      : Gogol.AppEngine.Apps.Locations.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.locations.list@.
module Gogol.AppEngine.Apps.Locations.List
  ( -- * Resource
    AppEngineAppsLocationsListResource,

    -- ** Constructing a Request
    AppEngineAppsLocationsList (..),
    newAppEngineAppsLocationsList,
  )
where

import Gogol.AppEngine.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appengine.apps.locations.list@ method which the
-- 'AppEngineAppsLocationsList' request conforms to.
type AppEngineAppsLocationsListResource =
  "v1"
    Core.:> "apps"
    Core.:> Core.Capture "appsId" Core.Text
    Core.:> "locations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'newAppEngineAppsLocationsList' smart constructor.
data AppEngineAppsLocationsList = AppEngineAppsLocationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Part of @name@. The resource that owns the locations collection, if applicable.
    appsId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https:\/\/google.aip.dev\/160).
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return. If not set, the service selects a default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token received from the next/page/token field in the response. Send that page token to receive the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEngineAppsLocationsList' with the minimum fields required to make a request.
newAppEngineAppsLocationsList ::
  -- |  Part of @name@. The resource that owns the locations collection, if applicable. See 'appsId'.
  Core.Text ->
  AppEngineAppsLocationsList
newAppEngineAppsLocationsList appsId =
  AppEngineAppsLocationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appsId = appsId,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AppEngineAppsLocationsList where
  type Rs AppEngineAppsLocationsList = ListLocationsResponse
  type
    Scopes AppEngineAppsLocationsList =
      '[ Appengine'Admin,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient AppEngineAppsLocationsList {..} =
    go
      appsId
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appEngineService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AppEngineAppsLocationsListResource)
          Core.mempty
