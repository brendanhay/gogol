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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an individual WorkloadIdentityPoolProvider.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.get@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Get
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersGetResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersGet
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersGet

    -- * Request Lenses
    , plwlippgXgafv
    , plwlippgUploadProtocol
    , plwlippgAccessToken
    , plwlippgUploadType
    , plwlippgName
    , plwlippgCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.get@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersGet' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] WorkLoadIdentityPoolProvider

-- | Gets an individual WorkloadIdentityPoolProvider.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersGet' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersGet =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersGet'
    { _plwlippgXgafv :: !(Maybe Xgafv)
    , _plwlippgUploadProtocol :: !(Maybe Text)
    , _plwlippgAccessToken :: !(Maybe Text)
    , _plwlippgUploadType :: !(Maybe Text)
    , _plwlippgName :: !Text
    , _plwlippgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlippgXgafv'
--
-- * 'plwlippgUploadProtocol'
--
-- * 'plwlippgAccessToken'
--
-- * 'plwlippgUploadType'
--
-- * 'plwlippgName'
--
-- * 'plwlippgCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersGet
    :: Text -- ^ 'plwlippgName'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersGet
projectsLocationsWorkLoadIdentityPoolsProvidersGet pPlwlippgName_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersGet'
    { _plwlippgXgafv = Nothing
    , _plwlippgUploadProtocol = Nothing
    , _plwlippgAccessToken = Nothing
    , _plwlippgUploadType = Nothing
    , _plwlippgName = pPlwlippgName_
    , _plwlippgCallback = Nothing
    }


-- | V1 error format.
plwlippgXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersGet (Maybe Xgafv)
plwlippgXgafv
  = lens _plwlippgXgafv
      (\ s a -> s{_plwlippgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlippgUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersGet (Maybe Text)
plwlippgUploadProtocol
  = lens _plwlippgUploadProtocol
      (\ s a -> s{_plwlippgUploadProtocol = a})

-- | OAuth access token.
plwlippgAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersGet (Maybe Text)
plwlippgAccessToken
  = lens _plwlippgAccessToken
      (\ s a -> s{_plwlippgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlippgUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersGet (Maybe Text)
plwlippgUploadType
  = lens _plwlippgUploadType
      (\ s a -> s{_plwlippgUploadType = a})

-- | Required. The name of the provider to retrieve.
plwlippgName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersGet Text
plwlippgName
  = lens _plwlippgName (\ s a -> s{_plwlippgName = a})

-- | JSONP
plwlippgCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersGet (Maybe Text)
plwlippgCallback
  = lens _plwlippgCallback
      (\ s a -> s{_plwlippgCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersGet
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersGet
             = WorkLoadIdentityPoolProvider
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersGet'{..}
          = go _plwlippgName _plwlippgXgafv
              _plwlippgUploadProtocol
              _plwlippgAccessToken
              _plwlippgUploadType
              _plwlippgCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersGetResource)
                      mempty
