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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Operations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.operations.get@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Operations.Get
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGetResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet

    -- * Request Lenses
    , plwlippogXgafv
    , plwlippogUploadProtocol
    , plwlippogAccessToken
    , plwlippogUploadType
    , plwlippogName
    , plwlippogCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.operations.get@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet'
    { _plwlippogXgafv :: !(Maybe Xgafv)
    , _plwlippogUploadProtocol :: !(Maybe Text)
    , _plwlippogAccessToken :: !(Maybe Text)
    , _plwlippogUploadType :: !(Maybe Text)
    , _plwlippogName :: !Text
    , _plwlippogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlippogXgafv'
--
-- * 'plwlippogUploadProtocol'
--
-- * 'plwlippogAccessToken'
--
-- * 'plwlippogUploadType'
--
-- * 'plwlippogName'
--
-- * 'plwlippogCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet
    :: Text -- ^ 'plwlippogName'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet
projectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet pPlwlippogName_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet'
    { _plwlippogXgafv = Nothing
    , _plwlippogUploadProtocol = Nothing
    , _plwlippogAccessToken = Nothing
    , _plwlippogUploadType = Nothing
    , _plwlippogName = pPlwlippogName_
    , _plwlippogCallback = Nothing
    }


-- | V1 error format.
plwlippogXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet (Maybe Xgafv)
plwlippogXgafv
  = lens _plwlippogXgafv
      (\ s a -> s{_plwlippogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlippogUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet (Maybe Text)
plwlippogUploadProtocol
  = lens _plwlippogUploadProtocol
      (\ s a -> s{_plwlippogUploadProtocol = a})

-- | OAuth access token.
plwlippogAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet (Maybe Text)
plwlippogAccessToken
  = lens _plwlippogAccessToken
      (\ s a -> s{_plwlippogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlippogUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet (Maybe Text)
plwlippogUploadType
  = lens _plwlippogUploadType
      (\ s a -> s{_plwlippogUploadType = a})

-- | The name of the operation resource.
plwlippogName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet Text
plwlippogName
  = lens _plwlippogName
      (\ s a -> s{_plwlippogName = a})

-- | JSONP
plwlippogCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet (Maybe Text)
plwlippogCallback
  = lens _plwlippogCallback
      (\ s a -> s{_plwlippogCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGet'{..}
          = go _plwlippogName _plwlippogXgafv
              _plwlippogUploadProtocol
              _plwlippogAccessToken
              _plwlippogUploadType
              _plwlippogCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersOperationsGetResource)
                      mempty
