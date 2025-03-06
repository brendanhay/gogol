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
-- Module      : Gogol.Admin.Directory.Mobiledevices.Action
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Takes an action that affects a mobile device. For example, remotely wiping a device.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.action@.
module Gogol.Admin.Directory.Mobiledevices.Action
  ( -- * Resource
    DirectoryMobiledevicesActionResource,

    -- ** Constructing a Request
    DirectoryMobiledevicesAction (..),
    newDirectoryMobiledevicesAction,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.mobiledevices.action@ method which the
-- 'DirectoryMobiledevicesAction' request conforms to.
type DirectoryMobiledevicesActionResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "mobile"
    Core.:> Core.Capture "resourceId" Core.Text
    Core.:> "action"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MobileDeviceAction
    Core.:> Core.Post '[Core.JSON] ()

-- | Takes an action that affects a mobile device. For example, remotely wiping a device.
--
-- /See:/ 'newDirectoryMobiledevicesAction' smart constructor.
data DirectoryMobiledevicesAction = DirectoryMobiledevicesAction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: MobileDeviceAction,
    -- | The unique ID the API service uses to identify the mobile device.
    resourceId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMobiledevicesAction' with the minimum fields required to make a request.
newDirectoryMobiledevicesAction ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MobileDeviceAction ->
  -- |  The unique ID the API service uses to identify the mobile device. See 'resourceId'.
  Core.Text ->
  DirectoryMobiledevicesAction
newDirectoryMobiledevicesAction customerId payload resourceId =
  DirectoryMobiledevicesAction
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      payload = payload,
      resourceId = resourceId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMobiledevicesAction where
  type Rs DirectoryMobiledevicesAction = ()
  type
    Scopes DirectoryMobiledevicesAction =
      '[ Admin'Directory'Device'Mobile,
         Admin'Directory'Device'Mobile'Action
       ]
  requestClient DirectoryMobiledevicesAction {..} =
    go
      customerId
      resourceId
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
          (Core.Proxy :: Core.Proxy DirectoryMobiledevicesActionResource)
          Core.mempty
