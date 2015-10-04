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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Fetches an Organization resource by id.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsGet@.
module Network.Google.Resource.CloudResourceManager.Organizations.Get
    (
    -- * REST Resource
      OrganizationsGetResource

    -- * Creating a Request
    , organizationsGet'
    , OrganizationsGet'

    -- * Request Lenses
    , ogXgafv
    , ogQuotaUser
    , ogPrettyPrint
    , ogUploadProtocol
    , ogPp
    , ogAccessToken
    , ogUploadType
    , ogBearerToken
    , ogKey
    , ogOAuthToken
    , ogOrganizationId
    , ogFields
    , ogCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsGet@ which the
-- 'OrganizationsGet'' request conforms to.
type OrganizationsGetResource =
     "v1beta1" :>
       "organizations" :>
         Capture "organizationId" Text :>
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
                                     Get '[JSON] Organization

-- | Fetches an Organization resource by id.
--
-- /See:/ 'organizationsGet'' smart constructor.
data OrganizationsGet' = OrganizationsGet'
    { _ogXgafv          :: !(Maybe Text)
    , _ogQuotaUser      :: !(Maybe Text)
    , _ogPrettyPrint    :: !Bool
    , _ogUploadProtocol :: !(Maybe Text)
    , _ogPp             :: !Bool
    , _ogAccessToken    :: !(Maybe Text)
    , _ogUploadType     :: !(Maybe Text)
    , _ogBearerToken    :: !(Maybe Text)
    , _ogKey            :: !(Maybe Key)
    , _ogOAuthToken     :: !(Maybe OAuthToken)
    , _ogOrganizationId :: !Text
    , _ogFields         :: !(Maybe Text)
    , _ogCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogXgafv'
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUploadProtocol'
--
-- * 'ogPp'
--
-- * 'ogAccessToken'
--
-- * 'ogUploadType'
--
-- * 'ogBearerToken'
--
-- * 'ogKey'
--
-- * 'ogOAuthToken'
--
-- * 'ogOrganizationId'
--
-- * 'ogFields'
--
-- * 'ogCallback'
organizationsGet'
    :: Text -- ^ 'organizationId'
    -> OrganizationsGet'
organizationsGet' pOgOrganizationId_ =
    OrganizationsGet'
    { _ogXgafv = Nothing
    , _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUploadProtocol = Nothing
    , _ogPp = True
    , _ogAccessToken = Nothing
    , _ogUploadType = Nothing
    , _ogBearerToken = Nothing
    , _ogKey = Nothing
    , _ogOAuthToken = Nothing
    , _ogOrganizationId = pOgOrganizationId_
    , _ogFields = Nothing
    , _ogCallback = Nothing
    }

-- | V1 error format.
ogXgafv :: Lens' OrganizationsGet' (Maybe Text)
ogXgafv = lens _ogXgafv (\ s a -> s{_ogXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ogQuotaUser :: Lens' OrganizationsGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OrganizationsGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogUploadProtocol :: Lens' OrganizationsGet' (Maybe Text)
ogUploadProtocol
  = lens _ogUploadProtocol
      (\ s a -> s{_ogUploadProtocol = a})

-- | Pretty-print response.
ogPp :: Lens' OrganizationsGet' Bool
ogPp = lens _ogPp (\ s a -> s{_ogPp = a})

-- | OAuth access token.
ogAccessToken :: Lens' OrganizationsGet' (Maybe Text)
ogAccessToken
  = lens _ogAccessToken
      (\ s a -> s{_ogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogUploadType :: Lens' OrganizationsGet' (Maybe Text)
ogUploadType
  = lens _ogUploadType (\ s a -> s{_ogUploadType = a})

-- | OAuth bearer token.
ogBearerToken :: Lens' OrganizationsGet' (Maybe Text)
ogBearerToken
  = lens _ogBearerToken
      (\ s a -> s{_ogBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrganizationsGet' (Maybe Key)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' OrganizationsGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | The id of the Organization resource to fetch.
ogOrganizationId :: Lens' OrganizationsGet' Text
ogOrganizationId
  = lens _ogOrganizationId
      (\ s a -> s{_ogOrganizationId = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrganizationsGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | JSONP
ogCallback :: Lens' OrganizationsGet' (Maybe Text)
ogCallback
  = lens _ogCallback (\ s a -> s{_ogCallback = a})

instance GoogleAuth OrganizationsGet' where
        authKey = ogKey . _Just
        authToken = ogOAuthToken . _Just

instance GoogleRequest OrganizationsGet' where
        type Rs OrganizationsGet' = Organization
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u OrganizationsGet'{..}
          = go _ogOrganizationId _ogXgafv _ogUploadProtocol
              (Just _ogPp)
              _ogAccessToken
              _ogUploadType
              _ogBearerToken
              _ogCallback
              _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrganizationsGetResource)
                      r
                      u
