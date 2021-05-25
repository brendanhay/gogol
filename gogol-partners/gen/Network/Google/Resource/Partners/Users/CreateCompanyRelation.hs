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
-- Module      : Network.Google.Resource.Partners.Users.CreateCompanyRelation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user\'s company relation. Affiliates the user to a company.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.users.createCompanyRelation@.
module Network.Google.Resource.Partners.Users.CreateCompanyRelation
    (
    -- * REST Resource
      UsersCreateCompanyRelationResource

    -- * Creating a Request
    , usersCreateCompanyRelation
    , UsersCreateCompanyRelation

    -- * Request Lenses
    , uccrXgafv
    , uccrUploadProtocol
    , uccrAccessToken
    , uccrUploadType
    , uccrPayload
    , uccrUserId
    , uccrRequestMetadataPartnersSessionId
    , uccrRequestMetadataLocale
    , uccrRequestMetadataExperimentIds
    , uccrRequestMetadataUserOverridesIPAddress
    , uccrRequestMetadataTrafficSourceTrafficSubId
    , uccrRequestMetadataUserOverridesUserId
    , uccrRequestMetadataTrafficSourceTrafficSourceId
    , uccrCallback
    ) where

import Network.Google.Partners.Types
import Network.Google.Prelude

-- | A resource alias for @partners.users.createCompanyRelation@ method which the
-- 'UsersCreateCompanyRelation' request conforms to.
type UsersCreateCompanyRelationResource =
     "v2" :>
       "users" :>
         Capture "userId" Text :>
           "companyRelation" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "requestMetadata.partnersSessionId" Text
                       :>
                       QueryParam "requestMetadata.locale" Text :>
                         QueryParams "requestMetadata.experimentIds" Text :>
                           QueryParam "requestMetadata.userOverrides.ipAddress"
                             Text
                             :>
                             QueryParam
                               "requestMetadata.trafficSource.trafficSubId"
                               Text
                               :>
                               QueryParam "requestMetadata.userOverrides.userId"
                                 Text
                                 :>
                                 QueryParam
                                   "requestMetadata.trafficSource.trafficSourceId"
                                   Text
                                   :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] CompanyRelation :>
                                         Put '[JSON] CompanyRelation

