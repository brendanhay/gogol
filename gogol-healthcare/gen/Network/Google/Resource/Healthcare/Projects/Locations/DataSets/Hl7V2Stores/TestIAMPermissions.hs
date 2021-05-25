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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresTestIAMPermissions
    , ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions

    -- * Request Lenses
    , pldshvstipXgafv
    , pldshvstipUploadProtocol
    , pldshvstipAccessToken
    , pldshvstipUploadType
    , pldshvstipPayload
    , pldshvstipResource
    , pldshvstipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.testIamPermissions@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissionsResource
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
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresTestIAMPermissions' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions =
  ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions'
    { _pldshvstipXgafv :: !(Maybe Xgafv)
    , _pldshvstipUploadProtocol :: !(Maybe Text)
    , _pldshvstipAccessToken :: !(Maybe Text)
    , _pldshvstipUploadType :: !(Maybe Text)
    , _pldshvstipPayload :: !TestIAMPermissionsRequest
    , _pldshvstipResource :: !Text
    , _pldshvstipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvstipXgafv'
--
-- * 'pldshvstipUploadProtocol'
--
-- * 'pldshvstipAccessToken'
--
-- * 'pldshvstipUploadType'
--
-- * 'pldshvstipPayload'
--
-- * 'pldshvstipResource'
--
-- * 'pldshvstipCallback'
projectsLocationsDataSetsHl7V2StoresTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pldshvstipPayload'
    -> Text -- ^ 'pldshvstipResource'
    -> ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions
projectsLocationsDataSetsHl7V2StoresTestIAMPermissions pPldshvstipPayload_ pPldshvstipResource_ =
  ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions'
    { _pldshvstipXgafv = Nothing
    , _pldshvstipUploadProtocol = Nothing
    , _pldshvstipAccessToken = Nothing
    , _pldshvstipUploadType = Nothing
    , _pldshvstipPayload = pPldshvstipPayload_
    , _pldshvstipResource = pPldshvstipResource_
    , _pldshvstipCallback = Nothing
    }


-- | V1 error format.
pldshvstipXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions (Maybe Xgafv)
pldshvstipXgafv
  = lens _pldshvstipXgafv
      (\ s a -> s{_pldshvstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvstipUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions (Maybe Text)
pldshvstipUploadProtocol
  = lens _pldshvstipUploadProtocol
      (\ s a -> s{_pldshvstipUploadProtocol = a})

-- | OAuth access token.
pldshvstipAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions (Maybe Text)
pldshvstipAccessToken
  = lens _pldshvstipAccessToken
      (\ s a -> s{_pldshvstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvstipUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions (Maybe Text)
pldshvstipUploadType
  = lens _pldshvstipUploadType
      (\ s a -> s{_pldshvstipUploadType = a})

-- | Multipart request metadata.
pldshvstipPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions TestIAMPermissionsRequest
pldshvstipPayload
  = lens _pldshvstipPayload
      (\ s a -> s{_pldshvstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pldshvstipResource :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions Text
pldshvstipResource
  = lens _pldshvstipResource
      (\ s a -> s{_pldshvstipResource = a})

-- | JSONP
pldshvstipCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions (Maybe Text)
pldshvstipCallback
  = lens _pldshvstipCallback
      (\ s a -> s{_pldshvstipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissions'{..}
          = go _pldshvstipResource _pldshvstipXgafv
              _pldshvstipUploadProtocol
              _pldshvstipAccessToken
              _pldshvstipUploadType
              _pldshvstipCallback
              (Just AltJSON)
              _pldshvstipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresTestIAMPermissionsResource)
                      mempty
