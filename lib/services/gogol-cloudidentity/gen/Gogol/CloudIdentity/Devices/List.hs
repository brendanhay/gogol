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
-- Module      : Gogol.CloudIdentity.Devices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists\/Searches devices.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.list@.
module Gogol.CloudIdentity.Devices.List
  ( -- * Resource
    CloudIdentityDevicesListResource,

    -- ** Constructing a Request
    CloudIdentityDevicesList (..),
    newCloudIdentityDevicesList,
  )
where

import Gogol.CloudIdentity.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudidentity.devices.list@ method which the
-- 'CloudIdentityDevicesList' request conforms to.
type CloudIdentityDevicesListResource =
  "v1"
    Core.:> "devices"
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
    Core.:> Core.QueryParam "view" DevicesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1ListDevicesResponse

-- | Lists\/Searches devices.
--
-- /See:/ 'newCloudIdentityDevicesList' smart constructor.
data CloudIdentityDevicesList = CloudIdentityDevicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer in the format: @customers\/{customer}@, where customer is the customer to whom the device belongs. If you\'re using this API for your own organization, use @customers\/my_customer@. If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Optional. Additional restrictions when fetching list of devices. For a list of search fields, refer to <https://developers.google.com/admin-sdk/directory/v1/search-operators Mobile device search fields>. Multiple search fields are separated by the space character.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Order specification for devices in the response. Only one of the following field names may be used to specify the order: @create_time@, @last_sync_time@, @model@, @os_version@, @device_type@ and @serial_number@. @desc@ may be specified optionally at the end to specify results to be sorted in descending order. Default order is ascending.
    orderBy :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of Devices to return. If unspecified, at most 20 Devices will be returned. The maximum value is 100; values above 100 will be coerced to 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous @ListDevices@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListDevices@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. The view to use for the List request.
    view :: (Core.Maybe DevicesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesList' with the minimum fields required to make a request.
newCloudIdentityDevicesList ::
  CloudIdentityDevicesList
newCloudIdentityDevicesList =
  CloudIdentityDevicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityDevicesList where
  type
    Rs CloudIdentityDevicesList =
      GoogleAppsCloudidentityDevicesV1ListDevicesResponse
  type
    Scopes CloudIdentityDevicesList =
      '[ CloudIdentity'Devices,
         CloudIdentity'Devices'Readonly
       ]
  requestClient CloudIdentityDevicesList {..} =
    go
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
      view
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityDevicesListResource
          )
          Core.mempty
