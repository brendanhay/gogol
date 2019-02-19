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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.ConfigVersions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the last few versions of the device configuration in descending
-- order (i.e.: newest first).
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.configVersions.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.ConfigVersions.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesConfigVersionsListResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesConfigVersionsList
    , ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList

    -- * Request Lenses
    , plrgdcvlXgafv
    , plrgdcvlUploadProtocol
    , plrgdcvlAccessToken
    , plrgdcvlUploadType
    , plrgdcvlNumVersions
    , plrgdcvlName
    , plrgdcvlCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.configVersions.list@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesConfigVersionsListResource
     =
     "v1" :>
       Capture "name" Text :>
         "configVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "numVersions" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListDeviceConfigVersionsResponse

-- | Lists the last few versions of the device configuration in descending
-- order (i.e.: newest first).
--
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesConfigVersionsList' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList =
  ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList'
    { _plrgdcvlXgafv          :: !(Maybe Xgafv)
    , _plrgdcvlUploadProtocol :: !(Maybe Text)
    , _plrgdcvlAccessToken    :: !(Maybe Text)
    , _plrgdcvlUploadType     :: !(Maybe Text)
    , _plrgdcvlNumVersions    :: !(Maybe (Textual Int32))
    , _plrgdcvlName           :: !Text
    , _plrgdcvlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdcvlXgafv'
--
-- * 'plrgdcvlUploadProtocol'
--
-- * 'plrgdcvlAccessToken'
--
-- * 'plrgdcvlUploadType'
--
-- * 'plrgdcvlNumVersions'
--
-- * 'plrgdcvlName'
--
-- * 'plrgdcvlCallback'
projectsLocationsRegistriesGroupsDevicesConfigVersionsList
    :: Text -- ^ 'plrgdcvlName'
    -> ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList
projectsLocationsRegistriesGroupsDevicesConfigVersionsList pPlrgdcvlName_ =
  ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList'
    { _plrgdcvlXgafv = Nothing
    , _plrgdcvlUploadProtocol = Nothing
    , _plrgdcvlAccessToken = Nothing
    , _plrgdcvlUploadType = Nothing
    , _plrgdcvlNumVersions = Nothing
    , _plrgdcvlName = pPlrgdcvlName_
    , _plrgdcvlCallback = Nothing
    }

-- | V1 error format.
plrgdcvlXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList (Maybe Xgafv)
plrgdcvlXgafv
  = lens _plrgdcvlXgafv
      (\ s a -> s{_plrgdcvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdcvlUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList (Maybe Text)
plrgdcvlUploadProtocol
  = lens _plrgdcvlUploadProtocol
      (\ s a -> s{_plrgdcvlUploadProtocol = a})

-- | OAuth access token.
plrgdcvlAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList (Maybe Text)
plrgdcvlAccessToken
  = lens _plrgdcvlAccessToken
      (\ s a -> s{_plrgdcvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdcvlUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList (Maybe Text)
plrgdcvlUploadType
  = lens _plrgdcvlUploadType
      (\ s a -> s{_plrgdcvlUploadType = a})

-- | The number of versions to list. Versions are listed in decreasing order
-- of the version number. The maximum number of versions retained is 10. If
-- this value is zero, it will return all the versions available.
plrgdcvlNumVersions :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList (Maybe Int32)
plrgdcvlNumVersions
  = lens _plrgdcvlNumVersions
      (\ s a -> s{_plrgdcvlNumVersions = a})
      . mapping _Coerce

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrgdcvlName :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList Text
plrgdcvlName
  = lens _plrgdcvlName (\ s a -> s{_plrgdcvlName = a})

-- | JSONP
plrgdcvlCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList (Maybe Text)
plrgdcvlCallback
  = lens _plrgdcvlCallback
      (\ s a -> s{_plrgdcvlCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList
         where
        type Rs
               ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList
             = ListDeviceConfigVersionsResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesConfigVersionsList'{..}
          = go _plrgdcvlName _plrgdcvlXgafv
              _plrgdcvlUploadProtocol
              _plrgdcvlAccessToken
              _plrgdcvlUploadType
              _plrgdcvlNumVersions
              _plrgdcvlCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesConfigVersionsListResource)
                      mempty
