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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsTestIAMPermissions@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSubscriptionsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsSubscriptionsTestIAMPermissions'
    , ProjectsSubscriptionsTestIAMPermissions'

    -- * Request Lenses
    , pstipXgafv
    , pstipQuotaUser
    , pstipPrettyPrint
    , pstipUploadProtocol
    , pstipPp
    , pstipAccessToken
    , pstipUploadType
    , pstipBearerToken
    , pstipKey
    , pstipResource
    , pstipTestIAMPermissionsRequest
    , pstipOAuthToken
    , pstipFields
    , pstipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsTestIAMPermissions@ which the
-- 'ProjectsSubscriptionsTestIAMPermissions'' request conforms to.
type ProjectsSubscriptionsTestIAMPermissionsResource
     =
     "v1beta2" :>
       "{+resource}:testIamPermissions" :>
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
                                   ReqBody '[JSON] TestIAMPermissionsRequest :>
                                     Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'projectsSubscriptionsTestIAMPermissions'' smart constructor.
data ProjectsSubscriptionsTestIAMPermissions' = ProjectsSubscriptionsTestIAMPermissions'
    { _pstipXgafv                     :: !(Maybe Text)
    , _pstipQuotaUser                 :: !(Maybe Text)
    , _pstipPrettyPrint               :: !Bool
    , _pstipUploadProtocol            :: !(Maybe Text)
    , _pstipPp                        :: !Bool
    , _pstipAccessToken               :: !(Maybe Text)
    , _pstipUploadType                :: !(Maybe Text)
    , _pstipBearerToken               :: !(Maybe Text)
    , _pstipKey                       :: !(Maybe Key)
    , _pstipResource                  :: !Text
    , _pstipTestIAMPermissionsRequest :: !TestIAMPermissionsRequest
    , _pstipOAuthToken                :: !(Maybe OAuthToken)
    , _pstipFields                    :: !(Maybe Text)
    , _pstipCallback                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsTestIAMPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstipXgafv'
--
-- * 'pstipQuotaUser'
--
-- * 'pstipPrettyPrint'
--
-- * 'pstipUploadProtocol'
--
-- * 'pstipPp'
--
-- * 'pstipAccessToken'
--
-- * 'pstipUploadType'
--
-- * 'pstipBearerToken'
--
-- * 'pstipKey'
--
-- * 'pstipResource'
--
-- * 'pstipTestIAMPermissionsRequest'
--
-- * 'pstipOAuthToken'
--
-- * 'pstipFields'
--
-- * 'pstipCallback'
projectsSubscriptionsTestIAMPermissions'
    :: Text -- ^ 'resource'
    -> TestIAMPermissionsRequest -- ^ 'TestIAMPermissionsRequest'
    -> ProjectsSubscriptionsTestIAMPermissions'
projectsSubscriptionsTestIAMPermissions' pPstipResource_ pPstipTestIAMPermissionsRequest_ =
    ProjectsSubscriptionsTestIAMPermissions'
    { _pstipXgafv = Nothing
    , _pstipQuotaUser = Nothing
    , _pstipPrettyPrint = True
    , _pstipUploadProtocol = Nothing
    , _pstipPp = True
    , _pstipAccessToken = Nothing
    , _pstipUploadType = Nothing
    , _pstipBearerToken = Nothing
    , _pstipKey = Nothing
    , _pstipResource = pPstipResource_
    , _pstipTestIAMPermissionsRequest = pPstipTestIAMPermissionsRequest_
    , _pstipOAuthToken = Nothing
    , _pstipFields = Nothing
    , _pstipCallback = Nothing
    }

-- | V1 error format.
pstipXgafv :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipXgafv
  = lens _pstipXgafv (\ s a -> s{_pstipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pstipQuotaUser :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipQuotaUser
  = lens _pstipQuotaUser
      (\ s a -> s{_pstipQuotaUser = a})

-- | Returns response with indentations and line breaks.
pstipPrettyPrint :: Lens' ProjectsSubscriptionsTestIAMPermissions' Bool
pstipPrettyPrint
  = lens _pstipPrettyPrint
      (\ s a -> s{_pstipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pstipUploadProtocol :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipUploadProtocol
  = lens _pstipUploadProtocol
      (\ s a -> s{_pstipUploadProtocol = a})

-- | Pretty-print response.
pstipPp :: Lens' ProjectsSubscriptionsTestIAMPermissions' Bool
pstipPp = lens _pstipPp (\ s a -> s{_pstipPp = a})

-- | OAuth access token.
pstipAccessToken :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipAccessToken
  = lens _pstipAccessToken
      (\ s a -> s{_pstipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pstipUploadType :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipUploadType
  = lens _pstipUploadType
      (\ s a -> s{_pstipUploadType = a})

-- | OAuth bearer token.
pstipBearerToken :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipBearerToken
  = lens _pstipBearerToken
      (\ s a -> s{_pstipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pstipKey :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Key)
pstipKey = lens _pstipKey (\ s a -> s{_pstipKey = a})

-- | REQUIRED: The resource for which policy detail is being requested.
-- Resource is usually specified as a path, such as, projects\/{project}.
pstipResource :: Lens' ProjectsSubscriptionsTestIAMPermissions' Text
pstipResource
  = lens _pstipResource
      (\ s a -> s{_pstipResource = a})

-- | Multipart request metadata.
pstipTestIAMPermissionsRequest :: Lens' ProjectsSubscriptionsTestIAMPermissions' TestIAMPermissionsRequest
pstipTestIAMPermissionsRequest
  = lens _pstipTestIAMPermissionsRequest
      (\ s a -> s{_pstipTestIAMPermissionsRequest = a})

-- | OAuth 2.0 token for the current user.
pstipOAuthToken :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe OAuthToken)
pstipOAuthToken
  = lens _pstipOAuthToken
      (\ s a -> s{_pstipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pstipFields :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipFields
  = lens _pstipFields (\ s a -> s{_pstipFields = a})

-- | JSONP
pstipCallback :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipCallback
  = lens _pstipCallback
      (\ s a -> s{_pstipCallback = a})

instance GoogleAuth
         ProjectsSubscriptionsTestIAMPermissions' where
        authKey = pstipKey . _Just
        authToken = pstipOAuthToken . _Just

instance GoogleRequest
         ProjectsSubscriptionsTestIAMPermissions' where
        type Rs ProjectsSubscriptionsTestIAMPermissions' =
             TestIAMPermissionsResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsTestIAMPermissions'{..}
          = go _pstipXgafv _pstipQuotaUser
              (Just _pstipPrettyPrint)
              _pstipUploadProtocol
              (Just _pstipPp)
              _pstipAccessToken
              _pstipUploadType
              _pstipBearerToken
              _pstipKey
              _pstipResource
              _pstipOAuthToken
              _pstipFields
              _pstipCallback
              (Just AltJSON)
              _pstipTestIAMPermissionsRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           ProjectsSubscriptionsTestIAMPermissionsResource)
                      r
                      u
