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
-- Module      : Network.Google.Resource.Partners.Companies.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a company.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @PartnersCompaniesGet@.
module Network.Google.Resource.Partners.Companies.Get
    (
    -- * REST Resource
      CompaniesGetResource

    -- * Creating a Request
    , companiesGet'
    , CompaniesGet'

    -- * Request Lenses
    , cgXgafv
    , cgQuotaUser
    , cgPrettyPrint
    , cgCurrencyCode
    , cgUploadProtocol
    , cgCompanyId
    , cgOrderBy
    , cgPp
    , cgAccessToken
    , cgUploadType
    , cgAddress
    , cgRequestMetadataPartnersSessionId
    , cgBearerToken
    , cgKey
    , cgRequestMetadataLocale
    , cgView
    , cgRequestMetadataExperimentIds
    , cgRequestMetadataUserOverridesIpAddress
    , cgRequestMetadataTrafficSourceTrafficSubId
    , cgOauthToken
    , cgRequestMetadataUserOverridesUserId
    , cgRequestMetadataTrafficSourceTrafficSourceId
    , cgFields
    , cgCallback
    , cgAlt
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @PartnersCompaniesGet@ which the
-- 'CompaniesGet'' request conforms to.
type CompaniesGetResource =
     "v2" :>
       "companies" :>
         Capture "companyId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "currencyCode" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "orderBy" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "address" Text :>
                               QueryParam "requestMetadata.partnersSessionId"
                                 Text
                                 :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "key" Text :>
                                     QueryParam "requestMetadata.locale" Text :>
                                       QueryParam "view" Text :>
                                         QueryParams
                                           "requestMetadata.experimentIds"
                                           Text
                                           :>
                                           QueryParam
                                             "requestMetadata.userOverrides.ipAddress"
                                             Text
                                             :>
                                             QueryParam
                                               "requestMetadata.trafficSource.trafficSubId"
                                               Text
                                               :>
                                               QueryParam "oauth_token" Text :>
                                                 QueryParam
                                                   "requestMetadata.userOverrides.userId"
                                                   Text
                                                   :>
                                                   QueryParam
                                                     "requestMetadata.trafficSource.trafficSourceId"
                                                     Text
                                                     :>
                                                     QueryParam "fields" Text :>
                                                       QueryParam "callback"
                                                         Text
                                                         :>
                                                         QueryParam "alt" Text
                                                           :>
                                                           Get '[JSON]
                                                             GetCompanyResponse

-- | Gets a company.
--
-- /See:/ 'companiesGet'' smart constructor.
data CompaniesGet' = CompaniesGet'
    { _cgXgafv                                       :: !(Maybe Text)
    , _cgQuotaUser                                   :: !(Maybe Text)
    , _cgPrettyPrint                                 :: !Bool
    , _cgCurrencyCode                                :: !(Maybe Text)
    , _cgUploadProtocol                              :: !(Maybe Text)
    , _cgCompanyId                                   :: !Text
    , _cgOrderBy                                     :: !(Maybe Text)
    , _cgPp                                          :: !Bool
    , _cgAccessToken                                 :: !(Maybe Text)
    , _cgUploadType                                  :: !(Maybe Text)
    , _cgAddress                                     :: !(Maybe Text)
    , _cgRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _cgBearerToken                                 :: !(Maybe Text)
    , _cgKey                                         :: !(Maybe Text)
    , _cgRequestMetadataLocale                       :: !(Maybe Text)
    , _cgView                                        :: !(Maybe Text)
    , _cgRequestMetadataExperimentIds                :: !(Maybe Text)
    , _cgRequestMetadataUserOverridesIpAddress       :: !(Maybe Text)
    , _cgRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _cgOauthToken                                  :: !(Maybe Text)
    , _cgRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _cgRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _cgFields                                      :: !(Maybe Text)
    , _cgCallback                                    :: !(Maybe Text)
    , _cgAlt                                         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompaniesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgCurrencyCode'
--
-- * 'cgUploadProtocol'
--
-- * 'cgCompanyId'
--
-- * 'cgOrderBy'
--
-- * 'cgPp'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgAddress'
--
-- * 'cgRequestMetadataPartnersSessionId'
--
-- * 'cgBearerToken'
--
-- * 'cgKey'
--
-- * 'cgRequestMetadataLocale'
--
-- * 'cgView'
--
-- * 'cgRequestMetadataExperimentIds'
--
-- * 'cgRequestMetadataUserOverridesIpAddress'
--
-- * 'cgRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'cgOauthToken'
--
-- * 'cgRequestMetadataUserOverridesUserId'
--
-- * 'cgRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'cgFields'
--
-- * 'cgCallback'
--
-- * 'cgAlt'
companiesGet'
    :: Text -- ^ 'companyId'
    -> CompaniesGet'
companiesGet' pCgCompanyId_ =
    CompaniesGet'
    { _cgXgafv = Nothing
    , _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgCurrencyCode = Nothing
    , _cgUploadProtocol = Nothing
    , _cgCompanyId = pCgCompanyId_
    , _cgOrderBy = Nothing
    , _cgPp = True
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgAddress = Nothing
    , _cgRequestMetadataPartnersSessionId = Nothing
    , _cgBearerToken = Nothing
    , _cgKey = Nothing
    , _cgRequestMetadataLocale = Nothing
    , _cgView = Nothing
    , _cgRequestMetadataExperimentIds = Nothing
    , _cgRequestMetadataUserOverridesIpAddress = Nothing
    , _cgRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _cgOauthToken = Nothing
    , _cgRequestMetadataUserOverridesUserId = Nothing
    , _cgRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _cgFields = Nothing
    , _cgCallback = Nothing
    , _cgAlt = "json"
    }

-- | V1 error format.
cgXgafv :: Lens' CompaniesGet' (Maybe Text)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cgQuotaUser :: Lens' CompaniesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CompaniesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | If the company\'s budget is in a different currency code than this one,
-- then the converted budget is converted to this currency code.
cgCurrencyCode :: Lens' CompaniesGet' (Maybe Text)
cgCurrencyCode
  = lens _cgCurrencyCode
      (\ s a -> s{_cgCurrencyCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CompaniesGet' (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | The ID of the company to retrieve.
cgCompanyId :: Lens' CompaniesGet' Text
cgCompanyId
  = lens _cgCompanyId (\ s a -> s{_cgCompanyId = a})

-- | How to order addresses within the returned company. Currently, only
-- \`address\` and \`address desc\` is supported which will sorted by
-- closest to farthest in distance from given address and farthest to
-- closest distance from given address respectively.
cgOrderBy :: Lens' CompaniesGet' (Maybe Text)
cgOrderBy
  = lens _cgOrderBy (\ s a -> s{_cgOrderBy = a})

-- | Pretty-print response.
cgPp :: Lens' CompaniesGet' Bool
cgPp = lens _cgPp (\ s a -> s{_cgPp = a})

-- | OAuth access token.
cgAccessToken :: Lens' CompaniesGet' (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CompaniesGet' (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | The address to use for sorting the company\'s addresses by proximity. If
-- not given, the geo-located address of the request is used. Used when
-- order_by is set.
cgAddress :: Lens' CompaniesGet' (Maybe Text)
cgAddress
  = lens _cgAddress (\ s a -> s{_cgAddress = a})

-- | Google Partners session ID.
cgRequestMetadataPartnersSessionId :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataPartnersSessionId
  = lens _cgRequestMetadataPartnersSessionId
      (\ s a -> s{_cgRequestMetadataPartnersSessionId = a})

-- | OAuth bearer token.
cgBearerToken :: Lens' CompaniesGet' (Maybe Text)
cgBearerToken
  = lens _cgBearerToken
      (\ s a -> s{_cgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CompaniesGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | Locale to use for the current request.
cgRequestMetadataLocale :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataLocale
  = lens _cgRequestMetadataLocale
      (\ s a -> s{_cgRequestMetadataLocale = a})

-- | The view of \`Company\` resource to be returned. This must not be
-- \`COMPANY_VIEW_UNSPECIFIED\`.
cgView :: Lens' CompaniesGet' (Maybe Text)
cgView = lens _cgView (\ s a -> s{_cgView = a})

-- | Experiment IDs the current request belongs to.
cgRequestMetadataExperimentIds :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataExperimentIds
  = lens _cgRequestMetadataExperimentIds
      (\ s a -> s{_cgRequestMetadataExperimentIds = a})

-- | IP address to use instead of the user\'s geo-located IP address.
cgRequestMetadataUserOverridesIpAddress :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataUserOverridesIpAddress
  = lens _cgRequestMetadataUserOverridesIpAddress
      (\ s a ->
         s{_cgRequestMetadataUserOverridesIpAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
cgRequestMetadataTrafficSourceTrafficSubId :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataTrafficSourceTrafficSubId
  = lens _cgRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_cgRequestMetadataTrafficSourceTrafficSubId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CompaniesGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
cgRequestMetadataUserOverridesUserId :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataUserOverridesUserId
  = lens _cgRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_cgRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
cgRequestMetadataTrafficSourceTrafficSourceId :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataTrafficSourceTrafficSourceId
  = lens _cgRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_cgRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CompaniesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | JSONP
cgCallback :: Lens' CompaniesGet' (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

-- | Data format for response.
cgAlt :: Lens' CompaniesGet' Text
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CompaniesGet' where
        type Rs CompaniesGet' = GetCompanyResponse
        request = requestWithRoute defReq partnersURL
        requestWithRoute r u CompaniesGet'{..}
          = go _cgXgafv _cgQuotaUser (Just _cgPrettyPrint)
              _cgCurrencyCode
              _cgUploadProtocol
              _cgCompanyId
              _cgOrderBy
              (Just _cgPp)
              _cgAccessToken
              _cgUploadType
              _cgAddress
              _cgRequestMetadataPartnersSessionId
              _cgBearerToken
              _cgKey
              _cgRequestMetadataLocale
              _cgView
              _cgRequestMetadataExperimentIds
              _cgRequestMetadataUserOverridesIpAddress
              _cgRequestMetadataTrafficSourceTrafficSubId
              _cgOauthToken
              _cgRequestMetadataUserOverridesUserId
              _cgRequestMetadataTrafficSourceTrafficSourceId
              _cgFields
              _cgCallback
              (Just _cgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CompaniesGetResource)
                      r
                      u
