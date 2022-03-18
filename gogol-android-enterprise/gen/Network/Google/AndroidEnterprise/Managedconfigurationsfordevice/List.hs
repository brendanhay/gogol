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
-- Module      : Network.Google.AndroidEnterprise.Managedconfigurationsfordevice.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the per-device managed configurations for the specified device. Only the ID is set.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.list@.
module Network.Google.AndroidEnterprise.Managedconfigurationsfordevice.List
  ( -- * Resource
    AndroidEnterpriseManagedconfigurationsfordeviceListResource,

    -- ** Constructing a Request
    newAndroidEnterpriseManagedconfigurationsfordeviceList,
    AndroidEnterpriseManagedconfigurationsfordeviceList,
  )
where

import Network.Google.AndroidEnterprise.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.list@ method which the
-- 'AndroidEnterpriseManagedconfigurationsfordeviceList' request conforms to.
type AndroidEnterpriseManagedconfigurationsfordeviceListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "devices"
    Core.:> Core.Capture "deviceId" Core.Text
    Core.:> "managedConfigurationsForDevice"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ManagedConfigurationsForDeviceListResponse

-- | Lists all the per-device managed configurations for the specified device. Only the ID is set.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationsfordeviceList' smart constructor.
data AndroidEnterpriseManagedconfigurationsfordeviceList = AndroidEnterpriseManagedconfigurationsfordeviceList
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

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationsfordeviceList' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationsfordeviceList ::
  -- |  The Android ID of the device. See 'deviceId'.
  Core.Text ->
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the user. See 'userId'.
  Core.Text ->
  AndroidEnterpriseManagedconfigurationsfordeviceList
newAndroidEnterpriseManagedconfigurationsfordeviceList deviceId enterpriseId userId =
  AndroidEnterpriseManagedconfigurationsfordeviceList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deviceId = deviceId,
      enterpriseId = enterpriseId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseManagedconfigurationsfordeviceList
  where
  type
    Rs
      AndroidEnterpriseManagedconfigurationsfordeviceList =
      ManagedConfigurationsForDeviceListResponse
  type
    Scopes
      AndroidEnterpriseManagedconfigurationsfordeviceList =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseManagedconfigurationsfordeviceList {..} =
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
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseManagedconfigurationsfordeviceListResource
            )
            Core.mempty
