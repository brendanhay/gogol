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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a database or backup resource.
-- Replaces any existing policy. Authorization requires
-- \`spanner.databases.setIamPolicy\` permission on resource. For backups,
-- authorization requires \`spanner.backups.setIamPolicy\` permission on
-- resource.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.setIamPolicy@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesDatabasesSetIAMPolicy
    , ProjectsInstancesDatabasesSetIAMPolicy

    -- * Request Lenses
    , pidsipXgafv
    , pidsipUploadProtocol
    , pidsipAccessToken
    , pidsipUploadType
    , pidsipPayload
    , pidsipResource
    , pidsipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.setIamPolicy@ method which the
-- 'ProjectsInstancesDatabasesSetIAMPolicy' request conforms to.
type ProjectsInstancesDatabasesSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on a database or backup resource.
-- Replaces any existing policy. Authorization requires
-- \`spanner.databases.setIamPolicy\` permission on resource. For backups,
-- authorization requires \`spanner.backups.setIamPolicy\` permission on
-- resource.
--
-- /See:/ 'projectsInstancesDatabasesSetIAMPolicy' smart constructor.
data ProjectsInstancesDatabasesSetIAMPolicy =
  ProjectsInstancesDatabasesSetIAMPolicy'
    { _pidsipXgafv :: !(Maybe Xgafv)
    , _pidsipUploadProtocol :: !(Maybe Text)
    , _pidsipAccessToken :: !(Maybe Text)
    , _pidsipUploadType :: !(Maybe Text)
    , _pidsipPayload :: !SetIAMPolicyRequest
    , _pidsipResource :: !Text
    , _pidsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsipXgafv'
--
-- * 'pidsipUploadProtocol'
--
-- * 'pidsipAccessToken'
--
-- * 'pidsipUploadType'
--
-- * 'pidsipPayload'
--
-- * 'pidsipResource'
--
-- * 'pidsipCallback'
projectsInstancesDatabasesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pidsipPayload'
    -> Text -- ^ 'pidsipResource'
    -> ProjectsInstancesDatabasesSetIAMPolicy
projectsInstancesDatabasesSetIAMPolicy pPidsipPayload_ pPidsipResource_ =
  ProjectsInstancesDatabasesSetIAMPolicy'
    { _pidsipXgafv = Nothing
    , _pidsipUploadProtocol = Nothing
    , _pidsipAccessToken = Nothing
    , _pidsipUploadType = Nothing
    , _pidsipPayload = pPidsipPayload_
    , _pidsipResource = pPidsipResource_
    , _pidsipCallback = Nothing
    }


-- | V1 error format.
pidsipXgafv :: Lens' ProjectsInstancesDatabasesSetIAMPolicy (Maybe Xgafv)
pidsipXgafv
  = lens _pidsipXgafv (\ s a -> s{_pidsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsipUploadProtocol :: Lens' ProjectsInstancesDatabasesSetIAMPolicy (Maybe Text)
pidsipUploadProtocol
  = lens _pidsipUploadProtocol
      (\ s a -> s{_pidsipUploadProtocol = a})

-- | OAuth access token.
pidsipAccessToken :: Lens' ProjectsInstancesDatabasesSetIAMPolicy (Maybe Text)
pidsipAccessToken
  = lens _pidsipAccessToken
      (\ s a -> s{_pidsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsipUploadType :: Lens' ProjectsInstancesDatabasesSetIAMPolicy (Maybe Text)
pidsipUploadType
  = lens _pidsipUploadType
      (\ s a -> s{_pidsipUploadType = a})

-- | Multipart request metadata.
pidsipPayload :: Lens' ProjectsInstancesDatabasesSetIAMPolicy SetIAMPolicyRequest
pidsipPayload
  = lens _pidsipPayload
      (\ s a -> s{_pidsipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which the policy is being set.
-- The format is \`projects\/\/instances\/\` for instance resources and
-- \`projects\/\/instances\/\/databases\/\` for databases resources.
pidsipResource :: Lens' ProjectsInstancesDatabasesSetIAMPolicy Text
pidsipResource
  = lens _pidsipResource
      (\ s a -> s{_pidsipResource = a})

-- | JSONP
pidsipCallback :: Lens' ProjectsInstancesDatabasesSetIAMPolicy (Maybe Text)
pidsipCallback
  = lens _pidsipCallback
      (\ s a -> s{_pidsipCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSetIAMPolicy
         where
        type Rs ProjectsInstancesDatabasesSetIAMPolicy =
             Policy
        type Scopes ProjectsInstancesDatabasesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesSetIAMPolicy'{..}
          = go _pidsipResource _pidsipXgafv
              _pidsipUploadProtocol
              _pidsipAccessToken
              _pidsipUploadType
              _pidsipCallback
              (Just AltJSON)
              _pidsipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesSetIAMPolicyResource)
                      mempty
