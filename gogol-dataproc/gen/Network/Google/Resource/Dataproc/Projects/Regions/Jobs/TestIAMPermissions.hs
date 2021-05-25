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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsRegionsJobsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsRegionsJobsTestIAMPermissions
    , ProjectsRegionsJobsTestIAMPermissions

    -- * Request Lenses
    , prjtipXgafv
    , prjtipUploadProtocol
    , prjtipAccessToken
    , prjtipUploadType
    , prjtipPayload
    , prjtipResource
    , prjtipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.testIamPermissions@ method which the
-- 'ProjectsRegionsJobsTestIAMPermissions' request conforms to.
type ProjectsRegionsJobsTestIAMPermissionsResource =
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
-- /See:/ 'projectsRegionsJobsTestIAMPermissions' smart constructor.
data ProjectsRegionsJobsTestIAMPermissions =
  ProjectsRegionsJobsTestIAMPermissions'
    { _prjtipXgafv :: !(Maybe Xgafv)
    , _prjtipUploadProtocol :: !(Maybe Text)
    , _prjtipAccessToken :: !(Maybe Text)
    , _prjtipUploadType :: !(Maybe Text)
    , _prjtipPayload :: !TestIAMPermissionsRequest
    , _prjtipResource :: !Text
    , _prjtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsJobsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjtipXgafv'
--
-- * 'prjtipUploadProtocol'
--
-- * 'prjtipAccessToken'
--
-- * 'prjtipUploadType'
--
-- * 'prjtipPayload'
--
-- * 'prjtipResource'
--
-- * 'prjtipCallback'
projectsRegionsJobsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'prjtipPayload'
    -> Text -- ^ 'prjtipResource'
    -> ProjectsRegionsJobsTestIAMPermissions
projectsRegionsJobsTestIAMPermissions pPrjtipPayload_ pPrjtipResource_ =
  ProjectsRegionsJobsTestIAMPermissions'
    { _prjtipXgafv = Nothing
    , _prjtipUploadProtocol = Nothing
    , _prjtipAccessToken = Nothing
    , _prjtipUploadType = Nothing
    , _prjtipPayload = pPrjtipPayload_
    , _prjtipResource = pPrjtipResource_
    , _prjtipCallback = Nothing
    }


-- | V1 error format.
prjtipXgafv :: Lens' ProjectsRegionsJobsTestIAMPermissions (Maybe Xgafv)
prjtipXgafv
  = lens _prjtipXgafv (\ s a -> s{_prjtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjtipUploadProtocol :: Lens' ProjectsRegionsJobsTestIAMPermissions (Maybe Text)
prjtipUploadProtocol
  = lens _prjtipUploadProtocol
      (\ s a -> s{_prjtipUploadProtocol = a})

-- | OAuth access token.
prjtipAccessToken :: Lens' ProjectsRegionsJobsTestIAMPermissions (Maybe Text)
prjtipAccessToken
  = lens _prjtipAccessToken
      (\ s a -> s{_prjtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjtipUploadType :: Lens' ProjectsRegionsJobsTestIAMPermissions (Maybe Text)
prjtipUploadType
  = lens _prjtipUploadType
      (\ s a -> s{_prjtipUploadType = a})

-- | Multipart request metadata.
prjtipPayload :: Lens' ProjectsRegionsJobsTestIAMPermissions TestIAMPermissionsRequest
prjtipPayload
  = lens _prjtipPayload
      (\ s a -> s{_prjtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
prjtipResource :: Lens' ProjectsRegionsJobsTestIAMPermissions Text
prjtipResource
  = lens _prjtipResource
      (\ s a -> s{_prjtipResource = a})

-- | JSONP
prjtipCallback :: Lens' ProjectsRegionsJobsTestIAMPermissions (Maybe Text)
prjtipCallback
  = lens _prjtipCallback
      (\ s a -> s{_prjtipCallback = a})

instance GoogleRequest
           ProjectsRegionsJobsTestIAMPermissions
         where
        type Rs ProjectsRegionsJobsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsRegionsJobsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsJobsTestIAMPermissions'{..}
          = go _prjtipResource _prjtipXgafv
              _prjtipUploadProtocol
              _prjtipAccessToken
              _prjtipUploadType
              _prjtipCallback
              (Just AltJSON)
              _prjtipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsJobsTestIAMPermissionsResource)
                      mempty
