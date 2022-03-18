{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Devices.Unclaim
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unclaims a device from a customer and removes it from zero-touch enrollment. After removing a device, a customer must contact their reseller to register the device into zero-touch enrollment again.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.unclaim@.
module Gogol.AndroidDeviceProvisioning.Customers.Devices.Unclaim
    (
    -- * Resource
      AndroidDeviceProvisioningCustomersDevicesUnclaimResource

    -- ** Constructing a Request
    , newAndroidDeviceProvisioningCustomersDevicesUnclaim
    , AndroidDeviceProvisioningCustomersDevicesUnclaim
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidDeviceProvisioning.Types

-- | A resource alias for @androiddeviceprovisioning.customers.devices.unclaim@ method which the
-- 'AndroidDeviceProvisioningCustomersDevicesUnclaim' request conforms to.
type AndroidDeviceProvisioningCustomersDevicesUnclaimResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "devices:unclaim" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         CustomerUnclaimDeviceRequest
                         Core.:> Core.Post '[Core.JSON] Empty

-- | Unclaims a device from a customer and removes it from zero-touch enrollment. After removing a device, a customer must contact their reseller to register the device into zero-touch enrollment again.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersDevicesUnclaim' smart constructor.
data AndroidDeviceProvisioningCustomersDevicesUnclaim = AndroidDeviceProvisioningCustomersDevicesUnclaim
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
    , payload :: CustomerUnclaimDeviceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersDevicesUnclaim' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersDevicesUnclaim 
    ::  Core.Text
       -- ^  Required. The customer managing the device. An API resource name in the format @customers\/[CUSTOMER_ID]@. See 'parent'.
    -> CustomerUnclaimDeviceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidDeviceProvisioningCustomersDevicesUnclaim
newAndroidDeviceProvisioningCustomersDevicesUnclaim parent payload =
  AndroidDeviceProvisioningCustomersDevicesUnclaim
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidDeviceProvisioningCustomersDevicesUnclaim
         where
        type Rs
               AndroidDeviceProvisioningCustomersDevicesUnclaim
             = Empty
        type Scopes
               AndroidDeviceProvisioningCustomersDevicesUnclaim
             = '[]
        requestClient
          AndroidDeviceProvisioningCustomersDevicesUnclaim{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidDeviceProvisioningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidDeviceProvisioningCustomersDevicesUnclaimResource)
                      Core.mempty

