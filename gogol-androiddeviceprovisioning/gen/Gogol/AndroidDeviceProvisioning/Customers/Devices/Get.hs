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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Devices.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.get@.
module Gogol.AndroidDeviceProvisioning.Customers.Devices.Get
  ( -- * Resource
    AndroidDeviceProvisioningCustomersDevicesGetResource,

    -- ** Constructing a Request
    newAndroidDeviceProvisioningCustomersDevicesGet,
    AndroidDeviceProvisioningCustomersDevicesGet,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.customers.devices.get@ method which the
-- 'AndroidDeviceProvisioningCustomersDevicesGet' request conforms to.
type AndroidDeviceProvisioningCustomersDevicesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Device

-- | Gets the details of a device.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersDevicesGet' smart constructor.
data AndroidDeviceProvisioningCustomersDevicesGet = AndroidDeviceProvisioningCustomersDevicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The device to get. An API resource name in the format @customers\/[CUSTOMER_ID]\/devices\/[DEVICE_ID]@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersDevicesGet' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersDevicesGet ::
  -- |  Required. The device to get. An API resource name in the format @customers\/[CUSTOMER_ID]\/devices\/[DEVICE_ID]@. See 'name'.
  Core.Text ->
  AndroidDeviceProvisioningCustomersDevicesGet
newAndroidDeviceProvisioningCustomersDevicesGet name =
  AndroidDeviceProvisioningCustomersDevicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningCustomersDevicesGet
  where
  type
    Rs AndroidDeviceProvisioningCustomersDevicesGet =
      Device
  type
    Scopes
      AndroidDeviceProvisioningCustomersDevicesGet =
      '[]
  requestClient
    AndroidDeviceProvisioningCustomersDevicesGet {..} =
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
                  AndroidDeviceProvisioningCustomersDevicesGetResource
            )
            Core.mempty
