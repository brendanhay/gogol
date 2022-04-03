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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the client states for the given search query.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.clientStates.list@.
module Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.List
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersClientStatesListResource,

    -- ** Constructing a Request
    CloudIdentityDevicesDeviceUsersClientStatesList (..),
    newCloudIdentityDevicesDeviceUsersClientStatesList,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.clientStates.list@ method which the
-- 'CloudIdentityDevicesDeviceUsersClientStatesList' request conforms to.
type CloudIdentityDevicesDeviceUsersClientStatesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "clientStates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1ListClientStatesResponse

-- | Lists the client states for the given search query.
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersClientStatesList' smart constructor.
data CloudIdentityDevicesDeviceUsersClientStatesList = CloudIdentityDevicesDeviceUsersClientStatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Optional. Additional restrictions when fetching list of client states.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Order specification for client states in the response.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. A page token, received from a previous @ListClientStates@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListClientStates@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. To list all ClientStates, set this to \"devices\/-\/deviceUsers\/-\". To list all ClientStates owned by a DeviceUser, set this to the resource name of the DeviceUser. Format: devices\/{device}\/deviceUsers\/{deviceUser}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersClientStatesList' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersClientStatesList ::
  -- |  Required. To list all ClientStates, set this to \"devices\/-\/deviceUsers\/-\". To list all ClientStates owned by a DeviceUser, set this to the resource name of the DeviceUser. Format: devices\/{device}\/deviceUsers\/{deviceUser} See 'parent'.
  Core.Text ->
  CloudIdentityDevicesDeviceUsersClientStatesList
newCloudIdentityDevicesDeviceUsersClientStatesList parent =
  CloudIdentityDevicesDeviceUsersClientStatesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityDevicesDeviceUsersClientStatesList
  where
  type
    Rs
      CloudIdentityDevicesDeviceUsersClientStatesList =
      GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
  type
    Scopes
      CloudIdentityDevicesDeviceUsersClientStatesList =
      '[ CloudIdentity'Devices,
         CloudIdentity'Devices'Readonly
       ]
  requestClient
    CloudIdentityDevicesDeviceUsersClientStatesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        customer
        filter
        orderBy
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
                  CloudIdentityDevicesDeviceUsersClientStatesListResource
            )
            Core.mempty
