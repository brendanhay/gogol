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
-- Module      : Network.Google.Resource.Partners.Companies.Leads.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an advertiser lead for the given company ID.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @PartnersCompaniesLeadsCreate@.
module Network.Google.Resource.Partners.Companies.Leads.Create
    (
    -- * REST Resource
      CompaniesLeadsCreateResource

    -- * Creating a Request
    , companiesLeadsCreate'
    , CompaniesLeadsCreate'

    -- * Request Lenses
    , clcXgafv
    , clcQuotaUser
    , clcPrettyPrint
    , clcUploadProtocol
    , clcCompanyId
    , clcPp
    , clcAccessToken
    , clcUploadType
    , clcBearerToken
    , clcKey
    , clcOauthToken
    , clcFields
    , clcCallback
    , clcAlt
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @PartnersCompaniesLeadsCreate@ which the
-- 'CompaniesLeadsCreate'' request conforms to.
type CompaniesLeadsCreateResource =
     "v2" :>
       "companies" :>
         Capture "companyId" Text :>
           "leads" :>
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
                                       Post '[JSON] CreateLeadResponse

-- | Creates an advertiser lead for the given company ID.
--
-- /See:/ 'companiesLeadsCreate'' smart constructor.
data CompaniesLeadsCreate' = CompaniesLeadsCreate'
    { _clcXgafv          :: !(Maybe Text)
    , _clcQuotaUser      :: !(Maybe Text)
    , _clcPrettyPrint    :: !Bool
    , _clcUploadProtocol :: !(Maybe Text)
    , _clcCompanyId      :: !Text
    , _clcPp             :: !Bool
    , _clcAccessToken    :: !(Maybe Text)
    , _clcUploadType     :: !(Maybe Text)
    , _clcBearerToken    :: !(Maybe Text)
    , _clcKey            :: !(Maybe Text)
    , _clcOauthToken     :: !(Maybe Text)
    , _clcFields         :: !(Maybe Text)
    , _clcCallback       :: !(Maybe Text)
    , _clcAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompaniesLeadsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clcXgafv'
--
-- * 'clcQuotaUser'
--
-- * 'clcPrettyPrint'
--
-- * 'clcUploadProtocol'
--
-- * 'clcCompanyId'
--
-- * 'clcPp'
--
-- * 'clcAccessToken'
--
-- * 'clcUploadType'
--
-- * 'clcBearerToken'
--
-- * 'clcKey'
--
-- * 'clcOauthToken'
--
-- * 'clcFields'
--
-- * 'clcCallback'
--
-- * 'clcAlt'
companiesLeadsCreate'
    :: Text -- ^ 'companyId'
    -> CompaniesLeadsCreate'
companiesLeadsCreate' pClcCompanyId_ =
    CompaniesLeadsCreate'
    { _clcXgafv = Nothing
    , _clcQuotaUser = Nothing
    , _clcPrettyPrint = True
    , _clcUploadProtocol = Nothing
    , _clcCompanyId = pClcCompanyId_
    , _clcPp = True
    , _clcAccessToken = Nothing
    , _clcUploadType = Nothing
    , _clcBearerToken = Nothing
    , _clcKey = Nothing
    , _clcOauthToken = Nothing
    , _clcFields = Nothing
    , _clcCallback = Nothing
    , _clcAlt = "json"
    }

-- | V1 error format.
clcXgafv :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcXgafv = lens _clcXgafv (\ s a -> s{_clcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
clcQuotaUser :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcQuotaUser
  = lens _clcQuotaUser (\ s a -> s{_clcQuotaUser = a})

-- | Returns response with indentations and line breaks.
clcPrettyPrint :: Lens' CompaniesLeadsCreate' Bool
clcPrettyPrint
  = lens _clcPrettyPrint
      (\ s a -> s{_clcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clcUploadProtocol :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcUploadProtocol
  = lens _clcUploadProtocol
      (\ s a -> s{_clcUploadProtocol = a})

-- | The ID of the company to contact.
clcCompanyId :: Lens' CompaniesLeadsCreate' Text
clcCompanyId
  = lens _clcCompanyId (\ s a -> s{_clcCompanyId = a})

-- | Pretty-print response.
clcPp :: Lens' CompaniesLeadsCreate' Bool
clcPp = lens _clcPp (\ s a -> s{_clcPp = a})

-- | OAuth access token.
clcAccessToken :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcAccessToken
  = lens _clcAccessToken
      (\ s a -> s{_clcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clcUploadType :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcUploadType
  = lens _clcUploadType
      (\ s a -> s{_clcUploadType = a})

-- | OAuth bearer token.
clcBearerToken :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcBearerToken
  = lens _clcBearerToken
      (\ s a -> s{_clcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clcKey :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcKey = lens _clcKey (\ s a -> s{_clcKey = a})

-- | OAuth 2.0 token for the current user.
clcOauthToken :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcOauthToken
  = lens _clcOauthToken
      (\ s a -> s{_clcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clcFields :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcFields
  = lens _clcFields (\ s a -> s{_clcFields = a})

-- | JSONP
clcCallback :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcCallback
  = lens _clcCallback (\ s a -> s{_clcCallback = a})

-- | Data format for response.
clcAlt :: Lens' CompaniesLeadsCreate' Text
clcAlt = lens _clcAlt (\ s a -> s{_clcAlt = a})

instance GoogleRequest CompaniesLeadsCreate' where
        type Rs CompaniesLeadsCreate' = CreateLeadResponse
        request = requestWithRoute defReq partnersURL
        requestWithRoute r u CompaniesLeadsCreate'{..}
          = go _clcXgafv _clcQuotaUser (Just _clcPrettyPrint)
              _clcUploadProtocol
              _clcCompanyId
              (Just _clcPp)
              _clcAccessToken
              _clcUploadType
              _clcBearerToken
              _clcKey
              _clcOauthToken
              _clcFields
              _clcCallback
              (Just _clcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CompaniesLeadsCreateResource)
                      r
                      u
