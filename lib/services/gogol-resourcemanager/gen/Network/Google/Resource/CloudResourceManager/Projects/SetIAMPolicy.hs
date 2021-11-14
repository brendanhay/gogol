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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM access control policy for the specified project. CAUTION:
-- This method will replace the existing policy, and cannot be used to
-- append additional IAM settings. Note: Removing service accounts from
-- policies or changing their roles can render services completely
-- inoperable. It is important to understand how the service account is
-- being used before removing or updating its roles. The following
-- constraints apply when using \`setIamPolicy()\`: + Project does not
-- support \`allUsers\` and \`allAuthenticatedUsers\` as \`members\` in a
-- \`Binding\` of a \`Policy\`. + The owner role can be granted to a
-- \`user\`, \`serviceAccount\`, or a group that is part of an
-- organization. For example, group\'myownpersonaldomain.com could be added
-- as an owner to a project in the myownpersonaldomain.com organization,
-- but not the examplepetstore.com organization. + Service accounts can be
-- made owners of a project directly without any restrictions. However, to
-- be added as an owner, a user must be invited using the Cloud Platform
-- console and must accept the invitation. + A user cannot be granted the
-- owner role using \`setIamPolicy()\`. The user must be granted the owner
-- role using the Cloud Platform Console and must explicitly accept the
-- invitation. + Invitations to grant the owner role cannot be sent using
-- \`setIamPolicy()\`; they must be sent only using the Cloud Platform
-- Console. + Membership changes that leave the project without any owners
-- that have accepted the Terms of Service (ToS) will be rejected. + If the
-- project is not part of an organization, there must be at least one owner
-- who has accepted the Terms of Service (ToS) agreement in the policy.
-- Calling \`setIamPolicy()\` to remove the last ToS-accepted owner from
-- the policy will fail. This restriction also applies to legacy projects
-- that no longer have owners who have accepted the ToS. Edits to IAM
-- policies will be rejected until the lack of a ToS-accepting owner is
-- rectified. + Calling this method requires enabling the App Engine Admin
-- API.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.setIamPolicy@.
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
    , psipAccessToken
    , psipUploadType
    , psipPayload
    , psipResource
    , psipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.setIamPolicy@ method which the
-- 'ProjectsSetIAMPolicy' request conforms to.
type ProjectsSetIAMPolicyResource =
     "v3" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the IAM access control policy for the specified project. CAUTION:
-- This method will replace the existing policy, and cannot be used to
-- append additional IAM settings. Note: Removing service accounts from
-- policies or changing their roles can render services completely
-- inoperable. It is important to understand how the service account is
-- being used before removing or updating its roles. The following
-- constraints apply when using \`setIamPolicy()\`: + Project does not
-- support \`allUsers\` and \`allAuthenticatedUsers\` as \`members\` in a
-- \`Binding\` of a \`Policy\`. + The owner role can be granted to a
-- \`user\`, \`serviceAccount\`, or a group that is part of an
-- organization. For example, group\'myownpersonaldomain.com could be added
-- as an owner to a project in the myownpersonaldomain.com organization,
-- but not the examplepetstore.com organization. + Service accounts can be
-- made owners of a project directly without any restrictions. However, to
-- be added as an owner, a user must be invited using the Cloud Platform
-- console and must accept the invitation. + A user cannot be granted the
-- owner role using \`setIamPolicy()\`. The user must be granted the owner
-- role using the Cloud Platform Console and must explicitly accept the
-- invitation. + Invitations to grant the owner role cannot be sent using
-- \`setIamPolicy()\`; they must be sent only using the Cloud Platform
-- Console. + Membership changes that leave the project without any owners
-- that have accepted the Terms of Service (ToS) will be rejected. + If the
-- project is not part of an organization, there must be at least one owner
-- who has accepted the Terms of Service (ToS) agreement in the policy.
-- Calling \`setIamPolicy()\` to remove the last ToS-accepted owner from
-- the policy will fail. This restriction also applies to legacy projects
-- that no longer have owners who have accepted the ToS. Edits to IAM
-- policies will be rejected until the lack of a ToS-accepting owner is
-- rectified. + Calling this method requires enabling the App Engine Admin
-- API.
--
-- /See:/ 'projectsSetIAMPolicy' smart constructor.
data ProjectsSetIAMPolicy =
  ProjectsSetIAMPolicy'
    { _psipXgafv :: !(Maybe Xgafv)
    , _psipUploadProtocol :: !(Maybe Text)
    , _psipAccessToken :: !(Maybe Text)
    , _psipUploadType :: !(Maybe Text)
    , _psipPayload :: !SetIAMPolicyRequest
    , _psipResource :: !Text
    , _psipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psipXgafv'
--
-- * 'psipUploadProtocol'
--
-- * 'psipAccessToken'
--
-- * 'psipUploadType'
--
-- * 'psipPayload'
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
    , _psipAccessToken = Nothing
    , _psipUploadType = Nothing
    , _psipPayload = pPsipPayload_
    , _psipResource = pPsipResource_
    , _psipCallback = Nothing
    }


-- | V1 error format.
psipXgafv :: Lens' ProjectsSetIAMPolicy (Maybe Xgafv)
psipXgafv
  = lens _psipXgafv (\ s a -> s{_psipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psipUploadProtocol :: Lens' ProjectsSetIAMPolicy (Maybe Text)
psipUploadProtocol
  = lens _psipUploadProtocol
      (\ s a -> s{_psipUploadProtocol = a})

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

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
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
              _psipAccessToken
              _psipUploadType
              _psipCallback
              (Just AltJSON)
              _psipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSetIAMPolicyResource)
                      mempty
