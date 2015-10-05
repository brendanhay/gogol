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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsSetIAMPolicy@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsSubscriptionsSetIAMPolicyResource

    -- * Creating a Request
    , projectsSubscriptionsSetIAMPolicy'
    , ProjectsSubscriptionsSetIAMPolicy'

    -- * Request Lenses
    , pssipXgafv
    , pssipQuotaUser
    , pssipPrettyPrint
    , pssipUploadProtocol
    , pssipPp
    , pssipAccessToken
    , pssipUploadType
    , pssipPayload
    , pssipBearerToken
    , pssipKey
    , pssipResource
    , pssipOAuthToken
    , pssipFields
    , pssipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsSetIAMPolicy@ which the
-- 'ProjectsSubscriptionsSetIAMPolicy'' request conforms to.
type ProjectsSubscriptionsSetIAMPolicyResource =
     "v1beta2" :>
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
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] SetIAMPolicyRequest :>
                                     Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsSubscriptionsSetIAMPolicy'' smart constructor.
data ProjectsSubscriptionsSetIAMPolicy' = ProjectsSubscriptionsSetIAMPolicy'
    { _pssipXgafv          :: !(Maybe Text)
    , _pssipQuotaUser      :: !(Maybe Text)
    , _pssipPrettyPrint    :: !Bool
    , _pssipUploadProtocol :: !(Maybe Text)
    , _pssipPp             :: !Bool
    , _pssipAccessToken    :: !(Maybe Text)
    , _pssipUploadType     :: !(Maybe Text)
    , _pssipPayload        :: !SetIAMPolicyRequest
    , _pssipBearerToken    :: !(Maybe Text)
    , _pssipKey            :: !(Maybe Key)
    , _pssipResource       :: !Text
    , _pssipOAuthToken     :: !(Maybe OAuthToken)
    , _pssipFields         :: !(Maybe Text)
    , _pssipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssipXgafv'
--
-- * 'pssipQuotaUser'
--
-- * 'pssipPrettyPrint'
--
-- * 'pssipUploadProtocol'
--
-- * 'pssipPp'
--
-- * 'pssipAccessToken'
--
-- * 'pssipUploadType'
--
-- * 'pssipPayload'
--
-- * 'pssipBearerToken'
--
-- * 'pssipKey'
--
-- * 'pssipResource'
--
-- * 'pssipOAuthToken'
--
-- * 'pssipFields'
--
-- * 'pssipCallback'
projectsSubscriptionsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> ProjectsSubscriptionsSetIAMPolicy'
projectsSubscriptionsSetIAMPolicy' pPssipPayload_ pPssipResource_ =
    ProjectsSubscriptionsSetIAMPolicy'
    { _pssipXgafv = Nothing
    , _pssipQuotaUser = Nothing
    , _pssipPrettyPrint = True
    , _pssipUploadProtocol = Nothing
    , _pssipPp = True
    , _pssipAccessToken = Nothing
    , _pssipUploadType = Nothing
    , _pssipPayload = pPssipPayload_
    , _pssipBearerToken = Nothing
    , _pssipKey = Nothing
    , _pssipResource = pPssipResource_
    , _pssipOAuthToken = Nothing
    , _pssipFields = Nothing
    , _pssipCallback = Nothing
    }

-- | V1 error format.
pssipXgafv :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipXgafv
  = lens _pssipXgafv (\ s a -> s{_pssipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pssipQuotaUser :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipQuotaUser
  = lens _pssipQuotaUser
      (\ s a -> s{_pssipQuotaUser = a})

-- | Returns response with indentations and line breaks.
pssipPrettyPrint :: Lens' ProjectsSubscriptionsSetIAMPolicy' Bool
pssipPrettyPrint
  = lens _pssipPrettyPrint
      (\ s a -> s{_pssipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pssipUploadProtocol :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipUploadProtocol
  = lens _pssipUploadProtocol
      (\ s a -> s{_pssipUploadProtocol = a})

-- | Pretty-print response.
pssipPp :: Lens' ProjectsSubscriptionsSetIAMPolicy' Bool
pssipPp = lens _pssipPp (\ s a -> s{_pssipPp = a})

-- | OAuth access token.
pssipAccessToken :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipAccessToken
  = lens _pssipAccessToken
      (\ s a -> s{_pssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pssipUploadType :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipUploadType
  = lens _pssipUploadType
      (\ s a -> s{_pssipUploadType = a})

-- | Multipart request metadata.
pssipPayload :: Lens' ProjectsSubscriptionsSetIAMPolicy' SetIAMPolicyRequest
pssipPayload
  = lens _pssipPayload (\ s a -> s{_pssipPayload = a})

-- | OAuth bearer token.
pssipBearerToken :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipBearerToken
  = lens _pssipBearerToken
      (\ s a -> s{_pssipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pssipKey :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Key)
pssipKey = lens _pssipKey (\ s a -> s{_pssipKey = a})

-- | REQUIRED: The resource for which policy is being specified. Resource is
-- usually specified as a path, such as,
-- projects\/{project}\/zones\/{zone}\/disks\/{disk}.
pssipResource :: Lens' ProjectsSubscriptionsSetIAMPolicy' Text
pssipResource
  = lens _pssipResource
      (\ s a -> s{_pssipResource = a})

-- | OAuth 2.0 token for the current user.
pssipOAuthToken :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe OAuthToken)
pssipOAuthToken
  = lens _pssipOAuthToken
      (\ s a -> s{_pssipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pssipFields :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipFields
  = lens _pssipFields (\ s a -> s{_pssipFields = a})

-- | JSONP
pssipCallback :: Lens' ProjectsSubscriptionsSetIAMPolicy' (Maybe Text)
pssipCallback
  = lens _pssipCallback
      (\ s a -> s{_pssipCallback = a})

instance GoogleAuth
         ProjectsSubscriptionsSetIAMPolicy' where
        authKey = pssipKey . _Just
        authToken = pssipOAuthToken . _Just

instance GoogleRequest
         ProjectsSubscriptionsSetIAMPolicy' where
        type Rs ProjectsSubscriptionsSetIAMPolicy' = Policy
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsSetIAMPolicy'{..}
          = go _pssipResource _pssipXgafv _pssipUploadProtocol
              (Just _pssipPp)
              _pssipAccessToken
              _pssipUploadType
              _pssipBearerToken
              _pssipCallback
              _pssipQuotaUser
              (Just _pssipPrettyPrint)
              _pssipFields
              _pssipKey
              _pssipOAuthToken
              (Just AltJSON)
              _pssipPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsSetIAMPolicyResource)
                      r
                      u
