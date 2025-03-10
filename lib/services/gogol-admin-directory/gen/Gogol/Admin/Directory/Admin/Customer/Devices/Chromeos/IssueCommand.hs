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
-- Module      : Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.IssueCommand
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a command for the device to execute.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customer.devices.chromeos.issueCommand@.
module Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.IssueCommand
  ( -- * Resource
    AdminCustomerDevicesChromeosIssueCommandResource,

    -- ** Constructing a Request
    AdminCustomerDevicesChromeosIssueCommand (..),
    newAdminCustomerDevicesChromeosIssueCommand,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customer.devices.chromeos.issueCommand@ method which the
-- 'AdminCustomerDevicesChromeosIssueCommand' request conforms to.
type AdminCustomerDevicesChromeosIssueCommandResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "chromeos"
    Core.:> Core.CaptureMode "deviceId" "issueCommand" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              DirectoryChromeosdevicesIssueCommandRequest
    Core.:> Core.Post
              '[Core.JSON]
              DirectoryChromeosdevicesIssueCommandResponse

-- | Issues a command for the device to execute.
--
-- /See:/ 'newAdminCustomerDevicesChromeosIssueCommand' smart constructor.
data AdminCustomerDevicesChromeosIssueCommand = AdminCustomerDevicesChromeosIssueCommand
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable. ID of the Google Workspace account.
    customerId :: Core.Text,
    -- | Immutable. ID of Chrome OS Device.
    deviceId :: Core.Text,
    -- | Multipart request metadata.
    payload :: DirectoryChromeosdevicesIssueCommandRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomerDevicesChromeosIssueCommand' with the minimum fields required to make a request.
newAdminCustomerDevicesChromeosIssueCommand ::
  -- |  Immutable. ID of the Google Workspace account. See 'customerId'.
  Core.Text ->
  -- |  Immutable. ID of Chrome OS Device. See 'deviceId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DirectoryChromeosdevicesIssueCommandRequest ->
  AdminCustomerDevicesChromeosIssueCommand
newAdminCustomerDevicesChromeosIssueCommand
  customerId
  deviceId
  payload =
    AdminCustomerDevicesChromeosIssueCommand
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        customerId = customerId,
        deviceId = deviceId,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AdminCustomerDevicesChromeosIssueCommand
  where
  type
    Rs AdminCustomerDevicesChromeosIssueCommand =
      DirectoryChromeosdevicesIssueCommandResponse
  type
    Scopes AdminCustomerDevicesChromeosIssueCommand =
      '[Admin'Directory'Device'Chromeos]
  requestClient AdminCustomerDevicesChromeosIssueCommand {..} =
    go
      customerId
      deviceId
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
              Core.Proxy AdminCustomerDevicesChromeosIssueCommandResource
          )
          Core.mempty
