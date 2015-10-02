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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns permissions that a caller has on the specified Organization.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsTestIAMPermissions@.
module Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
    (
    -- * REST Resource
      OrganizationsTestIAMPermissionsResource

    -- * Creating a Request
    , organizationsTestIAMPermissions'
    , OrganizationsTestIAMPermissions'

    -- * Request Lenses
    , otipXgafv
    , otipQuotaUser
    , otipPrettyPrint
    , otipUploadProtocol
    , otipPp
    , otipAccessToken
    , otipUploadType
    , otipBearerToken
    , otipKey
    , otipResource
    , otipTestIAMPermissionsRequest
    , otipOAuthToken
    , otipFields
    , otipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsTestIAMPermissions@ which the
-- 'OrganizationsTestIAMPermissions'' request conforms to.
type OrganizationsTestIAMPermissionsResource =
     "v1beta1" :>
       "organizations" :>
         "{resource}:testIamPermissions" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "access_token" Text :>
               QueryParam "bearer_token" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "uploadType" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] TestIAMPermissionsRequest
                                       :>
                                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified Organization.
--
-- /See:/ 'organizationsTestIAMPermissions'' smart constructor.
data OrganizationsTestIAMPermissions' = OrganizationsTestIAMPermissions'
    { _otipXgafv                     :: !(Maybe Text)
    , _otipQuotaUser                 :: !(Maybe Text)
    , _otipPrettyPrint               :: !Bool
    , _otipUploadProtocol            :: !(Maybe Text)
    , _otipPp                        :: !Bool
    , _otipAccessToken               :: !(Maybe Text)
    , _otipUploadType                :: !(Maybe Text)
    , _otipBearerToken               :: !(Maybe Text)
    , _otipKey                       :: !(Maybe Key)
    , _otipResource                  :: !Text
    , _otipTestIAMPermissionsRequest :: !TestIAMPermissionsRequest
    , _otipOAuthToken                :: !(Maybe OAuthToken)
    , _otipFields                    :: !(Maybe Text)
    , _otipCallback                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsTestIAMPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otipXgafv'
--
-- * 'otipQuotaUser'
--
-- * 'otipPrettyPrint'
--
-- * 'otipUploadProtocol'
--
-- * 'otipPp'
--
-- * 'otipAccessToken'
--
-- * 'otipUploadType'
--
-- * 'otipBearerToken'
--
-- * 'otipKey'
--
-- * 'otipResource'
--
-- * 'otipTestIAMPermissionsRequest'
--
-- * 'otipOAuthToken'
--
-- * 'otipFields'
--
-- * 'otipCallback'
organizationsTestIAMPermissions'
    :: Text -- ^ 'resource'
    -> TestIAMPermissionsRequest -- ^ 'TestIAMPermissionsRequest'
    -> OrganizationsTestIAMPermissions'
organizationsTestIAMPermissions' pOtipResource_ pOtipTestIAMPermissionsRequest_ =
    OrganizationsTestIAMPermissions'
    { _otipXgafv = Nothing
    , _otipQuotaUser = Nothing
    , _otipPrettyPrint = True
    , _otipUploadProtocol = Nothing
    , _otipPp = True
    , _otipAccessToken = Nothing
    , _otipUploadType = Nothing
    , _otipBearerToken = Nothing
    , _otipKey = Nothing
    , _otipResource = pOtipResource_
    , _otipTestIAMPermissionsRequest = pOtipTestIAMPermissionsRequest_
    , _otipOAuthToken = Nothing
    , _otipFields = Nothing
    , _otipCallback = Nothing
    }

-- | V1 error format.
otipXgafv :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipXgafv
  = lens _otipXgafv (\ s a -> s{_otipXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
otipQuotaUser :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipQuotaUser
  = lens _otipQuotaUser
      (\ s a -> s{_otipQuotaUser = a})

-- | Returns response with indentations and line breaks.
otipPrettyPrint :: Lens' OrganizationsTestIAMPermissions' Bool
otipPrettyPrint
  = lens _otipPrettyPrint
      (\ s a -> s{_otipPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
otipUploadProtocol :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipUploadProtocol
  = lens _otipUploadProtocol
      (\ s a -> s{_otipUploadProtocol = a})

-- | Pretty-print response.
otipPp :: Lens' OrganizationsTestIAMPermissions' Bool
otipPp = lens _otipPp (\ s a -> s{_otipPp = a})

-- | OAuth access token.
otipAccessToken :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipAccessToken
  = lens _otipAccessToken
      (\ s a -> s{_otipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
otipUploadType :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipUploadType
  = lens _otipUploadType
      (\ s a -> s{_otipUploadType = a})

-- | OAuth bearer token.
otipBearerToken :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipBearerToken
  = lens _otipBearerToken
      (\ s a -> s{_otipBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
otipKey :: Lens' OrganizationsTestIAMPermissions' (Maybe Key)
otipKey = lens _otipKey (\ s a -> s{_otipKey = a})

-- | REQUIRED: The resource for which policy detail is being requested.
-- \`resource\` is usually specified as a path, such as,
-- \`projects\/{project}\`.
otipResource :: Lens' OrganizationsTestIAMPermissions' Text
otipResource
  = lens _otipResource (\ s a -> s{_otipResource = a})

-- | Multipart request metadata.
otipTestIAMPermissionsRequest :: Lens' OrganizationsTestIAMPermissions' TestIAMPermissionsRequest
otipTestIAMPermissionsRequest
  = lens _otipTestIAMPermissionsRequest
      (\ s a -> s{_otipTestIAMPermissionsRequest = a})

-- | OAuth 2.0 token for the current user.
otipOAuthToken :: Lens' OrganizationsTestIAMPermissions' (Maybe OAuthToken)
otipOAuthToken
  = lens _otipOAuthToken
      (\ s a -> s{_otipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
otipFields :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipFields
  = lens _otipFields (\ s a -> s{_otipFields = a})

-- | JSONP
otipCallback :: Lens' OrganizationsTestIAMPermissions' (Maybe Text)
otipCallback
  = lens _otipCallback (\ s a -> s{_otipCallback = a})

instance GoogleAuth OrganizationsTestIAMPermissions'
         where
        authKey = otipKey . _Just
        authToken = otipOAuthToken . _Just

instance GoogleRequest
         OrganizationsTestIAMPermissions' where
        type Rs OrganizationsTestIAMPermissions' =
             TestIAMPermissionsResponse
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u
          OrganizationsTestIAMPermissions'{..}
          = go _otipXgafv _otipAccessToken _otipBearerToken
              _otipCallback
              (Just _otipPp)
              _otipUploadType
              _otipUploadProtocol
              _otipResource
              _otipQuotaUser
              (Just _otipPrettyPrint)
              _otipFields
              _otipKey
              _otipOAuthToken
              (Just AltJSON)
              _otipTestIAMPermissionsRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy OrganizationsTestIAMPermissionsResource)
                      r
                      u
