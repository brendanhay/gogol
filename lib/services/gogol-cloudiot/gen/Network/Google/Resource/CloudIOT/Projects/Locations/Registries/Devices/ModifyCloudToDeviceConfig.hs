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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the configuration for the device, which is eventually sent from
-- the Cloud IoT Core servers. Returns the modified configuration version
-- and its metadata.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
    , ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig

    -- * Request Lenses
    , plrdmctdcXgafv
    , plrdmctdcUploadProtocol
    , plrdmctdcAccessToken
    , plrdmctdcUploadType
    , plrdmctdcPayload
    , plrdmctdcName
    , plrdmctdcCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig@ method which the
-- 'ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig' request conforms to.
type ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource
     =
     "v1" :>
       CaptureMode "name" "modifyCloudToDeviceConfig" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyCloudToDeviceConfigRequest :>
                       Post '[JSON] DeviceConfig

-- | Modifies the configuration for the device, which is eventually sent from
-- the Cloud IoT Core servers. Returns the modified configuration version
-- and its metadata.
--
-- /See:/ 'projectsLocationsRegistriesDevicesModifyCloudToDeviceConfig' smart constructor.
data ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig =
  ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig'
    { _plrdmctdcXgafv :: !(Maybe Xgafv)
    , _plrdmctdcUploadProtocol :: !(Maybe Text)
    , _plrdmctdcAccessToken :: !(Maybe Text)
    , _plrdmctdcUploadType :: !(Maybe Text)
    , _plrdmctdcPayload :: !ModifyCloudToDeviceConfigRequest
    , _plrdmctdcName :: !Text
    , _plrdmctdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdmctdcXgafv'
--
-- * 'plrdmctdcUploadProtocol'
--
-- * 'plrdmctdcAccessToken'
--
-- * 'plrdmctdcUploadType'
--
-- * 'plrdmctdcPayload'
--
-- * 'plrdmctdcName'
--
-- * 'plrdmctdcCallback'
projectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
    :: ModifyCloudToDeviceConfigRequest -- ^ 'plrdmctdcPayload'
    -> Text -- ^ 'plrdmctdcName'
    -> ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
projectsLocationsRegistriesDevicesModifyCloudToDeviceConfig pPlrdmctdcPayload_ pPlrdmctdcName_ =
  ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig'
    { _plrdmctdcXgafv = Nothing
    , _plrdmctdcUploadProtocol = Nothing
    , _plrdmctdcAccessToken = Nothing
    , _plrdmctdcUploadType = Nothing
    , _plrdmctdcPayload = pPlrdmctdcPayload_
    , _plrdmctdcName = pPlrdmctdcName_
    , _plrdmctdcCallback = Nothing
    }


-- | V1 error format.
plrdmctdcXgafv :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig (Maybe Xgafv)
plrdmctdcXgafv
  = lens _plrdmctdcXgafv
      (\ s a -> s{_plrdmctdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdmctdcUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig (Maybe Text)
plrdmctdcUploadProtocol
  = lens _plrdmctdcUploadProtocol
      (\ s a -> s{_plrdmctdcUploadProtocol = a})

-- | OAuth access token.
plrdmctdcAccessToken :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig (Maybe Text)
plrdmctdcAccessToken
  = lens _plrdmctdcAccessToken
      (\ s a -> s{_plrdmctdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdmctdcUploadType :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig (Maybe Text)
plrdmctdcUploadType
  = lens _plrdmctdcUploadType
      (\ s a -> s{_plrdmctdcUploadType = a})

-- | Multipart request metadata.
plrdmctdcPayload :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig ModifyCloudToDeviceConfigRequest
plrdmctdcPayload
  = lens _plrdmctdcPayload
      (\ s a -> s{_plrdmctdcPayload = a})

-- | Required. The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrdmctdcName :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig Text
plrdmctdcName
  = lens _plrdmctdcName
      (\ s a -> s{_plrdmctdcName = a})

-- | JSONP
plrdmctdcCallback :: Lens' ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig (Maybe Text)
plrdmctdcCallback
  = lens _plrdmctdcCallback
      (\ s a -> s{_plrdmctdcCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
         where
        type Rs
               ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
             = DeviceConfig
        type Scopes
               ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig'{..}
          = go _plrdmctdcName _plrdmctdcXgafv
              _plrdmctdcUploadProtocol
              _plrdmctdcAccessToken
              _plrdmctdcUploadType
              _plrdmctdcCallback
              (Just AltJSON)
              _plrdmctdcPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource)
                      mempty
