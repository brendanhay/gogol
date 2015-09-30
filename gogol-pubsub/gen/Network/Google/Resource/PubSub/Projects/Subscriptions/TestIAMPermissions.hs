{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module PubSub.Projects.Subscriptions.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsSubscriptionsTestIAMPermissionsAPI

    -- * Creating a Request
    , projectsSubscriptionsTestIAMPermissions
    , ProjectsSubscriptionsTestIAMPermissions

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
    , pstipOauthToken
    , pstipFields
    , pstipCallback
    , pstipAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsTestIAMPermissions@ which the
-- 'ProjectsSubscriptionsTestIAMPermissions' request conforms to.
type ProjectsSubscriptionsTestIAMPermissionsAPI =
     "v1beta2" :>
       "{+resource}:testIamPermissions" :>
         Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'projectsSubscriptionsTestIAMPermissions' smart constructor.
data ProjectsSubscriptionsTestIAMPermissions = ProjectsSubscriptionsTestIAMPermissions
    { _pstipXgafv          :: !(Maybe Text)
    , _pstipQuotaUser      :: !(Maybe Text)
    , _pstipPrettyPrint    :: !Bool
    , _pstipUploadProtocol :: !(Maybe Text)
    , _pstipPp             :: !Bool
    , _pstipAccessToken    :: !(Maybe Text)
    , _pstipUploadType     :: !(Maybe Text)
    , _pstipBearerToken    :: !(Maybe Text)
    , _pstipKey            :: !(Maybe Text)
    , _pstipResource       :: !Text
    , _pstipOauthToken     :: !(Maybe Text)
    , _pstipFields         :: !(Maybe Text)
    , _pstipCallback       :: !(Maybe Text)
    , _pstipAlt            :: !Text
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
-- * 'pstipOauthToken'
--
-- * 'pstipFields'
--
-- * 'pstipCallback'
--
-- * 'pstipAlt'
projectsSubscriptionsTestIAMPermissions
    :: Text -- ^ 'resource'
    -> ProjectsSubscriptionsTestIAMPermissions
projectsSubscriptionsTestIAMPermissions pPstipResource_ =
    ProjectsSubscriptionsTestIAMPermissions
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
    , _pstipOauthToken = Nothing
    , _pstipFields = Nothing
    , _pstipCallback = Nothing
    , _pstipAlt = "json"
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
pstipKey :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipKey = lens _pstipKey (\ s a -> s{_pstipKey = a})

-- | REQUIRED: The resource for which policy detail is being requested.
-- Resource is usually specified as a path, such as, projects\/{project}.
pstipResource :: Lens' ProjectsSubscriptionsTestIAMPermissions' Text
pstipResource
  = lens _pstipResource
      (\ s a -> s{_pstipResource = a})

-- | OAuth 2.0 token for the current user.
pstipOauthToken :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipOauthToken
  = lens _pstipOauthToken
      (\ s a -> s{_pstipOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pstipFields :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipFields
  = lens _pstipFields (\ s a -> s{_pstipFields = a})

-- | JSONP
pstipCallback :: Lens' ProjectsSubscriptionsTestIAMPermissions' (Maybe Text)
pstipCallback
  = lens _pstipCallback
      (\ s a -> s{_pstipCallback = a})

-- | Data format for response.
pstipAlt :: Lens' ProjectsSubscriptionsTestIAMPermissions' Text
pstipAlt = lens _pstipAlt (\ s a -> s{_pstipAlt = a})

instance GoogleRequest
         ProjectsSubscriptionsTestIAMPermissions' where
        type Rs ProjectsSubscriptionsTestIAMPermissions' =
             TestIAMPermissionsResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsTestIAMPermissions{..}
          = go _pstipXgafv _pstipQuotaUser _pstipPrettyPrint
              _pstipUploadProtocol
              _pstipPp
              _pstipAccessToken
              _pstipUploadType
              _pstipBearerToken
              _pstipKey
              _pstipResource
              _pstipOauthToken
              _pstipFields
              _pstipCallback
              _pstipAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsTestIAMPermissionsAPI)
                      r
                      u
