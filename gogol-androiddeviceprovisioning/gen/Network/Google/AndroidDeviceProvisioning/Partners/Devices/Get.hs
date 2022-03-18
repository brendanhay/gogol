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
-- Module      : Network.Google.AndroidDeviceProvisioning.Partners.Devices.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.get@.
module Network.Google.AndroidDeviceProvisioning.Partners.Devices.Get
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesGetResource,

    -- ** Constructing a Request
    newAndroidDeviceProvisioningPartnersDevicesGet,
    AndroidDeviceProvisioningPartnersDevicesGet,
  )
where

import Network.Google.AndroidDeviceProvisioning.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.get@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesGet' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Device

-- | Gets a device.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesGet' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesGet = AndroidDeviceProvisioningPartnersDevicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The device API resource name in the format @partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesGet' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesGet ::
  -- |  Required. The device API resource name in the format @partners\/[PARTNER_ID]\/devices\/[DEVICE_ID]@. See 'name'.
  Core.Text ->
  AndroidDeviceProvisioningPartnersDevicesGet
newAndroidDeviceProvisioningPartnersDevicesGet name =
  AndroidDeviceProvisioningPartnersDevicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningPartnersDevicesGet
  where
  type
    Rs AndroidDeviceProvisioningPartnersDevicesGet =
      Device
  type
    Scopes
      AndroidDeviceProvisioningPartnersDevicesGet =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersDevicesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidDeviceProvisioningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidDeviceProvisioningPartnersDevicesGetResource
            )
            Core.mempty
