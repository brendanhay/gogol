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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unclaims a batch of devices for a customer asynchronously. Removes the devices from zero-touch enrollment. To learn more, read </zero-touch/guides/how-it-works#operations Long‑running batch operations>.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.unclaimAsync@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsyncResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsync (..),
    newAndroidDeviceProvisioningPartnersDevicesUnclaimAsync,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.unclaimAsync@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesUnclaimAsync' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesUnclaimAsyncResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "partnerId" Core.Int64
    Core.:> "devices:unclaimAsync"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UnclaimDevicesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Unclaims a batch of devices for a customer asynchronously. Removes the devices from zero-touch enrollment. To learn more, read </zero-touch/guides/how-it-works#operations Long‑running batch operations>.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesUnclaimAsync' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesUnclaimAsync = AndroidDeviceProvisioningPartnersDevicesUnclaimAsync
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The reseller partner ID.
    partnerId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: UnclaimDevicesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesUnclaimAsync' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesUnclaimAsync ::
  -- |  Required. The reseller partner ID. See 'partnerId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  UnclaimDevicesRequest ->
  AndroidDeviceProvisioningPartnersDevicesUnclaimAsync
newAndroidDeviceProvisioningPartnersDevicesUnclaimAsync
  partnerId
  payload =
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsync
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        partnerId = partnerId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsync
  where
  type
    Rs AndroidDeviceProvisioningPartnersDevicesUnclaimAsync =
      Operation
  type
    Scopes AndroidDeviceProvisioningPartnersDevicesUnclaimAsync =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsync {..} =
      go
        partnerId
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
                  AndroidDeviceProvisioningPartnersDevicesUnclaimAsyncResource
            )
            Core.mempty
