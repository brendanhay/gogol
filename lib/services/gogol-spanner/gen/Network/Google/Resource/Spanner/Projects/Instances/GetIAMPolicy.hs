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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for an instance resource. Returns an
-- empty policy if an instance exists but does not have a policy set.
-- Authorization requires \`spanner.instances.getIamPolicy\` on resource.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.getIamPolicy@.
module Network.Google.Resource.Spanner.Projects.Instances.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesGetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesGetIAMPolicy
    , ProjectsInstancesGetIAMPolicy

    -- * Request Lenses
    , pigipXgafv
    , pigipUploadProtocol
    , pigipAccessToken
    , pigipUploadType
    , pigipPayload
    , pigipResource
    , pigipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.getIamPolicy@ method which the
-- 'ProjectsInstancesGetIAMPolicy' request conforms to.
type ProjectsInstancesGetIAMPolicyResource =
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

-- | Gets the access control policy for an instance resource. Returns an
-- empty policy if an instance exists but does not have a policy set.
-- Authorization requires \`spanner.instances.getIamPolicy\` on resource.
--
-- /See:/ 'projectsInstancesGetIAMPolicy' smart constructor.
data ProjectsInstancesGetIAMPolicy =
  ProjectsInstancesGetIAMPolicy'
    { _pigipXgafv :: !(Maybe Xgafv)
    , _pigipUploadProtocol :: !(Maybe Text)
    , _pigipAccessToken :: !(Maybe Text)
    , _pigipUploadType :: !(Maybe Text)
    , _pigipPayload :: !GetIAMPolicyRequest
    , _pigipResource :: !Text
    , _pigipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pigipXgafv'
--
-- * 'pigipUploadProtocol'
--
-- * 'pigipAccessToken'
--
-- * 'pigipUploadType'
--
-- * 'pigipPayload'
--
-- * 'pigipResource'
--
-- * 'pigipCallback'
projectsInstancesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pigipPayload'
    -> Text -- ^ 'pigipResource'
    -> ProjectsInstancesGetIAMPolicy
projectsInstancesGetIAMPolicy pPigipPayload_ pPigipResource_ =
  ProjectsInstancesGetIAMPolicy'
    { _pigipXgafv = Nothing
    , _pigipUploadProtocol = Nothing
    , _pigipAccessToken = Nothing
    , _pigipUploadType = Nothing
    , _pigipPayload = pPigipPayload_
    , _pigipResource = pPigipResource_
    , _pigipCallback = Nothing
    }


-- | V1 error format.
pigipXgafv :: Lens' ProjectsInstancesGetIAMPolicy (Maybe Xgafv)
pigipXgafv
  = lens _pigipXgafv (\ s a -> s{_pigipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pigipUploadProtocol :: Lens' ProjectsInstancesGetIAMPolicy (Maybe Text)
pigipUploadProtocol
  = lens _pigipUploadProtocol
      (\ s a -> s{_pigipUploadProtocol = a})

-- | OAuth access token.
pigipAccessToken :: Lens' ProjectsInstancesGetIAMPolicy (Maybe Text)
pigipAccessToken
  = lens _pigipAccessToken
      (\ s a -> s{_pigipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pigipUploadType :: Lens' ProjectsInstancesGetIAMPolicy (Maybe Text)
pigipUploadType
  = lens _pigipUploadType
      (\ s a -> s{_pigipUploadType = a})

-- | Multipart request metadata.
pigipPayload :: Lens' ProjectsInstancesGetIAMPolicy GetIAMPolicyRequest
pigipPayload
  = lens _pigipPayload (\ s a -> s{_pigipPayload = a})

-- | REQUIRED: The Cloud Spanner resource for which the policy is being
-- retrieved. The format is \`projects\/\/instances\/\` for instance
-- resources and \`projects\/\/instances\/\/databases\/\` for database
-- resources.
pigipResource :: Lens' ProjectsInstancesGetIAMPolicy Text
pigipResource
  = lens _pigipResource
      (\ s a -> s{_pigipResource = a})

-- | JSONP
pigipCallback :: Lens' ProjectsInstancesGetIAMPolicy (Maybe Text)
pigipCallback
  = lens _pigipCallback
      (\ s a -> s{_pigipCallback = a})

instance GoogleRequest ProjectsInstancesGetIAMPolicy
         where
        type Rs ProjectsInstancesGetIAMPolicy = Policy
        type Scopes ProjectsInstancesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesGetIAMPolicy'{..}
          = go _pigipResource _pigipXgafv _pigipUploadProtocol
              _pigipAccessToken
              _pigipUploadType
              _pigipCallback
              (Just AltJSON)
              _pigipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesGetIAMPolicyResource)
                      mempty
