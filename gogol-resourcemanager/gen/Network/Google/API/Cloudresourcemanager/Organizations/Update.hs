{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudresourcemanager.Organizations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an Organization resource.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.update@.
module Network.Google.API.Cloudresourcemanager.Organizations.Update
    (
    -- * REST Resource
      OrganizationsUpdateAPI

    -- * Creating a Request
    , organizationsUpdate'
    , OrganizationsUpdate'

    -- * Request Lenses
    , ouXgafv
    , ouQuotaUser
    , ouPrettyPrint
    , ouUploadProtocol
    , ouPp
    , ouAccessToken
    , ouUploadType
    , ouBearerToken
    , ouKey
    , ouOauthToken
    , ouOrganizationId
    , ouFields
    , ouCallback
    , ouAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for cloudresourcemanager.organizations.update which the
-- 'OrganizationsUpdate'' request conforms to.
type OrganizationsUpdateAPI =
     "v1beta1" :>
       "organizations" :>
         Capture "organizationId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :>
                                     Put '[JSON] Organization

-- | Updates an Organization resource.
--
-- /See:/ 'organizationsUpdate'' smart constructor.
data OrganizationsUpdate' = OrganizationsUpdate'
    { _ouXgafv          :: !(Maybe Text)
    , _ouQuotaUser      :: !(Maybe Text)
    , _ouPrettyPrint    :: !Bool
    , _ouUploadProtocol :: !(Maybe Text)
    , _ouPp             :: !Bool
    , _ouAccessToken    :: !(Maybe Text)
    , _ouUploadType     :: !(Maybe Text)
    , _ouBearerToken    :: !(Maybe Text)
    , _ouKey            :: !(Maybe Text)
    , _ouOauthToken     :: !(Maybe Text)
    , _ouOrganizationId :: !Text
    , _ouFields         :: !(Maybe Text)
    , _ouCallback       :: !(Maybe Text)
    , _ouAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouXgafv'
--
-- * 'ouQuotaUser'
--
-- * 'ouPrettyPrint'
--
-- * 'ouUploadProtocol'
--
-- * 'ouPp'
--
-- * 'ouAccessToken'
--
-- * 'ouUploadType'
--
-- * 'ouBearerToken'
--
-- * 'ouKey'
--
-- * 'ouOauthToken'
--
-- * 'ouOrganizationId'
--
-- * 'ouFields'
--
-- * 'ouCallback'
--
-- * 'ouAlt'
organizationsUpdate'
    :: Text -- ^ 'organizationId'
    -> OrganizationsUpdate'
organizationsUpdate' pOuOrganizationId_ =
    OrganizationsUpdate'
    { _ouXgafv = Nothing
    , _ouQuotaUser = Nothing
    , _ouPrettyPrint = True
    , _ouUploadProtocol = Nothing
    , _ouPp = True
    , _ouAccessToken = Nothing
    , _ouUploadType = Nothing
    , _ouBearerToken = Nothing
    , _ouKey = Nothing
    , _ouOauthToken = Nothing
    , _ouOrganizationId = pOuOrganizationId_
    , _ouFields = Nothing
    , _ouCallback = Nothing
    , _ouAlt = "json"
    }

-- | V1 error format.
ouXgafv :: Lens' OrganizationsUpdate' (Maybe Text)
ouXgafv = lens _ouXgafv (\ s a -> s{_ouXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ouQuotaUser :: Lens' OrganizationsUpdate' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' OrganizationsUpdate' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouUploadProtocol :: Lens' OrganizationsUpdate' (Maybe Text)
ouUploadProtocol
  = lens _ouUploadProtocol
      (\ s a -> s{_ouUploadProtocol = a})

-- | Pretty-print response.
ouPp :: Lens' OrganizationsUpdate' Bool
ouPp = lens _ouPp (\ s a -> s{_ouPp = a})

-- | OAuth access token.
ouAccessToken :: Lens' OrganizationsUpdate' (Maybe Text)
ouAccessToken
  = lens _ouAccessToken
      (\ s a -> s{_ouAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouUploadType :: Lens' OrganizationsUpdate' (Maybe Text)
ouUploadType
  = lens _ouUploadType (\ s a -> s{_ouUploadType = a})

-- | OAuth bearer token.
ouBearerToken :: Lens' OrganizationsUpdate' (Maybe Text)
ouBearerToken
  = lens _ouBearerToken
      (\ s a -> s{_ouBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' OrganizationsUpdate' (Maybe Text)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | OAuth 2.0 token for the current user.
ouOauthToken :: Lens' OrganizationsUpdate' (Maybe Text)
ouOauthToken
  = lens _ouOauthToken (\ s a -> s{_ouOauthToken = a})

-- | An immutable id for the Organization that is assigned on creation. This
-- should be omitted when creating a new Organization. This field is
-- read-only.
ouOrganizationId :: Lens' OrganizationsUpdate' Text
ouOrganizationId
  = lens _ouOrganizationId
      (\ s a -> s{_ouOrganizationId = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' OrganizationsUpdate' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

-- | JSONP
ouCallback :: Lens' OrganizationsUpdate' (Maybe Text)
ouCallback
  = lens _ouCallback (\ s a -> s{_ouCallback = a})

-- | Data format for response.
ouAlt :: Lens' OrganizationsUpdate' Text
ouAlt = lens _ouAlt (\ s a -> s{_ouAlt = a})

instance GoogleRequest OrganizationsUpdate' where
        type Rs OrganizationsUpdate' = Organization
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u OrganizationsUpdate'{..}
          = go _ouXgafv _ouQuotaUser (Just _ouPrettyPrint)
              _ouUploadProtocol
              (Just _ouPp)
              _ouAccessToken
              _ouUploadType
              _ouBearerToken
              _ouKey
              _ouOauthToken
              _ouOrganizationId
              _ouFields
              _ouCallback
              (Just _ouAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrganizationsUpdateAPI)
                      r
                      u
