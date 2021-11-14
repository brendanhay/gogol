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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a WorkloadIdentityPool, as long as it was deleted fewer than
-- 30 days ago.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.undelete@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Undelete
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsUndeleteResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsUndelete
    , ProjectsLocationsWorkLoadIdentityPoolsUndelete

    -- * Request Lenses
    , plwlipuXgafv
    , plwlipuUploadProtocol
    , plwlipuAccessToken
    , plwlipuUploadType
    , plwlipuPayload
    , plwlipuName
    , plwlipuCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.undelete@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsUndelete' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsUndeleteResource
     =
     "v1" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteWorkLoadIdentityPoolRequest
                       :> Post '[JSON] Operation

-- | Undeletes a WorkloadIdentityPool, as long as it was deleted fewer than
-- 30 days ago.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsUndelete' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsUndelete =
  ProjectsLocationsWorkLoadIdentityPoolsUndelete'
    { _plwlipuXgafv :: !(Maybe Xgafv)
    , _plwlipuUploadProtocol :: !(Maybe Text)
    , _plwlipuAccessToken :: !(Maybe Text)
    , _plwlipuUploadType :: !(Maybe Text)
    , _plwlipuPayload :: !UndeleteWorkLoadIdentityPoolRequest
    , _plwlipuName :: !Text
    , _plwlipuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipuXgafv'
--
-- * 'plwlipuUploadProtocol'
--
-- * 'plwlipuAccessToken'
--
-- * 'plwlipuUploadType'
--
-- * 'plwlipuPayload'
--
-- * 'plwlipuName'
--
-- * 'plwlipuCallback'
projectsLocationsWorkLoadIdentityPoolsUndelete
    :: UndeleteWorkLoadIdentityPoolRequest -- ^ 'plwlipuPayload'
    -> Text -- ^ 'plwlipuName'
    -> ProjectsLocationsWorkLoadIdentityPoolsUndelete
projectsLocationsWorkLoadIdentityPoolsUndelete pPlwlipuPayload_ pPlwlipuName_ =
  ProjectsLocationsWorkLoadIdentityPoolsUndelete'
    { _plwlipuXgafv = Nothing
    , _plwlipuUploadProtocol = Nothing
    , _plwlipuAccessToken = Nothing
    , _plwlipuUploadType = Nothing
    , _plwlipuPayload = pPlwlipuPayload_
    , _plwlipuName = pPlwlipuName_
    , _plwlipuCallback = Nothing
    }


-- | V1 error format.
plwlipuXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete (Maybe Xgafv)
plwlipuXgafv
  = lens _plwlipuXgafv (\ s a -> s{_plwlipuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipuUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete (Maybe Text)
plwlipuUploadProtocol
  = lens _plwlipuUploadProtocol
      (\ s a -> s{_plwlipuUploadProtocol = a})

-- | OAuth access token.
plwlipuAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete (Maybe Text)
plwlipuAccessToken
  = lens _plwlipuAccessToken
      (\ s a -> s{_plwlipuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipuUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete (Maybe Text)
plwlipuUploadType
  = lens _plwlipuUploadType
      (\ s a -> s{_plwlipuUploadType = a})

-- | Multipart request metadata.
plwlipuPayload :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete UndeleteWorkLoadIdentityPoolRequest
plwlipuPayload
  = lens _plwlipuPayload
      (\ s a -> s{_plwlipuPayload = a})

-- | Required. The name of the pool to undelete.
plwlipuName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete Text
plwlipuName
  = lens _plwlipuName (\ s a -> s{_plwlipuName = a})

-- | JSONP
plwlipuCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsUndelete (Maybe Text)
plwlipuCallback
  = lens _plwlipuCallback
      (\ s a -> s{_plwlipuCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsUndelete
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsUndelete
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsUndelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsUndelete'{..}
          = go _plwlipuName _plwlipuXgafv
              _plwlipuUploadProtocol
              _plwlipuAccessToken
              _plwlipuUploadType
              _plwlipuCallback
              (Just AltJSON)
              _plwlipuPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsUndeleteResource)
                      mempty
