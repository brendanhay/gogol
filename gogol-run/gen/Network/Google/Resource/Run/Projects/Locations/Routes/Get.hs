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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Routes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about a route.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.routes.get@.
module Network.Google.Resource.Run.Projects.Locations.Routes.Get
    (
    -- * REST Resource
      ProjectsLocationsRoutesGetResource

    -- * Creating a Request
    , projectsLocationsRoutesGet
    , ProjectsLocationsRoutesGet

    -- * Request Lenses
    , plrgXgafv
    , plrgUploadProtocol
    , plrgAccessToken
    , plrgUploadType
    , plrgName
    , plrgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.routes.get@ method which the
-- 'ProjectsLocationsRoutesGet' request conforms to.
type ProjectsLocationsRoutesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Route

-- | Get information about a route.
--
-- /See:/ 'projectsLocationsRoutesGet' smart constructor.
data ProjectsLocationsRoutesGet =
  ProjectsLocationsRoutesGet'
    { _plrgXgafv :: !(Maybe Xgafv)
    , _plrgUploadProtocol :: !(Maybe Text)
    , _plrgAccessToken :: !(Maybe Text)
    , _plrgUploadType :: !(Maybe Text)
    , _plrgName :: !Text
    , _plrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRoutesGet' with the minimum fields required to make a request.
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
projectsLocationsRoutesGet
    :: Text -- ^ 'plrgName'
    -> ProjectsLocationsRoutesGet
projectsLocationsRoutesGet pPlrgName_ =
  ProjectsLocationsRoutesGet'
    { _plrgXgafv = Nothing
    , _plrgUploadProtocol = Nothing
    , _plrgAccessToken = Nothing
    , _plrgUploadType = Nothing
    , _plrgName = pPlrgName_
    , _plrgCallback = Nothing
    }


-- | V1 error format.
plrgXgafv :: Lens' ProjectsLocationsRoutesGet (Maybe Xgafv)
plrgXgafv
  = lens _plrgXgafv (\ s a -> s{_plrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgUploadProtocol :: Lens' ProjectsLocationsRoutesGet (Maybe Text)
plrgUploadProtocol
  = lens _plrgUploadProtocol
      (\ s a -> s{_plrgUploadProtocol = a})

-- | OAuth access token.
plrgAccessToken :: Lens' ProjectsLocationsRoutesGet (Maybe Text)
plrgAccessToken
  = lens _plrgAccessToken
      (\ s a -> s{_plrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgUploadType :: Lens' ProjectsLocationsRoutesGet (Maybe Text)
plrgUploadType
  = lens _plrgUploadType
      (\ s a -> s{_plrgUploadType = a})

-- | The name of the route to retrieve. For Cloud Run (fully managed),
-- replace {namespace_id} with the project ID or number.
plrgName :: Lens' ProjectsLocationsRoutesGet Text
plrgName = lens _plrgName (\ s a -> s{_plrgName = a})

-- | JSONP
plrgCallback :: Lens' ProjectsLocationsRoutesGet (Maybe Text)
plrgCallback
  = lens _plrgCallback (\ s a -> s{_plrgCallback = a})

instance GoogleRequest ProjectsLocationsRoutesGet
         where
        type Rs ProjectsLocationsRoutesGet = Route
        type Scopes ProjectsLocationsRoutesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsRoutesGet'{..}
          = go _plrgName _plrgXgafv _plrgUploadProtocol
              _plrgAccessToken
              _plrgUploadType
              _plrgCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsRoutesGetResource)
                      mempty
