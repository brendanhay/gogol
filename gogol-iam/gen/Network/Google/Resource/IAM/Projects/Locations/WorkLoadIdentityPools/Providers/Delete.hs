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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a WorkloadIdentityPoolProvider. Deleting a provider does not
-- revoke credentials that have already been issued; they continue to grant
-- access. You can undelete a provider for 30 days. After 30 days, deletion
-- is permanent. You cannot update deleted providers. However, you can view
-- and list them.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.delete@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Delete
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersDeleteResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersDelete
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete

    -- * Request Lenses
    , plwlippdXgafv
    , plwlippdUploadProtocol
    , plwlippdAccessToken
    , plwlippdUploadType
    , plwlippdName
    , plwlippdCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.delete@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a WorkloadIdentityPoolProvider. Deleting a provider does not
-- revoke credentials that have already been issued; they continue to grant
-- access. You can undelete a provider for 30 days. After 30 days, deletion
-- is permanent. You cannot update deleted providers. However, you can view
-- and list them.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersDelete' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete'
    { _plwlippdXgafv :: !(Maybe Xgafv)
    , _plwlippdUploadProtocol :: !(Maybe Text)
    , _plwlippdAccessToken :: !(Maybe Text)
    , _plwlippdUploadType :: !(Maybe Text)
    , _plwlippdName :: !Text
    , _plwlippdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlippdXgafv'
--
-- * 'plwlippdUploadProtocol'
--
-- * 'plwlippdAccessToken'
--
-- * 'plwlippdUploadType'
--
-- * 'plwlippdName'
--
-- * 'plwlippdCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersDelete
    :: Text -- ^ 'plwlippdName'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete
projectsLocationsWorkLoadIdentityPoolsProvidersDelete pPlwlippdName_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete'
    { _plwlippdXgafv = Nothing
    , _plwlippdUploadProtocol = Nothing
    , _plwlippdAccessToken = Nothing
    , _plwlippdUploadType = Nothing
    , _plwlippdName = pPlwlippdName_
    , _plwlippdCallback = Nothing
    }


-- | V1 error format.
plwlippdXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete (Maybe Xgafv)
plwlippdXgafv
  = lens _plwlippdXgafv
      (\ s a -> s{_plwlippdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlippdUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete (Maybe Text)
plwlippdUploadProtocol
  = lens _plwlippdUploadProtocol
      (\ s a -> s{_plwlippdUploadProtocol = a})

-- | OAuth access token.
plwlippdAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete (Maybe Text)
plwlippdAccessToken
  = lens _plwlippdAccessToken
      (\ s a -> s{_plwlippdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlippdUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete (Maybe Text)
plwlippdUploadType
  = lens _plwlippdUploadType
      (\ s a -> s{_plwlippdUploadType = a})

-- | Required. The name of the provider to delete.
plwlippdName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete Text
plwlippdName
  = lens _plwlippdName (\ s a -> s{_plwlippdName = a})

-- | JSONP
plwlippdCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete (Maybe Text)
plwlippdCallback
  = lens _plwlippdCallback
      (\ s a -> s{_plwlippdCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersDelete'{..}
          = go _plwlippdName _plwlippdXgafv
              _plwlippdUploadProtocol
              _plwlippdAccessToken
              _plwlippdUploadType
              _plwlippdCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersDeleteResource)
                      mempty
