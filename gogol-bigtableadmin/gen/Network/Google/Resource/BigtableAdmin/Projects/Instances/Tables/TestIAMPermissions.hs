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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified table resource.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.testIamPermissions@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsInstancesTablesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsInstancesTablesTestIAMPermissions
    , ProjectsInstancesTablesTestIAMPermissions

    -- * Request Lenses
    , pittipXgafv
    , pittipUploadProtocol
    , pittipAccessToken
    , pittipUploadType
    , pittipPayload
    , pittipResource
    , pittipCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.testIamPermissions@ method which the
-- 'ProjectsInstancesTablesTestIAMPermissions' request conforms to.
type ProjectsInstancesTablesTestIAMPermissionsResource
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
-- /See:/ 'projectsInstancesTablesTestIAMPermissions' smart constructor.
data ProjectsInstancesTablesTestIAMPermissions =
  ProjectsInstancesTablesTestIAMPermissions'
    { _pittipXgafv          :: !(Maybe Xgafv)
    , _pittipUploadProtocol :: !(Maybe Text)
    , _pittipAccessToken    :: !(Maybe Text)
    , _pittipUploadType     :: !(Maybe Text)
    , _pittipPayload        :: !TestIAMPermissionsRequest
    , _pittipResource       :: !Text
    , _pittipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pittipXgafv'
--
-- * 'pittipUploadProtocol'
--
-- * 'pittipAccessToken'
--
-- * 'pittipUploadType'
--
-- * 'pittipPayload'
--
-- * 'pittipResource'
--
-- * 'pittipCallback'
projectsInstancesTablesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pittipPayload'
    -> Text -- ^ 'pittipResource'
    -> ProjectsInstancesTablesTestIAMPermissions
projectsInstancesTablesTestIAMPermissions pPittipPayload_ pPittipResource_ =
  ProjectsInstancesTablesTestIAMPermissions'
    { _pittipXgafv = Nothing
    , _pittipUploadProtocol = Nothing
    , _pittipAccessToken = Nothing
    , _pittipUploadType = Nothing
    , _pittipPayload = pPittipPayload_
    , _pittipResource = pPittipResource_
    , _pittipCallback = Nothing
    }


-- | V1 error format.
pittipXgafv :: Lens' ProjectsInstancesTablesTestIAMPermissions (Maybe Xgafv)
pittipXgafv
  = lens _pittipXgafv (\ s a -> s{_pittipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pittipUploadProtocol :: Lens' ProjectsInstancesTablesTestIAMPermissions (Maybe Text)
pittipUploadProtocol
  = lens _pittipUploadProtocol
      (\ s a -> s{_pittipUploadProtocol = a})

-- | OAuth access token.
pittipAccessToken :: Lens' ProjectsInstancesTablesTestIAMPermissions (Maybe Text)
pittipAccessToken
  = lens _pittipAccessToken
      (\ s a -> s{_pittipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pittipUploadType :: Lens' ProjectsInstancesTablesTestIAMPermissions (Maybe Text)
pittipUploadType
  = lens _pittipUploadType
      (\ s a -> s{_pittipUploadType = a})

-- | Multipart request metadata.
pittipPayload :: Lens' ProjectsInstancesTablesTestIAMPermissions TestIAMPermissionsRequest
pittipPayload
  = lens _pittipPayload
      (\ s a -> s{_pittipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pittipResource :: Lens' ProjectsInstancesTablesTestIAMPermissions Text
pittipResource
  = lens _pittipResource
      (\ s a -> s{_pittipResource = a})

-- | JSONP
pittipCallback :: Lens' ProjectsInstancesTablesTestIAMPermissions (Maybe Text)
pittipCallback
  = lens _pittipCallback
      (\ s a -> s{_pittipCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesTestIAMPermissions
         where
        type Rs ProjectsInstancesTablesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsInstancesTablesTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesTestIAMPermissions'{..}
          = go _pittipResource _pittipXgafv
              _pittipUploadProtocol
              _pittipAccessToken
              _pittipUploadType
              _pittipCallback
              (Just AltJSON)
              _pittipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesTablesTestIAMPermissionsResource)
                      mempty
