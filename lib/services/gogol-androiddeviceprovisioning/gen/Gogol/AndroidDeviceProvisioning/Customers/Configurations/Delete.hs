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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Configurations.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an unused configuration. The API call fails if the customer has devices with the configuration applied.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.delete@.
module Gogol.AndroidDeviceProvisioning.Customers.Configurations.Delete
  ( -- * Resource
    AndroidDeviceProvisioningCustomersConfigurationsDeleteResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningCustomersConfigurationsDelete (..),
    newAndroidDeviceProvisioningCustomersConfigurationsDelete,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.delete@ method which the
-- 'AndroidDeviceProvisioningCustomersConfigurationsDelete' request conforms to.
type AndroidDeviceProvisioningCustomersConfigurationsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an unused configuration. The API call fails if the customer has devices with the configuration applied.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersConfigurationsDelete' smart constructor.
data AndroidDeviceProvisioningCustomersConfigurationsDelete = AndroidDeviceProvisioningCustomersConfigurationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The configuration to delete. An API resource name in the format @customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]@. If the configuration is applied to any devices, the API call fails.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersConfigurationsDelete' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersConfigurationsDelete ::
  -- |  Required. The configuration to delete. An API resource name in the format @customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]@. If the configuration is applied to any devices, the API call fails. See 'name'.
  Core.Text ->
  AndroidDeviceProvisioningCustomersConfigurationsDelete
newAndroidDeviceProvisioningCustomersConfigurationsDelete name =
  AndroidDeviceProvisioningCustomersConfigurationsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningCustomersConfigurationsDelete
  where
  type
    Rs AndroidDeviceProvisioningCustomersConfigurationsDelete =
      Empty
  type
    Scopes AndroidDeviceProvisioningCustomersConfigurationsDelete =
      '[]
  requestClient
    AndroidDeviceProvisioningCustomersConfigurationsDelete {..} =
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
                  AndroidDeviceProvisioningCustomersConfigurationsDeleteResource
            )
            Core.mempty
