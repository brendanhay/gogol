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
-- Module      : Gogol.Admin.Directory.Mobiledevices.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a mobile device\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.get@.
module Gogol.Admin.Directory.Mobiledevices.Get
  ( -- * Resource
    DirectoryMobiledevicesGetResource,

    -- ** Constructing a Request
    DirectoryMobiledevicesGet (..),
    newDirectoryMobiledevicesGet,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.mobiledevices.get@ method which the
-- 'DirectoryMobiledevicesGet' request conforms to.
type DirectoryMobiledevicesGetResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "devices"
    Core.:> "mobile"
    Core.:> Core.Capture "resourceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projection" MobiledevicesGetProjection
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MobileDevice

-- | Retrieves a mobile device\'s properties.
--
-- /See:/ 'newDirectoryMobiledevicesGet' smart constructor.
data DirectoryMobiledevicesGet = DirectoryMobiledevicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    customerId :: Core.Text,
    -- | Restrict information returned to a set of selected fields.
    projection :: (Core.Maybe MobiledevicesGetProjection),
    -- | The unique ID the API service uses to identify the mobile device.
    resourceId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMobiledevicesGet' with the minimum fields required to make a request.
newDirectoryMobiledevicesGet ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  -- |  The unique ID the API service uses to identify the mobile device. See 'resourceId'.
  Core.Text ->
  DirectoryMobiledevicesGet
newDirectoryMobiledevicesGet customerId resourceId =
  DirectoryMobiledevicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      projection = Core.Nothing,
      resourceId = resourceId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMobiledevicesGet where
  type Rs DirectoryMobiledevicesGet = MobileDevice
  type
    Scopes DirectoryMobiledevicesGet =
      '[ Admin'Directory'Device'Mobile,
         Admin'Directory'Device'Mobile'Action,
         Admin'Directory'Device'Mobile'Readonly
       ]
  requestClient DirectoryMobiledevicesGet {..} =
    go
      customerId
      resourceId
      xgafv
      accessToken
      callback
      projection
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryMobiledevicesGetResource)
          Core.mempty
