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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List devices in a device registry.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesListResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesList
    , ProjectsLocationsRegistriesDevicesList

    -- * Request Lenses
    , plrdlParent
    , plrdlXgafv
    , plrdlUploadProtocol
    , plrdlAccessToken
    , plrdlDeviceNumIds
    , plrdlGatewayListOptionsAssociationsDeviceId
    , plrdlGatewayListOptionsAssociationsGatewayId
    , plrdlUploadType
    , plrdlDeviceIds
    , plrdlFieldMask
    , plrdlGatewayListOptionsGatewayType
    , plrdlPageToken
    , plrdlPageSize
    , plrdlCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.list@ method which the
-- 'ProjectsLocationsRegistriesDevicesList' request conforms to.
type ProjectsLocationsRegistriesDevicesListResource =
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
                             QueryParam "gatewayListOptions.gatewayType" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListDevicesResponse

-- | List devices in a device registry.
--
-- /See:/ 'projectsLocationsRegistriesDevicesList' smart constructor.
data ProjectsLocationsRegistriesDevicesList =
  ProjectsLocationsRegistriesDevicesList'
    { _plrdlParent                                  :: !Text
    , _plrdlXgafv                                   :: !(Maybe Xgafv)
    , _plrdlUploadProtocol                          :: !(Maybe Text)
    , _plrdlAccessToken                             :: !(Maybe Text)
    , _plrdlDeviceNumIds                            :: !(Maybe [Textual Word64])
    , _plrdlGatewayListOptionsAssociationsDeviceId  :: !(Maybe Text)
    , _plrdlGatewayListOptionsAssociationsGatewayId :: !(Maybe Text)
    , _plrdlUploadType                              :: !(Maybe Text)
    , _plrdlDeviceIds                               :: !(Maybe [Text])
    , _plrdlFieldMask                               :: !(Maybe GFieldMask)
    , _plrdlGatewayListOptionsGatewayType           :: !(Maybe Text)
    , _plrdlPageToken                               :: !(Maybe Text)
    , _plrdlPageSize                                :: !(Maybe (Textual Int32))
    , _plrdlCallback                                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdlParent'
--
-- * 'plrdlXgafv'
--
-- * 'plrdlUploadProtocol'
--
-- * 'plrdlAccessToken'
--
-- * 'plrdlDeviceNumIds'
--
-- * 'plrdlGatewayListOptionsAssociationsDeviceId'
--
-- * 'plrdlGatewayListOptionsAssociationsGatewayId'
--
-- * 'plrdlUploadType'
--
-- * 'plrdlDeviceIds'
--
-- * 'plrdlFieldMask'
--
-- * 'plrdlGatewayListOptionsGatewayType'
--
-- * 'plrdlPageToken'
--
-- * 'plrdlPageSize'
--
-- * 'plrdlCallback'
projectsLocationsRegistriesDevicesList
    :: Text -- ^ 'plrdlParent'
    -> ProjectsLocationsRegistriesDevicesList
projectsLocationsRegistriesDevicesList pPlrdlParent_ =
  ProjectsLocationsRegistriesDevicesList'
    { _plrdlParent = pPlrdlParent_
    , _plrdlXgafv = Nothing
    , _plrdlUploadProtocol = Nothing
    , _plrdlAccessToken = Nothing
    , _plrdlDeviceNumIds = Nothing
    , _plrdlGatewayListOptionsAssociationsDeviceId = Nothing
    , _plrdlGatewayListOptionsAssociationsGatewayId = Nothing
    , _plrdlUploadType = Nothing
    , _plrdlDeviceIds = Nothing
    , _plrdlFieldMask = Nothing
    , _plrdlGatewayListOptionsGatewayType = Nothing
    , _plrdlPageToken = Nothing
    , _plrdlPageSize = Nothing
    , _plrdlCallback = Nothing
    }

-- | The device registry path. Required. For example,
-- \`projects\/my-project\/locations\/us-central1\/registries\/my-registry\`.
plrdlParent :: Lens' ProjectsLocationsRegistriesDevicesList Text
plrdlParent
  = lens _plrdlParent (\ s a -> s{_plrdlParent = a})

-- | V1 error format.
plrdlXgafv :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Xgafv)
plrdlXgafv
  = lens _plrdlXgafv (\ s a -> s{_plrdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdlUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlUploadProtocol
  = lens _plrdlUploadProtocol
      (\ s a -> s{_plrdlUploadProtocol = a})

-- | OAuth access token.
plrdlAccessToken :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlAccessToken
  = lens _plrdlAccessToken
      (\ s a -> s{_plrdlAccessToken = a})

-- | A list of device numeric IDs. If empty, this field is ignored. Maximum
-- IDs: 10,000.
plrdlDeviceNumIds :: Lens' ProjectsLocationsRegistriesDevicesList [Word64]
plrdlDeviceNumIds
  = lens _plrdlDeviceNumIds
      (\ s a -> s{_plrdlDeviceNumIds = a})
      . _Default
      . _Coerce

-- | If set, returns only the gateways with which the specified device is
-- associated. The device ID can be numeric (\`num_id\`) or the
-- user-defined string (\`id\`). For example, if \`456\` is specified,
-- returns only the gateways to which the device with \`num_id\` 456 is
-- bound.
plrdlGatewayListOptionsAssociationsDeviceId :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlGatewayListOptionsAssociationsDeviceId
  = lens _plrdlGatewayListOptionsAssociationsDeviceId
      (\ s a ->
         s{_plrdlGatewayListOptionsAssociationsDeviceId = a})

-- | If set, only devices associated with the specified gateway are returned.
-- The gateway ID can be numeric (\`num_id\`) or the user-defined string
-- (\`id\`). For example, if \`123\` is specified, only devices bound to
-- the gateway with \`num_id\` 123 are returned.
plrdlGatewayListOptionsAssociationsGatewayId :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlGatewayListOptionsAssociationsGatewayId
  = lens _plrdlGatewayListOptionsAssociationsGatewayId
      (\ s a ->
         s{_plrdlGatewayListOptionsAssociationsGatewayId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdlUploadType :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlUploadType
  = lens _plrdlUploadType
      (\ s a -> s{_plrdlUploadType = a})

-- | A list of device string IDs. For example, \`[\'device0\',
-- \'device12\']\`. If empty, this field is ignored. Maximum IDs: 10,000
plrdlDeviceIds :: Lens' ProjectsLocationsRegistriesDevicesList [Text]
plrdlDeviceIds
  = lens _plrdlDeviceIds
      (\ s a -> s{_plrdlDeviceIds = a})
      . _Default
      . _Coerce

-- | The fields of the \`Device\` resource to be returned in the response.
-- The fields \`id\` and \`num_id\` are always returned, along with any
-- other fields specified.
plrdlFieldMask :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe GFieldMask)
plrdlFieldMask
  = lens _plrdlFieldMask
      (\ s a -> s{_plrdlFieldMask = a})

-- | If \`GATEWAY\` is specified, only gateways are returned. If
-- \`NON_GATEWAY\` is specified, only non-gateway devices are returned. If
-- \`GATEWAY_TYPE_UNSPECIFIED\` is specified, all devices are returned.
plrdlGatewayListOptionsGatewayType :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlGatewayListOptionsGatewayType
  = lens _plrdlGatewayListOptionsGatewayType
      (\ s a -> s{_plrdlGatewayListOptionsGatewayType = a})

-- | The value returned by the last \`ListDevicesResponse\`; indicates that
-- this is a continuation of a prior \`ListDevices\` call and the system
-- should return the next page of data.
plrdlPageToken :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlPageToken
  = lens _plrdlPageToken
      (\ s a -> s{_plrdlPageToken = a})

-- | The maximum number of devices to return in the response. If this value
-- is zero, the service will select a default size. A call may return fewer
-- objects than requested. A non-empty \`next_page_token\` in the response
-- indicates that more data is available.
plrdlPageSize :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Int32)
plrdlPageSize
  = lens _plrdlPageSize
      (\ s a -> s{_plrdlPageSize = a})
      . mapping _Coerce

-- | JSONP
plrdlCallback :: Lens' ProjectsLocationsRegistriesDevicesList (Maybe Text)
plrdlCallback
  = lens _plrdlCallback
      (\ s a -> s{_plrdlCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesDevicesList
         where
        type Rs ProjectsLocationsRegistriesDevicesList =
             ListDevicesResponse
        type Scopes ProjectsLocationsRegistriesDevicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesList'{..}
          = go _plrdlParent _plrdlXgafv _plrdlUploadProtocol
              _plrdlAccessToken
              (_plrdlDeviceNumIds ^. _Default)
              _plrdlGatewayListOptionsAssociationsDeviceId
              _plrdlGatewayListOptionsAssociationsGatewayId
              _plrdlUploadType
              (_plrdlDeviceIds ^. _Default)
              _plrdlFieldMask
              _plrdlGatewayListOptionsGatewayType
              _plrdlPageToken
              _plrdlPageSize
              _plrdlCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesDevicesListResource)
                      mempty
