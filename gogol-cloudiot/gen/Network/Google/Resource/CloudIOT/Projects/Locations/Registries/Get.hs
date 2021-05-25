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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device registry configuration.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.get@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Get
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGetResource

    -- * Creating a Request
    , projectsLocationsRegistriesGet
    , ProjectsLocationsRegistriesGet

    -- * Request Lenses
    , plrgXgafv
    , plrgUploadProtocol
    , plrgAccessToken
    , plrgUploadType
    , plrgName
    , plrgCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.get@ method which the
-- 'ProjectsLocationsRegistriesGet' request conforms to.
type ProjectsLocationsRegistriesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] DeviceRegistry

-- | Gets a device registry configuration.
--
-- /See:/ 'projectsLocationsRegistriesGet' smart constructor.
data ProjectsLocationsRegistriesGet =
  ProjectsLocationsRegistriesGet'
    { _plrgXgafv :: !(Maybe Xgafv)
    , _plrgUploadProtocol :: !(Maybe Text)
    , _plrgAccessToken :: !(Maybe Text)
    , _plrgUploadType :: !(Maybe Text)
    , _plrgName :: !Text
    , _plrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgXgafv'
--
-- * 'plrgUploadProtocol'
--
-- * 'plrgAccessToken'
--
-- * 'plrgUploadType'
--
-- * 'plrgName'
--
-- * 'plrgCallback'
projectsLocationsRegistriesGet
    :: Text -- ^ 'plrgName'
    -> ProjectsLocationsRegistriesGet
projectsLocationsRegistriesGet pPlrgName_ =
  ProjectsLocationsRegistriesGet'
    { _plrgXgafv = Nothing
    , _plrgUploadProtocol = Nothing
    , _plrgAccessToken = Nothing
    , _plrgUploadType = Nothing
    , _plrgName = pPlrgName_
    , _plrgCallback = Nothing
    }


-- | V1 error format.
plrgXgafv :: Lens' ProjectsLocationsRegistriesGet (Maybe Xgafv)
plrgXgafv
  = lens _plrgXgafv (\ s a -> s{_plrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgUploadProtocol :: Lens' ProjectsLocationsRegistriesGet (Maybe Text)
plrgUploadProtocol
  = lens _plrgUploadProtocol
      (\ s a -> s{_plrgUploadProtocol = a})

-- | OAuth access token.
plrgAccessToken :: Lens' ProjectsLocationsRegistriesGet (Maybe Text)
plrgAccessToken
  = lens _plrgAccessToken
      (\ s a -> s{_plrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgUploadType :: Lens' ProjectsLocationsRegistriesGet (Maybe Text)
plrgUploadType
  = lens _plrgUploadType
      (\ s a -> s{_plrgUploadType = a})

-- | Required. The name of the device registry. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrgName :: Lens' ProjectsLocationsRegistriesGet Text
plrgName = lens _plrgName (\ s a -> s{_plrgName = a})

-- | JSONP
plrgCallback :: Lens' ProjectsLocationsRegistriesGet (Maybe Text)
plrgCallback
  = lens _plrgCallback (\ s a -> s{_plrgCallback = a})

instance GoogleRequest ProjectsLocationsRegistriesGet
         where
        type Rs ProjectsLocationsRegistriesGet =
             DeviceRegistry
        type Scopes ProjectsLocationsRegistriesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient ProjectsLocationsRegistriesGet'{..}
          = go _plrgName _plrgXgafv _plrgUploadProtocol
              _plrgAccessToken
              _plrgUploadType
              _plrgCallback
              (Just AltJSON)
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRegistriesGetResource)
                      mempty
