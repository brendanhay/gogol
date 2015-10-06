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
    , cgRequestMetadataUserOverridesIPAddress
    , cgRequestMetadataTrafficSourceTrafficSubId
    , cgOAuthToken
    , cgRequestMetadataUserOverridesUserId
    , cgRequestMetadataTrafficSourceTrafficSourceId
    , cgFields
    , cgCallback
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
             QueryParam "currencyCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "address" Text :>
                           QueryParam "requestMetadata.partnersSessionId" Text
                             :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "requestMetadata.locale" Text :>
                                 QueryParam "view" Text :>
                                   QueryParams "requestMetadata.experimentIds"
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
                                         QueryParam
                                           "requestMetadata.userOverrides.userId"
                                           Text
                                           :>
                                           QueryParam
                                             "requestMetadata.trafficSource.trafficSourceId"
                                             Text
                                             :>
                                             QueryParam "callback" Text :>
                                               QueryParam "quotaUser" Text :>
                                                 QueryParam "prettyPrint" Bool
                                                   :>
                                                   QueryParam "fields" Text :>
                                                     QueryParam "key" AuthKey :>
                                                       QueryParam "oauth_token"
                                                         OAuthToken
                                                         :>
                                                         QueryParam "alt"
                                                           AltJSON
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
    , _cgKey                                         :: !(Maybe AuthKey)
    , _cgRequestMetadataLocale                       :: !(Maybe Text)
    , _cgView                                        :: !(Maybe Text)
    , _cgRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _cgRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _cgRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _cgOAuthToken                                  :: !(Maybe OAuthToken)
    , _cgRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _cgRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _cgFields                                      :: !(Maybe Text)
    , _cgCallback                                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cgRequestMetadataUserOverridesIPAddress'
--
-- * 'cgRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'cgOAuthToken'
--
-- * 'cgRequestMetadataUserOverridesUserId'
--
-- * 'cgRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'cgFields'
--
-- * 'cgCallback'
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
    , _cgRequestMetadataUserOverridesIPAddress = Nothing
    , _cgRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _cgOAuthToken = Nothing
    , _cgRequestMetadataUserOverridesUserId = Nothing
    , _cgRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _cgFields = Nothing
    , _cgCallback = Nothing
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
cgKey :: Lens' CompaniesGet' (Maybe AuthKey)
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
cgRequestMetadataExperimentIds :: Lens' CompaniesGet' [Text]
cgRequestMetadataExperimentIds
  = lens _cgRequestMetadataExperimentIds
      (\ s a -> s{_cgRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
cgRequestMetadataUserOverridesIPAddress :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataUserOverridesIPAddress
  = lens _cgRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_cgRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
cgRequestMetadataTrafficSourceTrafficSubId :: Lens' CompaniesGet' (Maybe Text)
cgRequestMetadataTrafficSourceTrafficSubId
  = lens _cgRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_cgRequestMetadataTrafficSourceTrafficSubId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CompaniesGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

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

instance GoogleAuth CompaniesGet' where
        _AuthKey = cgKey . _Just
        _AuthToken = cgOAuthToken . _Just

instance GoogleRequest CompaniesGet' where
        type Rs CompaniesGet' = GetCompanyResponse
        request = requestWith partnersRequest
        requestWith rq CompaniesGet'{..}
          = go _cgCompanyId _cgXgafv _cgCurrencyCode
              _cgUploadProtocol
              _cgOrderBy
              (Just _cgPp)
              _cgAccessToken
              _cgUploadType
              _cgAddress
              _cgRequestMetadataPartnersSessionId
              _cgBearerToken
              _cgRequestMetadataLocale
              _cgView
              (_cgRequestMetadataExperimentIds ^. _Default)
              _cgRequestMetadataUserOverridesIPAddress
              _cgRequestMetadataTrafficSourceTrafficSubId
              _cgRequestMetadataUserOverridesUserId
              _cgRequestMetadataTrafficSourceTrafficSourceId
              _cgCallback
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CompaniesGetResource)
                      rq
