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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.testIamPermissions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresTestIAMPermissions
    , ProjectsLocationsDataSetsConsentStoresTestIAMPermissions

    -- * Request Lenses
    , pldscstipXgafv
    , pldscstipUploadProtocol
    , pldscstipAccessToken
    , pldscstipUploadType
    , pldscstipPayload
    , pldscstipResource
    , pldscstipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.testIamPermissions@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresTestIAMPermissions' request conforms to.
type ProjectsLocationsDataSetsConsentStoresTestIAMPermissionsResource
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
-- /See:/ 'projectsLocationsDataSetsConsentStoresTestIAMPermissions' smart constructor.
data ProjectsLocationsDataSetsConsentStoresTestIAMPermissions =
  ProjectsLocationsDataSetsConsentStoresTestIAMPermissions'
    { _pldscstipXgafv :: !(Maybe Xgafv)
    , _pldscstipUploadProtocol :: !(Maybe Text)
    , _pldscstipAccessToken :: !(Maybe Text)
    , _pldscstipUploadType :: !(Maybe Text)
    , _pldscstipPayload :: !TestIAMPermissionsRequest
    , _pldscstipResource :: !Text
    , _pldscstipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscstipXgafv'
--
-- * 'pldscstipUploadProtocol'
--
-- * 'pldscstipAccessToken'
--
-- * 'pldscstipUploadType'
--
-- * 'pldscstipPayload'
--
-- * 'pldscstipResource'
--
-- * 'pldscstipCallback'
projectsLocationsDataSetsConsentStoresTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pldscstipPayload'
    -> Text -- ^ 'pldscstipResource'
    -> ProjectsLocationsDataSetsConsentStoresTestIAMPermissions
projectsLocationsDataSetsConsentStoresTestIAMPermissions pPldscstipPayload_ pPldscstipResource_ =
  ProjectsLocationsDataSetsConsentStoresTestIAMPermissions'
    { _pldscstipXgafv = Nothing
    , _pldscstipUploadProtocol = Nothing
    , _pldscstipAccessToken = Nothing
    , _pldscstipUploadType = Nothing
    , _pldscstipPayload = pPldscstipPayload_
    , _pldscstipResource = pPldscstipResource_
    , _pldscstipCallback = Nothing
    }


-- | V1 error format.
pldscstipXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions (Maybe Xgafv)
pldscstipXgafv
  = lens _pldscstipXgafv
      (\ s a -> s{_pldscstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscstipUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions (Maybe Text)
pldscstipUploadProtocol
  = lens _pldscstipUploadProtocol
      (\ s a -> s{_pldscstipUploadProtocol = a})

-- | OAuth access token.
pldscstipAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions (Maybe Text)
pldscstipAccessToken
  = lens _pldscstipAccessToken
      (\ s a -> s{_pldscstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscstipUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions (Maybe Text)
pldscstipUploadType
  = lens _pldscstipUploadType
      (\ s a -> s{_pldscstipUploadType = a})

-- | Multipart request metadata.
pldscstipPayload :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions TestIAMPermissionsRequest
pldscstipPayload
  = lens _pldscstipPayload
      (\ s a -> s{_pldscstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pldscstipResource :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions Text
pldscstipResource
  = lens _pldscstipResource
      (\ s a -> s{_pldscstipResource = a})

-- | JSONP
pldscstipCallback :: Lens' ProjectsLocationsDataSetsConsentStoresTestIAMPermissions (Maybe Text)
pldscstipCallback
  = lens _pldscstipCallback
      (\ s a -> s{_pldscstipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresTestIAMPermissions
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresTestIAMPermissions'{..}
          = go _pldscstipResource _pldscstipXgafv
              _pldscstipUploadProtocol
              _pldscstipAccessToken
              _pldscstipUploadType
              _pldscstipCallback
              (Just AltJSON)
              _pldscstipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresTestIAMPermissionsResource)
                      mempty
