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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the IAM access control policy for the specified project. We do not
-- currently support \'domain:\' prefixed members in a Binding of a Policy.
-- Calling this method requires enabling the App Engine Admin API.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsSetIAMPolicy@.
module Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSetIAMPolicy'
    , ProjectsSetIAMPolicy'

    -- * Request Lenses
    , psipXgafv
    , psipQuotaUser
    , psipPrettyPrint
    , psipUploadProtocol
    , psipPp
    , psipAccessToken
    , psipUploadType
    , psipPayload
    , psipBearerToken
    , psipKey
    , psipResource
    , psipOAuthToken
    , psipFields
    , psipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsSetIAMPolicy@ which the
-- 'ProjectsSetIAMPolicy'' request conforms to.
type ProjectsSetIAMPolicyResource =
     "v1beta1" :>
       "projects" :>
         CaptureMode "resource" "setIamPolicy" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] SetIAMPolicyRequest :>
                                       Post '[JSON] Policy

-- | Sets the IAM access control policy for the specified project. We do not
-- currently support \'domain:\' prefixed members in a Binding of a Policy.
-- Calling this method requires enabling the App Engine Admin API.
--
-- /See:/ 'projectsSetIAMPolicy'' smart constructor.
data ProjectsSetIAMPolicy' = ProjectsSetIAMPolicy'
    { _psipXgafv          :: !(Maybe Text)
    , _psipQuotaUser      :: !(Maybe Text)
    , _psipPrettyPrint    :: !Bool
    , _psipUploadProtocol :: !(Maybe Text)
    , _psipPp             :: !Bool
    , _psipAccessToken    :: !(Maybe Text)
    , _psipUploadType     :: !(Maybe Text)
    , _psipPayload        :: !SetIAMPolicyRequest
    , _psipBearerToken    :: !(Maybe Text)
    , _psipKey            :: !(Maybe AuthKey)
    , _psipResource       :: !Text
    , _psipOAuthToken     :: !(Maybe OAuthToken)
    , _psipFields         :: !(Maybe Text)
    , _psipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psipXgafv'
--
-- * 'psipQuotaUser'
--
-- * 'psipPrettyPrint'
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
-- * 'psipKey'
--
-- * 'psipResource'
--
-- * 'psipOAuthToken'
--
-- * 'psipFields'
--
-- * 'psipCallback'
projectsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> ProjectsSetIAMPolicy'
projectsSetIAMPolicy' pPsipPayload_ pPsipResource_ =
    ProjectsSetIAMPolicy'
    { _psipXgafv = Nothing
    , _psipQuotaUser = Nothing
    , _psipPrettyPrint = True
    , _psipUploadProtocol = Nothing
    , _psipPp = True
    , _psipAccessToken = Nothing
    , _psipUploadType = Nothing
    , _psipPayload = pPsipPayload_
    , _psipBearerToken = Nothing
    , _psipKey = Nothing
    , _psipResource = pPsipResource_
    , _psipOAuthToken = Nothing
    , _psipFields = Nothing
    , _psipCallback = Nothing
    }

-- | V1 error format.
psipXgafv :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipXgafv
  = lens _psipXgafv (\ s a -> s{_psipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psipQuotaUser :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipQuotaUser
  = lens _psipQuotaUser
      (\ s a -> s{_psipQuotaUser = a})

-- | Returns response with indentations and line breaks.
psipPrettyPrint :: Lens' ProjectsSetIAMPolicy' Bool
psipPrettyPrint
  = lens _psipPrettyPrint
      (\ s a -> s{_psipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psipUploadProtocol :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipUploadProtocol
  = lens _psipUploadProtocol
      (\ s a -> s{_psipUploadProtocol = a})

-- | Pretty-print response.
psipPp :: Lens' ProjectsSetIAMPolicy' Bool
psipPp = lens _psipPp (\ s a -> s{_psipPp = a})

-- | OAuth access token.
psipAccessToken :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipAccessToken
  = lens _psipAccessToken
      (\ s a -> s{_psipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psipUploadType :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipUploadType
  = lens _psipUploadType
      (\ s a -> s{_psipUploadType = a})

-- | Multipart request metadata.
psipPayload :: Lens' ProjectsSetIAMPolicy' SetIAMPolicyRequest
psipPayload
  = lens _psipPayload (\ s a -> s{_psipPayload = a})

-- | OAuth bearer token.
psipBearerToken :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipBearerToken
  = lens _psipBearerToken
      (\ s a -> s{_psipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psipKey :: Lens' ProjectsSetIAMPolicy' (Maybe AuthKey)
psipKey = lens _psipKey (\ s a -> s{_psipKey = a})

-- | REQUIRED: The resource for which policy is being specified. \`resource\`
-- is usually specified as a path, such as,
-- \`projects\/{project}\/zones\/{zone}\/disks\/{disk}\`.
psipResource :: Lens' ProjectsSetIAMPolicy' Text
psipResource
  = lens _psipResource (\ s a -> s{_psipResource = a})

-- | OAuth 2.0 token for the current user.
psipOAuthToken :: Lens' ProjectsSetIAMPolicy' (Maybe OAuthToken)
psipOAuthToken
  = lens _psipOAuthToken
      (\ s a -> s{_psipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psipFields :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipFields
  = lens _psipFields (\ s a -> s{_psipFields = a})

-- | JSONP
psipCallback :: Lens' ProjectsSetIAMPolicy' (Maybe Text)
psipCallback
  = lens _psipCallback (\ s a -> s{_psipCallback = a})

instance GoogleAuth ProjectsSetIAMPolicy' where
        authKey = psipKey . _Just
        authToken = psipOAuthToken . _Just

instance GoogleRequest ProjectsSetIAMPolicy' where
        type Rs ProjectsSetIAMPolicy' = Policy
        request = requestWith resourceManagerRequest
        requestWith rq ProjectsSetIAMPolicy'{..}
          = go _psipResource _psipXgafv _psipUploadProtocol
              (Just _psipPp)
              _psipAccessToken
              _psipUploadType
              _psipBearerToken
              _psipCallback
              _psipQuotaUser
              (Just _psipPrettyPrint)
              _psipFields
              _psipKey
              _psipOAuthToken
              (Just AltJSON)
              _psipPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsSetIAMPolicyResource)
                      rq
