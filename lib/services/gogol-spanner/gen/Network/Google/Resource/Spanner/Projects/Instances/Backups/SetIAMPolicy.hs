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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.setIamPolicy@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesBackupsSetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesBackupsSetIAMPolicy
    , ProjectsInstancesBackupsSetIAMPolicy

    -- * Request Lenses
    , pibsipXgafv
    , pibsipUploadProtocol
    , pibsipAccessToken
    , pibsipUploadType
    , pibsipPayload
    , pibsipResource
    , pibsipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.setIamPolicy@ method which the
-- 'ProjectsInstancesBackupsSetIAMPolicy' request conforms to.
type ProjectsInstancesBackupsSetIAMPolicyResource =
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
-- /See:/ 'projectsInstancesBackupsSetIAMPolicy' smart constructor.
data ProjectsInstancesBackupsSetIAMPolicy =
  ProjectsInstancesBackupsSetIAMPolicy'
    { _pibsipXgafv :: !(Maybe Xgafv)
    , _pibsipUploadProtocol :: !(Maybe Text)
    , _pibsipAccessToken :: !(Maybe Text)
    , _pibsipUploadType :: !(Maybe Text)
    , _pibsipPayload :: !SetIAMPolicyRequest
    , _pibsipResource :: !Text
    , _pibsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibsipXgafv'
--
-- * 'pibsipUploadProtocol'
--
-- * 'pibsipAccessToken'
--
-- * 'pibsipUploadType'
--
-- * 'pibsipPayload'
--
-- * 'pibsipResource'
--
-- * 'pibsipCallback'
projectsInstancesBackupsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pibsipPayload'
    -> Text -- ^ 'pibsipResource'
    -> ProjectsInstancesBackupsSetIAMPolicy
projectsInstancesBackupsSetIAMPolicy pPibsipPayload_ pPibsipResource_ =
  ProjectsInstancesBackupsSetIAMPolicy'
    { _pibsipXgafv = Nothing
    , _pibsipUploadProtocol = Nothing
    , _pibsipAccessToken = Nothing
    , _pibsipUploadType = Nothing
    , _pibsipPayload = pPibsipPayload_
    , _pibsipResource = pPibsipResource_
    , _pibsipCallback = Nothing
    }


-- | V1 error format.
pibsipXgafv :: Lens' ProjectsInstancesBackupsSetIAMPolicy (Maybe Xgafv)
pibsipXgafv
  = lens _pibsipXgafv (\ s a -> s{_pibsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibsipUploadProtocol :: Lens' ProjectsInstancesBackupsSetIAMPolicy (Maybe Text)
pibsipUploadProtocol
  = lens _pibsipUploadProtocol
      (\ s a -> s{_pibsipUploadProtocol = a})

-- | OAuth access token.
pibsipAccessToken :: Lens' ProjectsInstancesBackupsSetIAMPolicy (Maybe Text)
pibsipAccessToken
  = lens _pibsipAccessToken
      (\ s a -> s{_pibsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibsipUploadType :: Lens' ProjectsInstancesBackupsSetIAMPolicy (Maybe Text)
pibsipUploadType
  = lens _pibsipUploadType
      (\ s a -> s{_pibsipUploadType = a})

-- | Multipart request metadata.
pibsipPayload :: Lens' ProjectsInstancesBackupsSetIAMPolicy SetIAMPolicyRequest
pibsipPayload
  = lens _pibsipPayload
      (\ s a -> s{_pibsipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which the policy is being set.
-- The format is \`projects\/\/instances\/\` for instance resources and
-- \`projects\/\/instances\/\/databases\/\` for databases resources.
pibsipResource :: Lens' ProjectsInstancesBackupsSetIAMPolicy Text
pibsipResource
  = lens _pibsipResource
      (\ s a -> s{_pibsipResource = a})

-- | JSONP
pibsipCallback :: Lens' ProjectsInstancesBackupsSetIAMPolicy (Maybe Text)
pibsipCallback
  = lens _pibsipCallback
      (\ s a -> s{_pibsipCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsSetIAMPolicy
         where
        type Rs ProjectsInstancesBackupsSetIAMPolicy = Policy
        type Scopes ProjectsInstancesBackupsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsSetIAMPolicy'{..}
          = go _pibsipResource _pibsipXgafv
              _pibsipUploadProtocol
              _pibsipAccessToken
              _pibsipUploadType
              _pibsipCallback
              (Just AltJSON)
              _pibsipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsSetIAMPolicyResource)
                      mempty
