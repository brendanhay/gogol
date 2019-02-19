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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ConfigVersions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the last few versions of the device configuration in descending
-- order (i.e.: newest first).
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.configVersions.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.ConfigVersions.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesConfigVersionsListResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesConfigVersionsList
    , ProjectsLocationsRegistriesDevicesConfigVersionsList

    -- * Request Lenses
    , plrdcvlXgafv
    , plrdcvlUploadProtocol
    , plrdcvlAccessToken
    , plrdcvlUploadType
    , plrdcvlNumVersions
    , plrdcvlName
    , plrdcvlCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.configVersions.list@ method which the
-- 'ProjectsLocationsRegistriesDevicesConfigVersionsList' request conforms to.
type ProjectsLocationsRegistriesDevicesConfigVersionsListResource
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
-- /See:/ 'projectsLocationsRegistriesDevicesConfigVersionsList' smart constructor.
data ProjectsLocationsRegistriesDevicesConfigVersionsList =
  ProjectsLocationsRegistriesDevicesConfigVersionsList'
    { _plrdcvlXgafv          :: !(Maybe Xgafv)
    , _plrdcvlUploadProtocol :: !(Maybe Text)
    , _plrdcvlAccessToken    :: !(Maybe Text)
    , _plrdcvlUploadType     :: !(Maybe Text)
    , _plrdcvlNumVersions    :: !(Maybe (Textual Int32))
    , _plrdcvlName           :: !Text
    , _plrdcvlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesConfigVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdcvlXgafv'
--
-- * 'plrdcvlUploadProtocol'
--
-- * 'plrdcvlAccessToken'
--
-- * 'plrdcvlUploadType'
--
-- * 'plrdcvlNumVersions'
--
-- * 'plrdcvlName'
--
-- * 'plrdcvlCallback'
projectsLocationsRegistriesDevicesConfigVersionsList
    :: Text -- ^ 'plrdcvlName'
    -> ProjectsLocationsRegistriesDevicesConfigVersionsList
projectsLocationsRegistriesDevicesConfigVersionsList pPlrdcvlName_ =
  ProjectsLocationsRegistriesDevicesConfigVersionsList'
    { _plrdcvlXgafv = Nothing
    , _plrdcvlUploadProtocol = Nothing
    , _plrdcvlAccessToken = Nothing
    , _plrdcvlUploadType = Nothing
    , _plrdcvlNumVersions = Nothing
    , _plrdcvlName = pPlrdcvlName_
    , _plrdcvlCallback = Nothing
    }

-- | V1 error format.
plrdcvlXgafv :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList (Maybe Xgafv)
plrdcvlXgafv
  = lens _plrdcvlXgafv (\ s a -> s{_plrdcvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdcvlUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList (Maybe Text)
plrdcvlUploadProtocol
  = lens _plrdcvlUploadProtocol
      (\ s a -> s{_plrdcvlUploadProtocol = a})

-- | OAuth access token.
plrdcvlAccessToken :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList (Maybe Text)
plrdcvlAccessToken
  = lens _plrdcvlAccessToken
      (\ s a -> s{_plrdcvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdcvlUploadType :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList (Maybe Text)
plrdcvlUploadType
  = lens _plrdcvlUploadType
      (\ s a -> s{_plrdcvlUploadType = a})

-- | The number of versions to list. Versions are listed in decreasing order
-- of the version number. The maximum number of versions retained is 10. If
-- this value is zero, it will return all the versions available.
plrdcvlNumVersions :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList (Maybe Int32)
plrdcvlNumVersions
  = lens _plrdcvlNumVersions
      (\ s a -> s{_plrdcvlNumVersions = a})
      . mapping _Coerce

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrdcvlName :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList Text
plrdcvlName
  = lens _plrdcvlName (\ s a -> s{_plrdcvlName = a})

-- | JSONP
plrdcvlCallback :: Lens' ProjectsLocationsRegistriesDevicesConfigVersionsList (Maybe Text)
plrdcvlCallback
  = lens _plrdcvlCallback
      (\ s a -> s{_plrdcvlCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesDevicesConfigVersionsList
         where
        type Rs
               ProjectsLocationsRegistriesDevicesConfigVersionsList
             = ListDeviceConfigVersionsResponse
        type Scopes
               ProjectsLocationsRegistriesDevicesConfigVersionsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesConfigVersionsList'{..}
          = go _plrdcvlName _plrdcvlXgafv
              _plrdcvlUploadProtocol
              _plrdcvlAccessToken
              _plrdcvlUploadType
              _plrdcvlNumVersions
              _plrdcvlCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesConfigVersionsListResource)
                      mempty
