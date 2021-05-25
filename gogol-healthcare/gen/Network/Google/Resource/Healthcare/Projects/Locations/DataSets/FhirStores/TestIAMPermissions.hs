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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.testIamPermissions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresTestIAMPermissions
    , ProjectsLocationsDataSetsFhirStoresTestIAMPermissions

    -- * Request Lenses
    , pldsfstipXgafv
    , pldsfstipUploadProtocol
    , pldsfstipAccessToken
    , pldsfstipUploadType
    , pldsfstipPayload
    , pldsfstipResource
    , pldsfstipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.testIamPermissions@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresTestIAMPermissions' request conforms to.
type ProjectsLocationsDataSetsFhirStoresTestIAMPermissionsResource
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
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresTestIAMPermissions' smart constructor.
data ProjectsLocationsDataSetsFhirStoresTestIAMPermissions =
  ProjectsLocationsDataSetsFhirStoresTestIAMPermissions'
    { _pldsfstipXgafv :: !(Maybe Xgafv)
    , _pldsfstipUploadProtocol :: !(Maybe Text)
    , _pldsfstipAccessToken :: !(Maybe Text)
    , _pldsfstipUploadType :: !(Maybe Text)
    , _pldsfstipPayload :: !TestIAMPermissionsRequest
    , _pldsfstipResource :: !Text
    , _pldsfstipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfstipXgafv'
--
-- * 'pldsfstipUploadProtocol'
--
-- * 'pldsfstipAccessToken'
--
-- * 'pldsfstipUploadType'
--
-- * 'pldsfstipPayload'
--
-- * 'pldsfstipResource'
--
-- * 'pldsfstipCallback'
projectsLocationsDataSetsFhirStoresTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pldsfstipPayload'
    -> Text -- ^ 'pldsfstipResource'
    -> ProjectsLocationsDataSetsFhirStoresTestIAMPermissions
projectsLocationsDataSetsFhirStoresTestIAMPermissions pPldsfstipPayload_ pPldsfstipResource_ =
  ProjectsLocationsDataSetsFhirStoresTestIAMPermissions'
    { _pldsfstipXgafv = Nothing
    , _pldsfstipUploadProtocol = Nothing
    , _pldsfstipAccessToken = Nothing
    , _pldsfstipUploadType = Nothing
    , _pldsfstipPayload = pPldsfstipPayload_
    , _pldsfstipResource = pPldsfstipResource_
    , _pldsfstipCallback = Nothing
    }


-- | V1 error format.
pldsfstipXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions (Maybe Xgafv)
pldsfstipXgafv
  = lens _pldsfstipXgafv
      (\ s a -> s{_pldsfstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfstipUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions (Maybe Text)
pldsfstipUploadProtocol
  = lens _pldsfstipUploadProtocol
      (\ s a -> s{_pldsfstipUploadProtocol = a})

-- | OAuth access token.
pldsfstipAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions (Maybe Text)
pldsfstipAccessToken
  = lens _pldsfstipAccessToken
      (\ s a -> s{_pldsfstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfstipUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions (Maybe Text)
pldsfstipUploadType
  = lens _pldsfstipUploadType
      (\ s a -> s{_pldsfstipUploadType = a})

-- | Multipart request metadata.
pldsfstipPayload :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions TestIAMPermissionsRequest
pldsfstipPayload
  = lens _pldsfstipPayload
      (\ s a -> s{_pldsfstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pldsfstipResource :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions Text
pldsfstipResource
  = lens _pldsfstipResource
      (\ s a -> s{_pldsfstipResource = a})

-- | JSONP
pldsfstipCallback :: Lens' ProjectsLocationsDataSetsFhirStoresTestIAMPermissions (Maybe Text)
pldsfstipCallback
  = lens _pldsfstipCallback
      (\ s a -> s{_pldsfstipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresTestIAMPermissions
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsDataSetsFhirStoresTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresTestIAMPermissions'{..}
          = go _pldsfstipResource _pldsfstipXgafv
              _pldsfstipUploadProtocol
              _pldsfstipAccessToken
              _pldsfstipUploadType
              _pldsfstipCallback
              (Just AltJSON)
              _pldsfstipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresTestIAMPermissionsResource)
                      mempty
