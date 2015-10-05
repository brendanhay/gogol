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
    , clcPayload
    , clcBearerToken
    , clcKey
    , clcOAuthToken
    , clcFields
    , clcCallback
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
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] CreateLeadRequest :>
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
    , _clcPayload        :: !CreateLeadRequest
    , _clcBearerToken    :: !(Maybe Text)
    , _clcKey            :: !(Maybe AuthKey)
    , _clcOAuthToken     :: !(Maybe OAuthToken)
    , _clcFields         :: !(Maybe Text)
    , _clcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'clcPayload'
--
-- * 'clcBearerToken'
--
-- * 'clcKey'
--
-- * 'clcOAuthToken'
--
-- * 'clcFields'
--
-- * 'clcCallback'
companiesLeadsCreate'
    :: Text -- ^ 'companyId'
    -> CreateLeadRequest -- ^ 'payload'
    -> CompaniesLeadsCreate'
companiesLeadsCreate' pClcCompanyId_ pClcPayload_ =
    CompaniesLeadsCreate'
    { _clcXgafv = Nothing
    , _clcQuotaUser = Nothing
    , _clcPrettyPrint = True
    , _clcUploadProtocol = Nothing
    , _clcCompanyId = pClcCompanyId_
    , _clcPp = True
    , _clcAccessToken = Nothing
    , _clcUploadType = Nothing
    , _clcPayload = pClcPayload_
    , _clcBearerToken = Nothing
    , _clcKey = Nothing
    , _clcOAuthToken = Nothing
    , _clcFields = Nothing
    , _clcCallback = Nothing
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

-- | Multipart request metadata.
clcPayload :: Lens' CompaniesLeadsCreate' CreateLeadRequest
clcPayload
  = lens _clcPayload (\ s a -> s{_clcPayload = a})

-- | OAuth bearer token.
clcBearerToken :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcBearerToken
  = lens _clcBearerToken
      (\ s a -> s{_clcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clcKey :: Lens' CompaniesLeadsCreate' (Maybe AuthKey)
clcKey = lens _clcKey (\ s a -> s{_clcKey = a})

-- | OAuth 2.0 token for the current user.
clcOAuthToken :: Lens' CompaniesLeadsCreate' (Maybe OAuthToken)
clcOAuthToken
  = lens _clcOAuthToken
      (\ s a -> s{_clcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clcFields :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcFields
  = lens _clcFields (\ s a -> s{_clcFields = a})

-- | JSONP
clcCallback :: Lens' CompaniesLeadsCreate' (Maybe Text)
clcCallback
  = lens _clcCallback (\ s a -> s{_clcCallback = a})

instance GoogleAuth CompaniesLeadsCreate' where
        authKey = clcKey . _Just
        authToken = clcOAuthToken . _Just

instance GoogleRequest CompaniesLeadsCreate' where
        type Rs CompaniesLeadsCreate' = CreateLeadResponse
        request = requestWithRoute defReq partnersURL
        requestWithRoute r u CompaniesLeadsCreate'{..}
          = go _clcCompanyId _clcXgafv _clcUploadProtocol
              (Just _clcPp)
              _clcAccessToken
              _clcUploadType
              _clcBearerToken
              _clcCallback
              _clcQuotaUser
              (Just _clcPrettyPrint)
              _clcFields
              _clcKey
              _clcOAuthToken
              (Just AltJSON)
              _clcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CompaniesLeadsCreateResource)
                      r
                      u
