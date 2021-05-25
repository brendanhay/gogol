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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM access control policy for the specified project.
-- Permission is denied if the policy or the resource do not exist.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.getIamPolicy@.
module Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsGetIAMPolicyResource

    -- * Creating a Request
    , projectsGetIAMPolicy
    , ProjectsGetIAMPolicy

    -- * Request Lenses
    , pgipXgafv
    , pgipUploadProtocol
    , pgipAccessToken
    , pgipUploadType
    , pgipPayload
    , pgipResource
    , pgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.getIamPolicy@ method which the
-- 'ProjectsGetIAMPolicy' request conforms to.
type ProjectsGetIAMPolicyResource =
     "v3" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Returns the IAM access control policy for the specified project.
-- Permission is denied if the policy or the resource do not exist.
--
-- /See:/ 'projectsGetIAMPolicy' smart constructor.
data ProjectsGetIAMPolicy =
  ProjectsGetIAMPolicy'
    { _pgipXgafv :: !(Maybe Xgafv)
    , _pgipUploadProtocol :: !(Maybe Text)
    , _pgipAccessToken :: !(Maybe Text)
    , _pgipUploadType :: !(Maybe Text)
    , _pgipPayload :: !GetIAMPolicyRequest
    , _pgipResource :: !Text
    , _pgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgipXgafv'
--
-- * 'pgipUploadProtocol'
--
-- * 'pgipAccessToken'
--
-- * 'pgipUploadType'
--
-- * 'pgipPayload'
--
-- * 'pgipResource'
--
-- * 'pgipCallback'
projectsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pgipPayload'
    -> Text -- ^ 'pgipResource'
    -> ProjectsGetIAMPolicy
projectsGetIAMPolicy pPgipPayload_ pPgipResource_ =
  ProjectsGetIAMPolicy'
    { _pgipXgafv = Nothing
    , _pgipUploadProtocol = Nothing
    , _pgipAccessToken = Nothing
    , _pgipUploadType = Nothing
    , _pgipPayload = pPgipPayload_
    , _pgipResource = pPgipResource_
    , _pgipCallback = Nothing
    }


-- | V1 error format.
pgipXgafv :: Lens' ProjectsGetIAMPolicy (Maybe Xgafv)
pgipXgafv
  = lens _pgipXgafv (\ s a -> s{_pgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgipUploadProtocol :: Lens' ProjectsGetIAMPolicy (Maybe Text)
pgipUploadProtocol
  = lens _pgipUploadProtocol
      (\ s a -> s{_pgipUploadProtocol = a})

-- | OAuth access token.
pgipAccessToken :: Lens' ProjectsGetIAMPolicy (Maybe Text)
pgipAccessToken
  = lens _pgipAccessToken
      (\ s a -> s{_pgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgipUploadType :: Lens' ProjectsGetIAMPolicy (Maybe Text)
pgipUploadType
  = lens _pgipUploadType
      (\ s a -> s{_pgipUploadType = a})

-- | Multipart request metadata.
pgipPayload :: Lens' ProjectsGetIAMPolicy GetIAMPolicyRequest
pgipPayload
  = lens _pgipPayload (\ s a -> s{_pgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pgipResource :: Lens' ProjectsGetIAMPolicy Text
pgipResource
  = lens _pgipResource (\ s a -> s{_pgipResource = a})

-- | JSONP
pgipCallback :: Lens' ProjectsGetIAMPolicy (Maybe Text)
pgipCallback
  = lens _pgipCallback (\ s a -> s{_pgipCallback = a})

instance GoogleRequest ProjectsGetIAMPolicy where
        type Rs ProjectsGetIAMPolicy = Policy
        type Scopes ProjectsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsGetIAMPolicy'{..}
          = go _pgipResource _pgipXgafv _pgipUploadProtocol
              _pgipAccessToken
              _pgipUploadType
              _pgipCallback
              (Just AltJSON)
              _pgipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetIAMPolicyResource)
                      mempty
