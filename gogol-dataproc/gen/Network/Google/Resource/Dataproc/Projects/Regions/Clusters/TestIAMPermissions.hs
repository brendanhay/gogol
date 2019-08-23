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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsRegionsClustersTestIAMPermissionsResource

    -- * Creating a Request
    , projectsRegionsClustersTestIAMPermissions
    , ProjectsRegionsClustersTestIAMPermissions

    -- * Request Lenses
    , prctipXgafv
    , prctipUploadProtocol
    , prctipAccessToken
    , prctipUploadType
    , prctipPayload
    , prctipResource
    , prctipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.testIamPermissions@ method which the
-- 'ProjectsRegionsClustersTestIAMPermissions' request conforms to.
type ProjectsRegionsClustersTestIAMPermissionsResource
     =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsRegionsClustersTestIAMPermissions' smart constructor.
data ProjectsRegionsClustersTestIAMPermissions =
  ProjectsRegionsClustersTestIAMPermissions'
    { _prctipXgafv          :: !(Maybe Xgafv)
    , _prctipUploadProtocol :: !(Maybe Text)
    , _prctipAccessToken    :: !(Maybe Text)
    , _prctipUploadType     :: !(Maybe Text)
    , _prctipPayload        :: !TestIAMPermissionsRequest
    , _prctipResource       :: !Text
    , _prctipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prctipXgafv'
--
-- * 'prctipUploadProtocol'
--
-- * 'prctipAccessToken'
--
-- * 'prctipUploadType'
--
-- * 'prctipPayload'
--
-- * 'prctipResource'
--
-- * 'prctipCallback'
projectsRegionsClustersTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'prctipPayload'
    -> Text -- ^ 'prctipResource'
    -> ProjectsRegionsClustersTestIAMPermissions
projectsRegionsClustersTestIAMPermissions pPrctipPayload_ pPrctipResource_ =
  ProjectsRegionsClustersTestIAMPermissions'
    { _prctipXgafv = Nothing
    , _prctipUploadProtocol = Nothing
    , _prctipAccessToken = Nothing
    , _prctipUploadType = Nothing
    , _prctipPayload = pPrctipPayload_
    , _prctipResource = pPrctipResource_
    , _prctipCallback = Nothing
    }


-- | V1 error format.
prctipXgafv :: Lens' ProjectsRegionsClustersTestIAMPermissions (Maybe Xgafv)
prctipXgafv
  = lens _prctipXgafv (\ s a -> s{_prctipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prctipUploadProtocol :: Lens' ProjectsRegionsClustersTestIAMPermissions (Maybe Text)
prctipUploadProtocol
  = lens _prctipUploadProtocol
      (\ s a -> s{_prctipUploadProtocol = a})

-- | OAuth access token.
prctipAccessToken :: Lens' ProjectsRegionsClustersTestIAMPermissions (Maybe Text)
prctipAccessToken
  = lens _prctipAccessToken
      (\ s a -> s{_prctipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prctipUploadType :: Lens' ProjectsRegionsClustersTestIAMPermissions (Maybe Text)
prctipUploadType
  = lens _prctipUploadType
      (\ s a -> s{_prctipUploadType = a})

-- | Multipart request metadata.
prctipPayload :: Lens' ProjectsRegionsClustersTestIAMPermissions TestIAMPermissionsRequest
prctipPayload
  = lens _prctipPayload
      (\ s a -> s{_prctipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
prctipResource :: Lens' ProjectsRegionsClustersTestIAMPermissions Text
prctipResource
  = lens _prctipResource
      (\ s a -> s{_prctipResource = a})

-- | JSONP
prctipCallback :: Lens' ProjectsRegionsClustersTestIAMPermissions (Maybe Text)
prctipCallback
  = lens _prctipCallback
      (\ s a -> s{_prctipCallback = a})

instance GoogleRequest
           ProjectsRegionsClustersTestIAMPermissions
         where
        type Rs ProjectsRegionsClustersTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsRegionsClustersTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsClustersTestIAMPermissions'{..}
          = go _prctipResource _prctipXgafv
              _prctipUploadProtocol
              _prctipAccessToken
              _prctipUploadType
              _prctipCallback
              (Just AltJSON)
              _prctipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsClustersTestIAMPermissionsResource)
                      mempty
