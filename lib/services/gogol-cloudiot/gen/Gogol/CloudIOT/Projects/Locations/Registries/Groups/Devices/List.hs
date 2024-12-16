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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List devices in a device registry.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.list@.
module Gogol.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
    (
    -- * Resource
      CloudIOTProjectsLocationsRegistriesGroupsDevicesListResource

    -- ** Constructing a Request
    , CloudIOTProjectsLocationsRegistriesGroupsDevicesList (..)
    , newCloudIOTProjectsLocationsRegistriesGroupsDevicesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIOT.Types

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.list@ method which the
-- 'CloudIOTProjectsLocationsRegistriesGroupsDevicesList' request conforms to.
type CloudIOTProjectsLocationsRegistriesGroupsDevicesListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "devices" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParams "deviceIds" Core.Text Core.:>
                   Core.QueryParams "deviceNumIds" Core.Word64 Core.:>
                     Core.QueryParam "fieldMask" Core.FieldMask Core.:>
                       Core.QueryParam
                         "gatewayListOptions.associationsDeviceId"
                         Core.Text
                         Core.:>
                         Core.QueryParam
                           "gatewayListOptions.associationsGatewayId"
                           Core.Text
                           Core.:>
                           Core.QueryParam "gatewayListOptions.gatewayType"
                             ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
                             Core.:>
                             Core.QueryParam "pageSize" Core.Int32 Core.:>
                               Core.QueryParam "pageToken" Core.Text Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] ListDevicesResponse

-- | List devices in a device registry.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesGroupsDevicesList' smart constructor.
data CloudIOTProjectsLocationsRegistriesGroupsDevicesList = CloudIOTProjectsLocationsRegistriesGroupsDevicesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A list of device string IDs. For example, @[\'device0\', \'device12\']@. If empty, this field is ignored. Maximum IDs: 10,000
    , deviceIds :: (Core.Maybe [Core.Text])
      -- | A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000.
    , deviceNumIds :: (Core.Maybe [Core.Word64])
      -- | The fields of the @Device@ resource to be returned in the response. The fields @id@ and @num_id@ are always returned, along with any other fields specified in snake_case format, for example: @last_heartbeat_time@.
    , fieldMask :: (Core.Maybe Core.FieldMask)
      -- | If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (@num_id@) or the user-defined string (@id@). For example, if @456@ is specified, returns only the gateways to which the device with @num_id@ 456 is bound.
    , gatewayListOptionsAssociationsDeviceId :: (Core.Maybe Core.Text)
      -- | If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (@num_id@) or the user-defined string (@id@). For example, if @123@ is specified, only devices bound to the gateway with @num_id@ 123 are returned.
    , gatewayListOptionsAssociationsGatewayId :: (Core.Maybe Core.Text)
      -- | If @GATEWAY@ is specified, only gateways are returned. If @NON_GATEWAY@ is specified, only non-gateway devices are returned. If @GATEWAY_TYPE_UNSPECIFIED@ is specified, all devices are returned.
    , gatewayListOptionsGatewayType :: (Core.Maybe
   ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType)
      -- | The maximum number of devices to return in the response. If this value is zero, the service will select a default size. A call may return fewer objects than requested. A non-empty @next_page_token@ in the response indicates that more data is available.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The value returned by the last @ListDevicesResponse@; indicates that this is a continuation of a prior @ListDevices@ call and the system should return the next page of data.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The device registry path. Required. For example, @projects\/my-project\/locations\/us-central1\/registries\/my-registry@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesGroupsDevicesList' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesGroupsDevicesList 
    ::  Core.Text
       -- ^  Required. The device registry path. Required. For example, @projects\/my-project\/locations\/us-central1\/registries\/my-registry@. See 'parent'.
    -> CloudIOTProjectsLocationsRegistriesGroupsDevicesList
newCloudIOTProjectsLocationsRegistriesGroupsDevicesList parent =
  CloudIOTProjectsLocationsRegistriesGroupsDevicesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , deviceIds = Core.Nothing
    , deviceNumIds = Core.Nothing
    , fieldMask = Core.Nothing
    , gatewayListOptionsAssociationsDeviceId = Core.Nothing
    , gatewayListOptionsAssociationsGatewayId = Core.Nothing
    , gatewayListOptionsGatewayType = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIOTProjectsLocationsRegistriesGroupsDevicesList
         where
        type Rs
               CloudIOTProjectsLocationsRegistriesGroupsDevicesList
             = ListDevicesResponse
        type Scopes
               CloudIOTProjectsLocationsRegistriesGroupsDevicesList
             = '[CloudPlatform'FullControl, Cloudiot'FullControl]
        requestClient
          CloudIOTProjectsLocationsRegistriesGroupsDevicesList{..}
          = go parent xgafv accessToken callback
              (deviceIds Core.^. Core._Default)
              (deviceNumIds Core.^. Core._Default)
              fieldMask
              gatewayListOptionsAssociationsDeviceId
              gatewayListOptionsAssociationsGatewayId
              gatewayListOptionsGatewayType
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIOTService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIOTProjectsLocationsRegistriesGroupsDevicesListResource)
                      Core.mempty

