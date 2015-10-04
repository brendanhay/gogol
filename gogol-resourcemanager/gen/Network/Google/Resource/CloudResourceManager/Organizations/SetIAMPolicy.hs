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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsSetIAMPolicy@.
module Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
    (
    -- * REST Resource
      OrganizationsSetIAMPolicyResource

    -- * Creating a Request
    , organizationsSetIAMPolicy'
    , OrganizationsSetIAMPolicy'

    -- * Request Lenses
    , osipXgafv
    , osipQuotaUser
    , osipPrettyPrint
    , osipUploadProtocol
    , osipPp
    , osipAccessToken
    , osipUploadType
    , osipPayload
    , osipBearerToken
    , osipKey
    , osipResource
    , osipOAuthToken
    , osipFields
    , osipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsSetIAMPolicy@ which the
-- 'OrganizationsSetIAMPolicy'' request conforms to.
type OrganizationsSetIAMPolicyResource =
     "v1beta1" :>
       "organizations" :>
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
                                     ReqBody '[OctetStream] SetIAMPolicyRequest
                                       :> Post '[JSON] Policy

-- | Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
--
-- /See:/ 'organizationsSetIAMPolicy'' smart constructor.
data OrganizationsSetIAMPolicy' = OrganizationsSetIAMPolicy'
    { _osipXgafv          :: !(Maybe Text)
    , _osipQuotaUser      :: !(Maybe Text)
    , _osipPrettyPrint    :: !Bool
    , _osipUploadProtocol :: !(Maybe Text)
    , _osipPp             :: !Bool
    , _osipAccessToken    :: !(Maybe Text)
    , _osipUploadType     :: !(Maybe Text)
    , _osipPayload        :: !SetIAMPolicyRequest
    , _osipBearerToken    :: !(Maybe Text)
    , _osipKey            :: !(Maybe Key)
    , _osipResource       :: !Text
    , _osipOAuthToken     :: !(Maybe OAuthToken)
    , _osipFields         :: !(Maybe Text)
    , _osipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osipXgafv'
--
-- * 'osipQuotaUser'
--
-- * 'osipPrettyPrint'
--
-- * 'osipUploadProtocol'
--
-- * 'osipPp'
--
-- * 'osipAccessToken'
--
-- * 'osipUploadType'
--
-- * 'osipPayload'
--
-- * 'osipBearerToken'
--
-- * 'osipKey'
--
-- * 'osipResource'
--
-- * 'osipOAuthToken'
--
-- * 'osipFields'
--
-- * 'osipCallback'
organizationsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> OrganizationsSetIAMPolicy'
organizationsSetIAMPolicy' pOsipPayload_ pOsipResource_ =
    OrganizationsSetIAMPolicy'
    { _osipXgafv = Nothing
    , _osipQuotaUser = Nothing
    , _osipPrettyPrint = True
    , _osipUploadProtocol = Nothing
    , _osipPp = True
    , _osipAccessToken = Nothing
    , _osipUploadType = Nothing
    , _osipPayload = pOsipPayload_
    , _osipBearerToken = Nothing
    , _osipKey = Nothing
    , _osipResource = pOsipResource_
    , _osipOAuthToken = Nothing
    , _osipFields = Nothing
    , _osipCallback = Nothing
    }

-- | V1 error format.
osipXgafv :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipXgafv
  = lens _osipXgafv (\ s a -> s{_osipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
osipQuotaUser :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipQuotaUser
  = lens _osipQuotaUser
      (\ s a -> s{_osipQuotaUser = a})

-- | Returns response with indentations and line breaks.
osipPrettyPrint :: Lens' OrganizationsSetIAMPolicy' Bool
osipPrettyPrint
  = lens _osipPrettyPrint
      (\ s a -> s{_osipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osipUploadProtocol :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipUploadProtocol
  = lens _osipUploadProtocol
      (\ s a -> s{_osipUploadProtocol = a})

-- | Pretty-print response.
osipPp :: Lens' OrganizationsSetIAMPolicy' Bool
osipPp = lens _osipPp (\ s a -> s{_osipPp = a})

-- | OAuth access token.
osipAccessToken :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipAccessToken
  = lens _osipAccessToken
      (\ s a -> s{_osipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osipUploadType :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipUploadType
  = lens _osipUploadType
      (\ s a -> s{_osipUploadType = a})

-- | Multipart request metadata.
osipPayload :: Lens' OrganizationsSetIAMPolicy' SetIAMPolicyRequest
osipPayload
  = lens _osipPayload (\ s a -> s{_osipPayload = a})

-- | OAuth bearer token.
osipBearerToken :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipBearerToken
  = lens _osipBearerToken
      (\ s a -> s{_osipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osipKey :: Lens' OrganizationsSetIAMPolicy' (Maybe Key)
osipKey = lens _osipKey (\ s a -> s{_osipKey = a})

-- | REQUIRED: The resource for which policy is being specified. \`resource\`
-- is usually specified as a path, such as,
-- \`projects\/{project}\/zones\/{zone}\/disks\/{disk}\`.
osipResource :: Lens' OrganizationsSetIAMPolicy' Text
osipResource
  = lens _osipResource (\ s a -> s{_osipResource = a})

-- | OAuth 2.0 token for the current user.
osipOAuthToken :: Lens' OrganizationsSetIAMPolicy' (Maybe OAuthToken)
osipOAuthToken
  = lens _osipOAuthToken
      (\ s a -> s{_osipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
osipFields :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipFields
  = lens _osipFields (\ s a -> s{_osipFields = a})

-- | JSONP
osipCallback :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipCallback
  = lens _osipCallback (\ s a -> s{_osipCallback = a})

instance GoogleAuth OrganizationsSetIAMPolicy' where
        authKey = osipKey . _Just
        authToken = osipOAuthToken . _Just

instance GoogleRequest OrganizationsSetIAMPolicy'
         where
        type Rs OrganizationsSetIAMPolicy' = Policy
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u OrganizationsSetIAMPolicy'{..}
          = go _osipResource _osipXgafv _osipUploadProtocol
              (Just _osipPp)
              _osipAccessToken
              _osipUploadType
              _osipBearerToken
              _osipCallback
              _osipQuotaUser
              (Just _osipPrettyPrint)
              _osipFields
              _osipKey
              _osipOAuthToken
              (Just AltJSON)
              _osipPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrganizationsSetIAMPolicyResource)
                      r
                      u
