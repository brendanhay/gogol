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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.Wipe
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Wipes the user\'s account on a device. Other data on the device that is not associated with the user\'s work account is not affected. For example, if a Gmail app is installed on a device that is used for personal and work purposes, and the user is logged in to the Gmail app with their personal account as well as their work account, wiping the \"deviceUser\" by their work administrator will not affect their personal account within Gmail or other apps such as Photos.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.wipe@.
module Gogol.CloudIdentity.Devices.DeviceUsers.Wipe
    (
    -- * Resource
      CloudIdentityDevicesDeviceUsersWipeResource

    -- ** Constructing a Request
    , CloudIdentityDevicesDeviceUsersWipe (..)
    , newCloudIdentityDevicesDeviceUsersWipe
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.devices.deviceUsers.wipe@ method which the
-- 'CloudIdentityDevicesDeviceUsersWipe' request conforms to.
type CloudIdentityDevicesDeviceUsersWipeResource =
     "v1" Core.:>
       Core.CaptureMode "name" "wipe" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Wipes the user\'s account on a device. Other data on the device that is not associated with the user\'s work account is not affected. For example, if a Gmail app is installed on a device that is used for personal and work purposes, and the user is logged in to the Gmail app with their personal account as well as their work account, wiping the \"deviceUser\" by their work administrator will not affect their personal account within Gmail or other apps such as Photos.
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersWipe' smart constructor.
data CloudIdentityDevicesDeviceUsersWipe = CloudIdentityDevicesDeviceUsersWipe
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
    , payload :: GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersWipe' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersWipe 
    ::  Core.Text
       -- ^  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in format: @devices\/{device}\/deviceUsers\/{device_user}@, where device is the unique ID assigned to the Device, and device_user is the unique ID assigned to the User. See 'name'.
    -> GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIdentityDevicesDeviceUsersWipe
newCloudIdentityDevicesDeviceUsersWipe name payload =
  CloudIdentityDevicesDeviceUsersWipe
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityDevicesDeviceUsersWipe
         where
        type Rs CloudIdentityDevicesDeviceUsersWipe =
             Operation
        type Scopes CloudIdentityDevicesDeviceUsersWipe =
             '[CloudIdentity'Devices]
        requestClient CloudIdentityDevicesDeviceUsersWipe{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityDevicesDeviceUsersWipeResource)
                      Core.mempty

