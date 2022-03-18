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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.Block
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Blocks device from accessing user data
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.block@.
module Gogol.CloudIdentity.Devices.DeviceUsers.Block
    (
    -- * Resource
      CloudIdentityDevicesDeviceUsersBlockResource

    -- ** Constructing a Request
    , newCloudIdentityDevicesDeviceUsersBlock
    , CloudIdentityDevicesDeviceUsersBlock
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.devices.deviceUsers.block@ method which the
-- 'CloudIdentityDevicesDeviceUsersBlock' request conforms to.
type CloudIdentityDevicesDeviceUsersBlockResource =
     "v1" Core.:>
       Core.CaptureMode "name" "block" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Blocks device from accessing user data
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersBlock' smart constructor.
data CloudIdentityDevicesDeviceUsersBlock = CloudIdentityDevicesDeviceUsersBlock
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersBlock' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersBlock 
    ::  Core.Text
       -- ^  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. See 'name'.
    -> GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIdentityDevicesDeviceUsersBlock
newCloudIdentityDevicesDeviceUsersBlock name payload =
  CloudIdentityDevicesDeviceUsersBlock
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityDevicesDeviceUsersBlock
         where
        type Rs CloudIdentityDevicesDeviceUsersBlock =
             Operation
        type Scopes CloudIdentityDevicesDeviceUsersBlock =
             '["https://www.googleapis.com/auth/cloud-identity.devices"]
        requestClient
          CloudIdentityDevicesDeviceUsersBlock{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityDevicesDeviceUsersBlockResource)
                      Core.mempty

