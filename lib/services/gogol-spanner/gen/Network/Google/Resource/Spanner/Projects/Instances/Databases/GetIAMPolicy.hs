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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.GetIAMPolicy
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.getIamPolicy@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesDatabasesGetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesDatabasesGetIAMPolicy
    , ProjectsInstancesDatabasesGetIAMPolicy

    -- * Request Lenses
    , pidgipXgafv
    , pidgipUploadProtocol
    , pidgipAccessToken
    , pidgipUploadType
    , pidgipPayload
    , pidgipResource
    , pidgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.getIamPolicy@ method which the
-- 'ProjectsInstancesDatabasesGetIAMPolicy' request conforms to.
type ProjectsInstancesDatabasesGetIAMPolicyResource =
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
-- /See:/ 'projectsInstancesDatabasesGetIAMPolicy' smart constructor.
data ProjectsInstancesDatabasesGetIAMPolicy =
  ProjectsInstancesDatabasesGetIAMPolicy'
    { _pidgipXgafv :: !(Maybe Xgafv)
    , _pidgipUploadProtocol :: !(Maybe Text)
    , _pidgipAccessToken :: !(Maybe Text)
    , _pidgipUploadType :: !(Maybe Text)
    , _pidgipPayload :: !GetIAMPolicyRequest
    , _pidgipResource :: !Text
    , _pidgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidgipXgafv'
--
-- * 'pidgipUploadProtocol'
--
-- * 'pidgipAccessToken'
--
-- * 'pidgipUploadType'
--
-- * 'pidgipPayload'
--
-- * 'pidgipResource'
--
-- * 'pidgipCallback'
projectsInstancesDatabasesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pidgipPayload'
    -> Text -- ^ 'pidgipResource'
    -> ProjectsInstancesDatabasesGetIAMPolicy
projectsInstancesDatabasesGetIAMPolicy pPidgipPayload_ pPidgipResource_ =
  ProjectsInstancesDatabasesGetIAMPolicy'
    { _pidgipXgafv = Nothing
    , _pidgipUploadProtocol = Nothing
    , _pidgipAccessToken = Nothing
    , _pidgipUploadType = Nothing
    , _pidgipPayload = pPidgipPayload_
    , _pidgipResource = pPidgipResource_
    , _pidgipCallback = Nothing
    }


-- | V1 error format.
pidgipXgafv :: Lens' ProjectsInstancesDatabasesGetIAMPolicy (Maybe Xgafv)
pidgipXgafv
  = lens _pidgipXgafv (\ s a -> s{_pidgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidgipUploadProtocol :: Lens' ProjectsInstancesDatabasesGetIAMPolicy (Maybe Text)
pidgipUploadProtocol
  = lens _pidgipUploadProtocol
      (\ s a -> s{_pidgipUploadProtocol = a})

-- | OAuth access token.
pidgipAccessToken :: Lens' ProjectsInstancesDatabasesGetIAMPolicy (Maybe Text)
pidgipAccessToken
  = lens _pidgipAccessToken
      (\ s a -> s{_pidgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidgipUploadType :: Lens' ProjectsInstancesDatabasesGetIAMPolicy (Maybe Text)
pidgipUploadType
  = lens _pidgipUploadType
      (\ s a -> s{_pidgipUploadType = a})

-- | Multipart request metadata.
pidgipPayload :: Lens' ProjectsInstancesDatabasesGetIAMPolicy GetIAMPolicyRequest
pidgipPayload
  = lens _pidgipPayload
      (\ s a -> s{_pidgipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which the policy is being
-- retrieved. The format is \`projects\/\/instances\/\` for instance
-- resources and \`projects\/\/instances\/\/databases\/\` for database
-- resources.
pidgipResource :: Lens' ProjectsInstancesDatabasesGetIAMPolicy Text
pidgipResource
  = lens _pidgipResource
      (\ s a -> s{_pidgipResource = a})

-- | JSONP
pidgipCallback :: Lens' ProjectsInstancesDatabasesGetIAMPolicy (Maybe Text)
pidgipCallback
  = lens _pidgipCallback
      (\ s a -> s{_pidgipCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesGetIAMPolicy
         where
        type Rs ProjectsInstancesDatabasesGetIAMPolicy =
             Policy
        type Scopes ProjectsInstancesDatabasesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesGetIAMPolicy'{..}
          = go _pidgipResource _pidgipXgafv
              _pidgipUploadProtocol
              _pidgipAccessToken
              _pidgipUploadType
              _pidgipCallback
              (Just AltJSON)
              _pidgipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesGetIAMPolicyResource)
                      mempty
