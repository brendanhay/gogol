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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.get@.
module Network.Google.Resource.Run.Projects.Locations.Services.Get
    (
    -- * REST Resource
      ProjectsLocationsServicesGetResource

    -- * Creating a Request
    , projectsLocationsServicesGet
    , ProjectsLocationsServicesGet

    -- * Request Lenses
    , plsgXgafv
    , plsgUploadProtocol
    , plsgAccessToken
    , plsgUploadType
    , plsgName
    , plsgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.get@ method which the
-- 'ProjectsLocationsServicesGet' request conforms to.
type ProjectsLocationsServicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Service

-- | Get information about a service.
--
-- /See:/ 'projectsLocationsServicesGet' smart constructor.
data ProjectsLocationsServicesGet =
  ProjectsLocationsServicesGet'
    { _plsgXgafv :: !(Maybe Xgafv)
    , _plsgUploadProtocol :: !(Maybe Text)
    , _plsgAccessToken :: !(Maybe Text)
    , _plsgUploadType :: !(Maybe Text)
    , _plsgName :: !Text
    , _plsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsgXgafv'
--
-- * 'plsgUploadProtocol'
--
-- * 'plsgAccessToken'
--
-- * 'plsgUploadType'
--
-- * 'plsgName'
--
-- * 'plsgCallback'
projectsLocationsServicesGet
    :: Text -- ^ 'plsgName'
    -> ProjectsLocationsServicesGet
projectsLocationsServicesGet pPlsgName_ =
  ProjectsLocationsServicesGet'
    { _plsgXgafv = Nothing
    , _plsgUploadProtocol = Nothing
    , _plsgAccessToken = Nothing
    , _plsgUploadType = Nothing
    , _plsgName = pPlsgName_
    , _plsgCallback = Nothing
    }


-- | V1 error format.
plsgXgafv :: Lens' ProjectsLocationsServicesGet (Maybe Xgafv)
plsgXgafv
  = lens _plsgXgafv (\ s a -> s{_plsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsgUploadProtocol :: Lens' ProjectsLocationsServicesGet (Maybe Text)
plsgUploadProtocol
  = lens _plsgUploadProtocol
      (\ s a -> s{_plsgUploadProtocol = a})

-- | OAuth access token.
plsgAccessToken :: Lens' ProjectsLocationsServicesGet (Maybe Text)
plsgAccessToken
  = lens _plsgAccessToken
      (\ s a -> s{_plsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsgUploadType :: Lens' ProjectsLocationsServicesGet (Maybe Text)
plsgUploadType
  = lens _plsgUploadType
      (\ s a -> s{_plsgUploadType = a})

-- | The name of the service to retrieve. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
plsgName :: Lens' ProjectsLocationsServicesGet Text
plsgName = lens _plsgName (\ s a -> s{_plsgName = a})

-- | JSONP
plsgCallback :: Lens' ProjectsLocationsServicesGet (Maybe Text)
plsgCallback
  = lens _plsgCallback (\ s a -> s{_plsgCallback = a})

instance GoogleRequest ProjectsLocationsServicesGet
         where
        type Rs ProjectsLocationsServicesGet = Service
        type Scopes ProjectsLocationsServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsServicesGet'{..}
          = go _plsgName _plsgXgafv _plsgUploadProtocol
              _plsgAccessToken
              _plsgUploadType
              _plsgCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsServicesGetResource)
                      mempty
