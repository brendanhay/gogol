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
-- Module      : Gogol.AndroidEnterprise.Installs.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests to install the latest version of an app to a device. If the app is already installed, then it is updated to the latest version if necessary.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.installs.update@.
module Gogol.AndroidEnterprise.Installs.Update
  ( -- * Resource
    AndroidEnterpriseInstallsUpdateResource,

    -- ** Constructing a Request
    newAndroidEnterpriseInstallsUpdate,
    AndroidEnterpriseInstallsUpdate,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.installs.update@ method which the
-- 'AndroidEnterpriseInstallsUpdate' request conforms to.
type AndroidEnterpriseInstallsUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Install
    Core.:> Core.Put '[Core.JSON] Install

-- | Requests to install the latest version of an app to a device. If the app is already installed, then it is updated to the latest version if necessary.
--
-- /See:/ 'newAndroidEnterpriseInstallsUpdate' smart constructor.
data AndroidEnterpriseInstallsUpdate = AndroidEnterpriseInstallsUpdate
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
    -- | Multipart request metadata.
    payload :: Install,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseInstallsUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseInstallsUpdate ::
  -- |  The Android ID of the device. See 'deviceId'.
  Core.Text ->
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product represented by the install, e.g. \"app:com.google.android.gm\". See 'installId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Install ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseInstallsUpdate
newAndroidEnterpriseInstallsUpdate deviceId enterpriseId installId payload userId =
  AndroidEnterpriseInstallsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceId = deviceId,
      enterpriseId = enterpriseId,
      installId = installId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseInstallsUpdate
  where
  type Rs AndroidEnterpriseInstallsUpdate = Install
  type
    Scopes AndroidEnterpriseInstallsUpdate =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseInstallsUpdate {..} =
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
      payload
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseInstallsUpdateResource
          )
          Core.mempty
