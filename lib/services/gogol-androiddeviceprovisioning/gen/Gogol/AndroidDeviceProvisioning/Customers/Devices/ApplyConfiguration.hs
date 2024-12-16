{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a Configuration to the device to register the device for zero-touch enrollment. After applying a configuration to a device, the device automatically provisions itself on first boot, or next factory reset.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.applyConfiguration@.
module Gogol.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration
    (
    -- * Resource
      AndroidDeviceProvisioningCustomersDevicesApplyConfigurationResource

    -- ** Constructing a Request
    , AndroidDeviceProvisioningCustomersDevicesApplyConfiguration (..)
    , newAndroidDeviceProvisioningCustomersDevicesApplyConfiguration
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidDeviceProvisioning.Types

-- | A resource alias for @androiddeviceprovisioning.customers.devices.applyConfiguration@ method which the
-- 'AndroidDeviceProvisioningCustomersDevicesApplyConfiguration' request conforms to.
type AndroidDeviceProvisioningCustomersDevicesApplyConfigurationResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "devices:applyConfiguration" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         CustomerApplyConfigurationRequest
                         Core.:> Core.Post '[Core.JSON] Empty

-- | Applies a Configuration to the device to register the device for zero-touch enrollment. After applying a configuration to a device, the device automatically provisions itself on first boot, or next factory reset.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersDevicesApplyConfiguration' smart constructor.
data AndroidDeviceProvisioningCustomersDevicesApplyConfiguration = AndroidDeviceProvisioningCustomersDevicesApplyConfiguration
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The customer managing the device. An API resource name in the format @customers\/[CUSTOMER_ID]@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: CustomerApplyConfigurationRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersDevicesApplyConfiguration' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersDevicesApplyConfiguration 
    ::  Core.Text
       -- ^  Required. The customer managing the device. An API resource name in the format @customers\/[CUSTOMER_ID]@. See 'parent'.
    -> CustomerApplyConfigurationRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidDeviceProvisioningCustomersDevicesApplyConfiguration
newAndroidDeviceProvisioningCustomersDevicesApplyConfiguration parent payload =
  AndroidDeviceProvisioningCustomersDevicesApplyConfiguration
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidDeviceProvisioningCustomersDevicesApplyConfiguration
         where
        type Rs
               AndroidDeviceProvisioningCustomersDevicesApplyConfiguration
             = Empty
        type Scopes
               AndroidDeviceProvisioningCustomersDevicesApplyConfiguration
             = '[]
        requestClient
          AndroidDeviceProvisioningCustomersDevicesApplyConfiguration{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidDeviceProvisioningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidDeviceProvisioningCustomersDevicesApplyConfigurationResource)
                      Core.mempty

