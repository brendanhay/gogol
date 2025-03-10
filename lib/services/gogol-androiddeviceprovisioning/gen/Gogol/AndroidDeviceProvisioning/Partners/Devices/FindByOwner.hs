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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.FindByOwner
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds devices claimed for customers. The results only contain devices registered to the reseller that\'s identified by the @partnerId@ argument. The customer\'s devices purchased from other resellers don\'t appear in the results.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.findByOwner@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.FindByOwner
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesFindByOwnerResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersDevicesFindByOwner (..),
    newAndroidDeviceProvisioningPartnersDevicesFindByOwner,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.findByOwner@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesFindByOwner' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesFindByOwnerResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "partnerId" Core.Int64
    Core.:> "devices:findByOwner"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FindDevicesByOwnerRequest
    Core.:> Core.Post '[Core.JSON] FindDevicesByOwnerResponse

-- | Finds devices claimed for customers. The results only contain devices registered to the reseller that\'s identified by the @partnerId@ argument. The customer\'s devices purchased from other resellers don\'t appear in the results.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesFindByOwner' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesFindByOwner = AndroidDeviceProvisioningPartnersDevicesFindByOwner
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the reseller partner.
    partnerId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: FindDevicesByOwnerRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesFindByOwner' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesFindByOwner ::
  -- |  Required. The ID of the reseller partner. See 'partnerId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  FindDevicesByOwnerRequest ->
  AndroidDeviceProvisioningPartnersDevicesFindByOwner
newAndroidDeviceProvisioningPartnersDevicesFindByOwner
  partnerId
  payload =
    AndroidDeviceProvisioningPartnersDevicesFindByOwner
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
    AndroidDeviceProvisioningPartnersDevicesFindByOwner
  where
  type
    Rs AndroidDeviceProvisioningPartnersDevicesFindByOwner =
      FindDevicesByOwnerResponse
  type
    Scopes AndroidDeviceProvisioningPartnersDevicesFindByOwner =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersDevicesFindByOwner {..} =
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
                  AndroidDeviceProvisioningPartnersDevicesFindByOwnerResource
            )
            Core.mempty
