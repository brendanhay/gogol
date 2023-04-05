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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.Metadata
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates reseller metadata associated with the device. Android devices only.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.metadata@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.Metadata
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesMetadataResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersDevicesMetadata (..),
    newAndroidDeviceProvisioningPartnersDevicesMetadata,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.metadata@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesMetadata' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesMetadataResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "metadataOwnerId" Core.Int64
    Core.:> "devices"
    Core.:> Core.Capture "deviceId" Core.Int64
    Core.:> "metadata"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UpdateDeviceMetadataRequest
    Core.:> Core.Post '[Core.JSON] DeviceMetadata

-- | Updates reseller metadata associated with the device. Android devices only.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesMetadata' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesMetadata = AndroidDeviceProvisioningPartnersDevicesMetadata
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the device.
    deviceId :: Core.Int64,
    -- | Required. The owner of the newly set metadata. Set this to the partner ID.
    metadataOwnerId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: UpdateDeviceMetadataRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesMetadata' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesMetadata ::
  -- |  Required. The ID of the device. See 'deviceId'.
  Core.Int64 ->
  -- |  Required. The owner of the newly set metadata. Set this to the partner ID. See 'metadataOwnerId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateDeviceMetadataRequest ->
  AndroidDeviceProvisioningPartnersDevicesMetadata
newAndroidDeviceProvisioningPartnersDevicesMetadata deviceId metadataOwnerId payload =
  AndroidDeviceProvisioningPartnersDevicesMetadata
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceId = deviceId,
      metadataOwnerId = metadataOwnerId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningPartnersDevicesMetadata
  where
  type
    Rs
      AndroidDeviceProvisioningPartnersDevicesMetadata =
      DeviceMetadata
  type
    Scopes
      AndroidDeviceProvisioningPartnersDevicesMetadata =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersDevicesMetadata {..} =
      go
        metadataOwnerId
        deviceId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidDeviceProvisioningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidDeviceProvisioningPartnersDevicesMetadataResource
            )
            Core.mempty
