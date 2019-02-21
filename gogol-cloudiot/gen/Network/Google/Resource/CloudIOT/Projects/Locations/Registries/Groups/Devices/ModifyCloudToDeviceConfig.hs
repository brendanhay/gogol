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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.ModifyCloudToDeviceConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the configuration for the device, which is eventually sent from
-- the Cloud IoT Core servers. Returns the modified configuration version
-- and its metadata.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.modifyCloudToDeviceConfig@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.ModifyCloudToDeviceConfig
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfigResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig
    , ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig

    -- * Request Lenses
    , plrgdmctdcXgafv
    , plrgdmctdcUploadProtocol
    , plrgdmctdcAccessToken
    , plrgdmctdcUploadType
    , plrgdmctdcPayload
    , plrgdmctdcName
    , plrgdmctdcCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.modifyCloudToDeviceConfig@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfigResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig =
  ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig'
    { _plrgdmctdcXgafv          :: !(Maybe Xgafv)
    , _plrgdmctdcUploadProtocol :: !(Maybe Text)
    , _plrgdmctdcAccessToken    :: !(Maybe Text)
    , _plrgdmctdcUploadType     :: !(Maybe Text)
    , _plrgdmctdcPayload        :: !ModifyCloudToDeviceConfigRequest
    , _plrgdmctdcName           :: !Text
    , _plrgdmctdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdmctdcXgafv'
--
-- * 'plrgdmctdcUploadProtocol'
--
-- * 'plrgdmctdcAccessToken'
--
-- * 'plrgdmctdcUploadType'
--
-- * 'plrgdmctdcPayload'
--
-- * 'plrgdmctdcName'
--
-- * 'plrgdmctdcCallback'
projectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig
    :: ModifyCloudToDeviceConfigRequest -- ^ 'plrgdmctdcPayload'
    -> Text -- ^ 'plrgdmctdcName'
    -> ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig
projectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig pPlrgdmctdcPayload_ pPlrgdmctdcName_ =
  ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig'
    { _plrgdmctdcXgafv = Nothing
    , _plrgdmctdcUploadProtocol = Nothing
    , _plrgdmctdcAccessToken = Nothing
    , _plrgdmctdcUploadType = Nothing
    , _plrgdmctdcPayload = pPlrgdmctdcPayload_
    , _plrgdmctdcName = pPlrgdmctdcName_
    , _plrgdmctdcCallback = Nothing
    }


-- | V1 error format.
plrgdmctdcXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig (Maybe Xgafv)
plrgdmctdcXgafv
  = lens _plrgdmctdcXgafv
      (\ s a -> s{_plrgdmctdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdmctdcUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig (Maybe Text)
plrgdmctdcUploadProtocol
  = lens _plrgdmctdcUploadProtocol
      (\ s a -> s{_plrgdmctdcUploadProtocol = a})

-- | OAuth access token.
plrgdmctdcAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig (Maybe Text)
plrgdmctdcAccessToken
  = lens _plrgdmctdcAccessToken
      (\ s a -> s{_plrgdmctdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdmctdcUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig (Maybe Text)
plrgdmctdcUploadType
  = lens _plrgdmctdcUploadType
      (\ s a -> s{_plrgdmctdcUploadType = a})

-- | Multipart request metadata.
plrgdmctdcPayload :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig ModifyCloudToDeviceConfigRequest
plrgdmctdcPayload
  = lens _plrgdmctdcPayload
      (\ s a -> s{_plrgdmctdcPayload = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrgdmctdcName :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig Text
plrgdmctdcName
  = lens _plrgdmctdcName
      (\ s a -> s{_plrgdmctdcName = a})

-- | JSONP
plrgdmctdcCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig (Maybe Text)
plrgdmctdcCallback
  = lens _plrgdmctdcCallback
      (\ s a -> s{_plrgdmctdcCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig
         where
        type Rs
               ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig
             = DeviceConfig
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfig'{..}
          = go _plrgdmctdcName _plrgdmctdcXgafv
              _plrgdmctdcUploadProtocol
              _plrgdmctdcAccessToken
              _plrgdmctdcUploadType
              _plrgdmctdcCallback
              (Just AltJSON)
              _plrgdmctdcPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesModifyCloudToDeviceConfigResource)
                      mempty
