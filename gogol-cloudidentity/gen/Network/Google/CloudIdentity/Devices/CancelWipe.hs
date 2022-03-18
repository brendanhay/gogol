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
-- Module      : Network.Google.CloudIdentity.Devices.CancelWipe
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an unfinished device wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped. This operation is possible when the device is in a \"pending wipe\" state. The device enters the \"pending wipe\" state when a wipe device command is issued, but has not yet been sent to the device. The cancel wipe will fail if the wipe command has already been issued to the device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.cancelWipe@.
module Network.Google.CloudIdentity.Devices.CancelWipe
  ( -- * Resource
    CloudIdentityDevicesCancelWipeResource,

    -- ** Constructing a Request
    newCloudIdentityDevicesCancelWipe,
    CloudIdentityDevicesCancelWipe,
  )
where

import Network.Google.CloudIdentity.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudidentity.devices.cancelWipe@ method which the
-- 'CloudIdentityDevicesCancelWipe' request conforms to.
type CloudIdentityDevicesCancelWipeResource =
  "v1"
    Core.:> Core.CaptureMode "name" "cancelWipe" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Cancels an unfinished device wipe. This operation can be used to cancel device wipe in the gap between the wipe operation returning success and the device being wiped. This operation is possible when the device is in a \"pending wipe\" state. The device enters the \"pending wipe\" state when a wipe device command is issued, but has not yet been sent to the device. The cancel wipe will fail if the wipe command has already been issued to the device.
--
-- /See:/ 'newCloudIdentityDevicesCancelWipe' smart constructor.
data CloudIdentityDevicesCancelWipe = CloudIdentityDevicesCancelWipe
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}@, where device is the unique ID assigned to the Device.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesCancelWipe' with the minimum fields required to make a request.
newCloudIdentityDevicesCancelWipe ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}@, where device is the unique ID assigned to the Device. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest ->
  CloudIdentityDevicesCancelWipe
newCloudIdentityDevicesCancelWipe name payload =
  CloudIdentityDevicesCancelWipe
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
    CloudIdentityDevicesCancelWipe
  where
  type Rs CloudIdentityDevicesCancelWipe = Operation
  type
    Scopes CloudIdentityDevicesCancelWipe =
      '["https://www.googleapis.com/auth/cloud-identity.devices"]
  requestClient CloudIdentityDevicesCancelWipe {..} =
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
              Core.Proxy CloudIdentityDevicesCancelWipeResource
          )
          Core.mempty
