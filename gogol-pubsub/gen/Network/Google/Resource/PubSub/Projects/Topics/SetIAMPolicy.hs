{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsSetIAMPolicy@.
module Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsTopicsSetIAMPolicyResource

    -- * Creating a Request
    , projectsTopicsSetIAMPolicy'
    , ProjectsTopicsSetIAMPolicy'

    -- * Request Lenses
    , ptsipXgafv
    , ptsipQuotaUser
    , ptsipPrettyPrint
    , ptsipUploadProtocol
    , ptsipPp
    , ptsipAccessToken
    , ptsipUploadType
    , ptsipSetIAMPolicyRequest
    , ptsipBearerToken
    , ptsipKey
    , ptsipResource
    , ptsipOAuthToken
    , ptsipFields
    , ptsipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsSetIAMPolicy@ which the
-- 'ProjectsTopicsSetIAMPolicy'' request conforms to.
type ProjectsTopicsSetIAMPolicyResource =
     "v1beta2" :>
       "{+resource}:setIamPolicy" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] SetIAMPolicyRequest :>
                                     Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsTopicsSetIAMPolicy'' smart constructor.
data ProjectsTopicsSetIAMPolicy' = ProjectsTopicsSetIAMPolicy'
    { _ptsipXgafv               :: !(Maybe Text)
    , _ptsipQuotaUser           :: !(Maybe Text)
    , _ptsipPrettyPrint         :: !Bool
    , _ptsipUploadProtocol      :: !(Maybe Text)
    , _ptsipPp                  :: !Bool
    , _ptsipAccessToken         :: !(Maybe Text)
    , _ptsipUploadType          :: !(Maybe Text)
    , _ptsipSetIAMPolicyRequest :: !SetIAMPolicyRequest
    , _ptsipBearerToken         :: !(Maybe Text)
    , _ptsipKey                 :: !(Maybe Key)
    , _ptsipResource            :: !Text
    , _ptsipOAuthToken          :: !(Maybe OAuthToken)
    , _ptsipFields              :: !(Maybe Text)
    , _ptsipCallback            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptsipXgafv'
--
-- * 'ptsipQuotaUser'
--
-- * 'ptsipPrettyPrint'
--
-- * 'ptsipUploadProtocol'
--
-- * 'ptsipPp'
--
-- * 'ptsipAccessToken'
--
-- * 'ptsipUploadType'
--
-- * 'ptsipSetIAMPolicyRequest'
--
-- * 'ptsipBearerToken'
--
-- * 'ptsipKey'
--
-- * 'ptsipResource'
--
-- * 'ptsipOAuthToken'
--
-- * 'ptsipFields'
--
-- * 'ptsipCallback'
projectsTopicsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'SetIAMPolicyRequest'
    -> Text -- ^ 'resource'
    -> ProjectsTopicsSetIAMPolicy'
projectsTopicsSetIAMPolicy' pPtsipSetIAMPolicyRequest_ pPtsipResource_ =
    ProjectsTopicsSetIAMPolicy'
    { _ptsipXgafv = Nothing
    , _ptsipQuotaUser = Nothing
    , _ptsipPrettyPrint = True
    , _ptsipUploadProtocol = Nothing
    , _ptsipPp = True
    , _ptsipAccessToken = Nothing
    , _ptsipUploadType = Nothing
    , _ptsipSetIAMPolicyRequest = pPtsipSetIAMPolicyRequest_
    , _ptsipBearerToken = Nothing
    , _ptsipKey = Nothing
    , _ptsipResource = pPtsipResource_
    , _ptsipOAuthToken = Nothing
    , _ptsipFields = Nothing
    , _ptsipCallback = Nothing
    }

-- | V1 error format.
ptsipXgafv :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipXgafv
  = lens _ptsipXgafv (\ s a -> s{_ptsipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptsipQuotaUser :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipQuotaUser
  = lens _ptsipQuotaUser
      (\ s a -> s{_ptsipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptsipPrettyPrint :: Lens' ProjectsTopicsSetIAMPolicy' Bool
ptsipPrettyPrint
  = lens _ptsipPrettyPrint
      (\ s a -> s{_ptsipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptsipUploadProtocol :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipUploadProtocol
  = lens _ptsipUploadProtocol
      (\ s a -> s{_ptsipUploadProtocol = a})

-- | Pretty-print response.
ptsipPp :: Lens' ProjectsTopicsSetIAMPolicy' Bool
ptsipPp = lens _ptsipPp (\ s a -> s{_ptsipPp = a})

-- | OAuth access token.
ptsipAccessToken :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipAccessToken
  = lens _ptsipAccessToken
      (\ s a -> s{_ptsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptsipUploadType :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipUploadType
  = lens _ptsipUploadType
      (\ s a -> s{_ptsipUploadType = a})

-- | Multipart request metadata.
ptsipSetIAMPolicyRequest :: Lens' ProjectsTopicsSetIAMPolicy' SetIAMPolicyRequest
ptsipSetIAMPolicyRequest
  = lens _ptsipSetIAMPolicyRequest
      (\ s a -> s{_ptsipSetIAMPolicyRequest = a})

-- | OAuth bearer token.
ptsipBearerToken :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipBearerToken
  = lens _ptsipBearerToken
      (\ s a -> s{_ptsipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptsipKey :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Key)
ptsipKey = lens _ptsipKey (\ s a -> s{_ptsipKey = a})

-- | REQUIRED: The resource for which policy is being specified. Resource is
-- usually specified as a path, such as,
-- projects\/{project}\/zones\/{zone}\/disks\/{disk}.
ptsipResource :: Lens' ProjectsTopicsSetIAMPolicy' Text
ptsipResource
  = lens _ptsipResource
      (\ s a -> s{_ptsipResource = a})

-- | OAuth 2.0 token for the current user.
ptsipOAuthToken :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe OAuthToken)
ptsipOAuthToken
  = lens _ptsipOAuthToken
      (\ s a -> s{_ptsipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptsipFields :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipFields
  = lens _ptsipFields (\ s a -> s{_ptsipFields = a})

-- | JSONP
ptsipCallback :: Lens' ProjectsTopicsSetIAMPolicy' (Maybe Text)
ptsipCallback
  = lens _ptsipCallback
      (\ s a -> s{_ptsipCallback = a})

instance GoogleAuth ProjectsTopicsSetIAMPolicy' where
        authKey = ptsipKey . _Just
        authToken = ptsipOAuthToken . _Just

instance GoogleRequest ProjectsTopicsSetIAMPolicy'
         where
        type Rs ProjectsTopicsSetIAMPolicy' = Policy
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsSetIAMPolicy'{..}
          = go _ptsipXgafv _ptsipQuotaUser
              (Just _ptsipPrettyPrint)
              _ptsipUploadProtocol
              (Just _ptsipPp)
              _ptsipAccessToken
              _ptsipUploadType
              _ptsipBearerToken
              _ptsipKey
              _ptsipResource
              _ptsipOAuthToken
              _ptsipFields
              _ptsipCallback
              (Just AltJSON)
              _ptsipSetIAMPolicyRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsSetIAMPolicyResource)
                      r
                      u
