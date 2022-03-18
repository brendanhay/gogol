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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.Approve
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves device to access user data.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.approve@.
module Gogol.CloudIdentity.Devices.DeviceUsers.Approve
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersApproveResource,

    -- ** Constructing a Request
    newCloudIdentityDevicesDeviceUsersApprove,
    CloudIdentityDevicesDeviceUsersApprove,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.approve@ method which the
-- 'CloudIdentityDevicesDeviceUsersApprove' request conforms to.
type CloudIdentityDevicesDeviceUsersApproveResource =
  "v1"
    Core.:> Core.CaptureMode "name" "approve" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Approves device to access user data.
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersApprove' smart constructor.
data CloudIdentityDevicesDeviceUsersApprove = CloudIdentityDevicesDeviceUsersApprove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersApprove' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersApprove ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest ->
  CloudIdentityDevicesDeviceUsersApprove
newCloudIdentityDevicesDeviceUsersApprove name payload =
  CloudIdentityDevicesDeviceUsersApprove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityDevicesDeviceUsersApprove
  where
  type
    Rs CloudIdentityDevicesDeviceUsersApprove =
      Operation
  type
    Scopes CloudIdentityDevicesDeviceUsersApprove =
      '["https://www.googleapis.com/auth/cloud-identity.devices"]
  requestClient
    CloudIdentityDevicesDeviceUsersApprove {..} =
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
                Core.Proxy
                  CloudIdentityDevicesDeviceUsersApproveResource
            )
            Core.mempty
