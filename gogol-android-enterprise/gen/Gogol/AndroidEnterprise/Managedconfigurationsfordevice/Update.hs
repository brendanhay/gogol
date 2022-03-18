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
-- Module      : Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates a per-device managed configuration for an app for the specified device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.update@.
module Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Update
  ( -- * Resource
    AndroidEnterpriseManagedconfigurationsfordeviceUpdateResource,

    -- ** Constructing a Request
    newAndroidEnterpriseManagedconfigurationsfordeviceUpdate,
    AndroidEnterpriseManagedconfigurationsfordeviceUpdate,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.update@ method which the
-- 'AndroidEnterpriseManagedconfigurationsfordeviceUpdate' request conforms to.
type AndroidEnterpriseManagedconfigurationsfordeviceUpdateResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "devices"
    Core.:> Core.Capture "deviceId" Core.Text
    Core.:> "managedConfigurationsForDevice"
    Core.:> Core.Capture
              "managedConfigurationForDeviceId"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ManagedConfiguration
    Core.:> Core.Put
              '[Core.JSON]
              ManagedConfiguration

-- | Adds or updates a per-device managed configuration for an app for the specified device.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationsfordeviceUpdate' smart constructor.
data AndroidEnterpriseManagedconfigurationsfordeviceUpdate = AndroidEnterpriseManagedconfigurationsfordeviceUpdate
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
    -- | The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".
    managedConfigurationForDeviceId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ManagedConfiguration,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationsfordeviceUpdate' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationsfordeviceUpdate ::
  -- |  The Android ID of the device. See 'deviceId'.
  Core.Text ->
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\". See 'managedConfigurationForDeviceId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ManagedConfiguration ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseManagedconfigurationsfordeviceUpdate
newAndroidEnterpriseManagedconfigurationsfordeviceUpdate deviceId enterpriseId managedConfigurationForDeviceId payload userId =
  AndroidEnterpriseManagedconfigurationsfordeviceUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceId = deviceId,
      enterpriseId = enterpriseId,
      managedConfigurationForDeviceId = managedConfigurationForDeviceId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseManagedconfigurationsfordeviceUpdate
  where
  type
    Rs
      AndroidEnterpriseManagedconfigurationsfordeviceUpdate =
      ManagedConfiguration
  type
    Scopes
      AndroidEnterpriseManagedconfigurationsfordeviceUpdate =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseManagedconfigurationsfordeviceUpdate {..} =
      go
        enterpriseId
        userId
        deviceId
        managedConfigurationForDeviceId
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
                Core.Proxy
                  AndroidEnterpriseManagedconfigurationsfordeviceUpdateResource
            )
            Core.mempty
