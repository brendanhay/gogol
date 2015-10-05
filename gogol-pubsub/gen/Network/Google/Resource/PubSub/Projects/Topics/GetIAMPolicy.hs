{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the access control policy for a resource. Is empty if the policy or
-- the resource does not exist.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsGetIAMPolicy@.
module Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsTopicsGetIAMPolicyResource

    -- * Creating a Request
    , projectsTopicsGetIAMPolicy'
    , ProjectsTopicsGetIAMPolicy'

    -- * Request Lenses
    , ptgipXgafv
    , ptgipQuotaUser
    , ptgipPrettyPrint
    , ptgipUploadProtocol
    , ptgipPp
    , ptgipAccessToken
    , ptgipUploadType
    , ptgipBearerToken
    , ptgipKey
    , ptgipResource
    , ptgipOAuthToken
    , ptgipFields
    , ptgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsGetIAMPolicy@ which the
-- 'ProjectsTopicsGetIAMPolicy'' request conforms to.
type ProjectsTopicsGetIAMPolicyResource =
     "v1beta2" :>
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
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Is empty if the policy or
-- the resource does not exist.
--
-- /See:/ 'projectsTopicsGetIAMPolicy'' smart constructor.
data ProjectsTopicsGetIAMPolicy' = ProjectsTopicsGetIAMPolicy'
    { _ptgipXgafv          :: !(Maybe Text)
    , _ptgipQuotaUser      :: !(Maybe Text)
    , _ptgipPrettyPrint    :: !Bool
    , _ptgipUploadProtocol :: !(Maybe Text)
    , _ptgipPp             :: !Bool
    , _ptgipAccessToken    :: !(Maybe Text)
    , _ptgipUploadType     :: !(Maybe Text)
    , _ptgipBearerToken    :: !(Maybe Text)
    , _ptgipKey            :: !(Maybe Key)
    , _ptgipResource       :: !Text
    , _ptgipOAuthToken     :: !(Maybe OAuthToken)
    , _ptgipFields         :: !(Maybe Text)
    , _ptgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsGetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgipXgafv'
--
-- * 'ptgipQuotaUser'
--
-- * 'ptgipPrettyPrint'
--
-- * 'ptgipUploadProtocol'
--
-- * 'ptgipPp'
--
-- * 'ptgipAccessToken'
--
-- * 'ptgipUploadType'
--
-- * 'ptgipBearerToken'
--
-- * 'ptgipKey'
--
-- * 'ptgipResource'
--
-- * 'ptgipOAuthToken'
--
-- * 'ptgipFields'
--
-- * 'ptgipCallback'
projectsTopicsGetIAMPolicy'
    :: Text -- ^ 'resource'
    -> ProjectsTopicsGetIAMPolicy'
projectsTopicsGetIAMPolicy' pPtgipResource_ =
    ProjectsTopicsGetIAMPolicy'
    { _ptgipXgafv = Nothing
    , _ptgipQuotaUser = Nothing
    , _ptgipPrettyPrint = True
    , _ptgipUploadProtocol = Nothing
    , _ptgipPp = True
    , _ptgipAccessToken = Nothing
    , _ptgipUploadType = Nothing
    , _ptgipBearerToken = Nothing
    , _ptgipKey = Nothing
    , _ptgipResource = pPtgipResource_
    , _ptgipOAuthToken = Nothing
    , _ptgipFields = Nothing
    , _ptgipCallback = Nothing
    }

-- | V1 error format.
ptgipXgafv :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipXgafv
  = lens _ptgipXgafv (\ s a -> s{_ptgipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptgipQuotaUser :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipQuotaUser
  = lens _ptgipQuotaUser
      (\ s a -> s{_ptgipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptgipPrettyPrint :: Lens' ProjectsTopicsGetIAMPolicy' Bool
ptgipPrettyPrint
  = lens _ptgipPrettyPrint
      (\ s a -> s{_ptgipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgipUploadProtocol :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipUploadProtocol
  = lens _ptgipUploadProtocol
      (\ s a -> s{_ptgipUploadProtocol = a})

-- | Pretty-print response.
ptgipPp :: Lens' ProjectsTopicsGetIAMPolicy' Bool
ptgipPp = lens _ptgipPp (\ s a -> s{_ptgipPp = a})

-- | OAuth access token.
ptgipAccessToken :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipAccessToken
  = lens _ptgipAccessToken
      (\ s a -> s{_ptgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgipUploadType :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipUploadType
  = lens _ptgipUploadType
      (\ s a -> s{_ptgipUploadType = a})

-- | OAuth bearer token.
ptgipBearerToken :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipBearerToken
  = lens _ptgipBearerToken
      (\ s a -> s{_ptgipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptgipKey :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Key)
ptgipKey = lens _ptgipKey (\ s a -> s{_ptgipKey = a})

-- | REQUIRED: The resource for which policy is being requested. Resource is
-- usually specified as a path, such as, projects\/{project}.
ptgipResource :: Lens' ProjectsTopicsGetIAMPolicy' Text
ptgipResource
  = lens _ptgipResource
      (\ s a -> s{_ptgipResource = a})

-- | OAuth 2.0 token for the current user.
ptgipOAuthToken :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe OAuthToken)
ptgipOAuthToken
  = lens _ptgipOAuthToken
      (\ s a -> s{_ptgipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptgipFields :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipFields
  = lens _ptgipFields (\ s a -> s{_ptgipFields = a})

-- | JSONP
ptgipCallback :: Lens' ProjectsTopicsGetIAMPolicy' (Maybe Text)
ptgipCallback
  = lens _ptgipCallback
      (\ s a -> s{_ptgipCallback = a})

instance GoogleAuth ProjectsTopicsGetIAMPolicy' where
        authKey = ptgipKey . _Just
        authToken = ptgipOAuthToken . _Just

instance GoogleRequest ProjectsTopicsGetIAMPolicy'
         where
        type Rs ProjectsTopicsGetIAMPolicy' = Policy
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsGetIAMPolicy'{..}
          = go _ptgipResource _ptgipXgafv _ptgipUploadProtocol
              (Just _ptgipPp)
              _ptgipAccessToken
              _ptgipUploadType
              _ptgipBearerToken
              _ptgipCallback
              _ptgipQuotaUser
              (Just _ptgipPrettyPrint)
              _ptgipFields
              _ptgipKey
              _ptgipOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsGetIAMPolicyResource)
                      r
                      u
