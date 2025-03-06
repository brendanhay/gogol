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
-- Module      : Gogol.AndroidManagement.ProvisioningInfo.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the device provisioning information by the identifier provided in the sign-in url.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.provisioningInfo.get@.
module Gogol.AndroidManagement.ProvisioningInfo.Get
  ( -- * Resource
    AndroidManagementProvisioningInfoGetResource,

    -- ** Constructing a Request
    AndroidManagementProvisioningInfoGet (..),
    newAndroidManagementProvisioningInfoGet,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.provisioningInfo.get@ method which the
-- 'AndroidManagementProvisioningInfoGet' request conforms to.
type AndroidManagementProvisioningInfoGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProvisioningInfo

-- | Get the device provisioning information by the identifier provided in the sign-in url.
--
-- /See:/ 'newAndroidManagementProvisioningInfoGet' smart constructor.
data AndroidManagementProvisioningInfoGet = AndroidManagementProvisioningInfoGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The identifier that Android Device Policy passes to the 3P sign-in page in the form of provisioningInfo\/{provisioning_info}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementProvisioningInfoGet' with the minimum fields required to make a request.
newAndroidManagementProvisioningInfoGet ::
  -- |  Required. The identifier that Android Device Policy passes to the 3P sign-in page in the form of provisioningInfo\/{provisioning_info}. See 'name'.
  Core.Text ->
  AndroidManagementProvisioningInfoGet
newAndroidManagementProvisioningInfoGet name =
  AndroidManagementProvisioningInfoGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidManagementProvisioningInfoGet where
  type Rs AndroidManagementProvisioningInfoGet = ProvisioningInfo
  type
    Scopes AndroidManagementProvisioningInfoGet =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementProvisioningInfoGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementProvisioningInfoGetResource
          )
          Core.mempty
