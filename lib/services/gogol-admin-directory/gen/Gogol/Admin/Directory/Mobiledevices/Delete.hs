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
-- Module      : Gogol.Admin.Directory.Mobiledevices.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a mobile device.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.delete@.
module Gogol.Admin.Directory.Mobiledevices.Delete
  ( -- * Resource
    DirectoryMobiledevicesDeleteResource,

    -- ** Constructing a Request
    DirectoryMobiledevicesDelete (..),
    newDirectoryMobiledevicesDelete,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.mobiledevices.delete@ method which the
-- 'DirectoryMobiledevicesDelete' request conforms to.
type DirectoryMobiledevicesDeleteResource =
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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes a mobile device.
--
-- /See:/ 'newDirectoryMobiledevicesDelete' smart constructor.
data DirectoryMobiledevicesDelete = DirectoryMobiledevicesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    customerId :: Core.Text,
    -- | The unique ID the API service uses to identify the mobile device.
    resourceId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryMobiledevicesDelete' with the minimum fields required to make a request.
newDirectoryMobiledevicesDelete ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  -- |  The unique ID the API service uses to identify the mobile device. See 'resourceId'.
  Core.Text ->
  DirectoryMobiledevicesDelete
newDirectoryMobiledevicesDelete customerId resourceId =
  DirectoryMobiledevicesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      resourceId = resourceId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryMobiledevicesDelete where
  type Rs DirectoryMobiledevicesDelete = ()
  type
    Scopes DirectoryMobiledevicesDelete =
      '[Admin'Directory'Device'Mobile]
  requestClient DirectoryMobiledevicesDelete {..} =
    go
      customerId
      resourceId
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
          (Core.Proxy :: Core.Proxy DirectoryMobiledevicesDeleteResource)
          Core.mempty
