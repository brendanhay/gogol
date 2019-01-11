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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
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
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.sendCommandToDevice@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesSendCommandToDeviceResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesSendCommandToDevice
    , ProjectsLocationsRegistriesDevicesSendCommandToDevice

    -- * Request Lenses
    , plrdsctdXgafv
    , plrdsctdUploadProtocol
    , plrdsctdAccessToken
    , plrdsctdUploadType
    , plrdsctdPayload
    , plrdsctdName
    , plrdsctdCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.sendCommandToDevice@ method which the
-- 'ProjectsLocationsRegistriesDevicesSendCommandToDevice' request conforms to.
type ProjectsLocationsRegistriesDevicesSendCommandToDeviceResource
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
-- /See:/ 'projectsLocationsRegistriesDevicesSendCommandToDevice' smart constructor.
data ProjectsLocationsRegistriesDevicesSendCommandToDevice = ProjectsLocationsRegistriesDevicesSendCommandToDevice'
    { _plrdsctdXgafv          :: !(Maybe Xgafv)
    , _plrdsctdUploadProtocol :: !(Maybe Text)
    , _plrdsctdAccessToken    :: !(Maybe Text)
    , _plrdsctdUploadType     :: !(Maybe Text)
    , _plrdsctdPayload        :: !SendCommandToDeviceRequest
    , _plrdsctdName           :: !Text
    , _plrdsctdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesSendCommandToDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdsctdXgafv'
--
-- * 'plrdsctdUploadProtocol'
--
-- * 'plrdsctdAccessToken'
--
-- * 'plrdsctdUploadType'
--
-- * 'plrdsctdPayload'
--
-- * 'plrdsctdName'
--
-- * 'plrdsctdCallback'
projectsLocationsRegistriesDevicesSendCommandToDevice
    :: SendCommandToDeviceRequest -- ^ 'plrdsctdPayload'
    -> Text -- ^ 'plrdsctdName'
    -> ProjectsLocationsRegistriesDevicesSendCommandToDevice
projectsLocationsRegistriesDevicesSendCommandToDevice pPlrdsctdPayload_ pPlrdsctdName_ =
    ProjectsLocationsRegistriesDevicesSendCommandToDevice'
    { _plrdsctdXgafv = Nothing
    , _plrdsctdUploadProtocol = Nothing
    , _plrdsctdAccessToken = Nothing
    , _plrdsctdUploadType = Nothing
    , _plrdsctdPayload = pPlrdsctdPayload_
    , _plrdsctdName = pPlrdsctdName_
    , _plrdsctdCallback = Nothing
    }

-- | V1 error format.
plrdsctdXgafv :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice (Maybe Xgafv)
plrdsctdXgafv
  = lens _plrdsctdXgafv
      (\ s a -> s{_plrdsctdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdsctdUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice (Maybe Text)
plrdsctdUploadProtocol
  = lens _plrdsctdUploadProtocol
      (\ s a -> s{_plrdsctdUploadProtocol = a})

-- | OAuth access token.
plrdsctdAccessToken :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice (Maybe Text)
plrdsctdAccessToken
  = lens _plrdsctdAccessToken
      (\ s a -> s{_plrdsctdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdsctdUploadType :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice (Maybe Text)
plrdsctdUploadType
  = lens _plrdsctdUploadType
      (\ s a -> s{_plrdsctdUploadType = a})

-- | Multipart request metadata.
plrdsctdPayload :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice SendCommandToDeviceRequest
plrdsctdPayload
  = lens _plrdsctdPayload
      (\ s a -> s{_plrdsctdPayload = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrdsctdName :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice Text
plrdsctdName
  = lens _plrdsctdName (\ s a -> s{_plrdsctdName = a})

-- | JSONP
plrdsctdCallback :: Lens' ProjectsLocationsRegistriesDevicesSendCommandToDevice (Maybe Text)
plrdsctdCallback
  = lens _plrdsctdCallback
      (\ s a -> s{_plrdsctdCallback = a})

instance GoogleRequest
         ProjectsLocationsRegistriesDevicesSendCommandToDevice
         where
        type Rs
               ProjectsLocationsRegistriesDevicesSendCommandToDevice
             = SendCommandToDeviceResponse
        type Scopes
               ProjectsLocationsRegistriesDevicesSendCommandToDevice
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesSendCommandToDevice'{..}
          = go _plrdsctdName _plrdsctdXgafv
              _plrdsctdUploadProtocol
              _plrdsctdAccessToken
              _plrdsctdUploadType
              _plrdsctdCallback
              (Just AltJSON)
              _plrdsctdPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesSendCommandToDeviceResource)
                      mempty
