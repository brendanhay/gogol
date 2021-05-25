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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a WorkloadIdentityPool. You cannot use a deleted pool to
-- exchange external credentials for Google Cloud credentials. However,
-- deletion does not revoke credentials that have already been issued.
-- Credentials issued for a deleted pool do not grant access to resources.
-- If the pool is undeleted, and the credentials are not expired, they
-- grant access again. You can undelete a pool for 30 days. After 30 days,
-- deletion is permanent. You cannot update deleted pools. However, you can
-- view and list them.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.delete@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Delete
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsDeleteResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsDelete
    , ProjectsLocationsWorkLoadIdentityPoolsDelete

    -- * Request Lenses
    , plwlipdXgafv
    , plwlipdUploadProtocol
    , plwlipdAccessToken
    , plwlipdUploadType
    , plwlipdName
    , plwlipdCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.delete@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsDelete' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a WorkloadIdentityPool. You cannot use a deleted pool to
-- exchange external credentials for Google Cloud credentials. However,
-- deletion does not revoke credentials that have already been issued.
-- Credentials issued for a deleted pool do not grant access to resources.
-- If the pool is undeleted, and the credentials are not expired, they
-- grant access again. You can undelete a pool for 30 days. After 30 days,
-- deletion is permanent. You cannot update deleted pools. However, you can
-- view and list them.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsDelete' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsDelete =
  ProjectsLocationsWorkLoadIdentityPoolsDelete'
    { _plwlipdXgafv :: !(Maybe Xgafv)
    , _plwlipdUploadProtocol :: !(Maybe Text)
    , _plwlipdAccessToken :: !(Maybe Text)
    , _plwlipdUploadType :: !(Maybe Text)
    , _plwlipdName :: !Text
    , _plwlipdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipdXgafv'
--
-- * 'plwlipdUploadProtocol'
--
-- * 'plwlipdAccessToken'
--
-- * 'plwlipdUploadType'
--
-- * 'plwlipdName'
--
-- * 'plwlipdCallback'
projectsLocationsWorkLoadIdentityPoolsDelete
    :: Text -- ^ 'plwlipdName'
    -> ProjectsLocationsWorkLoadIdentityPoolsDelete
projectsLocationsWorkLoadIdentityPoolsDelete pPlwlipdName_ =
  ProjectsLocationsWorkLoadIdentityPoolsDelete'
    { _plwlipdXgafv = Nothing
    , _plwlipdUploadProtocol = Nothing
    , _plwlipdAccessToken = Nothing
    , _plwlipdUploadType = Nothing
    , _plwlipdName = pPlwlipdName_
    , _plwlipdCallback = Nothing
    }


-- | V1 error format.
plwlipdXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsDelete (Maybe Xgafv)
plwlipdXgafv
  = lens _plwlipdXgafv (\ s a -> s{_plwlipdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipdUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsDelete (Maybe Text)
plwlipdUploadProtocol
  = lens _plwlipdUploadProtocol
      (\ s a -> s{_plwlipdUploadProtocol = a})

-- | OAuth access token.
plwlipdAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsDelete (Maybe Text)
plwlipdAccessToken
  = lens _plwlipdAccessToken
      (\ s a -> s{_plwlipdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipdUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsDelete (Maybe Text)
plwlipdUploadType
  = lens _plwlipdUploadType
      (\ s a -> s{_plwlipdUploadType = a})

-- | Required. The name of the pool to delete.
plwlipdName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsDelete Text
plwlipdName
  = lens _plwlipdName (\ s a -> s{_plwlipdName = a})

-- | JSONP
plwlipdCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsDelete (Maybe Text)
plwlipdCallback
  = lens _plwlipdCallback
      (\ s a -> s{_plwlipdCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsDelete
         where
        type Rs ProjectsLocationsWorkLoadIdentityPoolsDelete
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsDelete'{..}
          = go _plwlipdName _plwlipdXgafv
              _plwlipdUploadProtocol
              _plwlipdAccessToken
              _plwlipdUploadType
              _plwlipdCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsDeleteResource)
                      mempty
