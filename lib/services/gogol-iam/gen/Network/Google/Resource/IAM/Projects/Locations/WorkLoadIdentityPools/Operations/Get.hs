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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Operations.Get
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
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.operations.get@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Operations.Get
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsOperationsGetResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsOperationsGet
    , ProjectsLocationsWorkLoadIdentityPoolsOperationsGet

    -- * Request Lenses
    , plwlipogXgafv
    , plwlipogUploadProtocol
    , plwlipogAccessToken
    , plwlipogUploadType
    , plwlipogName
    , plwlipogCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.operations.get@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsOperationsGet' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsOperationsGetResource
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
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsOperationsGet' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsOperationsGet =
  ProjectsLocationsWorkLoadIdentityPoolsOperationsGet'
    { _plwlipogXgafv :: !(Maybe Xgafv)
    , _plwlipogUploadProtocol :: !(Maybe Text)
    , _plwlipogAccessToken :: !(Maybe Text)
    , _plwlipogUploadType :: !(Maybe Text)
    , _plwlipogName :: !Text
    , _plwlipogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipogXgafv'
--
-- * 'plwlipogUploadProtocol'
--
-- * 'plwlipogAccessToken'
--
-- * 'plwlipogUploadType'
--
-- * 'plwlipogName'
--
-- * 'plwlipogCallback'
projectsLocationsWorkLoadIdentityPoolsOperationsGet
    :: Text -- ^ 'plwlipogName'
    -> ProjectsLocationsWorkLoadIdentityPoolsOperationsGet
projectsLocationsWorkLoadIdentityPoolsOperationsGet pPlwlipogName_ =
  ProjectsLocationsWorkLoadIdentityPoolsOperationsGet'
    { _plwlipogXgafv = Nothing
    , _plwlipogUploadProtocol = Nothing
    , _plwlipogAccessToken = Nothing
    , _plwlipogUploadType = Nothing
    , _plwlipogName = pPlwlipogName_
    , _plwlipogCallback = Nothing
    }


-- | V1 error format.
plwlipogXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsOperationsGet (Maybe Xgafv)
plwlipogXgafv
  = lens _plwlipogXgafv
      (\ s a -> s{_plwlipogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipogUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsOperationsGet (Maybe Text)
plwlipogUploadProtocol
  = lens _plwlipogUploadProtocol
      (\ s a -> s{_plwlipogUploadProtocol = a})

-- | OAuth access token.
plwlipogAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsOperationsGet (Maybe Text)
plwlipogAccessToken
  = lens _plwlipogAccessToken
      (\ s a -> s{_plwlipogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipogUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsOperationsGet (Maybe Text)
plwlipogUploadType
  = lens _plwlipogUploadType
      (\ s a -> s{_plwlipogUploadType = a})

-- | The name of the operation resource.
plwlipogName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsOperationsGet Text
plwlipogName
  = lens _plwlipogName (\ s a -> s{_plwlipogName = a})

-- | JSONP
plwlipogCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsOperationsGet (Maybe Text)
plwlipogCallback
  = lens _plwlipogCallback
      (\ s a -> s{_plwlipogCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsOperationsGet
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsOperationsGet
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsOperationsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsOperationsGet'{..}
          = go _plwlipogName _plwlipogXgafv
              _plwlipogUploadProtocol
              _plwlipogAccessToken
              _plwlipogUploadType
              _plwlipogCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsOperationsGetResource)
                      mempty
