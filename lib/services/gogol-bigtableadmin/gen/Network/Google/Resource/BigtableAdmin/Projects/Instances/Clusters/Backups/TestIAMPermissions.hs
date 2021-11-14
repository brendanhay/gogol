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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified table resource.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.testIamPermissions@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsTestIAMPermissions
    , ProjectsInstancesClustersBackupsTestIAMPermissions

    -- * Request Lenses
    , picbtipXgafv
    , picbtipUploadProtocol
    , picbtipAccessToken
    , picbtipUploadType
    , picbtipPayload
    , picbtipResource
    , picbtipCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.testIamPermissions@ method which the
-- 'ProjectsInstancesClustersBackupsTestIAMPermissions' request conforms to.
type ProjectsInstancesClustersBackupsTestIAMPermissionsResource
     =
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

-- | Returns permissions that the caller has on the specified table resource.
--
-- /See:/ 'projectsInstancesClustersBackupsTestIAMPermissions' smart constructor.
data ProjectsInstancesClustersBackupsTestIAMPermissions =
  ProjectsInstancesClustersBackupsTestIAMPermissions'
    { _picbtipXgafv :: !(Maybe Xgafv)
    , _picbtipUploadProtocol :: !(Maybe Text)
    , _picbtipAccessToken :: !(Maybe Text)
    , _picbtipUploadType :: !(Maybe Text)
    , _picbtipPayload :: !TestIAMPermissionsRequest
    , _picbtipResource :: !Text
    , _picbtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbtipXgafv'
--
-- * 'picbtipUploadProtocol'
--
-- * 'picbtipAccessToken'
--
-- * 'picbtipUploadType'
--
-- * 'picbtipPayload'
--
-- * 'picbtipResource'
--
-- * 'picbtipCallback'
projectsInstancesClustersBackupsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'picbtipPayload'
    -> Text -- ^ 'picbtipResource'
    -> ProjectsInstancesClustersBackupsTestIAMPermissions
projectsInstancesClustersBackupsTestIAMPermissions pPicbtipPayload_ pPicbtipResource_ =
  ProjectsInstancesClustersBackupsTestIAMPermissions'
    { _picbtipXgafv = Nothing
    , _picbtipUploadProtocol = Nothing
    , _picbtipAccessToken = Nothing
    , _picbtipUploadType = Nothing
    , _picbtipPayload = pPicbtipPayload_
    , _picbtipResource = pPicbtipResource_
    , _picbtipCallback = Nothing
    }


-- | V1 error format.
picbtipXgafv :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions (Maybe Xgafv)
picbtipXgafv
  = lens _picbtipXgafv (\ s a -> s{_picbtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbtipUploadProtocol :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions (Maybe Text)
picbtipUploadProtocol
  = lens _picbtipUploadProtocol
      (\ s a -> s{_picbtipUploadProtocol = a})

-- | OAuth access token.
picbtipAccessToken :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions (Maybe Text)
picbtipAccessToken
  = lens _picbtipAccessToken
      (\ s a -> s{_picbtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbtipUploadType :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions (Maybe Text)
picbtipUploadType
  = lens _picbtipUploadType
      (\ s a -> s{_picbtipUploadType = a})

-- | Multipart request metadata.
picbtipPayload :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions TestIAMPermissionsRequest
picbtipPayload
  = lens _picbtipPayload
      (\ s a -> s{_picbtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
picbtipResource :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions Text
picbtipResource
  = lens _picbtipResource
      (\ s a -> s{_picbtipResource = a})

-- | JSONP
picbtipCallback :: Lens' ProjectsInstancesClustersBackupsTestIAMPermissions (Maybe Text)
picbtipCallback
  = lens _picbtipCallback
      (\ s a -> s{_picbtipCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsTestIAMPermissions
         where
        type Rs
               ProjectsInstancesClustersBackupsTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsInstancesClustersBackupsTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsTestIAMPermissions'{..}
          = go _picbtipResource _picbtipXgafv
              _picbtipUploadProtocol
              _picbtipAccessToken
              _picbtipUploadType
              _picbtipCallback
              (Just AltJSON)
              _picbtipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesClustersBackupsTestIAMPermissionsResource)
                      mempty
