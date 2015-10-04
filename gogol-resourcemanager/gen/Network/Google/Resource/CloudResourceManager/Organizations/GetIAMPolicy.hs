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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the access control policy for a Organization resource. May be empty
-- if no such policy or resource exists.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsGetIAMPolicy@.
module Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
    (
    -- * REST Resource
      OrganizationsGetIAMPolicyResource

    -- * Creating a Request
    , organizationsGetIAMPolicy'
    , OrganizationsGetIAMPolicy'

    -- * Request Lenses
    , ogipXgafv
    , ogipQuotaUser
    , ogipPrettyPrint
    , ogipUploadProtocol
    , ogipPp
    , ogipAccessToken
    , ogipUploadType
    , ogipPayload
    , ogipBearerToken
    , ogipKey
    , ogipResource
    , ogipOAuthToken
    , ogipFields
    , ogipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsGetIAMPolicy@ which the
-- 'OrganizationsGetIAMPolicy'' request conforms to.
type OrganizationsGetIAMPolicyResource =
     "v1beta1" :>
       "organizations" :>
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
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] GetIAMPolicyRequest :>
                                       Post '[JSON] Policy

-- | Gets the access control policy for a Organization resource. May be empty
-- if no such policy or resource exists.
--
-- /See:/ 'organizationsGetIAMPolicy'' smart constructor.
data OrganizationsGetIAMPolicy' = OrganizationsGetIAMPolicy'
    { _ogipXgafv          :: !(Maybe Text)
    , _ogipQuotaUser      :: !(Maybe Text)
    , _ogipPrettyPrint    :: !Bool
    , _ogipUploadProtocol :: !(Maybe Text)
    , _ogipPp             :: !Bool
    , _ogipAccessToken    :: !(Maybe Text)
    , _ogipUploadType     :: !(Maybe Text)
    , _ogipPayload        :: !GetIAMPolicyRequest
    , _ogipBearerToken    :: !(Maybe Text)
    , _ogipKey            :: !(Maybe Key)
    , _ogipResource       :: !Text
    , _ogipOAuthToken     :: !(Maybe OAuthToken)
    , _ogipFields         :: !(Maybe Text)
    , _ogipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsGetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogipXgafv'
--
-- * 'ogipQuotaUser'
--
-- * 'ogipPrettyPrint'
--
-- * 'ogipUploadProtocol'
--
-- * 'ogipPp'
--
-- * 'ogipAccessToken'
--
-- * 'ogipUploadType'
--
-- * 'ogipPayload'
--
-- * 'ogipBearerToken'
--
-- * 'ogipKey'
--
-- * 'ogipResource'
--
-- * 'ogipOAuthToken'
--
-- * 'ogipFields'
--
-- * 'ogipCallback'
organizationsGetIAMPolicy'
    :: GetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> OrganizationsGetIAMPolicy'
organizationsGetIAMPolicy' pOgipPayload_ pOgipResource_ =
    OrganizationsGetIAMPolicy'
    { _ogipXgafv = Nothing
    , _ogipQuotaUser = Nothing
    , _ogipPrettyPrint = True
    , _ogipUploadProtocol = Nothing
    , _ogipPp = True
    , _ogipAccessToken = Nothing
    , _ogipUploadType = Nothing
    , _ogipPayload = pOgipPayload_
    , _ogipBearerToken = Nothing
    , _ogipKey = Nothing
    , _ogipResource = pOgipResource_
    , _ogipOAuthToken = Nothing
    , _ogipFields = Nothing
    , _ogipCallback = Nothing
    }

-- | V1 error format.
ogipXgafv :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipXgafv
  = lens _ogipXgafv (\ s a -> s{_ogipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ogipQuotaUser :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipQuotaUser
  = lens _ogipQuotaUser
      (\ s a -> s{_ogipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogipPrettyPrint :: Lens' OrganizationsGetIAMPolicy' Bool
ogipPrettyPrint
  = lens _ogipPrettyPrint
      (\ s a -> s{_ogipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogipUploadProtocol :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipUploadProtocol
  = lens _ogipUploadProtocol
      (\ s a -> s{_ogipUploadProtocol = a})

-- | Pretty-print response.
ogipPp :: Lens' OrganizationsGetIAMPolicy' Bool
ogipPp = lens _ogipPp (\ s a -> s{_ogipPp = a})

-- | OAuth access token.
ogipAccessToken :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipAccessToken
  = lens _ogipAccessToken
      (\ s a -> s{_ogipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogipUploadType :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipUploadType
  = lens _ogipUploadType
      (\ s a -> s{_ogipUploadType = a})

-- | Multipart request metadata.
ogipPayload :: Lens' OrganizationsGetIAMPolicy' GetIAMPolicyRequest
ogipPayload
  = lens _ogipPayload (\ s a -> s{_ogipPayload = a})

-- | OAuth bearer token.
ogipBearerToken :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipBearerToken
  = lens _ogipBearerToken
      (\ s a -> s{_ogipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogipKey :: Lens' OrganizationsGetIAMPolicy' (Maybe Key)
ogipKey = lens _ogipKey (\ s a -> s{_ogipKey = a})

-- | REQUIRED: The resource for which policy is being requested. Resource is
-- usually specified as a path, such as, \`projects\/{project}\`.
ogipResource :: Lens' OrganizationsGetIAMPolicy' Text
ogipResource
  = lens _ogipResource (\ s a -> s{_ogipResource = a})

-- | OAuth 2.0 token for the current user.
ogipOAuthToken :: Lens' OrganizationsGetIAMPolicy' (Maybe OAuthToken)
ogipOAuthToken
  = lens _ogipOAuthToken
      (\ s a -> s{_ogipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogipFields :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipFields
  = lens _ogipFields (\ s a -> s{_ogipFields = a})

-- | JSONP
ogipCallback :: Lens' OrganizationsGetIAMPolicy' (Maybe Text)
ogipCallback
  = lens _ogipCallback (\ s a -> s{_ogipCallback = a})

instance GoogleAuth OrganizationsGetIAMPolicy' where
        authKey = ogipKey . _Just
        authToken = ogipOAuthToken . _Just

instance GoogleRequest OrganizationsGetIAMPolicy'
         where
        type Rs OrganizationsGetIAMPolicy' = Policy
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u OrganizationsGetIAMPolicy'{..}
          = go _ogipResource _ogipXgafv _ogipUploadProtocol
              (Just _ogipPp)
              _ogipAccessToken
              _ogipUploadType
              _ogipBearerToken
              _ogipCallback
              _ogipQuotaUser
              (Just _ogipPrettyPrint)
              _ogipFields
              _ogipKey
              _ogipOAuthToken
              (Just AltJSON)
              _ogipPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrganizationsGetIAMPolicyResource)
                      r
                      u
