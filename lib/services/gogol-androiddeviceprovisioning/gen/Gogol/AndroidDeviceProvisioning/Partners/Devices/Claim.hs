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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.Claim
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Claims a device for a customer and adds it to zero-touch enrollment. If the device is already claimed by another customer, the call returns an error.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.claim@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.Claim
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesClaimResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersDevicesClaim (..),
    newAndroidDeviceProvisioningPartnersDevicesClaim,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.claim@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesClaim' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesClaimResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "partnerId" Core.Int64
    Core.:> "devices:claim"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ClaimDeviceRequest
    Core.:> Core.Post '[Core.JSON] ClaimDeviceResponse

-- | Claims a device for a customer and adds it to zero-touch enrollment. If the device is already claimed by another customer, the call returns an error.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesClaim' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesClaim = AndroidDeviceProvisioningPartnersDevicesClaim
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the reseller partner.
    partnerId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: ClaimDeviceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesClaim' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesClaim ::
  -- |  Required. The ID of the reseller partner. See 'partnerId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  ClaimDeviceRequest ->
  AndroidDeviceProvisioningPartnersDevicesClaim
newAndroidDeviceProvisioningPartnersDevicesClaim partnerId payload =
  AndroidDeviceProvisioningPartnersDevicesClaim
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
    AndroidDeviceProvisioningPartnersDevicesClaim
  where
  type
    Rs AndroidDeviceProvisioningPartnersDevicesClaim =
      ClaimDeviceResponse
  type Scopes AndroidDeviceProvisioningPartnersDevicesClaim = '[]
  requestClient AndroidDeviceProvisioningPartnersDevicesClaim {..} =
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
              Core.Proxy AndroidDeviceProvisioningPartnersDevicesClaimResource
          )
          Core.mempty
