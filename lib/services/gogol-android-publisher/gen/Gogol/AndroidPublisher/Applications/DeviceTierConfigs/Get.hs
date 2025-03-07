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
-- Module      : Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a particular device tier config.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.applications.deviceTierConfigs.get@.
module Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Get
  ( -- * Resource
    AndroidPublisherApplicationsDeviceTierConfigsGetResource,

    -- ** Constructing a Request
    AndroidPublisherApplicationsDeviceTierConfigsGet (..),
    newAndroidPublisherApplicationsDeviceTierConfigsGet,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.applications.deviceTierConfigs.get@ method which the
-- 'AndroidPublisherApplicationsDeviceTierConfigsGet' request conforms to.
type AndroidPublisherApplicationsDeviceTierConfigsGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "deviceTierConfigs"
    Core.:> Core.Capture "deviceTierConfigId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DeviceTierConfig

-- | Returns a particular device tier config.
--
-- /See:/ 'newAndroidPublisherApplicationsDeviceTierConfigsGet' smart constructor.
data AndroidPublisherApplicationsDeviceTierConfigsGet = AndroidPublisherApplicationsDeviceTierConfigsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Id of an existing device tier config.
    deviceTierConfigId :: Core.Int64,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApplicationsDeviceTierConfigsGet' with the minimum fields required to make a request.
newAndroidPublisherApplicationsDeviceTierConfigsGet ::
  -- |  Required. Id of an existing device tier config. See 'deviceTierConfigId'.
  Core.Int64 ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherApplicationsDeviceTierConfigsGet
newAndroidPublisherApplicationsDeviceTierConfigsGet
  deviceTierConfigId
  packageName =
    AndroidPublisherApplicationsDeviceTierConfigsGet
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        deviceTierConfigId = deviceTierConfigId,
        packageName = packageName,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherApplicationsDeviceTierConfigsGet
  where
  type
    Rs AndroidPublisherApplicationsDeviceTierConfigsGet =
      DeviceTierConfig
  type
    Scopes AndroidPublisherApplicationsDeviceTierConfigsGet =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherApplicationsDeviceTierConfigsGet {..} =
    go
      packageName
      deviceTierConfigId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AndroidPublisherApplicationsDeviceTierConfigsGetResource
          )
          Core.mempty
