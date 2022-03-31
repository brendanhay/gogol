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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists\/Searches DeviceUsers.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.list@.
module Gogol.CloudIdentity.Devices.DeviceUsers.List
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersListResource,

    -- ** Constructing a Request
    newCloudIdentityDevicesDeviceUsersList,
    CloudIdentityDevicesDeviceUsersList,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.list@ method which the
-- 'CloudIdentityDevicesDeviceUsersList' request conforms to.
type CloudIdentityDevicesDeviceUsersListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "deviceUsers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse

-- | Lists\/Searches DeviceUsers.
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersList' smart constructor.
data CloudIdentityDevicesDeviceUsersList = CloudIdentityDevicesDeviceUsersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to <https://developers.google.com/admin-sdk/directory/v1/search-operators Mobile device search fields>. Multiple search fields are separated by the space character.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Order specification for devices in the response.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of DeviceUsers to return. If unspecified, at most 5 DeviceUsers will be returned. The maximum value is 20; values above 20 will be coerced to 20.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous @ListDeviceUsers@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListBooks@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. To list all DeviceUsers, set this to \"devices\/-\". To list all DeviceUsers owned by a device, set this to the resource name of the device. Format: devices\/{device}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersList' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersList ::
  -- |  Required. To list all DeviceUsers, set this to \"devices\/-\". To list all DeviceUsers owned by a device, set this to the resource name of the device. Format: devices\/{device} See 'parent'.
  Core.Text ->
  CloudIdentityDevicesDeviceUsersList
newCloudIdentityDevicesDeviceUsersList parent =
  CloudIdentityDevicesDeviceUsersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityDevicesDeviceUsersList
  where
  type
    Rs CloudIdentityDevicesDeviceUsersList =
      GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
  type
    Scopes CloudIdentityDevicesDeviceUsersList =
      '[ CloudIdentity'Devices,
         CloudIdentity'Devices'Readonly
       ]
  requestClient CloudIdentityDevicesDeviceUsersList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      customer
      filter
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudIdentityDevicesDeviceUsersListResource
          )
          Core.mempty
