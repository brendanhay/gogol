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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.testIamPermissions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsTestIAMPermissions
    , ProjectsLocationsDataSetsTestIAMPermissions

    -- * Request Lenses
    , pldstipXgafv
    , pldstipUploadProtocol
    , pldstipAccessToken
    , pldstipUploadType
    , pldstipPayload
    , pldstipResource
    , pldstipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.testIamPermissions@ method which the
-- 'ProjectsLocationsDataSetsTestIAMPermissions' request conforms to.
type ProjectsLocationsDataSetsTestIAMPermissionsResource
     =
     "v1alpha" :>
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
-- /See:/ 'projectsLocationsDataSetsTestIAMPermissions' smart constructor.
data ProjectsLocationsDataSetsTestIAMPermissions =
  ProjectsLocationsDataSetsTestIAMPermissions'
    { _pldstipXgafv          :: !(Maybe Xgafv)
    , _pldstipUploadProtocol :: !(Maybe Text)
    , _pldstipAccessToken    :: !(Maybe Text)
    , _pldstipUploadType     :: !(Maybe Text)
    , _pldstipPayload        :: !TestIAMPermissionsRequest
    , _pldstipResource       :: !Text
    , _pldstipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldstipXgafv'
--
-- * 'pldstipUploadProtocol'
--
-- * 'pldstipAccessToken'
--
-- * 'pldstipUploadType'
--
-- * 'pldstipPayload'
--
-- * 'pldstipResource'
--
-- * 'pldstipCallback'
projectsLocationsDataSetsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pldstipPayload'
    -> Text -- ^ 'pldstipResource'
    -> ProjectsLocationsDataSetsTestIAMPermissions
projectsLocationsDataSetsTestIAMPermissions pPldstipPayload_ pPldstipResource_ =
  ProjectsLocationsDataSetsTestIAMPermissions'
    { _pldstipXgafv = Nothing
    , _pldstipUploadProtocol = Nothing
    , _pldstipAccessToken = Nothing
    , _pldstipUploadType = Nothing
    , _pldstipPayload = pPldstipPayload_
    , _pldstipResource = pPldstipResource_
    , _pldstipCallback = Nothing
    }


-- | V1 error format.
pldstipXgafv :: Lens' ProjectsLocationsDataSetsTestIAMPermissions (Maybe Xgafv)
pldstipXgafv
  = lens _pldstipXgafv (\ s a -> s{_pldstipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldstipUploadProtocol :: Lens' ProjectsLocationsDataSetsTestIAMPermissions (Maybe Text)
pldstipUploadProtocol
  = lens _pldstipUploadProtocol
      (\ s a -> s{_pldstipUploadProtocol = a})

-- | OAuth access token.
pldstipAccessToken :: Lens' ProjectsLocationsDataSetsTestIAMPermissions (Maybe Text)
pldstipAccessToken
  = lens _pldstipAccessToken
      (\ s a -> s{_pldstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldstipUploadType :: Lens' ProjectsLocationsDataSetsTestIAMPermissions (Maybe Text)
pldstipUploadType
  = lens _pldstipUploadType
      (\ s a -> s{_pldstipUploadType = a})

-- | Multipart request metadata.
pldstipPayload :: Lens' ProjectsLocationsDataSetsTestIAMPermissions TestIAMPermissionsRequest
pldstipPayload
  = lens _pldstipPayload
      (\ s a -> s{_pldstipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pldstipResource :: Lens' ProjectsLocationsDataSetsTestIAMPermissions Text
pldstipResource
  = lens _pldstipResource
      (\ s a -> s{_pldstipResource = a})

-- | JSONP
pldstipCallback :: Lens' ProjectsLocationsDataSetsTestIAMPermissions (Maybe Text)
pldstipCallback
  = lens _pldstipCallback
      (\ s a -> s{_pldstipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsTestIAMPermissions
         where
        type Rs ProjectsLocationsDataSetsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsDataSetsTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsTestIAMPermissions'{..}
          = go _pldstipResource _pldstipXgafv
              _pldstipUploadProtocol
              _pldstipAccessToken
              _pldstipUploadType
              _pldstipCallback
              (Just AltJSON)
              _pldstipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsTestIAMPermissionsResource)
                      mempty
