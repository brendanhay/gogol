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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.SendCommandToDevice
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a command to the specified device. In order for a device to be
-- able to receive commands, it must: 1) be connected to Cloud IoT Core
-- using the MQTT protocol, and 2) be subscribed to the group of MQTT
-- topics specified by \/devices\/{device-id}\/commands\/#. This
-- subscription will receive commands at the top-level topic
-- \/devices\/{device-id}\/commands as well as commands for subfolders,
-- like \/devices\/{device-id}\/commands\/subfolder. Note that subscribing
-- to specific subfolders is not supported. If the command could not be
-- delivered to the device, this method will return an error; in
-- particular, if the device is not subscribed, this method will return
-- FAILED_PRECONDITION. Otherwise, this method will return OK. If the
-- subscription is QoS 1, at least once delivery will be guaranteed; for
-- QoS 0, no acknowledgment will be expected from the device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.sendCommandToDevice@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.SendCommandToDevice
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesSendCommandToDeviceResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesSendCommandToDevice
    , ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice

    -- * Request Lenses
    , plrgdsctdXgafv
    , plrgdsctdUploadProtocol
    , plrgdsctdAccessToken
    , plrgdsctdUploadType
    , plrgdsctdPayload
    , plrgdsctdName
    , plrgdsctdCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.sendCommandToDevice@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesSendCommandToDeviceResource
     =
     "v1" :>
       CaptureMode "name" "sendCommandToDevice" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SendCommandToDeviceRequest :>
                       Post '[JSON] SendCommandToDeviceResponse

-- | Sends a command to the specified device. In order for a device to be
-- able to receive commands, it must: 1) be connected to Cloud IoT Core
-- using the MQTT protocol, and 2) be subscribed to the group of MQTT
-- topics specified by \/devices\/{device-id}\/commands\/#. This
-- subscription will receive commands at the top-level topic
-- \/devices\/{device-id}\/commands as well as commands for subfolders,
-- like \/devices\/{device-id}\/commands\/subfolder. Note that subscribing
-- to specific subfolders is not supported. If the command could not be
-- delivered to the device, this method will return an error; in
-- particular, if the device is not subscribed, this method will return
-- FAILED_PRECONDITION. Otherwise, this method will return OK. If the
-- subscription is QoS 1, at least once delivery will be guaranteed; for
-- QoS 0, no acknowledgment will be expected from the device.
--
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesSendCommandToDevice' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice =
  ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice'
    { _plrgdsctdXgafv          :: !(Maybe Xgafv)
    , _plrgdsctdUploadProtocol :: !(Maybe Text)
    , _plrgdsctdAccessToken    :: !(Maybe Text)
    , _plrgdsctdUploadType     :: !(Maybe Text)
    , _plrgdsctdPayload        :: !SendCommandToDeviceRequest
    , _plrgdsctdName           :: !Text
    , _plrgdsctdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdsctdXgafv'
--
-- * 'plrgdsctdUploadProtocol'
--
-- * 'plrgdsctdAccessToken'
--
-- * 'plrgdsctdUploadType'
--
-- * 'plrgdsctdPayload'
--
-- * 'plrgdsctdName'
--
-- * 'plrgdsctdCallback'
projectsLocationsRegistriesGroupsDevicesSendCommandToDevice
    :: SendCommandToDeviceRequest -- ^ 'plrgdsctdPayload'
    -> Text -- ^ 'plrgdsctdName'
    -> ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice
projectsLocationsRegistriesGroupsDevicesSendCommandToDevice pPlrgdsctdPayload_ pPlrgdsctdName_ =
  ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice'
    { _plrgdsctdXgafv = Nothing
    , _plrgdsctdUploadProtocol = Nothing
    , _plrgdsctdAccessToken = Nothing
    , _plrgdsctdUploadType = Nothing
    , _plrgdsctdPayload = pPlrgdsctdPayload_
    , _plrgdsctdName = pPlrgdsctdName_
    , _plrgdsctdCallback = Nothing
    }


-- | V1 error format.
plrgdsctdXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice (Maybe Xgafv)
plrgdsctdXgafv
  = lens _plrgdsctdXgafv
      (\ s a -> s{_plrgdsctdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdsctdUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice (Maybe Text)
plrgdsctdUploadProtocol
  = lens _plrgdsctdUploadProtocol
      (\ s a -> s{_plrgdsctdUploadProtocol = a})

-- | OAuth access token.
plrgdsctdAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice (Maybe Text)
plrgdsctdAccessToken
  = lens _plrgdsctdAccessToken
      (\ s a -> s{_plrgdsctdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdsctdUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice (Maybe Text)
plrgdsctdUploadType
  = lens _plrgdsctdUploadType
      (\ s a -> s{_plrgdsctdUploadType = a})

-- | Multipart request metadata.
plrgdsctdPayload :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice SendCommandToDeviceRequest
plrgdsctdPayload
  = lens _plrgdsctdPayload
      (\ s a -> s{_plrgdsctdPayload = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrgdsctdName :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice Text
plrgdsctdName
  = lens _plrgdsctdName
      (\ s a -> s{_plrgdsctdName = a})

-- | JSONP
plrgdsctdCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice (Maybe Text)
plrgdsctdCallback
  = lens _plrgdsctdCallback
      (\ s a -> s{_plrgdsctdCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice
         where
        type Rs
               ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice
             = SendCommandToDeviceResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesSendCommandToDevice'{..}
          = go _plrgdsctdName _plrgdsctdXgafv
              _plrgdsctdUploadProtocol
              _plrgdsctdAccessToken
              _plrgdsctdUploadType
              _plrgdsctdCallback
              (Just AltJSON)
              _plrgdsctdPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesSendCommandToDeviceResource)
                      mempty
