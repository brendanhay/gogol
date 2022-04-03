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
-- Module      : Gogol.AndroidManagement.Enterprises.Devices.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.patch@.
module Gogol.AndroidManagement.Enterprises.Devices.Patch
  ( -- * Resource
    AndroidManagementEnterprisesDevicesPatchResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesDevicesPatch (..),
    newAndroidManagementEnterprisesDevicesPatch,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.devices.patch@ method which the
-- 'AndroidManagementEnterprisesDevicesPatch' request conforms to.
type AndroidManagementEnterprisesDevicesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Device
    Core.:> Core.Patch '[Core.JSON] Device

-- | Updates a device.
--
-- /See:/ 'newAndroidManagementEnterprisesDevicesPatch' smart constructor.
data AndroidManagementEnterprisesDevicesPatch = AndroidManagementEnterprisesDevicesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Device,
    -- | The field mask indicating the fields to update. If not set, all modifiable fields will be modified.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDevicesPatch' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDevicesPatch ::
  -- |  The name of the device in the form enterprises\/{enterpriseId}\/devices\/{deviceId}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Device ->
  AndroidManagementEnterprisesDevicesPatch
newAndroidManagementEnterprisesDevicesPatch name payload =
  AndroidManagementEnterprisesDevicesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesDevicesPatch
  where
  type
    Rs AndroidManagementEnterprisesDevicesPatch =
      Device
  type
    Scopes AndroidManagementEnterprisesDevicesPatch =
      '[Androidmanagement'FullControl]
  requestClient
    AndroidManagementEnterprisesDevicesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesDevicesPatchResource
            )
            Core.mempty
