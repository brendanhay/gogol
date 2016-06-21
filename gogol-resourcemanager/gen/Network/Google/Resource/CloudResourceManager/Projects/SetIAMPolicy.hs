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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM access control policy for the specified Project. Replaces
-- any existing policy. The following constraints apply when using
-- \`setIamPolicy()\`: + Project currently supports only \`user:{emailid}\`
-- and \`serviceAccount:{emailid}\` members in a \`Binding\` of a
-- \`Policy\`. + To be added as an \`owner\`, a user must be invited via
-- Cloud Platform console and must accept the invitation. + Members cannot
-- be added to more than one role in the same policy. + There must be at
-- least one owner who has accepted the Terms of Service (ToS) agreement in
-- the policy. Calling \`setIamPolicy()\` to to remove the last
-- ToS-accepted owner from the policy will fail. + Calling this method
-- requires enabling the App Engine Admin API. Note: Removing service
-- accounts from policies or changing their roles can render services
-- completely inoperable. It is important to understand how the service
-- account is being used before removing or updating its roles.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.setIamPolicy@.
module Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSetIAMPolicy
    , ProjectsSetIAMPolicy

    -- * Request Lenses
    , psipXgafv
    , psipUploadProtocol
    , psipPp
    , psipAccessToken
    , psipUploadType
    , psipPayload
    , psipBearerToken
    , psipResource
    , psipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.setIamPolicy@ method which the
-- 'ProjectsSetIAMPolicy' request conforms to.
type ProjectsSetIAMPolicyResource =
     "v1" :>
       "projects" :>
         CaptureMode "resource" "setIamPolicy" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SetIAMPolicyRequest :>
                             Post '[JSON] Policy

-- | Sets the IAM access control policy for the specified Project. Replaces
-- any existing policy. The following constraints apply when using
-- \`setIamPolicy()\`: + Project currently supports only \`user:{emailid}\`
-- and \`serviceAccount:{emailid}\` members in a \`Binding\` of a
-- \`Policy\`. + To be added as an \`owner\`, a user must be invited via
-- Cloud Platform console and must accept the invitation. + Members cannot
-- be added to more than one role in the same policy. + There must be at
-- least one owner who has accepted the Terms of Service (ToS) agreement in
-- the policy. Calling \`setIamPolicy()\` to to remove the last
-- ToS-accepted owner from the policy will fail. + Calling this method
-- requires enabling the App Engine Admin API. Note: Removing service
-- accounts from policies or changing their roles can render services
-- completely inoperable. It is important to understand how the service
-- account is being used before removing or updating its roles.
--
-- /See:/ 'projectsSetIAMPolicy' smart constructor.
data ProjectsSetIAMPolicy = ProjectsSetIAMPolicy'
    { _psipXgafv          :: !(Maybe Text)
    , _psipUploadProtocol :: !(Maybe Text)
    , _psipPp             :: !Bool
    , _psipAccessToken    :: !(Maybe Text)
    , _psipUploadType     :: !(Maybe Text)
    , _psipPayload        :: !SetIAMPolicyRequest
    , _psipBearerToken    :: !(Maybe Text)
    , _psipResource       :: !Text
    , _psipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psipXgafv'
--
-- * 'psipUploadProtocol'
--
-- * 'psipPp'
--
-- * 'psipAccessToken'
--
-- * 'psipUploadType'
--
-- * 'psipPayload'
--
-- * 'psipBearerToken'
--
-- * 'psipResource'
--
-- * 'psipCallback'
projectsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'psipPayload'
    -> Text -- ^ 'psipResource'
    -> ProjectsSetIAMPolicy
projectsSetIAMPolicy pPsipPayload_ pPsipResource_ =
    ProjectsSetIAMPolicy'
    { _psipXgafv = Nothing
    , _psipUploadProtocol = Nothing
    , _psipPp = True
    , _psipAccessToken = Nothing
    , _psipUploadType = Nothing
    , _psipPayload = pPsipPayload_
    , _psipBearerToken = Nothing
    , _psipResource = pPsipResource_
    , _psipCallback = Nothing
    }

-- | V1 error format.
psipXgafv :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipXgafv
  = lens _psipXgafv (\ s a -> s{_psipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psipUploadProtocol :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipUploadProtocol
  = lens _psipUploadProtocol
      (\ s a -> s{_psipUploadProtocol = a})

-- | Pretty-print response.
psipPp :: Lens' ProjectsSetIAMPolicy Bool
psipPp = lens _psipPp (\ s a -> s{_psipPp = a})

-- | OAuth access token.
psipAccessToken :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipAccessToken
  = lens _psipAccessToken
      (\ s a -> s{_psipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psipUploadType :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipUploadType
  = lens _psipUploadType
      (\ s a -> s{_psipUploadType = a})

-- | Multipart request metadata.
psipPayload :: Lens' ProjectsSetIAMPolicy SetIAMPolicyRequest
psipPayload
  = lens _psipPayload (\ s a -> s{_psipPayload = a})

-- | OAuth bearer token.
psipBearerToken :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipBearerToken
  = lens _psipBearerToken
      (\ s a -> s{_psipBearerToken = a})

-- | REQUIRED: The resource for which the policy is being specified.
-- \`resource\` is usually specified as a path, such as
-- \`projects\/*project*\/zones\/*zone*\/disks\/*disk*\`. The format for
-- the path specified in this value is resource specific and is specified
-- in the \`setIamPolicy\` documentation.
psipResource :: Lens' ProjectsSetIAMPolicy Text
psipResource
  = lens _psipResource (\ s a -> s{_psipResource = a})

-- | JSONP
psipCallback :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipCallback
  = lens _psipCallback (\ s a -> s{_psipCallback = a})

instance GoogleRequest ProjectsSetIAMPolicy where
        type Rs ProjectsSetIAMPolicy = Policy
        type Scopes ProjectsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsSetIAMPolicy'{..}
          = go _psipResource _psipXgafv _psipUploadProtocol
              (Just _psipPp)
              _psipAccessToken
              _psipUploadType
              _psipBearerToken
              _psipCallback
              (Just AltJSON)
              _psipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSetIAMPolicyResource)
                      mempty
