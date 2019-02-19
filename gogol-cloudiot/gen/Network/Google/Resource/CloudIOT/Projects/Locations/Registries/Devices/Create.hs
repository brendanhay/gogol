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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device in a device registry.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.create@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Devices.Create
    (
    -- * REST Resource
      ProjectsLocationsRegistriesDevicesCreateResource

    -- * Creating a Request
    , projectsLocationsRegistriesDevicesCreate
    , ProjectsLocationsRegistriesDevicesCreate

    -- * Request Lenses
    , plrdcParent
    , plrdcXgafv
    , plrdcUploadProtocol
    , plrdcAccessToken
    , plrdcUploadType
    , plrdcPayload
    , plrdcCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.devices.create@ method which the
-- 'ProjectsLocationsRegistriesDevicesCreate' request conforms to.
type ProjectsLocationsRegistriesDevicesCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "devices" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Device :> Post '[JSON] Device

-- | Creates a device in a device registry.
--
-- /See:/ 'projectsLocationsRegistriesDevicesCreate' smart constructor.
data ProjectsLocationsRegistriesDevicesCreate =
  ProjectsLocationsRegistriesDevicesCreate'
    { _plrdcParent         :: !Text
    , _plrdcXgafv          :: !(Maybe Xgafv)
    , _plrdcUploadProtocol :: !(Maybe Text)
    , _plrdcAccessToken    :: !(Maybe Text)
    , _plrdcUploadType     :: !(Maybe Text)
    , _plrdcPayload        :: !Device
    , _plrdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesDevicesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrdcParent'
--
-- * 'plrdcXgafv'
--
-- * 'plrdcUploadProtocol'
--
-- * 'plrdcAccessToken'
--
-- * 'plrdcUploadType'
--
-- * 'plrdcPayload'
--
-- * 'plrdcCallback'
projectsLocationsRegistriesDevicesCreate
    :: Text -- ^ 'plrdcParent'
    -> Device -- ^ 'plrdcPayload'
    -> ProjectsLocationsRegistriesDevicesCreate
projectsLocationsRegistriesDevicesCreate pPlrdcParent_ pPlrdcPayload_ =
  ProjectsLocationsRegistriesDevicesCreate'
    { _plrdcParent = pPlrdcParent_
    , _plrdcXgafv = Nothing
    , _plrdcUploadProtocol = Nothing
    , _plrdcAccessToken = Nothing
    , _plrdcUploadType = Nothing
    , _plrdcPayload = pPlrdcPayload_
    , _plrdcCallback = Nothing
    }

-- | The name of the device registry where this device should be created. For
-- example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrdcParent :: Lens' ProjectsLocationsRegistriesDevicesCreate Text
plrdcParent
  = lens _plrdcParent (\ s a -> s{_plrdcParent = a})

-- | V1 error format.
plrdcXgafv :: Lens' ProjectsLocationsRegistriesDevicesCreate (Maybe Xgafv)
plrdcXgafv
  = lens _plrdcXgafv (\ s a -> s{_plrdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrdcUploadProtocol :: Lens' ProjectsLocationsRegistriesDevicesCreate (Maybe Text)
plrdcUploadProtocol
  = lens _plrdcUploadProtocol
      (\ s a -> s{_plrdcUploadProtocol = a})

-- | OAuth access token.
plrdcAccessToken :: Lens' ProjectsLocationsRegistriesDevicesCreate (Maybe Text)
plrdcAccessToken
  = lens _plrdcAccessToken
      (\ s a -> s{_plrdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrdcUploadType :: Lens' ProjectsLocationsRegistriesDevicesCreate (Maybe Text)
plrdcUploadType
  = lens _plrdcUploadType
      (\ s a -> s{_plrdcUploadType = a})

-- | Multipart request metadata.
plrdcPayload :: Lens' ProjectsLocationsRegistriesDevicesCreate Device
plrdcPayload
  = lens _plrdcPayload (\ s a -> s{_plrdcPayload = a})

-- | JSONP
plrdcCallback :: Lens' ProjectsLocationsRegistriesDevicesCreate (Maybe Text)
plrdcCallback
  = lens _plrdcCallback
      (\ s a -> s{_plrdcCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesDevicesCreate
         where
        type Rs ProjectsLocationsRegistriesDevicesCreate =
             Device
        type Scopes ProjectsLocationsRegistriesDevicesCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesDevicesCreate'{..}
          = go _plrdcParent _plrdcXgafv _plrdcUploadProtocol
              _plrdcAccessToken
              _plrdcUploadType
              _plrdcCallback
              (Just AltJSON)
              _plrdcPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesDevicesCreateResource)
                      mempty
