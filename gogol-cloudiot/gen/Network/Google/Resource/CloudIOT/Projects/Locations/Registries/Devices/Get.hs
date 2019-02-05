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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.get@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Get
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesGetResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesGet
    , ProjectsLocationsRegistriesDevicesGet

    -- * Request Lenses
    , plrdgXgafv
    , plrdgUploadProtocol
    , plrdgAccessToken
    , plrdgUploadType
    , plrdgFieldMask
    , plrdgName
    , plrdgCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.get@ method which the
-- 'ProjectsLocationsRegistriesDevicesGet' request conforms to.
type ProjectsLocationsRegistriesDevicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "fieldMask" GFieldMask :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Device

-- | Gets details about a device.
--
-- /See:/ 'projectsLocationsRegistriesDevicesGet' smart constructor.
data ProjectsLocationsRegistriesDevicesGet = ProjectsLocationsRegistriesDevicesGet'
    { _plrdgXgafv          :: !(Maybe Xgafv)
    , _plrdgUploadProtocol :: !(Maybe Text)
    , _plrdgAccessToken    :: !(Maybe Text)
    , _plrdgUploadType     :: !(Maybe Text)
    , _plrdgFieldMask      :: !(Maybe GFieldMask)
    , _plrdgName           :: !Text
    , _plrdgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdgXgafv'
--
-- * 'plrdgUploadProtocol'
--
-- * 'plrdgAccessToken'
--
-- * 'plrdgUploadType'
--
-- * 'plrdgFieldMask'
--
-- * 'plrdgName'
--
-- * 'plrdgCallback'
projectsLocationsRegistriesDevicesGet
    :: Text -- ^ 'plrdgName'
    -> ProjectsLocationsRegistriesDevicesGet
projectsLocationsRegistriesDevicesGet pPlrdgName_ =
    ProjectsLocationsRegistriesDevicesGet'
    { _plrdgXgafv = Nothing
    , _plrdgUploadProtocol = Nothing
    , _plrdgAccessToken = Nothing
    , _plrdgUploadType = Nothing
    , _plrdgFieldMask = Nothing
    , _plrdgName = pPlrdgName_
    , _plrdgCallback = Nothing
    }

-- | V1 error format.
plrdgXgafv :: Lens' ProjectsLocationsRegistriesDevicesGet (Maybe Xgafv)
plrdgXgafv
  = lens _plrdgXgafv (\ s a -> s{_plrdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdgUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesGet (Maybe Text)
plrdgUploadProtocol
  = lens _plrdgUploadProtocol
      (\ s a -> s{_plrdgUploadProtocol = a})

-- | OAuth access token.
plrdgAccessToken :: Lens' ProjectsLocationsRegistriesDevicesGet (Maybe Text)
plrdgAccessToken
  = lens _plrdgAccessToken
      (\ s a -> s{_plrdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdgUploadType :: Lens' ProjectsLocationsRegistriesDevicesGet (Maybe Text)
plrdgUploadType
  = lens _plrdgUploadType
      (\ s a -> s{_plrdgUploadType = a})

-- | The fields of the \`Device\` resource to be returned in the response. If
-- the field mask is unset or empty, all fields are returned.
plrdgFieldMask :: Lens' ProjectsLocationsRegistriesDevicesGet (Maybe GFieldMask)
plrdgFieldMask
  = lens _plrdgFieldMask
      (\ s a -> s{_plrdgFieldMask = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrdgName :: Lens' ProjectsLocationsRegistriesDevicesGet Text
plrdgName
  = lens _plrdgName (\ s a -> s{_plrdgName = a})

-- | JSONP
plrdgCallback :: Lens' ProjectsLocationsRegistriesDevicesGet (Maybe Text)
plrdgCallback
  = lens _plrdgCallback
      (\ s a -> s{_plrdgCallback = a})

instance GoogleRequest
         ProjectsLocationsRegistriesDevicesGet where
        type Rs ProjectsLocationsRegistriesDevicesGet =
             Device
        type Scopes ProjectsLocationsRegistriesDevicesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesGet'{..}
          = go _plrdgName _plrdgXgafv _plrdgUploadProtocol
              _plrdgAccessToken
              _plrdgUploadType
              _plrdgFieldMask
              _plrdgCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesDevicesGetResource)
                      mempty
