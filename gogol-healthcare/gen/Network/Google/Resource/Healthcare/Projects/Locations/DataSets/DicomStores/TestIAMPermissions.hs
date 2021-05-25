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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.testIamPermissions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresTestIAMPermissions
    , ProjectsLocationsDataSetsDicomStoresTestIAMPermissions

    -- * Request Lenses
    , pldsdstipXgafv
    , pldsdstipUploadProtocol
    , pldsdstipAccessToken
    , pldsdstipUploadType
    , pldsdstipPayload
    , pldsdstipResource
    , pldsdstipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.testIamPermissions@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresTestIAMPermissions' request conforms to.
type ProjectsLocationsDataSetsDicomStoresTestIAMPermissionsResource
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
-- /See:/ 'projectsLocationsDataSetsDicomStoresTestIAMPermissions' smart constructor.
data ProjectsLocationsDataSetsDicomStoresTestIAMPermissions =
  ProjectsLocationsDataSetsDicomStoresTestIAMPermissions'
    { _pldsdstipXgafv :: !(Maybe Xgafv)
    , _pldsdstipUploadProtocol :: !(Maybe Text)
    , _pldsdstipAccessToken :: !(Maybe Text)
    , _pldsdstipUploadType :: !(Maybe Text)
    , _pldsdstipPayload :: !TestIAMPermissionsRequest
    , _pldsdstipResource :: !Text
    , _pldsdstipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdstipXgafv'
--
-- * 'pldsdstipUploadProtocol'
--
-- * 'pldsdstipAccessToken'
--
-- * 'pldsdstipUploadType'
--
-- * 'pldsdstipPayload'
--
-- * 'pldsdstipResource'
--
-- * 'pldsdstipCallback'
projectsLocationsDataSetsDicomStoresTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pldsdstipPayload'
    -> Text -- ^ 'pldsdstipResource'
    -> ProjectsLocationsDataSetsDicomStoresTestIAMPermissions
projectsLocationsDataSetsDicomStoresTestIAMPermissions pPldsdstipPayload_ pPldsdstipResource_ =
  ProjectsLocationsDataSetsDicomStoresTestIAMPermissions'
    { _pldsdstipXgafv = Nothing
    , _pldsdstipUploadProtocol = Nothing
    , _pldsdstipAccessToken = Nothing
    , _pldsdstipUploadType = Nothing
    , _pldsdstipPayload = pPldsdstipPayload_
    , _pldsdstipResource = pPldsdstipResource_
    , _pldsdstipCallback = Nothing
    }


-- | V1 error format.
pldsdstipXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions (Maybe Xgafv)
pldsdstipXgafv
  = lens _pldsdstipXgafv
      (\ s a -> s{_pldsdstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdstipUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions (Maybe Text)
pldsdstipUploadProtocol
  = lens _pldsdstipUploadProtocol
      (\ s a -> s{_pldsdstipUploadProtocol = a})

-- | OAuth access token.
pldsdstipAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions (Maybe Text)
pldsdstipAccessToken
  = lens _pldsdstipAccessToken
      (\ s a -> s{_pldsdstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdstipUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions (Maybe Text)
pldsdstipUploadType
  = lens _pldsdstipUploadType
      (\ s a -> s{_pldsdstipUploadType = a})

-- | Multipart request metadata.
pldsdstipPayload :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions TestIAMPermissionsRequest
pldsdstipPayload
  = lens _pldsdstipPayload
      (\ s a -> s{_pldsdstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pldsdstipResource :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions Text
pldsdstipResource
  = lens _pldsdstipResource
      (\ s a -> s{_pldsdstipResource = a})

-- | JSONP
pldsdstipCallback :: Lens' ProjectsLocationsDataSetsDicomStoresTestIAMPermissions (Maybe Text)
pldsdstipCallback
  = lens _pldsdstipCallback
      (\ s a -> s{_pldsdstipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresTestIAMPermissions
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsDataSetsDicomStoresTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresTestIAMPermissions'{..}
          = go _pldsdstipResource _pldsdstipXgafv
              _pldsdstipUploadProtocol
              _pldsdstipAccessToken
              _pldsdstipUploadType
              _pldsdstipCallback
              (Just AltJSON)
              _pldsdstipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresTestIAMPermissionsResource)
                      mempty
