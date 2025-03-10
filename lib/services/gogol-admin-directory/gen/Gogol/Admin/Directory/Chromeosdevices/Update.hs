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
-- Module      : Gogol.Admin.Directory.Chromeosdevices.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device\'s updatable properties, such as @annotatedUser@, @annotatedLocation@, @notes@, @orgUnitPath@, or @annotatedAssetId@.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.update@.
module Gogol.Admin.Directory.Chromeosdevices.Update
  ( -- * Resource
    DirectoryChromeosdevicesUpdateResource,

    -- ** Constructing a Request
    DirectoryChromeosdevicesUpdate (..),
    newDirectoryChromeosdevicesUpdate,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.chromeosdevices.update@ method which the
-- 'DirectoryChromeosdevicesUpdate' request conforms to.
type DirectoryChromeosdevicesUpdateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "chromeos"
    Core.:> Core.Capture "deviceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projection" ChromeosdevicesUpdateProjection
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ChromeOsDevice
    Core.:> Core.Put '[Core.JSON] ChromeOsDevice

-- | Updates a device\'s updatable properties, such as @annotatedUser@, @annotatedLocation@, @notes@, @orgUnitPath@, or @annotatedAssetId@.
--
-- /See:/ 'newDirectoryChromeosdevicesUpdate' smart constructor.
data DirectoryChromeosdevicesUpdate = DirectoryChromeosdevicesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    customerId :: Core.Text,
    -- | The unique ID of the device. The @deviceId@s are returned in the response from the </admin-sdk/v1/reference/chromeosdevices/list chromeosdevices.list> method.
    deviceId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ChromeOsDevice,
    -- | Determines whether the response contains the full list of properties or only a subset.
    projection :: (Core.Maybe ChromeosdevicesUpdateProjection),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryChromeosdevicesUpdate' with the minimum fields required to make a request.
newDirectoryChromeosdevicesUpdate ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  -- |  The unique ID of the device. The @deviceId@s are returned in the response from the </admin-sdk/v1/reference/chromeosdevices/list chromeosdevices.list> method. See 'deviceId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ChromeOsDevice ->
  DirectoryChromeosdevicesUpdate
newDirectoryChromeosdevicesUpdate customerId deviceId payload =
  DirectoryChromeosdevicesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      deviceId = deviceId,
      payload = payload,
      projection = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryChromeosdevicesUpdate where
  type Rs DirectoryChromeosdevicesUpdate = ChromeOsDevice
  type
    Scopes DirectoryChromeosdevicesUpdate =
      '[Admin'Directory'Device'Chromeos]
  requestClient DirectoryChromeosdevicesUpdate {..} =
    go
      customerId
      deviceId
      xgafv
      accessToken
      callback
      projection
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryChromeosdevicesUpdateResource)
          Core.mempty
