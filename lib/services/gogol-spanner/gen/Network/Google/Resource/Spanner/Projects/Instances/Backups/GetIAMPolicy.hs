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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a database or backup resource.
-- Returns an empty policy if a database or backup exists but does not have
-- a policy set. Authorization requires \`spanner.databases.getIamPolicy\`
-- permission on resource. For backups, authorization requires
-- \`spanner.backups.getIamPolicy\` permission on resource.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.getIamPolicy@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesBackupsGetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesBackupsGetIAMPolicy
    , ProjectsInstancesBackupsGetIAMPolicy

    -- * Request Lenses
    , pibgipXgafv
    , pibgipUploadProtocol
    , pibgipAccessToken
    , pibgipUploadType
    , pibgipPayload
    , pibgipResource
    , pibgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.getIamPolicy@ method which the
-- 'ProjectsInstancesBackupsGetIAMPolicy' request conforms to.
type ProjectsInstancesBackupsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a database or backup resource.
-- Returns an empty policy if a database or backup exists but does not have
-- a policy set. Authorization requires \`spanner.databases.getIamPolicy\`
-- permission on resource. For backups, authorization requires
-- \`spanner.backups.getIamPolicy\` permission on resource.
--
-- /See:/ 'projectsInstancesBackupsGetIAMPolicy' smart constructor.
data ProjectsInstancesBackupsGetIAMPolicy =
  ProjectsInstancesBackupsGetIAMPolicy'
    { _pibgipXgafv :: !(Maybe Xgafv)
    , _pibgipUploadProtocol :: !(Maybe Text)
    , _pibgipAccessToken :: !(Maybe Text)
    , _pibgipUploadType :: !(Maybe Text)
    , _pibgipPayload :: !GetIAMPolicyRequest
    , _pibgipResource :: !Text
    , _pibgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibgipXgafv'
--
-- * 'pibgipUploadProtocol'
--
-- * 'pibgipAccessToken'
--
-- * 'pibgipUploadType'
--
-- * 'pibgipPayload'
--
-- * 'pibgipResource'
--
-- * 'pibgipCallback'
projectsInstancesBackupsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pibgipPayload'
    -> Text -- ^ 'pibgipResource'
    -> ProjectsInstancesBackupsGetIAMPolicy
projectsInstancesBackupsGetIAMPolicy pPibgipPayload_ pPibgipResource_ =
  ProjectsInstancesBackupsGetIAMPolicy'
    { _pibgipXgafv = Nothing
    , _pibgipUploadProtocol = Nothing
    , _pibgipAccessToken = Nothing
    , _pibgipUploadType = Nothing
    , _pibgipPayload = pPibgipPayload_
    , _pibgipResource = pPibgipResource_
    , _pibgipCallback = Nothing
    }


-- | V1 error format.
pibgipXgafv :: Lens' ProjectsInstancesBackupsGetIAMPolicy (Maybe Xgafv)
pibgipXgafv
  = lens _pibgipXgafv (\ s a -> s{_pibgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibgipUploadProtocol :: Lens' ProjectsInstancesBackupsGetIAMPolicy (Maybe Text)
pibgipUploadProtocol
  = lens _pibgipUploadProtocol
      (\ s a -> s{_pibgipUploadProtocol = a})

-- | OAuth access token.
pibgipAccessToken :: Lens' ProjectsInstancesBackupsGetIAMPolicy (Maybe Text)
pibgipAccessToken
  = lens _pibgipAccessToken
      (\ s a -> s{_pibgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibgipUploadType :: Lens' ProjectsInstancesBackupsGetIAMPolicy (Maybe Text)
pibgipUploadType
  = lens _pibgipUploadType
      (\ s a -> s{_pibgipUploadType = a})

-- | Multipart request metadata.
pibgipPayload :: Lens' ProjectsInstancesBackupsGetIAMPolicy GetIAMPolicyRequest
pibgipPayload
  = lens _pibgipPayload
      (\ s a -> s{_pibgipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which the policy is being
-- retrieved. The format is \`projects\/\/instances\/\` for instance
-- resources and \`projects\/\/instances\/\/databases\/\` for database
-- resources.
pibgipResource :: Lens' ProjectsInstancesBackupsGetIAMPolicy Text
pibgipResource
  = lens _pibgipResource
      (\ s a -> s{_pibgipResource = a})

-- | JSONP
pibgipCallback :: Lens' ProjectsInstancesBackupsGetIAMPolicy (Maybe Text)
pibgipCallback
  = lens _pibgipCallback
      (\ s a -> s{_pibgipCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsGetIAMPolicy
         where
        type Rs ProjectsInstancesBackupsGetIAMPolicy = Policy
        type Scopes ProjectsInstancesBackupsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsGetIAMPolicy'{..}
          = go _pibgipResource _pibgipXgafv
              _pibgipUploadProtocol
              _pibgipAccessToken
              _pibgipUploadType
              _pibgipCallback
              (Just AltJSON)
              _pibgipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsGetIAMPolicyResource)
                      mempty
