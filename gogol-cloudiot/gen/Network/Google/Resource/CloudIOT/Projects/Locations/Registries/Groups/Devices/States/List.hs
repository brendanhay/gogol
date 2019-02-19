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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.States.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the last few versions of the device state in descending order
-- (i.e.: newest first).
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.devices.states.list@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.Devices.States.List
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsDevicesStatesListResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsDevicesStatesList
    , ProjectsLocationsRegistriesGroupsDevicesStatesList

    -- * Request Lenses
    , plrgdslXgafv
    , plrgdslUploadProtocol
    , plrgdslAccessToken
    , plrgdslUploadType
    , plrgdslName
    , plrgdslNumStates
    , plrgdslCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.devices.states.list@ method which the
-- 'ProjectsLocationsRegistriesGroupsDevicesStatesList' request conforms to.
type ProjectsLocationsRegistriesGroupsDevicesStatesListResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsDevicesStatesList' smart constructor.
data ProjectsLocationsRegistriesGroupsDevicesStatesList =
  ProjectsLocationsRegistriesGroupsDevicesStatesList'
    { _plrgdslXgafv          :: !(Maybe Xgafv)
    , _plrgdslUploadProtocol :: !(Maybe Text)
    , _plrgdslAccessToken    :: !(Maybe Text)
    , _plrgdslUploadType     :: !(Maybe Text)
    , _plrgdslName           :: !Text
    , _plrgdslNumStates      :: !(Maybe (Textual Int32))
    , _plrgdslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsDevicesStatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgdslXgafv'
--
-- * 'plrgdslUploadProtocol'
--
-- * 'plrgdslAccessToken'
--
-- * 'plrgdslUploadType'
--
-- * 'plrgdslName'
--
-- * 'plrgdslNumStates'
--
-- * 'plrgdslCallback'
projectsLocationsRegistriesGroupsDevicesStatesList
    :: Text -- ^ 'plrgdslName'
    -> ProjectsLocationsRegistriesGroupsDevicesStatesList
projectsLocationsRegistriesGroupsDevicesStatesList pPlrgdslName_ =
  ProjectsLocationsRegistriesGroupsDevicesStatesList'
    { _plrgdslXgafv = Nothing
    , _plrgdslUploadProtocol = Nothing
    , _plrgdslAccessToken = Nothing
    , _plrgdslUploadType = Nothing
    , _plrgdslName = pPlrgdslName_
    , _plrgdslNumStates = Nothing
    , _plrgdslCallback = Nothing
    }


-- | V1 error format.
plrgdslXgafv :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList (Maybe Xgafv)
plrgdslXgafv
  = lens _plrgdslXgafv (\ s a -> s{_plrgdslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgdslUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList (Maybe Text)
plrgdslUploadProtocol
  = lens _plrgdslUploadProtocol
      (\ s a -> s{_plrgdslUploadProtocol = a})

-- | OAuth access token.
plrgdslAccessToken :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList (Maybe Text)
plrgdslAccessToken
  = lens _plrgdslAccessToken
      (\ s a -> s{_plrgdslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgdslUploadType :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList (Maybe Text)
plrgdslUploadType
  = lens _plrgdslUploadType
      (\ s a -> s{_plrgdslUploadType = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrgdslName :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList Text
plrgdslName
  = lens _plrgdslName (\ s a -> s{_plrgdslName = a})

-- | The number of states to list. States are listed in descending order of
-- update time. The maximum number of states retained is 10. If this value
-- is zero, it will return all the states available.
plrgdslNumStates :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList (Maybe Int32)
plrgdslNumStates
  = lens _plrgdslNumStates
      (\ s a -> s{_plrgdslNumStates = a})
      . mapping _Coerce

-- | JSONP
plrgdslCallback :: Lens' ProjectsLocationsRegistriesGroupsDevicesStatesList (Maybe Text)
plrgdslCallback
  = lens _plrgdslCallback
      (\ s a -> s{_plrgdslCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsDevicesStatesList
         where
        type Rs
               ProjectsLocationsRegistriesGroupsDevicesStatesList
             = ListDeviceStatesResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsDevicesStatesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsDevicesStatesList'{..}
          = go _plrgdslName _plrgdslXgafv
              _plrgdslUploadProtocol
              _plrgdslAccessToken
              _plrgdslUploadType
              _plrgdslNumStates
              _plrgdslCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsDevicesStatesListResource)
                      mempty
