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
-- Module      : Network.Google.CloudIdentity.Devices.Wipe
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Wipes all data on the specified device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.wipe@.
module Network.Google.CloudIdentity.Devices.Wipe
  ( -- * Resource
    CloudIdentityDevicesWipeResource,

    -- ** Constructing a Request
    newCloudIdentityDevicesWipe,
    CloudIdentityDevicesWipe,
  )
where

import Network.Google.CloudIdentity.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudidentity.devices.wipe@ method which the
-- 'CloudIdentityDevicesWipe' request conforms to.
type CloudIdentityDevicesWipeResource =
  "v1"
    Core.:> Core.CaptureMode "name" "wipe" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Wipes all data on the specified device.
--
-- /See:/ 'newCloudIdentityDevicesWipe' smart constructor.
data CloudIdentityDevicesWipe = CloudIdentityDevicesWipe
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleAppsCloudidentityDevicesV1WipeDeviceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesWipe' with the minimum fields required to make a request.
newCloudIdentityDevicesWipe ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleAppsCloudidentityDevicesV1WipeDeviceRequest ->
  CloudIdentityDevicesWipe
newCloudIdentityDevicesWipe name payload =
  CloudIdentityDevicesWipe
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityDevicesWipe where
  type Rs CloudIdentityDevicesWipe = Operation
  type
    Scopes CloudIdentityDevicesWipe =
      '["https://www.googleapis.com/auth/cloud-identity.devices"]
  requestClient CloudIdentityDevicesWipe {..} =
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
              Core.Proxy CloudIdentityDevicesWipeResource
          )
          Core.mempty
