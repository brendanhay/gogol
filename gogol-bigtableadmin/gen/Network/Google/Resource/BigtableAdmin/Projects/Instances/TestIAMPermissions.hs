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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified instance
-- resource.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.testIamPermissions@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsInstancesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsInstancesTestIAMPermissions
    , ProjectsInstancesTestIAMPermissions

    -- * Request Lenses
    , pitipXgafv
    , pitipUploadProtocol
    , pitipAccessToken
    , pitipUploadType
    , pitipPayload
    , pitipResource
    , pitipCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.testIamPermissions@ method which the
-- 'ProjectsInstancesTestIAMPermissions' request conforms to.
type ProjectsInstancesTestIAMPermissionsResource =
     "v2" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that the caller has on the specified instance
-- resource.
--
-- /See:/ 'projectsInstancesTestIAMPermissions' smart constructor.
data ProjectsInstancesTestIAMPermissions =
  ProjectsInstancesTestIAMPermissions'
    { _pitipXgafv          :: !(Maybe Xgafv)
    , _pitipUploadProtocol :: !(Maybe Text)
    , _pitipAccessToken    :: !(Maybe Text)
    , _pitipUploadType     :: !(Maybe Text)
    , _pitipPayload        :: !TestIAMPermissionsRequest
    , _pitipResource       :: !Text
    , _pitipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInstancesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitipXgafv'
--
-- * 'pitipUploadProtocol'
--
-- * 'pitipAccessToken'
--
-- * 'pitipUploadType'
--
-- * 'pitipPayload'
--
-- * 'pitipResource'
--
-- * 'pitipCallback'
projectsInstancesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pitipPayload'
    -> Text -- ^ 'pitipResource'
    -> ProjectsInstancesTestIAMPermissions
projectsInstancesTestIAMPermissions pPitipPayload_ pPitipResource_ =
  ProjectsInstancesTestIAMPermissions'
    { _pitipXgafv = Nothing
    , _pitipUploadProtocol = Nothing
    , _pitipAccessToken = Nothing
    , _pitipUploadType = Nothing
    , _pitipPayload = pPitipPayload_
    , _pitipResource = pPitipResource_
    , _pitipCallback = Nothing
    }

-- | V1 error format.
pitipXgafv :: Lens' ProjectsInstancesTestIAMPermissions (Maybe Xgafv)
pitipXgafv
  = lens _pitipXgafv (\ s a -> s{_pitipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitipUploadProtocol :: Lens' ProjectsInstancesTestIAMPermissions (Maybe Text)
pitipUploadProtocol
  = lens _pitipUploadProtocol
      (\ s a -> s{_pitipUploadProtocol = a})

-- | OAuth access token.
pitipAccessToken :: Lens' ProjectsInstancesTestIAMPermissions (Maybe Text)
pitipAccessToken
  = lens _pitipAccessToken
      (\ s a -> s{_pitipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitipUploadType :: Lens' ProjectsInstancesTestIAMPermissions (Maybe Text)
pitipUploadType
  = lens _pitipUploadType
      (\ s a -> s{_pitipUploadType = a})

-- | Multipart request metadata.
pitipPayload :: Lens' ProjectsInstancesTestIAMPermissions TestIAMPermissionsRequest
pitipPayload
  = lens _pitipPayload (\ s a -> s{_pitipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pitipResource :: Lens' ProjectsInstancesTestIAMPermissions Text
pitipResource
  = lens _pitipResource
      (\ s a -> s{_pitipResource = a})

-- | JSONP
pitipCallback :: Lens' ProjectsInstancesTestIAMPermissions (Maybe Text)
pitipCallback
  = lens _pitipCallback
      (\ s a -> s{_pitipCallback = a})

instance GoogleRequest
           ProjectsInstancesTestIAMPermissions
         where
        type Rs ProjectsInstancesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsInstancesTestIAMPermissions =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTestIAMPermissions'{..}
          = go _pitipResource _pitipXgafv _pitipUploadProtocol
              _pitipAccessToken
              _pitipUploadType
              _pitipCallback
              (Just AltJSON)
              _pitipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTestIAMPermissionsResource)
                      mempty
