{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Cloudresourcemanager.Organizations.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudresourcemanagerOrganizationsSetIAMPolicy@.
module Cloudresourcemanager.Organizations.SetIAMPolicy
    (
    -- * REST Resource
      OrganizationsSetIAMPolicyAPI

    -- * Creating a Request
    , organizationsSetIAMPolicy
    , OrganizationsSetIAMPolicy

    -- * Request Lenses
    , osipXgafv
    , osipQuotaUser
    , osipPrettyPrint
    , osipUploadProtocol
    , osipPp
    , osipAccessToken
    , osipUploadType
    , osipBearerToken
    , osipKey
    , osipResource
    , osipOauthToken
    , osipFields
    , osipCallback
    , osipAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudresourcemanagerOrganizationsSetIAMPolicy@ which the
-- 'OrganizationsSetIAMPolicy' request conforms to.
type OrganizationsSetIAMPolicyAPI =
     "v1beta1" :>
       "organizations" :>
         "{resource}:setIamPolicy" :> Post '[JSON] Policy

-- | Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
--
-- /See:/ 'organizationsSetIAMPolicy' smart constructor.
data OrganizationsSetIAMPolicy = OrganizationsSetIAMPolicy
    { _osipXgafv          :: !(Maybe Text)
    , _osipQuotaUser      :: !(Maybe Text)
    , _osipPrettyPrint    :: !Bool
    , _osipUploadProtocol :: !(Maybe Text)
    , _osipPp             :: !Bool
    , _osipAccessToken    :: !(Maybe Text)
    , _osipUploadType     :: !(Maybe Text)
    , _osipBearerToken    :: !(Maybe Text)
    , _osipKey            :: !(Maybe Text)
    , _osipResource       :: !Text
    , _osipOauthToken     :: !(Maybe Text)
    , _osipFields         :: !(Maybe Text)
    , _osipCallback       :: !(Maybe Text)
    , _osipAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'osipBearerToken'
--
-- * 'osipKey'
--
-- * 'osipResource'
--
-- * 'osipOauthToken'
--
-- * 'osipFields'
--
-- * 'osipCallback'
--
-- * 'osipAlt'
organizationsSetIAMPolicy
    :: Text -- ^ 'resource'
    -> OrganizationsSetIAMPolicy
organizationsSetIAMPolicy pOsipResource_ =
    OrganizationsSetIAMPolicy
    { _osipXgafv = Nothing
    , _osipQuotaUser = Nothing
    , _osipPrettyPrint = True
    , _osipUploadProtocol = Nothing
    , _osipPp = True
    , _osipAccessToken = Nothing
    , _osipUploadType = Nothing
    , _osipBearerToken = Nothing
    , _osipKey = Nothing
    , _osipResource = pOsipResource_
    , _osipOauthToken = Nothing
    , _osipFields = Nothing
    , _osipCallback = Nothing
    , _osipAlt = "json"
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

-- | OAuth bearer token.
osipBearerToken :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipBearerToken
  = lens _osipBearerToken
      (\ s a -> s{_osipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osipKey :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipKey = lens _osipKey (\ s a -> s{_osipKey = a})

-- | REQUIRED: The resource for which policy is being specified. \`resource\`
-- is usually specified as a path, such as,
-- \`projects\/{project}\/zones\/{zone}\/disks\/{disk}\`.
osipResource :: Lens' OrganizationsSetIAMPolicy' Text
osipResource
  = lens _osipResource (\ s a -> s{_osipResource = a})

-- | OAuth 2.0 token for the current user.
osipOauthToken :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipOauthToken
  = lens _osipOauthToken
      (\ s a -> s{_osipOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
osipFields :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipFields
  = lens _osipFields (\ s a -> s{_osipFields = a})

-- | JSONP
osipCallback :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipCallback
  = lens _osipCallback (\ s a -> s{_osipCallback = a})

-- | Data format for response.
osipAlt :: Lens' OrganizationsSetIAMPolicy' Text
osipAlt = lens _osipAlt (\ s a -> s{_osipAlt = a})

instance GoogleRequest OrganizationsSetIAMPolicy'
         where
        type Rs OrganizationsSetIAMPolicy' = Policy
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u OrganizationsSetIAMPolicy{..}
          = go _osipXgafv _osipQuotaUser _osipPrettyPrint
              _osipUploadProtocol
              _osipPp
              _osipAccessToken
              _osipUploadType
              _osipBearerToken
              _osipKey
              _osipResource
              _osipOauthToken
              _osipFields
              _osipCallback
              _osipAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrganizationsSetIAMPolicyAPI)
                      r
                      u
