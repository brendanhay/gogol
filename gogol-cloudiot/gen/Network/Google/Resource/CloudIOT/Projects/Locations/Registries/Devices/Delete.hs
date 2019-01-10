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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.delete@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Delete
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesDeleteResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesDelete
    , ProjectsLocationsRegistriesDevicesDelete

    -- * Request Lenses
    , plrddXgafv
    , plrddUploadProtocol
    , plrddAccessToken
    , plrddUploadType
    , plrddName
    , plrddCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.delete@ method which the
-- 'ProjectsLocationsRegistriesDevicesDelete' request conforms to.
type ProjectsLocationsRegistriesDevicesDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a device.
--
-- /See:/ 'projectsLocationsRegistriesDevicesDelete' smart constructor.
data ProjectsLocationsRegistriesDevicesDelete = ProjectsLocationsRegistriesDevicesDelete'
    { _plrddXgafv          :: !(Maybe Xgafv)
    , _plrddUploadProtocol :: !(Maybe Text)
    , _plrddAccessToken    :: !(Maybe Text)
    , _plrddUploadType     :: !(Maybe Text)
    , _plrddName           :: !Text
    , _plrddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrddXgafv'
--
-- * 'plrddUploadProtocol'
--
-- * 'plrddAccessToken'
--
-- * 'plrddUploadType'
--
-- * 'plrddName'
--
-- * 'plrddCallback'
projectsLocationsRegistriesDevicesDelete
    :: Text -- ^ 'plrddName'
    -> ProjectsLocationsRegistriesDevicesDelete
projectsLocationsRegistriesDevicesDelete pPlrddName_ =
    ProjectsLocationsRegistriesDevicesDelete'
    { _plrddXgafv = Nothing
    , _plrddUploadProtocol = Nothing
    , _plrddAccessToken = Nothing
    , _plrddUploadType = Nothing
    , _plrddName = pPlrddName_
    , _plrddCallback = Nothing
    }

-- | V1 error format.
plrddXgafv :: Lens' ProjectsLocationsRegistriesDevicesDelete (Maybe Xgafv)
plrddXgafv
  = lens _plrddXgafv (\ s a -> s{_plrddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrddUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesDelete (Maybe Text)
plrddUploadProtocol
  = lens _plrddUploadProtocol
      (\ s a -> s{_plrddUploadProtocol = a})

-- | OAuth access token.
plrddAccessToken :: Lens' ProjectsLocationsRegistriesDevicesDelete (Maybe Text)
plrddAccessToken
  = lens _plrddAccessToken
      (\ s a -> s{_plrddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrddUploadType :: Lens' ProjectsLocationsRegistriesDevicesDelete (Maybe Text)
plrddUploadType
  = lens _plrddUploadType
      (\ s a -> s{_plrddUploadType = a})

-- | The name of the device. For example,
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0\`
-- or
-- \`projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}\`.
plrddName :: Lens' ProjectsLocationsRegistriesDevicesDelete Text
plrddName
  = lens _plrddName (\ s a -> s{_plrddName = a})

-- | JSONP
plrddCallback :: Lens' ProjectsLocationsRegistriesDevicesDelete (Maybe Text)
plrddCallback
  = lens _plrddCallback
      (\ s a -> s{_plrddCallback = a})

instance GoogleRequest
         ProjectsLocationsRegistriesDevicesDelete where
        type Rs ProjectsLocationsRegistriesDevicesDelete =
             Empty
        type Scopes ProjectsLocationsRegistriesDevicesDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesDelete'{..}
          = go _plrddName _plrddXgafv _plrddUploadProtocol
              _plrddAccessToken
              _plrddUploadType
              _plrddCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesDeleteResource)
                      mempty
