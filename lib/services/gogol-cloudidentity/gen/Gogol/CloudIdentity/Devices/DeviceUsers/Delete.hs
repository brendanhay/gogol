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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified DeviceUser. This also revokes the user\'s access to device data.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.delete@.
module Gogol.CloudIdentity.Devices.DeviceUsers.Delete
    (
    -- * Resource
      CloudIdentityDevicesDeviceUsersDeleteResource

    -- ** Constructing a Request
    , newCloudIdentityDevicesDeviceUsersDelete
    , CloudIdentityDevicesDeviceUsersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.devices.deviceUsers.delete@ method which the
-- 'CloudIdentityDevicesDeviceUsersDelete' request conforms to.
type CloudIdentityDevicesDeviceUsersDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "customer" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Operation

-- | Deletes the specified DeviceUser. This also revokes the user\'s access to device data.
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersDelete' smart constructor.
data CloudIdentityDevicesDeviceUsersDelete = CloudIdentityDevicesDeviceUsersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    , customer :: (Core.Maybe Core.Text)
      -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersDelete' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersDelete 
    ::  Core.Text
       -- ^  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. See 'name'.
    -> CloudIdentityDevicesDeviceUsersDelete
newCloudIdentityDevicesDeviceUsersDelete name =
  CloudIdentityDevicesDeviceUsersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customer = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityDevicesDeviceUsersDelete
         where
        type Rs CloudIdentityDevicesDeviceUsersDelete =
             Operation
        type Scopes CloudIdentityDevicesDeviceUsersDelete =
             '["https://www.googleapis.com/auth/cloud-identity.devices"]
        requestClient
          CloudIdentityDevicesDeviceUsersDelete{..}
          = go name xgafv accessToken callback customer
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityDevicesDeviceUsersDeleteResource)
                      Core.mempty

