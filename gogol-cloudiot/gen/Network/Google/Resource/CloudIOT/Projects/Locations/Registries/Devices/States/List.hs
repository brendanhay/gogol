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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.States.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the last few versions of the device state in descending order
-- (i.e.: newest first).
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.states.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.States.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesStatesListResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesStatesList
    , ProjectsLocationsRegistriesDevicesStatesList

    -- * Request Lenses
    , plrdslXgafv
    , plrdslUploadProtocol
    , plrdslAccessToken
    , plrdslUploadType
    , plrdslName
    , plrdslNumStates
    , plrdslCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.states.list@ method which the
-- 'ProjectsLocationsRegistriesDevicesStatesList' request conforms to.
type ProjectsLocationsRegistriesDevicesStatesListResource
     =
     "v1" :>
       Capture "name" Text :>
         "states" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "numStates" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListDeviceStatesResponse

-- | Lists the last few versions of the device state in descending order
-- (i.e.: newest first).
--
-- /See:/ 'projectsLocationsRegistriesDevicesStatesList' smart constructor.
data ProjectsLocationsRegistriesDevicesStatesList = ProjectsLocationsRegistriesDevicesStatesList'
    { _plrdslXgafv          :: !(Maybe Xgafv)
    , _plrdslUploadProtocol :: !(Maybe Text)
    , _plrdslAccessToken    :: !(Maybe Text)
    , _plrdslUploadType     :: !(Maybe Text)
    , _plrdslName           :: !Text
    , _plrdslNumStates      :: !(Maybe (Textual Int32))
    , _plrdslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesStatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdslXgafv'
--
-- * 'plrdslUploadProtocol'
--
-- * 'plrdslAccessToken'
--
-- * 'plrdslUploadType'
--
-- * 'plrdslName'
--
-- * 'plrdslNumStates'
--
-- * 'plrdslCallback'
projectsLocationsRegistriesDevicesStatesList
    :: Text -- ^ 'plrdslName'
    -> ProjectsLocationsRegistriesDevicesStatesList
projectsLocationsRegistriesDevicesStatesList pPlrdslName_ =
    ProjectsLocationsRegistriesDevicesStatesList'
    { _plrdslXgafv = Nothing
    , _plrdslUploadProtocol = Nothing
    , _plrdslAccessToken = Nothing
    , _plrdslUploadType = Nothing
    , _plrdslName = pPlrdslName_
    , _plrdslNumStates = Nothing
    , _plrdslCallback = Nothing
    }

-- | V1 error format.
plrdslXgafv :: Lens' ProjectsLocationsRegistriesDevicesStatesList (Maybe Xgafv)
plrdslXgafv
  = lens _plrdslXgafv (\ s a -> s{_plrdslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdslUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesStatesList (Maybe Text)
plrdslUploadProtocol
  = lens _plrdslUploadProtocol
      (\ s a -> s{_plrdslUploadProtocol = a})

-- | OAuth access token.
plrdslAccessToken :: Lens' ProjectsLocationsRegistriesDevicesStatesList (Maybe Text)
plrdslAccessToken
  = lens _plrdslAccessToken
      (\ s a -> s{_plrdslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdslUploadType :: Lens' ProjectsLocationsRegistriesDevicesStatesList (Maybe Text)
plrdslUploadType
  = lens _plrdslUploadType
      (\ s a -> s{_plrdslUploadType = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrdslName :: Lens' ProjectsLocationsRegistriesDevicesStatesList Text
plrdslName
  = lens _plrdslName (\ s a -> s{_plrdslName = a})

-- | The number of states to list. States are listed in descending order of
-- update time. The maximum number of states retained is 10. If this value
-- is zero, it will return all the states available.
plrdslNumStates :: Lens' ProjectsLocationsRegistriesDevicesStatesList (Maybe Int32)
plrdslNumStates
  = lens _plrdslNumStates
      (\ s a -> s{_plrdslNumStates = a})
      . mapping _Coerce

-- | JSONP
plrdslCallback :: Lens' ProjectsLocationsRegistriesDevicesStatesList (Maybe Text)
plrdslCallback
  = lens _plrdslCallback
      (\ s a -> s{_plrdslCallback = a})

instance GoogleRequest
         ProjectsLocationsRegistriesDevicesStatesList where
        type Rs ProjectsLocationsRegistriesDevicesStatesList
             = ListDeviceStatesResponse
        type Scopes
               ProjectsLocationsRegistriesDevicesStatesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesStatesList'{..}
          = go _plrdslName _plrdslXgafv _plrdslUploadProtocol
              _plrdslAccessToken
              _plrdslUploadType
              _plrdslNumStates
              _plrdslCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesStatesListResource)
                      mempty
