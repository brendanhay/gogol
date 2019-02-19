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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.testIamPermissions@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsImportJobsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsKeyRingsImportJobsTestIAMPermissions
    , ProjectsLocationsKeyRingsImportJobsTestIAMPermissions

    -- * Request Lenses
    , plkrijtipXgafv
    , plkrijtipUploadProtocol
    , plkrijtipAccessToken
    , plkrijtipUploadType
    , plkrijtipPayload
    , plkrijtipResource
    , plkrijtipCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.testIamPermissions@ method which the
-- 'ProjectsLocationsKeyRingsImportJobsTestIAMPermissions' request conforms to.
type ProjectsLocationsKeyRingsImportJobsTestIAMPermissionsResource
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
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsLocationsKeyRingsImportJobsTestIAMPermissions' smart constructor.
data ProjectsLocationsKeyRingsImportJobsTestIAMPermissions =
  ProjectsLocationsKeyRingsImportJobsTestIAMPermissions'
    { _plkrijtipXgafv          :: !(Maybe Xgafv)
    , _plkrijtipUploadProtocol :: !(Maybe Text)
    , _plkrijtipAccessToken    :: !(Maybe Text)
    , _plkrijtipUploadType     :: !(Maybe Text)
    , _plkrijtipPayload        :: !TestIAMPermissionsRequest
    , _plkrijtipResource       :: !Text
    , _plkrijtipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsImportJobsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrijtipXgafv'
--
-- * 'plkrijtipUploadProtocol'
--
-- * 'plkrijtipAccessToken'
--
-- * 'plkrijtipUploadType'
--
-- * 'plkrijtipPayload'
--
-- * 'plkrijtipResource'
--
-- * 'plkrijtipCallback'
projectsLocationsKeyRingsImportJobsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plkrijtipPayload'
    -> Text -- ^ 'plkrijtipResource'
    -> ProjectsLocationsKeyRingsImportJobsTestIAMPermissions
projectsLocationsKeyRingsImportJobsTestIAMPermissions pPlkrijtipPayload_ pPlkrijtipResource_ =
  ProjectsLocationsKeyRingsImportJobsTestIAMPermissions'
    { _plkrijtipXgafv = Nothing
    , _plkrijtipUploadProtocol = Nothing
    , _plkrijtipAccessToken = Nothing
    , _plkrijtipUploadType = Nothing
    , _plkrijtipPayload = pPlkrijtipPayload_
    , _plkrijtipResource = pPlkrijtipResource_
    , _plkrijtipCallback = Nothing
    }


-- | V1 error format.
plkrijtipXgafv :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions (Maybe Xgafv)
plkrijtipXgafv
  = lens _plkrijtipXgafv
      (\ s a -> s{_plkrijtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrijtipUploadProtocol :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions (Maybe Text)
plkrijtipUploadProtocol
  = lens _plkrijtipUploadProtocol
      (\ s a -> s{_plkrijtipUploadProtocol = a})

-- | OAuth access token.
plkrijtipAccessToken :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions (Maybe Text)
plkrijtipAccessToken
  = lens _plkrijtipAccessToken
      (\ s a -> s{_plkrijtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrijtipUploadType :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions (Maybe Text)
plkrijtipUploadType
  = lens _plkrijtipUploadType
      (\ s a -> s{_plkrijtipUploadType = a})

-- | Multipart request metadata.
plkrijtipPayload :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions TestIAMPermissionsRequest
plkrijtipPayload
  = lens _plkrijtipPayload
      (\ s a -> s{_plkrijtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plkrijtipResource :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions Text
plkrijtipResource
  = lens _plkrijtipResource
      (\ s a -> s{_plkrijtipResource = a})

-- | JSONP
plkrijtipCallback :: Lens' ProjectsLocationsKeyRingsImportJobsTestIAMPermissions (Maybe Text)
plkrijtipCallback
  = lens _plkrijtipCallback
      (\ s a -> s{_plkrijtipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsImportJobsTestIAMPermissions
         where
        type Rs
               ProjectsLocationsKeyRingsImportJobsTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsKeyRingsImportJobsTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsImportJobsTestIAMPermissions'{..}
          = go _plkrijtipResource _plkrijtipXgafv
              _plkrijtipUploadProtocol
              _plkrijtipAccessToken
              _plkrijtipUploadType
              _plkrijtipCallback
              (Just AltJSON)
              _plkrijtipPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsImportJobsTestIAMPermissionsResource)
                      mempty
