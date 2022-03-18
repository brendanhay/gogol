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
-- Module      : Gogol.AndroidEnterprise.Installs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests to remove an app from a device. A call to get or list will still show the app as installed on the device until it is actually removed.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.delete@.
module Gogol.AndroidEnterprise.Installs.Delete
  ( -- * Resource
    AndroidEnterpriseInstallsDeleteResource,

    -- ** Constructing a Request
    newAndroidEnterpriseInstallsDelete,
    AndroidEnterpriseInstallsDelete,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.installs.delete@ method which the
-- 'AndroidEnterpriseInstallsDelete' request conforms to.
type AndroidEnterpriseInstallsDeleteResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "devices"
    Core.:> Core.Capture "deviceId" Core.Text
    Core.:> "installs"
    Core.:> Core.Capture "installId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Requests to remove an app from a device. A call to get or list will still show the app as installed on the device until it is actually removed.
--
-- /See:/ 'newAndroidEnterpriseInstallsDelete' smart constructor.
data AndroidEnterpriseInstallsDelete = AndroidEnterpriseInstallsDelete
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
    -- | The ID of the product represented by the install, e.g. \"app:com.google.android.gm\".
    installId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseInstallsDelete' with the minimum fields required to make a request.
newAndroidEnterpriseInstallsDelete ::
  -- |  The Android ID of the device. See 'deviceId'.
  Core.Text ->
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product represented by the install, e.g. \"app:com.google.android.gm\". See 'installId'.
  Core.Text ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseInstallsDelete
newAndroidEnterpriseInstallsDelete deviceId enterpriseId installId userId =
  AndroidEnterpriseInstallsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceId = deviceId,
      enterpriseId = enterpriseId,
      installId = installId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseInstallsDelete
  where
  type Rs AndroidEnterpriseInstallsDelete = ()
  type
    Scopes AndroidEnterpriseInstallsDelete =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient AndroidEnterpriseInstallsDelete {..} =
    go
      enterpriseId
      userId
      deviceId
      installId
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
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseInstallsDeleteResource
          )
          Core.mempty
