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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a configuration from device.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.removeConfiguration@.
module Gogol.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration
  ( -- * Resource
    AndroidDeviceProvisioningCustomersDevicesRemoveConfigurationResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration (..),
    newAndroidDeviceProvisioningCustomersDevicesRemoveConfiguration,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.customers.devices.removeConfiguration@ method which the
-- 'AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration' request conforms to.
type AndroidDeviceProvisioningCustomersDevicesRemoveConfigurationResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "devices:removeConfiguration"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomerRemoveConfigurationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Removes a configuration from device.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersDevicesRemoveConfiguration' smart constructor.
data AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration = AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The customer managing the device in the format @customers\/[CUSTOMER_ID]@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomerRemoveConfigurationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersDevicesRemoveConfiguration ::
  -- |  Required. The customer managing the device in the format @customers\/[CUSTOMER_ID]@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomerRemoveConfigurationRequest ->
  AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration
newAndroidDeviceProvisioningCustomersDevicesRemoveConfiguration
  parent
  payload =
    AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration
  where
  type
    Rs
      AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration =
      Empty
  type
    Scopes
      AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration =
      '[]
  requestClient
    AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration {..} =
      go
        parent
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
                  AndroidDeviceProvisioningCustomersDevicesRemoveConfigurationResource
            )
            Core.mempty
