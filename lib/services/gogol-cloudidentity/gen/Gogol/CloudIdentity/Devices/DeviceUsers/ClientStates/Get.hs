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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the client state for the device user
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.clientStates.get@.
module Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.Get
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersClientStatesGetResource,

    -- ** Constructing a Request
    newCloudIdentityDevicesDeviceUsersClientStatesGet,
    CloudIdentityDevicesDeviceUsersClientStatesGet,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.clientStates.get@ method which the
-- 'CloudIdentityDevicesDeviceUsersClientStatesGet' request conforms to.
type CloudIdentityDevicesDeviceUsersClientStatesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1ClientState

-- | Gets the client state for the device user
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersClientStatesGet' smart constructor.
data CloudIdentityDevicesDeviceUsersClientStatesGet = CloudIdentityDevicesDeviceUsersClientStatesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the ClientState in format: @devices\/{device}\/deviceUsers\/{device_user}\/clientStates\/{partner}@, where @device@ is the unique ID assigned to the Device, @device_user@ is the unique ID assigned to the User and @partner@ identifies the partner storing the data. To get the client state for devices belonging to your own organization, the @partnerId@ is in the format: @customerId-*anystring*@. Where the @customerId@ is your organization\'s customer ID and @anystring@ is any suffix. This suffix is used in setting up Custom Access Levels in Context-Aware Access. You may use @my_customer@ instead of the customer ID for devices managed by your own organization. You may specify @-@ in place of the @{device}@, so the ClientState resource name can be: @devices\/-\/deviceUsers\/{device_user_resource}\/clientStates\/{partner}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersClientStatesGet' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersClientStatesGet ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the ClientState in format: @devices\/{device}\/deviceUsers\/{device_user}\/clientStates\/{partner}@, where @device@ is the unique ID assigned to the Device, @device_user@ is the unique ID assigned to the User and @partner@ identifies the partner storing the data. To get the client state for devices belonging to your own organization, the @partnerId@ is in the format: @customerId-*anystring*@. Where the @customerId@ is your organization\'s customer ID and @anystring@ is any suffix. This suffix is used in setting up Custom Access Levels in Context-Aware Access. You may use @my_customer@ instead of the customer ID for devices managed by your own organization. You may specify @-@ in place of the @{device}@, so the ClientState resource name can be: @devices\/-\/deviceUsers\/{device_user_resource}\/clientStates\/{partner}@. See 'name'.
  Core.Text ->
  CloudIdentityDevicesDeviceUsersClientStatesGet
newCloudIdentityDevicesDeviceUsersClientStatesGet name =
  CloudIdentityDevicesDeviceUsersClientStatesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityDevicesDeviceUsersClientStatesGet
  where
  type
    Rs
      CloudIdentityDevicesDeviceUsersClientStatesGet =
      GoogleAppsCloudidentityDevicesV1ClientState
  type
    Scopes
      CloudIdentityDevicesDeviceUsersClientStatesGet =
      '[ "https://www.googleapis.com/auth/cloud-identity.devices",
         "https://www.googleapis.com/auth/cloud-identity.devices.readonly"
       ]
  requestClient
    CloudIdentityDevicesDeviceUsersClientStatesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        customer
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudIdentityService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIdentityDevicesDeviceUsersClientStatesGetResource
            )
            Core.mempty
