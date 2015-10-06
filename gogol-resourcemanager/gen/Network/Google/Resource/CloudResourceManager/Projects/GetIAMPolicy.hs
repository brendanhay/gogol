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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the IAM access control policy for specified project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsGetIAMPolicy@.
module Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsGetIAMPolicyResource

    -- * Creating a Request
    , projectsGetIAMPolicy'
    , ProjectsGetIAMPolicy'

    -- * Request Lenses
    , pgipXgafv
    , pgipQuotaUser
    , pgipPrettyPrint
    , pgipUploadProtocol
    , pgipPp
    , pgipAccessToken
    , pgipUploadType
    , pgipPayload
    , pgipBearerToken
    , pgipKey
    , pgipResource
    , pgipOAuthToken
    , pgipFields
    , pgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsGetIAMPolicy@ which the
-- 'ProjectsGetIAMPolicy'' request conforms to.
type ProjectsGetIAMPolicyResource =
     "v1beta1" :>
       "projects" :>
         CaptureMode "resource" "getIamPolicy" Text :>
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
                                     ReqBody '[JSON] GetIAMPolicyRequest :>
                                       Post '[JSON] Policy

-- | Returns the IAM access control policy for specified project.
--
-- /See:/ 'projectsGetIAMPolicy'' smart constructor.
data ProjectsGetIAMPolicy' = ProjectsGetIAMPolicy'
    { _pgipXgafv          :: !(Maybe Text)
    , _pgipQuotaUser      :: !(Maybe Text)
    , _pgipPrettyPrint    :: !Bool
    , _pgipUploadProtocol :: !(Maybe Text)
    , _pgipPp             :: !Bool
    , _pgipAccessToken    :: !(Maybe Text)
    , _pgipUploadType     :: !(Maybe Text)
    , _pgipPayload        :: !GetIAMPolicyRequest
    , _pgipBearerToken    :: !(Maybe Text)
    , _pgipKey            :: !(Maybe AuthKey)
    , _pgipResource       :: !Text
    , _pgipOAuthToken     :: !(Maybe OAuthToken)
    , _pgipFields         :: !(Maybe Text)
    , _pgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgipXgafv'
--
-- * 'pgipQuotaUser'
--
-- * 'pgipPrettyPrint'
--
-- * 'pgipUploadProtocol'
--
-- * 'pgipPp'
--
-- * 'pgipAccessToken'
--
-- * 'pgipUploadType'
--
-- * 'pgipPayload'
--
-- * 'pgipBearerToken'
--
-- * 'pgipKey'
--
-- * 'pgipResource'
--
-- * 'pgipOAuthToken'
--
-- * 'pgipFields'
--
-- * 'pgipCallback'
projectsGetIAMPolicy'
    :: GetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> ProjectsGetIAMPolicy'
projectsGetIAMPolicy' pPgipPayload_ pPgipResource_ =
    ProjectsGetIAMPolicy'
    { _pgipXgafv = Nothing
    , _pgipQuotaUser = Nothing
    , _pgipPrettyPrint = True
    , _pgipUploadProtocol = Nothing
    , _pgipPp = True
    , _pgipAccessToken = Nothing
    , _pgipUploadType = Nothing
    , _pgipPayload = pPgipPayload_
    , _pgipBearerToken = Nothing
    , _pgipKey = Nothing
    , _pgipResource = pPgipResource_
    , _pgipOAuthToken = Nothing
    , _pgipFields = Nothing
    , _pgipCallback = Nothing
    }

-- | V1 error format.
pgipXgafv :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipXgafv
  = lens _pgipXgafv (\ s a -> s{_pgipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pgipQuotaUser :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipQuotaUser
  = lens _pgipQuotaUser
      (\ s a -> s{_pgipQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgipPrettyPrint :: Lens' ProjectsGetIAMPolicy' Bool
pgipPrettyPrint
  = lens _pgipPrettyPrint
      (\ s a -> s{_pgipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgipUploadProtocol :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipUploadProtocol
  = lens _pgipUploadProtocol
      (\ s a -> s{_pgipUploadProtocol = a})

-- | Pretty-print response.
pgipPp :: Lens' ProjectsGetIAMPolicy' Bool
pgipPp = lens _pgipPp (\ s a -> s{_pgipPp = a})

-- | OAuth access token.
pgipAccessToken :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipAccessToken
  = lens _pgipAccessToken
      (\ s a -> s{_pgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgipUploadType :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipUploadType
  = lens _pgipUploadType
      (\ s a -> s{_pgipUploadType = a})

-- | Multipart request metadata.
pgipPayload :: Lens' ProjectsGetIAMPolicy' GetIAMPolicyRequest
pgipPayload
  = lens _pgipPayload (\ s a -> s{_pgipPayload = a})

-- | OAuth bearer token.
pgipBearerToken :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipBearerToken
  = lens _pgipBearerToken
      (\ s a -> s{_pgipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgipKey :: Lens' ProjectsGetIAMPolicy' (Maybe AuthKey)
pgipKey = lens _pgipKey (\ s a -> s{_pgipKey = a})

-- | REQUIRED: The resource for which policy is being requested. Resource is
-- usually specified as a path, such as, \`projects\/{project}\`.
pgipResource :: Lens' ProjectsGetIAMPolicy' Text
pgipResource
  = lens _pgipResource (\ s a -> s{_pgipResource = a})

-- | OAuth 2.0 token for the current user.
pgipOAuthToken :: Lens' ProjectsGetIAMPolicy' (Maybe OAuthToken)
pgipOAuthToken
  = lens _pgipOAuthToken
      (\ s a -> s{_pgipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgipFields :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipFields
  = lens _pgipFields (\ s a -> s{_pgipFields = a})

-- | JSONP
pgipCallback :: Lens' ProjectsGetIAMPolicy' (Maybe Text)
pgipCallback
  = lens _pgipCallback (\ s a -> s{_pgipCallback = a})

instance GoogleAuth ProjectsGetIAMPolicy' where
        _AuthKey = pgipKey . _Just
        _AuthToken = pgipOAuthToken . _Just

instance GoogleRequest ProjectsGetIAMPolicy' where
        type Rs ProjectsGetIAMPolicy' = Policy
        request = requestWith resourceManagerRequest
        requestWith rq ProjectsGetIAMPolicy'{..}
          = go _pgipResource _pgipXgafv _pgipUploadProtocol
              (Just _pgipPp)
              _pgipAccessToken
              _pgipUploadType
              _pgipBearerToken
              _pgipCallback
              _pgipQuotaUser
              (Just _pgipPrettyPrint)
              _pgipFields
              _pgipKey
              _pgipOAuthToken
              (Just AltJSON)
              _pgipPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsGetIAMPolicyResource)
                      rq
