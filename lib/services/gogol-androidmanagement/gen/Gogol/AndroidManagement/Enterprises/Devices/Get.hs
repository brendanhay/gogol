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
-- Module      : Gogol.AndroidManagement.Enterprises.Devices.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device. Deleted devices will respond with a 404 error.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.get@.
module Gogol.AndroidManagement.Enterprises.Devices.Get
  ( -- * Resource
    AndroidManagementEnterprisesDevicesGetResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesDevicesGet (..),
    newAndroidManagementEnterprisesDevicesGet,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.devices.get@ method which the
-- 'AndroidManagementEnterprisesDevicesGet' request conforms to.
type AndroidManagementEnterprisesDevicesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Device

-- | Gets a device. Deleted devices will respond with a 404 error.
--
-- /See:/ 'newAndroidManagementEnterprisesDevicesGet' smart constructor.
data AndroidManagementEnterprisesDevicesGet = AndroidManagementEnterprisesDevicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDevicesGet' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDevicesGet ::
  -- |  The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesDevicesGet
newAndroidManagementEnterprisesDevicesGet name =
  AndroidManagementEnterprisesDevicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidManagementEnterprisesDevicesGet where
  type Rs AndroidManagementEnterprisesDevicesGet = Device
  type
    Scopes AndroidManagementEnterprisesDevicesGet =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesDevicesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesDevicesGetResource
          )
          Core.mempty
