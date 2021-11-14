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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device registry that contains devices.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.create@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Create
    (
    -- * REST Resource
      ProjectsLocationsRegistriesCreateResource

    -- * Creating a Request
    , projectsLocationsRegistriesCreate
    , ProjectsLocationsRegistriesCreate

    -- * Request Lenses
    , plrcParent
    , plrcXgafv
    , plrcUploadProtocol
    , plrcAccessToken
    , plrcUploadType
    , plrcPayload
    , plrcCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.create@ method which the
-- 'ProjectsLocationsRegistriesCreate' request conforms to.
type ProjectsLocationsRegistriesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "registries" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DeviceRegistry :>
                         Post '[JSON] DeviceRegistry

-- | Creates a device registry that contains devices.
--
-- /See:/ 'projectsLocationsRegistriesCreate' smart constructor.
data ProjectsLocationsRegistriesCreate =
  ProjectsLocationsRegistriesCreate'
    { _plrcParent :: !Text
    , _plrcXgafv :: !(Maybe Xgafv)
    , _plrcUploadProtocol :: !(Maybe Text)
    , _plrcAccessToken :: !(Maybe Text)
    , _plrcUploadType :: !(Maybe Text)
    , _plrcPayload :: !DeviceRegistry
    , _plrcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrcParent'
--
-- * 'plrcXgafv'
--
-- * 'plrcUploadProtocol'
--
-- * 'plrcAccessToken'
--
-- * 'plrcUploadType'
--
-- * 'plrcPayload'
--
-- * 'plrcCallback'
projectsLocationsRegistriesCreate
    :: Text -- ^ 'plrcParent'
    -> DeviceRegistry -- ^ 'plrcPayload'
    -> ProjectsLocationsRegistriesCreate
projectsLocationsRegistriesCreate pPlrcParent_ pPlrcPayload_ =
  ProjectsLocationsRegistriesCreate'
    { _plrcParent = pPlrcParent_
    , _plrcXgafv = Nothing
    , _plrcUploadProtocol = Nothing
    , _plrcAccessToken = Nothing
    , _plrcUploadType = Nothing
    , _plrcPayload = pPlrcPayload_
    , _plrcCallback = Nothing
    }


-- | Required. The project and cloud region where this device registry must
-- be created. For example,
-- \`projects\/example-project\/locations\/us-central1\`.
plrcParent :: Lens' ProjectsLocationsRegistriesCreate Text
plrcParent
  = lens _plrcParent (\ s a -> s{_plrcParent = a})

-- | V1 error format.
plrcXgafv :: Lens' ProjectsLocationsRegistriesCreate (Maybe Xgafv)
plrcXgafv
  = lens _plrcXgafv (\ s a -> s{_plrcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrcUploadProtocol :: Lens' ProjectsLocationsRegistriesCreate (Maybe Text)
plrcUploadProtocol
  = lens _plrcUploadProtocol
      (\ s a -> s{_plrcUploadProtocol = a})

-- | OAuth access token.
plrcAccessToken :: Lens' ProjectsLocationsRegistriesCreate (Maybe Text)
plrcAccessToken
  = lens _plrcAccessToken
      (\ s a -> s{_plrcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrcUploadType :: Lens' ProjectsLocationsRegistriesCreate (Maybe Text)
plrcUploadType
  = lens _plrcUploadType
      (\ s a -> s{_plrcUploadType = a})

-- | Multipart request metadata.
plrcPayload :: Lens' ProjectsLocationsRegistriesCreate DeviceRegistry
plrcPayload
  = lens _plrcPayload (\ s a -> s{_plrcPayload = a})

-- | JSONP
plrcCallback :: Lens' ProjectsLocationsRegistriesCreate (Maybe Text)
plrcCallback
  = lens _plrcCallback (\ s a -> s{_plrcCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesCreate
         where
        type Rs ProjectsLocationsRegistriesCreate =
             DeviceRegistry
        type Scopes ProjectsLocationsRegistriesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient ProjectsLocationsRegistriesCreate'{..}
          = go _plrcParent _plrcXgafv _plrcUploadProtocol
              _plrcAccessToken
              _plrcUploadType
              _plrcCallback
              (Just AltJSON)
              _plrcPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesCreateResource)
                      mempty
