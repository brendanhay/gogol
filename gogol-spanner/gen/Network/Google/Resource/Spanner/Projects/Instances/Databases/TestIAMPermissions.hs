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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified database or
-- backup resource. Attempting this RPC on a non-existent Cloud Spanner
-- database will result in a NOT_FOUND error if the user has
-- \`spanner.databases.list\` permission on the containing Cloud Spanner
-- instance. Otherwise returns an empty set of permissions. Calling this
-- method on a backup that does not exist will result in a NOT_FOUND error
-- if the user has \`spanner.backups.list\` permission on the containing
-- instance.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.testIamPermissions@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsInstancesDatabasesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsInstancesDatabasesTestIAMPermissions
    , ProjectsInstancesDatabasesTestIAMPermissions

    -- * Request Lenses
    , pidtipXgafv
    , pidtipUploadProtocol
    , pidtipAccessToken
    , pidtipUploadType
    , pidtipPayload
    , pidtipResource
    , pidtipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.testIamPermissions@ method which the
-- 'ProjectsInstancesDatabasesTestIAMPermissions' request conforms to.
type ProjectsInstancesDatabasesTestIAMPermissionsResource
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

-- | Returns permissions that the caller has on the specified database or
-- backup resource. Attempting this RPC on a non-existent Cloud Spanner
-- database will result in a NOT_FOUND error if the user has
-- \`spanner.databases.list\` permission on the containing Cloud Spanner
-- instance. Otherwise returns an empty set of permissions. Calling this
-- method on a backup that does not exist will result in a NOT_FOUND error
-- if the user has \`spanner.backups.list\` permission on the containing
-- instance.
--
-- /See:/ 'projectsInstancesDatabasesTestIAMPermissions' smart constructor.
data ProjectsInstancesDatabasesTestIAMPermissions =
  ProjectsInstancesDatabasesTestIAMPermissions'
    { _pidtipXgafv :: !(Maybe Xgafv)
    , _pidtipUploadProtocol :: !(Maybe Text)
    , _pidtipAccessToken :: !(Maybe Text)
    , _pidtipUploadType :: !(Maybe Text)
    , _pidtipPayload :: !TestIAMPermissionsRequest
    , _pidtipResource :: !Text
    , _pidtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidtipXgafv'
--
-- * 'pidtipUploadProtocol'
--
-- * 'pidtipAccessToken'
--
-- * 'pidtipUploadType'
--
-- * 'pidtipPayload'
--
-- * 'pidtipResource'
--
-- * 'pidtipCallback'
projectsInstancesDatabasesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pidtipPayload'
    -> Text -- ^ 'pidtipResource'
    -> ProjectsInstancesDatabasesTestIAMPermissions
projectsInstancesDatabasesTestIAMPermissions pPidtipPayload_ pPidtipResource_ =
  ProjectsInstancesDatabasesTestIAMPermissions'
    { _pidtipXgafv = Nothing
    , _pidtipUploadProtocol = Nothing
    , _pidtipAccessToken = Nothing
    , _pidtipUploadType = Nothing
    , _pidtipPayload = pPidtipPayload_
    , _pidtipResource = pPidtipResource_
    , _pidtipCallback = Nothing
    }


-- | V1 error format.
pidtipXgafv :: Lens' ProjectsInstancesDatabasesTestIAMPermissions (Maybe Xgafv)
pidtipXgafv
  = lens _pidtipXgafv (\ s a -> s{_pidtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidtipUploadProtocol :: Lens' ProjectsInstancesDatabasesTestIAMPermissions (Maybe Text)
pidtipUploadProtocol
  = lens _pidtipUploadProtocol
      (\ s a -> s{_pidtipUploadProtocol = a})

-- | OAuth access token.
pidtipAccessToken :: Lens' ProjectsInstancesDatabasesTestIAMPermissions (Maybe Text)
pidtipAccessToken
  = lens _pidtipAccessToken
      (\ s a -> s{_pidtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidtipUploadType :: Lens' ProjectsInstancesDatabasesTestIAMPermissions (Maybe Text)
pidtipUploadType
  = lens _pidtipUploadType
      (\ s a -> s{_pidtipUploadType = a})

-- | Multipart request metadata.
pidtipPayload :: Lens' ProjectsInstancesDatabasesTestIAMPermissions TestIAMPermissionsRequest
pidtipPayload
  = lens _pidtipPayload
      (\ s a -> s{_pidtipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which permissions are being
-- tested. The format is \`projects\/\/instances\/\` for instance resources
-- and \`projects\/\/instances\/\/databases\/\` for database resources.
pidtipResource :: Lens' ProjectsInstancesDatabasesTestIAMPermissions Text
pidtipResource
  = lens _pidtipResource
      (\ s a -> s{_pidtipResource = a})

-- | JSONP
pidtipCallback :: Lens' ProjectsInstancesDatabasesTestIAMPermissions (Maybe Text)
pidtipCallback
  = lens _pidtipCallback
      (\ s a -> s{_pidtipCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesTestIAMPermissions
         where
        type Rs ProjectsInstancesDatabasesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsInstancesDatabasesTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesTestIAMPermissions'{..}
          = go _pidtipResource _pidtipXgafv
              _pidtipUploadProtocol
              _pidtipAccessToken
              _pidtipUploadType
              _pidtipCallback
              (Just AltJSON)
              _pidtipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesTestIAMPermissionsResource)
                      mempty
