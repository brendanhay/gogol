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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an individual WorkloadIdentityPool.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.get@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Get
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsGetResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsGet
    , ProjectsLocationsWorkLoadIdentityPoolsGet

    -- * Request Lenses
    , plwlipgXgafv
    , plwlipgUploadProtocol
    , plwlipgAccessToken
    , plwlipgUploadType
    , plwlipgName
    , plwlipgCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.get@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsGet' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] WorkLoadIdentityPool

-- | Gets an individual WorkloadIdentityPool.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsGet' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsGet =
  ProjectsLocationsWorkLoadIdentityPoolsGet'
    { _plwlipgXgafv :: !(Maybe Xgafv)
    , _plwlipgUploadProtocol :: !(Maybe Text)
    , _plwlipgAccessToken :: !(Maybe Text)
    , _plwlipgUploadType :: !(Maybe Text)
    , _plwlipgName :: !Text
    , _plwlipgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipgXgafv'
--
-- * 'plwlipgUploadProtocol'
--
-- * 'plwlipgAccessToken'
--
-- * 'plwlipgUploadType'
--
-- * 'plwlipgName'
--
-- * 'plwlipgCallback'
projectsLocationsWorkLoadIdentityPoolsGet
    :: Text -- ^ 'plwlipgName'
    -> ProjectsLocationsWorkLoadIdentityPoolsGet
projectsLocationsWorkLoadIdentityPoolsGet pPlwlipgName_ =
  ProjectsLocationsWorkLoadIdentityPoolsGet'
    { _plwlipgXgafv = Nothing
    , _plwlipgUploadProtocol = Nothing
    , _plwlipgAccessToken = Nothing
    , _plwlipgUploadType = Nothing
    , _plwlipgName = pPlwlipgName_
    , _plwlipgCallback = Nothing
    }


-- | V1 error format.
plwlipgXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsGet (Maybe Xgafv)
plwlipgXgafv
  = lens _plwlipgXgafv (\ s a -> s{_plwlipgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipgUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsGet (Maybe Text)
plwlipgUploadProtocol
  = lens _plwlipgUploadProtocol
      (\ s a -> s{_plwlipgUploadProtocol = a})

-- | OAuth access token.
plwlipgAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsGet (Maybe Text)
plwlipgAccessToken
  = lens _plwlipgAccessToken
      (\ s a -> s{_plwlipgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipgUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsGet (Maybe Text)
plwlipgUploadType
  = lens _plwlipgUploadType
      (\ s a -> s{_plwlipgUploadType = a})

-- | Required. The name of the pool to retrieve.
plwlipgName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsGet Text
plwlipgName
  = lens _plwlipgName (\ s a -> s{_plwlipgName = a})

-- | JSONP
plwlipgCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsGet (Maybe Text)
plwlipgCallback
  = lens _plwlipgCallback
      (\ s a -> s{_plwlipgCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsGet
         where
        type Rs ProjectsLocationsWorkLoadIdentityPoolsGet =
             WorkLoadIdentityPool
        type Scopes ProjectsLocationsWorkLoadIdentityPoolsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsGet'{..}
          = go _plwlipgName _plwlipgXgafv
              _plwlipgUploadProtocol
              _plwlipgAccessToken
              _plwlipgUploadType
              _plwlipgCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsGetResource)
                      mempty