-- | Creates a user\'s company relation. Affiliates the user to a company.
--
-- /See:/ 'usersCreateCompanyRelation' smart constructor.
data UsersCreateCompanyRelation =
  UsersCreateCompanyRelation'
    { _uccrXgafv :: !(Maybe Xgafv)
    , _uccrUploadProtocol :: !(Maybe Text)
    , _uccrAccessToken :: !(Maybe Text)
    , _uccrUploadType :: !(Maybe Text)
    , _uccrPayload :: !CompanyRelation
    , _uccrUserId :: !Text
    , _uccrRequestMetadataPartnersSessionId :: !(Maybe Text)
    , _uccrRequestMetadataLocale :: !(Maybe Text)
    , _uccrRequestMetadataExperimentIds :: !(Maybe [Text])
    , _uccrRequestMetadataUserOverridesIPAddress :: !(Maybe Text)
    , _uccrRequestMetadataTrafficSourceTrafficSubId :: !(Maybe Text)
    , _uccrRequestMetadataUserOverridesUserId :: !(Maybe Text)
    , _uccrRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _uccrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersCreateCompanyRelation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccrXgafv'
--
-- * 'uccrUploadProtocol'
--
-- * 'uccrAccessToken'
--
-- * 'uccrUploadType'
--
-- * 'uccrPayload'
--
-- * 'uccrUserId'
--
-- * 'uccrRequestMetadataPartnersSessionId'
--
-- * 'uccrRequestMetadataLocale'
--
-- * 'uccrRequestMetadataExperimentIds'
--
-- * 'uccrRequestMetadataUserOverridesIPAddress'
--
-- * 'uccrRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'uccrRequestMetadataUserOverridesUserId'
--
-- * 'uccrRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'uccrCallback'
usersCreateCompanyRelation
    :: CompanyRelation -- ^ 'uccrPayload'
    -> Text -- ^ 'uccrUserId'
    -> UsersCreateCompanyRelation
usersCreateCompanyRelation pUccrPayload_ pUccrUserId_ =
  UsersCreateCompanyRelation'
    { _uccrXgafv = Nothing
    , _uccrUploadProtocol = Nothing
    , _uccrAccessToken = Nothing
    , _uccrUploadType = Nothing
    , _uccrPayload = pUccrPayload_
    , _uccrUserId = pUccrUserId_
    , _uccrRequestMetadataPartnersSessionId = Nothing
    , _uccrRequestMetadataLocale = Nothing
    , _uccrRequestMetadataExperimentIds = Nothing
    , _uccrRequestMetadataUserOverridesIPAddress = Nothing
    , _uccrRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _uccrRequestMetadataUserOverridesUserId = Nothing
    , _uccrRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _uccrCallback = Nothing
    }


-- | V1 error format.
uccrXgafv :: Lens' UsersCreateCompanyRelation (Maybe Xgafv)
uccrXgafv
  = lens _uccrXgafv (\ s a -> s{_uccrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uccrUploadProtocol :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrUploadProtocol
  = lens _uccrUploadProtocol
      (\ s a -> s{_uccrUploadProtocol = a})

-- | OAuth access token.
uccrAccessToken :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrAccessToken
  = lens _uccrAccessToken
      (\ s a -> s{_uccrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uccrUploadType :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrUploadType
  = lens _uccrUploadType
      (\ s a -> s{_uccrUploadType = a})

-- | Multipart request metadata.
uccrPayload :: Lens' UsersCreateCompanyRelation CompanyRelation
uccrPayload
  = lens _uccrPayload (\ s a -> s{_uccrPayload = a})

-- | The ID of the user. Can be set to 'me' to mean the currently
-- authenticated user.
uccrUserId :: Lens' UsersCreateCompanyRelation Text
uccrUserId
  = lens _uccrUserId (\ s a -> s{_uccrUserId = a})

-- | Google Partners session ID.
uccrRequestMetadataPartnersSessionId :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrRequestMetadataPartnersSessionId
  = lens _uccrRequestMetadataPartnersSessionId
      (\ s a ->
         s{_uccrRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
uccrRequestMetadataLocale :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrRequestMetadataLocale
  = lens _uccrRequestMetadataLocale
      (\ s a -> s{_uccrRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
uccrRequestMetadataExperimentIds :: Lens' UsersCreateCompanyRelation [Text]
uccrRequestMetadataExperimentIds
  = lens _uccrRequestMetadataExperimentIds
      (\ s a -> s{_uccrRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
uccrRequestMetadataUserOverridesIPAddress :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrRequestMetadataUserOverridesIPAddress
  = lens _uccrRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_uccrRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
uccrRequestMetadataTrafficSourceTrafficSubId :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrRequestMetadataTrafficSourceTrafficSubId
  = lens _uccrRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_uccrRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
uccrRequestMetadataUserOverridesUserId :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrRequestMetadataUserOverridesUserId
  = lens _uccrRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_uccrRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
uccrRequestMetadataTrafficSourceTrafficSourceId :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrRequestMetadataTrafficSourceTrafficSourceId
  = lens
      _uccrRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_uccrRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
uccrCallback :: Lens' UsersCreateCompanyRelation (Maybe Text)
uccrCallback
  = lens _uccrCallback (\ s a -> s{_uccrCallback = a})

instance GoogleRequest UsersCreateCompanyRelation
         where
        type Rs UsersCreateCompanyRelation = CompanyRelation
        type Scopes UsersCreateCompanyRelation = '[]
        requestClient UsersCreateCompanyRelation'{..}
          = go _uccrUserId _uccrXgafv _uccrUploadProtocol
              _uccrAccessToken
              _uccrUploadType
              _uccrRequestMetadataPartnersSessionId
              _uccrRequestMetadataLocale
              (_uccrRequestMetadataExperimentIds ^. _Default)
              _uccrRequestMetadataUserOverridesIPAddress
              _uccrRequestMetadataTrafficSourceTrafficSubId
              _uccrRequestMetadataUserOverridesUserId
              _uccrRequestMetadataTrafficSourceTrafficSourceId
              _uccrCallback
              (Just AltJSON)
              _uccrPayload
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersCreateCompanyRelationResource)
                      mempty
