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
-- Module      : Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.Commands.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets command data a specific command issued to the device.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customer.devices.chromeos.commands.get@.
module Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.Commands.Get
  ( -- * Resource
    AdminCustomerDevicesChromeosCommandsGetResource,

    -- ** Constructing a Request
    AdminCustomerDevicesChromeosCommandsGet (..),
    newAdminCustomerDevicesChromeosCommandsGet,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customer.devices.chromeos.commands.get@ method which the
-- 'AdminCustomerDevicesChromeosCommandsGet' request conforms to.
type AdminCustomerDevicesChromeosCommandsGetResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "chromeos"
    Core.:> Core.Capture "deviceId" Core.Text
    Core.:> "commands"
    Core.:> Core.Capture "commandId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DirectoryChromeosdevicesCommand

-- | Gets command data a specific command issued to the device.
--
-- /See:/ 'newAdminCustomerDevicesChromeosCommandsGet' smart constructor.
data AdminCustomerDevicesChromeosCommandsGet = AdminCustomerDevicesChromeosCommandsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable. ID of Chrome OS Device Command.
    commandId :: Core.Int64,
    -- | Immutable. ID of the Google Workspace account.
    customerId :: Core.Text,
    -- | Immutable. ID of Chrome OS Device.
    deviceId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomerDevicesChromeosCommandsGet' with the minimum fields required to make a request.
newAdminCustomerDevicesChromeosCommandsGet ::
  -- |  Immutable. ID of Chrome OS Device Command. See 'commandId'.
  Core.Int64 ->
  -- |  Immutable. ID of the Google Workspace account. See 'customerId'.
  Core.Text ->
  -- |  Immutable. ID of Chrome OS Device. See 'deviceId'.
  Core.Text ->
  AdminCustomerDevicesChromeosCommandsGet
newAdminCustomerDevicesChromeosCommandsGet
  commandId
  customerId
  deviceId =
    AdminCustomerDevicesChromeosCommandsGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        commandId = commandId,
        customerId = customerId,
        deviceId = deviceId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest AdminCustomerDevicesChromeosCommandsGet where
  type
    Rs AdminCustomerDevicesChromeosCommandsGet =
      DirectoryChromeosdevicesCommand
  type
    Scopes AdminCustomerDevicesChromeosCommandsGet =
      '[ Admin'Directory'Device'Chromeos,
         Admin'Directory'Device'Chromeos'Readonly
       ]
  requestClient AdminCustomerDevicesChromeosCommandsGet {..} =
    go
      customerId
      deviceId
      commandId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdminCustomerDevicesChromeosCommandsGetResource
          )
          Core.mempty
