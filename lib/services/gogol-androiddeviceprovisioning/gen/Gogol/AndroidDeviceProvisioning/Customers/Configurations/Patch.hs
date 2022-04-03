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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Configurations.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a configuration\'s field values.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.patch@.
module Gogol.AndroidDeviceProvisioning.Customers.Configurations.Patch
  ( -- * Resource
    AndroidDeviceProvisioningCustomersConfigurationsPatchResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningCustomersConfigurationsPatch (..),
    newAndroidDeviceProvisioningCustomersConfigurationsPatch,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.patch@ method which the
-- 'AndroidDeviceProvisioningCustomersConfigurationsPatch' request conforms to.
type AndroidDeviceProvisioningCustomersConfigurationsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Configuration
    Core.:> Core.Patch '[Core.JSON] Configuration

-- | Updates a configuration\'s field values.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersConfigurationsPatch' smart constructor.
data AndroidDeviceProvisioningCustomersConfigurationsPatch = AndroidDeviceProvisioningCustomersConfigurationsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The API resource name in the format @customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]@. Assigned by the server.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Configuration,
    -- | Required. The field mask applied to the target @Configuration@ before updating the fields. To learn more about using field masks, read </protocol-buffers/docs/reference/google.protobuf#fieldmask FieldMask> in the Protocol Buffers documentation.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersConfigurationsPatch' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersConfigurationsPatch ::
  -- |  Output only. The API resource name in the format @customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]@. Assigned by the server. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Configuration ->
  AndroidDeviceProvisioningCustomersConfigurationsPatch
newAndroidDeviceProvisioningCustomersConfigurationsPatch name payload =
  AndroidDeviceProvisioningCustomersConfigurationsPatch
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
    AndroidDeviceProvisioningCustomersConfigurationsPatch
  where
  type
    Rs
      AndroidDeviceProvisioningCustomersConfigurationsPatch =
      Configuration
  type
    Scopes
      AndroidDeviceProvisioningCustomersConfigurationsPatch =
      '[]
  requestClient
    AndroidDeviceProvisioningCustomersConfigurationsPatch {..} =
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
        androidDeviceProvisioningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidDeviceProvisioningCustomersConfigurationsPatchResource
            )
            Core.mempty
