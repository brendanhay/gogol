{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the access control policy for a resource. Is empty if the policy or
-- the resource does not exist.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsGetIAMPolicy@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsSubscriptionsGetIAMPolicyResource

    -- * Creating a Request
    , projectsSubscriptionsGetIAMPolicy'
    , ProjectsSubscriptionsGetIAMPolicy'

    -- * Request Lenses
    , psgipXgafv
    , psgipQuotaUser
    , psgipPrettyPrint
    , psgipUploadProtocol
    , psgipPp
    , psgipAccessToken
    , psgipUploadType
    , psgipBearerToken
    , psgipKey
    , psgipResource
    , psgipOAuthToken
    , psgipFields
    , psgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsGetIAMPolicy@ which the
-- 'ProjectsSubscriptionsGetIAMPolicy'' request conforms to.
type ProjectsSubscriptionsGetIAMPolicyResource =
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
-- /See:/ 'projectsSubscriptionsGetIAMPolicy'' smart constructor.
data ProjectsSubscriptionsGetIAMPolicy' = ProjectsSubscriptionsGetIAMPolicy'
    { _psgipXgafv          :: !(Maybe Text)
    , _psgipQuotaUser      :: !(Maybe Text)
    , _psgipPrettyPrint    :: !Bool
    , _psgipUploadProtocol :: !(Maybe Text)
    , _psgipPp             :: !Bool
    , _psgipAccessToken    :: !(Maybe Text)
    , _psgipUploadType     :: !(Maybe Text)
    , _psgipBearerToken    :: !(Maybe Text)
    , _psgipKey            :: !(Maybe Key)
    , _psgipResource       :: !Text
    , _psgipOAuthToken     :: !(Maybe OAuthToken)
    , _psgipFields         :: !(Maybe Text)
    , _psgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsGetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgipXgafv'
--
-- * 'psgipQuotaUser'
--
-- * 'psgipPrettyPrint'
--
-- * 'psgipUploadProtocol'
--
-- * 'psgipPp'
--
-- * 'psgipAccessToken'
--
-- * 'psgipUploadType'
--
-- * 'psgipBearerToken'
--
-- * 'psgipKey'
--
-- * 'psgipResource'
--
-- * 'psgipOAuthToken'
--
-- * 'psgipFields'
--
-- * 'psgipCallback'
projectsSubscriptionsGetIAMPolicy'
    :: Text -- ^ 'resource'
    -> ProjectsSubscriptionsGetIAMPolicy'
projectsSubscriptionsGetIAMPolicy' pPsgipResource_ =
    ProjectsSubscriptionsGetIAMPolicy'
    { _psgipXgafv = Nothing
    , _psgipQuotaUser = Nothing
    , _psgipPrettyPrint = True
    , _psgipUploadProtocol = Nothing
    , _psgipPp = True
    , _psgipAccessToken = Nothing
    , _psgipUploadType = Nothing
    , _psgipBearerToken = Nothing
    , _psgipKey = Nothing
    , _psgipResource = pPsgipResource_
    , _psgipOAuthToken = Nothing
    , _psgipFields = Nothing
    , _psgipCallback = Nothing
    }

-- | V1 error format.
psgipXgafv :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipXgafv
  = lens _psgipXgafv (\ s a -> s{_psgipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psgipQuotaUser :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipQuotaUser
  = lens _psgipQuotaUser
      (\ s a -> s{_psgipQuotaUser = a})

-- | Returns response with indentations and line breaks.
psgipPrettyPrint :: Lens' ProjectsSubscriptionsGetIAMPolicy' Bool
psgipPrettyPrint
  = lens _psgipPrettyPrint
      (\ s a -> s{_psgipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgipUploadProtocol :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipUploadProtocol
  = lens _psgipUploadProtocol
      (\ s a -> s{_psgipUploadProtocol = a})

-- | Pretty-print response.
psgipPp :: Lens' ProjectsSubscriptionsGetIAMPolicy' Bool
psgipPp = lens _psgipPp (\ s a -> s{_psgipPp = a})

-- | OAuth access token.
psgipAccessToken :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipAccessToken
  = lens _psgipAccessToken
      (\ s a -> s{_psgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgipUploadType :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipUploadType
  = lens _psgipUploadType
      (\ s a -> s{_psgipUploadType = a})

-- | OAuth bearer token.
psgipBearerToken :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipBearerToken
  = lens _psgipBearerToken
      (\ s a -> s{_psgipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgipKey :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Key)
psgipKey = lens _psgipKey (\ s a -> s{_psgipKey = a})

-- | REQUIRED: The resource for which policy is being requested. Resource is
-- usually specified as a path, such as, projects\/{project}.
psgipResource :: Lens' ProjectsSubscriptionsGetIAMPolicy' Text
psgipResource
  = lens _psgipResource
      (\ s a -> s{_psgipResource = a})

-- | OAuth 2.0 token for the current user.
psgipOAuthToken :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe OAuthToken)
psgipOAuthToken
  = lens _psgipOAuthToken
      (\ s a -> s{_psgipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psgipFields :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipFields
  = lens _psgipFields (\ s a -> s{_psgipFields = a})

-- | JSONP
psgipCallback :: Lens' ProjectsSubscriptionsGetIAMPolicy' (Maybe Text)
psgipCallback
  = lens _psgipCallback
      (\ s a -> s{_psgipCallback = a})

instance GoogleAuth
         ProjectsSubscriptionsGetIAMPolicy' where
        authKey = psgipKey . _Just
        authToken = psgipOAuthToken . _Just

instance GoogleRequest
         ProjectsSubscriptionsGetIAMPolicy' where
        type Rs ProjectsSubscriptionsGetIAMPolicy' = Policy
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsGetIAMPolicy'{..}
          = go _psgipResource _psgipXgafv _psgipUploadProtocol
              (Just _psgipPp)
              _psgipAccessToken
              _psgipUploadType
              _psgipBearerToken
              _psgipCallback
              _psgipQuotaUser
              (Just _psgipPrettyPrint)
              _psgipFields
              _psgipKey
              _psgipOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsGetIAMPolicyResource)
                      r
                      u
