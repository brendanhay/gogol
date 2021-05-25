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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.TestIAMPermissions
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.testIamPermissions@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsInstancesBackupsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsInstancesBackupsTestIAMPermissions
    , ProjectsInstancesBackupsTestIAMPermissions

    -- * Request Lenses
    , pibtipXgafv
    , pibtipUploadProtocol
    , pibtipAccessToken
    , pibtipUploadType
    , pibtipPayload
    , pibtipResource
    , pibtipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.testIamPermissions@ method which the
-- 'ProjectsInstancesBackupsTestIAMPermissions' request conforms to.
type ProjectsInstancesBackupsTestIAMPermissionsResource
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
-- /See:/ 'projectsInstancesBackupsTestIAMPermissions' smart constructor.
data ProjectsInstancesBackupsTestIAMPermissions =
  ProjectsInstancesBackupsTestIAMPermissions'
    { _pibtipXgafv :: !(Maybe Xgafv)
    , _pibtipUploadProtocol :: !(Maybe Text)
    , _pibtipAccessToken :: !(Maybe Text)
    , _pibtipUploadType :: !(Maybe Text)
    , _pibtipPayload :: !TestIAMPermissionsRequest
    , _pibtipResource :: !Text
    , _pibtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibtipXgafv'
--
-- * 'pibtipUploadProtocol'
--
-- * 'pibtipAccessToken'
--
-- * 'pibtipUploadType'
--
-- * 'pibtipPayload'
--
-- * 'pibtipResource'
--
-- * 'pibtipCallback'
projectsInstancesBackupsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pibtipPayload'
    -> Text -- ^ 'pibtipResource'
    -> ProjectsInstancesBackupsTestIAMPermissions
projectsInstancesBackupsTestIAMPermissions pPibtipPayload_ pPibtipResource_ =
  ProjectsInstancesBackupsTestIAMPermissions'
    { _pibtipXgafv = Nothing
    , _pibtipUploadProtocol = Nothing
    , _pibtipAccessToken = Nothing
    , _pibtipUploadType = Nothing
    , _pibtipPayload = pPibtipPayload_
    , _pibtipResource = pPibtipResource_
    , _pibtipCallback = Nothing
    }


-- | V1 error format.
pibtipXgafv :: Lens' ProjectsInstancesBackupsTestIAMPermissions (Maybe Xgafv)
pibtipXgafv
  = lens _pibtipXgafv (\ s a -> s{_pibtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibtipUploadProtocol :: Lens' ProjectsInstancesBackupsTestIAMPermissions (Maybe Text)
pibtipUploadProtocol
  = lens _pibtipUploadProtocol
      (\ s a -> s{_pibtipUploadProtocol = a})

-- | OAuth access token.
pibtipAccessToken :: Lens' ProjectsInstancesBackupsTestIAMPermissions (Maybe Text)
pibtipAccessToken
  = lens _pibtipAccessToken
      (\ s a -> s{_pibtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibtipUploadType :: Lens' ProjectsInstancesBackupsTestIAMPermissions (Maybe Text)
pibtipUploadType
  = lens _pibtipUploadType
      (\ s a -> s{_pibtipUploadType = a})

-- | Multipart request metadata.
pibtipPayload :: Lens' ProjectsInstancesBackupsTestIAMPermissions TestIAMPermissionsRequest
pibtipPayload
  = lens _pibtipPayload
      (\ s a -> s{_pibtipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which permissions are being
-- tested. The format is \`projects\/\/instances\/\` for instance resources
-- and \`projects\/\/instances\/\/databases\/\` for database resources.
pibtipResource :: Lens' ProjectsInstancesBackupsTestIAMPermissions Text
pibtipResource
  = lens _pibtipResource
      (\ s a -> s{_pibtipResource = a})

-- | JSONP
pibtipCallback :: Lens' ProjectsInstancesBackupsTestIAMPermissions (Maybe Text)
pibtipCallback
  = lens _pibtipCallback
      (\ s a -> s{_pibtipCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsTestIAMPermissions
         where
        type Rs ProjectsInstancesBackupsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes
               ProjectsInstancesBackupsTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsTestIAMPermissions'{..}
          = go _pibtipResource _pibtipXgafv
              _pibtipUploadProtocol
              _pibtipAccessToken
              _pibtipUploadType
              _pibtipCallback
              (Just AltJSON)
              _pibtipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesBackupsTestIAMPermissionsResource)
                      mempty
