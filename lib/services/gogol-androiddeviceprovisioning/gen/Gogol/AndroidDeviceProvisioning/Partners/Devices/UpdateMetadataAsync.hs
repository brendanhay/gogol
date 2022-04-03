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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the reseller metadata attached to a batch of devices. This method updates devices asynchronously and returns an @Operation@ that can be used to track progress. Read </zero-touch/guides/how-it-works#operations Long‑running batch operations>.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.updateMetadataAsync@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync
  ( -- * Resource
    AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsyncResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync (..),
    newAndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.partners.devices.updateMetadataAsync@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsyncResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "partnerId" Core.Int64
    Core.:> "devices:updateMetadataAsync"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UpdateDeviceMetadataInBatchRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Updates the reseller metadata attached to a batch of devices. This method updates devices asynchronously and returns an @Operation@ that can be used to track progress. Read </zero-touch/guides/how-it-works#operations Long‑running batch operations>.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync = AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The reseller partner ID.
    partnerId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: UpdateDeviceMetadataInBatchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync ::
  -- |  Required. The reseller partner ID. See 'partnerId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateDeviceMetadataInBatchRequest ->
  AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync
newAndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync partnerId payload =
  AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync
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
    AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync
  where
  type
    Rs
      AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync =
      Operation
  type
    Scopes
      AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync {..} =
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
                  AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsyncResource
            )
            Core.mempty
