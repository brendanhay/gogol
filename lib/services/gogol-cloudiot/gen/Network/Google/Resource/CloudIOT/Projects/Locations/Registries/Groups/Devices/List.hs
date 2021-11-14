{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List devices in a device registry.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesListResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesList
    , ProjectsLocationsRegistriesGroupsDevicesList

    -- * Request Lenses
    , plrgdlParent
    , plrgdlXgafv
    , plrgdlUploadProtocol
    , plrgdlAccessToken
    , plrgdlDeviceNumIds
    , plrgdlGatewayListOptionsAssociationsDeviceId
    , plrgdlGatewayListOptionsAssociationsGatewayId
    , plrgdlUploadType
    , plrgdlDeviceIds
    , plrgdlFieldMask
    , plrgdlGatewayListOptionsGatewayType
    , plrgdlPageToken
    , plrgdlPageSize
    , plrgdlCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.list@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesList' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "devices" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParams "deviceNumIds" (Textual Word64) :>
                   QueryParam "gatewayListOptions.associationsDeviceId"
                     Text
                     :>
                     QueryParam "gatewayListOptions.associationsGatewayId"
                       Text
                       :>
                       QueryParam "uploadType" Text :>
                         QueryParams "deviceIds" Text :>
                           QueryParam "fieldMask" GFieldMask :>
                             QueryParam "gatewayListOptions.gatewayType"
                               ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
                               :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListDevicesResponse

-- | List devices in a device registry.
--
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesList' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesList =
  ProjectsLocationsRegistriesGroupsDevicesList'
    { _plrgdlParent :: !Text
    , _plrgdlXgafv :: !(Maybe Xgafv)
    , _plrgdlUploadProtocol :: !(Maybe Text)
    , _plrgdlAccessToken :: !(Maybe Text)
    , _plrgdlDeviceNumIds :: !(Maybe [Textual Word64])
    , _plrgdlGatewayListOptionsAssociationsDeviceId :: !(Maybe Text)
    , _plrgdlGatewayListOptionsAssociationsGatewayId :: !(Maybe Text)
    , _plrgdlUploadType :: !(Maybe Text)
    , _plrgdlDeviceIds :: !(Maybe [Text])
    , _plrgdlFieldMask :: !(Maybe GFieldMask)
    , _plrgdlGatewayListOptionsGatewayType :: !(Maybe ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType)
    , _plrgdlPageToken :: !(Maybe Text)
    , _plrgdlPageSize :: !(Maybe (Textual Int32))
    , _plrgdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdlParent'
--
-- * 'plrgdlXgafv'
--
-- * 'plrgdlUploadProtocol'
--
-- * 'plrgdlAccessToken'
--
-- * 'plrgdlDeviceNumIds'
--
-- * 'plrgdlGatewayListOptionsAssociationsDeviceId'
--
-- * 'plrgdlGatewayListOptionsAssociationsGatewayId'
--
-- * 'plrgdlUploadType'
--
-- * 'plrgdlDeviceIds'
--
-- * 'plrgdlFieldMask'
--
-- * 'plrgdlGatewayListOptionsGatewayType'
--
-- * 'plrgdlPageToken'
--
-- * 'plrgdlPageSize'
--
-- * 'plrgdlCallback'
projectsLocationsRegistriesGroupsDevicesList
    :: Text -- ^ 'plrgdlParent'
    -> ProjectsLocationsRegistriesGroupsDevicesList
projectsLocationsRegistriesGroupsDevicesList pPlrgdlParent_ =
  ProjectsLocationsRegistriesGroupsDevicesList'
    { _plrgdlParent = pPlrgdlParent_
    , _plrgdlXgafv = Nothing
    , _plrgdlUploadProtocol = Nothing
    , _plrgdlAccessToken = Nothing
    , _plrgdlDeviceNumIds = Nothing
    , _plrgdlGatewayListOptionsAssociationsDeviceId = Nothing
    , _plrgdlGatewayListOptionsAssociationsGatewayId = Nothing
    , _plrgdlUploadType = Nothing
    , _plrgdlDeviceIds = Nothing
    , _plrgdlFieldMask = Nothing
    , _plrgdlGatewayListOptionsGatewayType = Nothing
    , _plrgdlPageToken = Nothing
    , _plrgdlPageSize = Nothing
    , _plrgdlCallback = Nothing
    }


-- | Required. The device registry path. Required. For example,
-- \`projects\/my-project\/locations\/us-central1\/registries\/my-registry\`.
plrgdlParent :: Lens' ProjectsLocationsRegistriesGroupsDevicesList Text
plrgdlParent
  = lens _plrgdlParent (\ s a -> s{_plrgdlParent = a})

-- | V1 error format.
plrgdlXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Xgafv)
plrgdlXgafv
  = lens _plrgdlXgafv (\ s a -> s{_plrgdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdlUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlUploadProtocol
  = lens _plrgdlUploadProtocol
      (\ s a -> s{_plrgdlUploadProtocol = a})

-- | OAuth access token.
plrgdlAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlAccessToken
  = lens _plrgdlAccessToken
      (\ s a -> s{_plrgdlAccessToken = a})

-- | A list of device numeric IDs. If empty, this field is ignored. Maximum
-- IDs: 10,000.
plrgdlDeviceNumIds :: Lens' ProjectsLocationsRegistriesGroupsDevicesList [Word64]
plrgdlDeviceNumIds
  = lens _plrgdlDeviceNumIds
      (\ s a -> s{_plrgdlDeviceNumIds = a})
      . _Default
      . _Coerce

-- | If set, returns only the gateways with which the specified device is
-- associated. The device ID can be numeric (\`num_id\`) or the
-- user-defined string (\`id\`). For example, if \`456\` is specified,
-- returns only the gateways to which the device with \`num_id\` 456 is
-- bound.
plrgdlGatewayListOptionsAssociationsDeviceId :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlGatewayListOptionsAssociationsDeviceId
  = lens _plrgdlGatewayListOptionsAssociationsDeviceId
      (\ s a ->
         s{_plrgdlGatewayListOptionsAssociationsDeviceId = a})

-- | If set, only devices associated with the specified gateway are returned.
-- The gateway ID can be numeric (\`num_id\`) or the user-defined string
-- (\`id\`). For example, if \`123\` is specified, only devices bound to
-- the gateway with \`num_id\` 123 are returned.
plrgdlGatewayListOptionsAssociationsGatewayId :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlGatewayListOptionsAssociationsGatewayId
  = lens _plrgdlGatewayListOptionsAssociationsGatewayId
      (\ s a ->
         s{_plrgdlGatewayListOptionsAssociationsGatewayId =
             a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdlUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlUploadType
  = lens _plrgdlUploadType
      (\ s a -> s{_plrgdlUploadType = a})

-- | A list of device string IDs. For example, \`[\'device0\',
-- \'device12\']\`. If empty, this field is ignored. Maximum IDs: 10,000
plrgdlDeviceIds :: Lens' ProjectsLocationsRegistriesGroupsDevicesList [Text]
plrgdlDeviceIds
  = lens _plrgdlDeviceIds
      (\ s a -> s{_plrgdlDeviceIds = a})
      . _Default
      . _Coerce

-- | The fields of the \`Device\` resource to be returned in the response.
-- The fields \`id\` and \`num_id\` are always returned, along with any
-- other fields specified in snake_case format, for example:
-- \`last_heartbeat_time\`.
plrgdlFieldMask :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe GFieldMask)
plrgdlFieldMask
  = lens _plrgdlFieldMask
      (\ s a -> s{_plrgdlFieldMask = a})

-- | If \`GATEWAY\` is specified, only gateways are returned. If
-- \`NON_GATEWAY\` is specified, only non-gateway devices are returned. If
-- \`GATEWAY_TYPE_UNSPECIFIED\` is specified, all devices are returned.
plrgdlGatewayListOptionsGatewayType :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType)
plrgdlGatewayListOptionsGatewayType
  = lens _plrgdlGatewayListOptionsGatewayType
      (\ s a ->
         s{_plrgdlGatewayListOptionsGatewayType = a})

-- | The value returned by the last \`ListDevicesResponse\`; indicates that
-- this is a continuation of a prior \`ListDevices\` call and the system
-- should return the next page of data.
plrgdlPageToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlPageToken
  = lens _plrgdlPageToken
      (\ s a -> s{_plrgdlPageToken = a})

-- | The maximum number of devices to return in the response. If this value
-- is zero, the service will select a default size. A call may return fewer
-- objects than requested. A non-empty \`next_page_token\` in the response
-- indicates that more data is available.
plrgdlPageSize :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Int32)
plrgdlPageSize
  = lens _plrgdlPageSize
      (\ s a -> s{_plrgdlPageSize = a})
      . mapping _Coerce

-- | JSONP
plrgdlCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesList (Maybe Text)
plrgdlCallback
  = lens _plrgdlCallback
      (\ s a -> s{_plrgdlCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsDevicesList
         where
        type Rs ProjectsLocationsRegistriesGroupsDevicesList
             = ListDevicesResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesList'{..}
          = go _plrgdlParent _plrgdlXgafv _plrgdlUploadProtocol
              _plrgdlAccessToken
              (_plrgdlDeviceNumIds ^. _Default)
              _plrgdlGatewayListOptionsAssociationsDeviceId
              _plrgdlGatewayListOptionsAssociationsGatewayId
              _plrgdlUploadType
              (_plrgdlDeviceIds ^. _Default)
              _plrgdlFieldMask
              _plrgdlGatewayListOptionsGatewayType
              _plrgdlPageToken
              _plrgdlPageSize
              _plrgdlCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesListResource)
                      mempty
