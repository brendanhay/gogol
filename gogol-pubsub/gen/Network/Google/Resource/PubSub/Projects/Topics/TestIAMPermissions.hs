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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsTestIAMPermissions@.
module Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsTopicsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsTopicsTestIAMPermissions'
    , ProjectsTopicsTestIAMPermissions'

    -- * Request Lenses
    , pttipXgafv
    , pttipQuotaUser
    , pttipPrettyPrint
    , pttipUploadProtocol
    , pttipPp
    , pttipAccessToken
    , pttipUploadType
    , pttipPayload
    , pttipBearerToken
    , pttipKey
    , pttipResource
    , pttipOAuthToken
    , pttipFields
    , pttipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsTestIAMPermissions@ method which the
-- 'ProjectsTopicsTestIAMPermissions'' request conforms to.
type ProjectsTopicsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
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
                                   ReqBody '[JSON] TestIAMPermissionsRequest :>
                                     Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'projectsTopicsTestIAMPermissions'' smart constructor.
data ProjectsTopicsTestIAMPermissions' = ProjectsTopicsTestIAMPermissions'
    { _pttipXgafv          :: !(Maybe Text)
    , _pttipQuotaUser      :: !(Maybe Text)
    , _pttipPrettyPrint    :: !Bool
    , _pttipUploadProtocol :: !(Maybe Text)
    , _pttipPp             :: !Bool
    , _pttipAccessToken    :: !(Maybe Text)
    , _pttipUploadType     :: !(Maybe Text)
    , _pttipPayload        :: !TestIAMPermissionsRequest
    , _pttipBearerToken    :: !(Maybe Text)
    , _pttipKey            :: !(Maybe AuthKey)
    , _pttipResource       :: !Text
    , _pttipOAuthToken     :: !(Maybe OAuthToken)
    , _pttipFields         :: !(Maybe Text)
    , _pttipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsTestIAMPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pttipXgafv'
--
-- * 'pttipQuotaUser'
--
-- * 'pttipPrettyPrint'
--
-- * 'pttipUploadProtocol'
--
-- * 'pttipPp'
--
-- * 'pttipAccessToken'
--
-- * 'pttipUploadType'
--
-- * 'pttipPayload'
--
-- * 'pttipBearerToken'
--
-- * 'pttipKey'
--
-- * 'pttipResource'
--
-- * 'pttipOAuthToken'
--
-- * 'pttipFields'
--
-- * 'pttipCallback'
projectsTopicsTestIAMPermissions'
    :: TestIAMPermissionsRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> ProjectsTopicsTestIAMPermissions'
projectsTopicsTestIAMPermissions' pPttipPayload_ pPttipResource_ =
    ProjectsTopicsTestIAMPermissions'
    { _pttipXgafv = Nothing
    , _pttipQuotaUser = Nothing
    , _pttipPrettyPrint = True
    , _pttipUploadProtocol = Nothing
    , _pttipPp = True
    , _pttipAccessToken = Nothing
    , _pttipUploadType = Nothing
    , _pttipPayload = pPttipPayload_
    , _pttipBearerToken = Nothing
    , _pttipKey = Nothing
    , _pttipResource = pPttipResource_
    , _pttipOAuthToken = Nothing
    , _pttipFields = Nothing
    , _pttipCallback = Nothing
    }

-- | V1 error format.
pttipXgafv :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipXgafv
  = lens _pttipXgafv (\ s a -> s{_pttipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pttipQuotaUser :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipQuotaUser
  = lens _pttipQuotaUser
      (\ s a -> s{_pttipQuotaUser = a})

-- | Returns response with indentations and line breaks.
pttipPrettyPrint :: Lens' ProjectsTopicsTestIAMPermissions' Bool
pttipPrettyPrint
  = lens _pttipPrettyPrint
      (\ s a -> s{_pttipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pttipUploadProtocol :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipUploadProtocol
  = lens _pttipUploadProtocol
      (\ s a -> s{_pttipUploadProtocol = a})

-- | Pretty-print response.
pttipPp :: Lens' ProjectsTopicsTestIAMPermissions' Bool
pttipPp = lens _pttipPp (\ s a -> s{_pttipPp = a})

-- | OAuth access token.
pttipAccessToken :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipAccessToken
  = lens _pttipAccessToken
      (\ s a -> s{_pttipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pttipUploadType :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipUploadType
  = lens _pttipUploadType
      (\ s a -> s{_pttipUploadType = a})

-- | Multipart request metadata.
pttipPayload :: Lens' ProjectsTopicsTestIAMPermissions' TestIAMPermissionsRequest
pttipPayload
  = lens _pttipPayload (\ s a -> s{_pttipPayload = a})

-- | OAuth bearer token.
pttipBearerToken :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipBearerToken
  = lens _pttipBearerToken
      (\ s a -> s{_pttipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pttipKey :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe AuthKey)
pttipKey = lens _pttipKey (\ s a -> s{_pttipKey = a})

-- | REQUIRED: The resource for which policy detail is being requested.
-- Resource is usually specified as a path, such as, projects\/{project}.
pttipResource :: Lens' ProjectsTopicsTestIAMPermissions' Text
pttipResource
  = lens _pttipResource
      (\ s a -> s{_pttipResource = a})

-- | OAuth 2.0 token for the current user.
pttipOAuthToken :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe OAuthToken)
pttipOAuthToken
  = lens _pttipOAuthToken
      (\ s a -> s{_pttipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pttipFields :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipFields
  = lens _pttipFields (\ s a -> s{_pttipFields = a})

-- | JSONP
pttipCallback :: Lens' ProjectsTopicsTestIAMPermissions' (Maybe Text)
pttipCallback
  = lens _pttipCallback
      (\ s a -> s{_pttipCallback = a})

instance GoogleAuth ProjectsTopicsTestIAMPermissions'
         where
        _AuthKey = pttipKey . _Just
        _AuthToken = pttipOAuthToken . _Just

instance GoogleRequest
         ProjectsTopicsTestIAMPermissions' where
        type Rs ProjectsTopicsTestIAMPermissions' =
             TestIAMPermissionsResponse
        request = requestWith pubSubRequest
        requestWith rq ProjectsTopicsTestIAMPermissions'{..}
          = go _pttipResource _pttipXgafv _pttipUploadProtocol
              (Just _pttipPp)
              _pttipAccessToken
              _pttipUploadType
              _pttipBearerToken
              _pttipCallback
              _pttipQuotaUser
              (Just _pttipPrettyPrint)
              _pttipFields
              _pttipKey
              _pttipOAuthToken
              (Just AltJSON)
              _pttipPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ProjectsTopicsTestIAMPermissionsResource)
                      rq
