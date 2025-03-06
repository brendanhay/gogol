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
-- Module      : Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.BatchChangeStatus
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the status of a batch of ChromeOS devices. For more information about changing a ChromeOS device state <https://support.google.com/chrome/a/answer/3523633 Repair, repurpose, or retire ChromeOS devices>.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customer.devices.chromeos.batchChangeStatus@.
module Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.BatchChangeStatus
  ( -- * Resource
    AdminCustomerDevicesChromeosBatchChangeStatusResource,

    -- ** Constructing a Request
    AdminCustomerDevicesChromeosBatchChangeStatus (..),
    newAdminCustomerDevicesChromeosBatchChangeStatus,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customer.devices.chromeos.batchChangeStatus@ method which the
-- 'AdminCustomerDevicesChromeosBatchChangeStatus' request conforms to.
type AdminCustomerDevicesChromeosBatchChangeStatusResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "chromeos:batchChangeStatus"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchChangeChromeOsDeviceStatusRequest
    Core.:> Core.Post '[Core.JSON] BatchChangeChromeOsDeviceStatusResponse

-- | Changes the status of a batch of ChromeOS devices. For more information about changing a ChromeOS device state <https://support.google.com/chrome/a/answer/3523633 Repair, repurpose, or retire ChromeOS devices>.
--
-- /See:/ 'newAdminCustomerDevicesChromeosBatchChangeStatus' smart constructor.
data AdminCustomerDevicesChromeosBatchChangeStatus = AdminCustomerDevicesChromeosBatchChangeStatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Immutable ID of the Google Workspace account.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchChangeChromeOsDeviceStatusRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomerDevicesChromeosBatchChangeStatus' with the minimum fields required to make a request.
newAdminCustomerDevicesChromeosBatchChangeStatus ::
  -- |  Required. Immutable ID of the Google Workspace account. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchChangeChromeOsDeviceStatusRequest ->
  AdminCustomerDevicesChromeosBatchChangeStatus
newAdminCustomerDevicesChromeosBatchChangeStatus customerId payload =
  AdminCustomerDevicesChromeosBatchChangeStatus
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdminCustomerDevicesChromeosBatchChangeStatus
  where
  type
    Rs AdminCustomerDevicesChromeosBatchChangeStatus =
      BatchChangeChromeOsDeviceStatusResponse
  type
    Scopes AdminCustomerDevicesChromeosBatchChangeStatus =
      '[Admin'Directory'Device'Chromeos]
  requestClient AdminCustomerDevicesChromeosBatchChangeStatus {..} =
    go
      customerId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdminCustomerDevicesChromeosBatchChangeStatusResource
          )
          Core.mempty
