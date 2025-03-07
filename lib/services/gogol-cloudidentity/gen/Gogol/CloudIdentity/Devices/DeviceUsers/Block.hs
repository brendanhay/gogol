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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.Block
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Blocks device from accessing user data
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.block@.
module Gogol.CloudIdentity.Devices.DeviceUsers.Block
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersBlockResource,

    -- ** Constructing a Request
    CloudIdentityDevicesDeviceUsersBlock (..),
    newCloudIdentityDevicesDeviceUsersBlock,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.block@ method which the
-- 'CloudIdentityDevicesDeviceUsersBlock' request conforms to.
type CloudIdentityDevicesDeviceUsersBlockResource =
  "v1"
    Core.:> Core.CaptureMode "name" "block" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Blocks device from accessing user data
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersBlock' smart constructor.
data CloudIdentityDevicesDeviceUsersBlock = CloudIdentityDevicesDeviceUsersBlock
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersBlock' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersBlock ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest ->
  CloudIdentityDevicesDeviceUsersBlock
newCloudIdentityDevicesDeviceUsersBlock name payload =
  CloudIdentityDevicesDeviceUsersBlock
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityDevicesDeviceUsersBlock where
  type Rs CloudIdentityDevicesDeviceUsersBlock = Operation
  type
    Scopes CloudIdentityDevicesDeviceUsersBlock =
      '[CloudIdentity'Devices]
  requestClient CloudIdentityDevicesDeviceUsersBlock {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityDevicesDeviceUsersBlockResource
          )
          Core.mempty
