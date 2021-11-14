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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.get@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.Get
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesGetResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesGet
    , ProjectsLocationsRegistriesGroupsDevicesGet

    -- * Request Lenses
    , plrgdgXgafv
    , plrgdgUploadProtocol
    , plrgdgAccessToken
    , plrgdgUploadType
    , plrgdgFieldMask
    , plrgdgName
    , plrgdgCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.get@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesGet' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesGetResource
     =
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
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesGet' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesGet =
  ProjectsLocationsRegistriesGroupsDevicesGet'
    { _plrgdgXgafv          :: !(Maybe Xgafv)
    , _plrgdgUploadProtocol :: !(Maybe Text)
    , _plrgdgAccessToken    :: !(Maybe Text)
    , _plrgdgUploadType     :: !(Maybe Text)
    , _plrgdgFieldMask      :: !(Maybe GFieldMask)
    , _plrgdgName           :: !Text
    , _plrgdgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdgXgafv'
--
-- * 'plrgdgUploadProtocol'
--
-- * 'plrgdgAccessToken'
--
-- * 'plrgdgUploadType'
--
-- * 'plrgdgFieldMask'
--
-- * 'plrgdgName'
--
-- * 'plrgdgCallback'
projectsLocationsRegistriesGroupsDevicesGet
    :: Text -- ^ 'plrgdgName'
    -> ProjectsLocationsRegistriesGroupsDevicesGet
projectsLocationsRegistriesGroupsDevicesGet pPlrgdgName_ =
  ProjectsLocationsRegistriesGroupsDevicesGet'
    { _plrgdgXgafv = Nothing
    , _plrgdgUploadProtocol = Nothing
    , _plrgdgAccessToken = Nothing
    , _plrgdgUploadType = Nothing
    , _plrgdgFieldMask = Nothing
    , _plrgdgName = pPlrgdgName_
    , _plrgdgCallback = Nothing
    }


-- | V1 error format.
plrgdgXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet (Maybe Xgafv)
plrgdgXgafv
  = lens _plrgdgXgafv (\ s a -> s{_plrgdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdgUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet (Maybe Text)
plrgdgUploadProtocol
  = lens _plrgdgUploadProtocol
      (\ s a -> s{_plrgdgUploadProtocol = a})

-- | OAuth access token.
plrgdgAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet (Maybe Text)
plrgdgAccessToken
  = lens _plrgdgAccessToken
      (\ s a -> s{_plrgdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdgUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet (Maybe Text)
plrgdgUploadType
  = lens _plrgdgUploadType
      (\ s a -> s{_plrgdgUploadType = a})

-- | The fields of the \`Device\` resource to be returned in the response. If
-- the field mask is unset or empty, all fields are returned.
plrgdgFieldMask :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet (Maybe GFieldMask)
plrgdgFieldMask
  = lens _plrgdgFieldMask
      (\ s a -> s{_plrgdgFieldMask = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrgdgName :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet Text
plrgdgName
  = lens _plrgdgName (\ s a -> s{_plrgdgName = a})

-- | JSONP
plrgdgCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesGet (Maybe Text)
plrgdgCallback
  = lens _plrgdgCallback
      (\ s a -> s{_plrgdgCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsDevicesGet
         where
        type Rs ProjectsLocationsRegistriesGroupsDevicesGet =
             Device
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesGet'{..}
          = go _plrgdgName _plrgdgXgafv _plrgdgUploadProtocol
              _plrgdgAccessToken
              _plrgdgUploadType
              _plrgdgFieldMask
              _plrgdgCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesGetResource)
                      mempty
