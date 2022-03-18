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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds devices by hardware identifiers, such as IMEI.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.findByIdentifier@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesFindByIdentifierResource,

    -- ** Constructing a Request
    newAndroidDeviceProvisioningPartnersDevicesFindByIdentifier,
    AndroidDeviceProvisioningPartnersDevicesFindByIdentifier,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.findByIdentifier@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesFindByIdentifier' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesFindByIdentifierResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "partnerId" Core.Int64
    Core.:> "devices:findByIdentifier"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              FindDevicesByDeviceIdentifierRequest
    Core.:> Core.Post
              '[Core.JSON]
              FindDevicesByDeviceIdentifierResponse

-- | Finds devices by hardware identifiers, such as IMEI.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesFindByIdentifier' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesFindByIdentifier = AndroidDeviceProvisioningPartnersDevicesFindByIdentifier
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the reseller partner.
    partnerId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: FindDevicesByDeviceIdentifierRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesFindByIdentifier' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesFindByIdentifier ::
  -- |  Required. The ID of the reseller partner. See 'partnerId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  FindDevicesByDeviceIdentifierRequest ->
  AndroidDeviceProvisioningPartnersDevicesFindByIdentifier
newAndroidDeviceProvisioningPartnersDevicesFindByIdentifier partnerId payload =
  AndroidDeviceProvisioningPartnersDevicesFindByIdentifier
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      partnerId = partnerId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningPartnersDevicesFindByIdentifier
  where
  type
    Rs
      AndroidDeviceProvisioningPartnersDevicesFindByIdentifier =
      FindDevicesByDeviceIdentifierResponse
  type
    Scopes
      AndroidDeviceProvisioningPartnersDevicesFindByIdentifier =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersDevicesFindByIdentifier {..} =
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
                  AndroidDeviceProvisioningPartnersDevicesFindByIdentifierResource
            )
            Core.mempty
