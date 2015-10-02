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
-- Module      : Network.Google.Resource.CloudBilling.Projects.GetBillingInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the billing information for a project. The current authenticated
-- user must have [permission to view the
-- project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @CloudBillingProjectsGetBillingInfo@.
module Network.Google.Resource.CloudBilling.Projects.GetBillingInfo
    (
    -- * REST Resource
      ProjectsGetBillingInfoResource

    -- * Creating a Request
    , projectsGetBillingInfo'
    , ProjectsGetBillingInfo'

    -- * Request Lenses
    , pgbiXgafv
    , pgbiQuotaUser
    , pgbiPrettyPrint
    , pgbiUploadProtocol
    , pgbiPp
    , pgbiAccessToken
    , pgbiUploadType
    , pgbiBearerToken
    , pgbiKey
    , pgbiName
    , pgbiOAuthToken
    , pgbiFields
    , pgbiCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudBillingProjectsGetBillingInfo@ which the
-- 'ProjectsGetBillingInfo'' request conforms to.
type ProjectsGetBillingInfoResource =
     "v1" :>
       "{+name}" :>
         "billingInfo" :>
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
                                     Get '[JSON] ProjectBillingInfo

-- | Gets the billing information for a project. The current authenticated
-- user must have [permission to view the
-- project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ).
--
-- /See:/ 'projectsGetBillingInfo'' smart constructor.
data ProjectsGetBillingInfo' = ProjectsGetBillingInfo'
    { _pgbiXgafv          :: !(Maybe Text)
    , _pgbiQuotaUser      :: !(Maybe Text)
    , _pgbiPrettyPrint    :: !Bool
    , _pgbiUploadProtocol :: !(Maybe Text)
    , _pgbiPp             :: !Bool
    , _pgbiAccessToken    :: !(Maybe Text)
    , _pgbiUploadType     :: !(Maybe Text)
    , _pgbiBearerToken    :: !(Maybe Text)
    , _pgbiKey            :: !(Maybe Key)
    , _pgbiName           :: !Text
    , _pgbiOAuthToken     :: !(Maybe OAuthToken)
    , _pgbiFields         :: !(Maybe Text)
    , _pgbiCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetBillingInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbiXgafv'
--
-- * 'pgbiQuotaUser'
--
-- * 'pgbiPrettyPrint'
--
-- * 'pgbiUploadProtocol'
--
-- * 'pgbiPp'
--
-- * 'pgbiAccessToken'
--
-- * 'pgbiUploadType'
--
-- * 'pgbiBearerToken'
--
-- * 'pgbiKey'
--
-- * 'pgbiName'
--
-- * 'pgbiOAuthToken'
--
-- * 'pgbiFields'
--
-- * 'pgbiCallback'
projectsGetBillingInfo'
    :: Text -- ^ 'name'
    -> ProjectsGetBillingInfo'
projectsGetBillingInfo' pPgbiName_ =
    ProjectsGetBillingInfo'
    { _pgbiXgafv = Nothing
    , _pgbiQuotaUser = Nothing
    , _pgbiPrettyPrint = True
    , _pgbiUploadProtocol = Nothing
    , _pgbiPp = True
    , _pgbiAccessToken = Nothing
    , _pgbiUploadType = Nothing
    , _pgbiBearerToken = Nothing
    , _pgbiKey = Nothing
    , _pgbiName = pPgbiName_
    , _pgbiOAuthToken = Nothing
    , _pgbiFields = Nothing
    , _pgbiCallback = Nothing
    }

-- | V1 error format.
pgbiXgafv :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiXgafv
  = lens _pgbiXgafv (\ s a -> s{_pgbiXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pgbiQuotaUser :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiQuotaUser
  = lens _pgbiQuotaUser
      (\ s a -> s{_pgbiQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgbiPrettyPrint :: Lens' ProjectsGetBillingInfo' Bool
pgbiPrettyPrint
  = lens _pgbiPrettyPrint
      (\ s a -> s{_pgbiPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgbiUploadProtocol :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiUploadProtocol
  = lens _pgbiUploadProtocol
      (\ s a -> s{_pgbiUploadProtocol = a})

-- | Pretty-print response.
pgbiPp :: Lens' ProjectsGetBillingInfo' Bool
pgbiPp = lens _pgbiPp (\ s a -> s{_pgbiPp = a})

-- | OAuth access token.
pgbiAccessToken :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiAccessToken
  = lens _pgbiAccessToken
      (\ s a -> s{_pgbiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgbiUploadType :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiUploadType
  = lens _pgbiUploadType
      (\ s a -> s{_pgbiUploadType = a})

-- | OAuth bearer token.
pgbiBearerToken :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiBearerToken
  = lens _pgbiBearerToken
      (\ s a -> s{_pgbiBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgbiKey :: Lens' ProjectsGetBillingInfo' (Maybe Key)
pgbiKey = lens _pgbiKey (\ s a -> s{_pgbiKey = a})

-- | The resource name of the project for which billing information is
-- retrieved. For example, \`projects\/tokyo-rain-123\`.
pgbiName :: Lens' ProjectsGetBillingInfo' Text
pgbiName = lens _pgbiName (\ s a -> s{_pgbiName = a})

-- | OAuth 2.0 token for the current user.
pgbiOAuthToken :: Lens' ProjectsGetBillingInfo' (Maybe OAuthToken)
pgbiOAuthToken
  = lens _pgbiOAuthToken
      (\ s a -> s{_pgbiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgbiFields :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiFields
  = lens _pgbiFields (\ s a -> s{_pgbiFields = a})

-- | JSONP
pgbiCallback :: Lens' ProjectsGetBillingInfo' (Maybe Text)
pgbiCallback
  = lens _pgbiCallback (\ s a -> s{_pgbiCallback = a})

instance GoogleAuth ProjectsGetBillingInfo' where
        authKey = pgbiKey . _Just
        authToken = pgbiOAuthToken . _Just

instance GoogleRequest ProjectsGetBillingInfo' where
        type Rs ProjectsGetBillingInfo' = ProjectBillingInfo
        request = requestWithRoute defReq billingURL
        requestWithRoute r u ProjectsGetBillingInfo'{..}
          = go _pgbiXgafv _pgbiQuotaUser
              (Just _pgbiPrettyPrint)
              _pgbiUploadProtocol
              (Just _pgbiPp)
              _pgbiAccessToken
              _pgbiUploadType
              _pgbiBearerToken
              _pgbiKey
              _pgbiName
              _pgbiOAuthToken
              _pgbiFields
              _pgbiCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsGetBillingInfoResource)
                      r
                      u
