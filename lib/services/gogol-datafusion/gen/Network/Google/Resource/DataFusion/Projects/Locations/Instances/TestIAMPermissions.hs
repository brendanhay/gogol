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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Instances.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.testIamPermissions@.
module Network.Google.Resource.DataFusion.Projects.Locations.Instances.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsInstancesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsInstancesTestIAMPermissions
    , ProjectsLocationsInstancesTestIAMPermissions

    -- * Request Lenses
    , plitipXgafv
    , plitipUploadProtocol
    , plitipAccessToken
    , plitipUploadType
    , plitipPayload
    , plitipResource
    , plitipCallback
    ) where

import Network.Google.DataFusion.Types
import Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.instances.testIamPermissions@ method which the
-- 'ProjectsLocationsInstancesTestIAMPermissions' request conforms to.
type ProjectsLocationsInstancesTestIAMPermissionsResource
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
-- /See:/ 'projectsLocationsInstancesTestIAMPermissions' smart constructor.
data ProjectsLocationsInstancesTestIAMPermissions =
  ProjectsLocationsInstancesTestIAMPermissions'
    { _plitipXgafv :: !(Maybe Xgafv)
    , _plitipUploadProtocol :: !(Maybe Text)
    , _plitipAccessToken :: !(Maybe Text)
    , _plitipUploadType :: !(Maybe Text)
    , _plitipPayload :: !TestIAMPermissionsRequest
    , _plitipResource :: !Text
    , _plitipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plitipXgafv'
--
-- * 'plitipUploadProtocol'
--
-- * 'plitipAccessToken'
--
-- * 'plitipUploadType'
--
-- * 'plitipPayload'
--
-- * 'plitipResource'
--
-- * 'plitipCallback'
projectsLocationsInstancesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plitipPayload'
    -> Text -- ^ 'plitipResource'
    -> ProjectsLocationsInstancesTestIAMPermissions
projectsLocationsInstancesTestIAMPermissions pPlitipPayload_ pPlitipResource_ =
  ProjectsLocationsInstancesTestIAMPermissions'
    { _plitipXgafv = Nothing
    , _plitipUploadProtocol = Nothing
    , _plitipAccessToken = Nothing
    , _plitipUploadType = Nothing
    , _plitipPayload = pPlitipPayload_
    , _plitipResource = pPlitipResource_
    , _plitipCallback = Nothing
    }


-- | V1 error format.
plitipXgafv :: Lens' ProjectsLocationsInstancesTestIAMPermissions (Maybe Xgafv)
plitipXgafv
  = lens _plitipXgafv (\ s a -> s{_plitipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plitipUploadProtocol :: Lens' ProjectsLocationsInstancesTestIAMPermissions (Maybe Text)
plitipUploadProtocol
  = lens _plitipUploadProtocol
      (\ s a -> s{_plitipUploadProtocol = a})

-- | OAuth access token.
plitipAccessToken :: Lens' ProjectsLocationsInstancesTestIAMPermissions (Maybe Text)
plitipAccessToken
  = lens _plitipAccessToken
      (\ s a -> s{_plitipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plitipUploadType :: Lens' ProjectsLocationsInstancesTestIAMPermissions (Maybe Text)
plitipUploadType
  = lens _plitipUploadType
      (\ s a -> s{_plitipUploadType = a})

-- | Multipart request metadata.
plitipPayload :: Lens' ProjectsLocationsInstancesTestIAMPermissions TestIAMPermissionsRequest
plitipPayload
  = lens _plitipPayload
      (\ s a -> s{_plitipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plitipResource :: Lens' ProjectsLocationsInstancesTestIAMPermissions Text
plitipResource
  = lens _plitipResource
      (\ s a -> s{_plitipResource = a})

-- | JSONP
plitipCallback :: Lens' ProjectsLocationsInstancesTestIAMPermissions (Maybe Text)
plitipCallback
  = lens _plitipCallback
      (\ s a -> s{_plitipCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesTestIAMPermissions
         where
        type Rs ProjectsLocationsInstancesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsInstancesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInstancesTestIAMPermissions'{..}
          = go _plitipResource _plitipXgafv
              _plitipUploadProtocol
              _plitipAccessToken
              _plitipUploadType
              _plitipCallback
              (Just AltJSON)
              _plitipPayload
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsInstancesTestIAMPermissionsResource)
                      mempty
