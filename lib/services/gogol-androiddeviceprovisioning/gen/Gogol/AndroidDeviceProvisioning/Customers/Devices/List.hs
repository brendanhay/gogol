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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Devices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a customer\'s devices.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.devices.list@.
module Gogol.AndroidDeviceProvisioning.Customers.Devices.List
    (
    -- * Resource
      AndroidDeviceProvisioningCustomersDevicesListResource

    -- ** Constructing a Request
    , newAndroidDeviceProvisioningCustomersDevicesList
    , AndroidDeviceProvisioningCustomersDevicesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidDeviceProvisioning.Types

-- | A resource alias for @androiddeviceprovisioning.customers.devices.list@ method which the
-- 'AndroidDeviceProvisioningCustomersDevicesList' request conforms to.
type AndroidDeviceProvisioningCustomersDevicesListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "devices" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int64 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] CustomerListDevicesResponse

-- | Lists a customer\'s devices.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersDevicesList' smart constructor.
data AndroidDeviceProvisioningCustomersDevicesList = AndroidDeviceProvisioningCustomersDevicesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.
    , pageSize :: (Core.Maybe Core.Int64)
      -- | A token specifying which result page to return.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The customer managing the devices. An API resource name in the format @customers\/[CUSTOMER_ID]@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersDevicesList' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersDevicesList 
    ::  Core.Text
       -- ^  Required. The customer managing the devices. An API resource name in the format @customers\/[CUSTOMER_ID]@. See 'parent'.
    -> AndroidDeviceProvisioningCustomersDevicesList
newAndroidDeviceProvisioningCustomersDevicesList parent =
  AndroidDeviceProvisioningCustomersDevicesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidDeviceProvisioningCustomersDevicesList
         where
        type Rs AndroidDeviceProvisioningCustomersDevicesList
             = CustomerListDevicesResponse
        type Scopes
               AndroidDeviceProvisioningCustomersDevicesList
             = '[]
        requestClient
          AndroidDeviceProvisioningCustomersDevicesList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidDeviceProvisioningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidDeviceProvisioningCustomersDevicesListResource)
                      Core.mempty

