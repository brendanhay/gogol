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
-- Module      : Gogol.AndroidEnterprise.Installs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all apps installed on the specified device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.list@.
module Gogol.AndroidEnterprise.Installs.List
  ( -- * Resource
    AndroidEnterpriseInstallsListResource,

    -- ** Constructing a Request
    AndroidEnterpriseInstallsList (..),
    newAndroidEnterpriseInstallsList,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.installs.list@ method which the
-- 'AndroidEnterpriseInstallsList' request conforms to.
type AndroidEnterpriseInstallsListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "devices"
    Core.:> Core.Capture "deviceId" Core.Text
    Core.:> "installs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InstallsListResponse

-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ 'newAndroidEnterpriseInstallsList' smart constructor.
data AndroidEnterpriseInstallsList = AndroidEnterpriseInstallsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The Android ID of the device.
    deviceId :: Core.Text,
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseInstallsList' with the minimum fields required to make a request.
newAndroidEnterpriseInstallsList ::
  -- |  The Android ID of the device. See 'deviceId'.
  Core.Text ->
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseInstallsList
newAndroidEnterpriseInstallsList deviceId enterpriseId userId =
  AndroidEnterpriseInstallsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceId = deviceId,
      enterpriseId = enterpriseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest AndroidEnterpriseInstallsList where
  type Rs AndroidEnterpriseInstallsList = InstallsListResponse
  type
    Scopes AndroidEnterpriseInstallsList =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseInstallsList {..} =
    go
      enterpriseId
      userId
      deviceId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AndroidEnterpriseInstallsListResource)
          Core.mempty
