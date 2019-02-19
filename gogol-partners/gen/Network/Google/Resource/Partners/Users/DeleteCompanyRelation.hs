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
-- Module      : Network.Google.Resource.Partners.Users.DeleteCompanyRelation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user\'s company relation. Unaffiliaites the user from a
-- company.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.users.deleteCompanyRelation@.
module Network.Google.Resource.Partners.Users.DeleteCompanyRelation
    (
    -- * REST Resource
      UsersDeleteCompanyRelationResource

    -- * Creating a Request
    , usersDeleteCompanyRelation
    , UsersDeleteCompanyRelation

    -- * Request Lenses
    , udcrXgafv
    , udcrUploadProtocol
    , udcrAccessToken
    , udcrUploadType
    , udcrUserId
    , udcrRequestMetadataPartnersSessionId
    , udcrRequestMetadataLocale
    , udcrRequestMetadataExperimentIds
    , udcrRequestMetadataUserOverridesIPAddress
    , udcrRequestMetadataTrafficSourceTrafficSubId
    , udcrRequestMetadataUserOverridesUserId
    , udcrRequestMetadataTrafficSourceTrafficSourceId
    , udcrCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.users.deleteCompanyRelation@ method which the
-- 'UsersDeleteCompanyRelation' request conforms to.
type UsersDeleteCompanyRelationResource =
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
                                       Delete '[JSON] Empty

-- | Deletes a user\'s company relation. Unaffiliaites the user from a
-- company.
--
-- /See:/ 'usersDeleteCompanyRelation' smart constructor.
data UsersDeleteCompanyRelation =
  UsersDeleteCompanyRelation'
    { _udcrXgafv                                       :: !(Maybe Xgafv)
    , _udcrUploadProtocol                              :: !(Maybe Text)
    , _udcrAccessToken                                 :: !(Maybe Text)
    , _udcrUploadType                                  :: !(Maybe Text)
    , _udcrUserId                                      :: !Text
    , _udcrRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _udcrRequestMetadataLocale                       :: !(Maybe Text)
    , _udcrRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _udcrRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _udcrRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _udcrRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _udcrRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _udcrCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersDeleteCompanyRelation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcrXgafv'
--
-- * 'udcrUploadProtocol'
--
-- * 'udcrAccessToken'
--
-- * 'udcrUploadType'
--
-- * 'udcrUserId'
--
-- * 'udcrRequestMetadataPartnersSessionId'
--
-- * 'udcrRequestMetadataLocale'
--
-- * 'udcrRequestMetadataExperimentIds'
--
-- * 'udcrRequestMetadataUserOverridesIPAddress'
--
-- * 'udcrRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'udcrRequestMetadataUserOverridesUserId'
--
-- * 'udcrRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'udcrCallback'
usersDeleteCompanyRelation
    :: Text -- ^ 'udcrUserId'
    -> UsersDeleteCompanyRelation
usersDeleteCompanyRelation pUdcrUserId_ =
  UsersDeleteCompanyRelation'
    { _udcrXgafv = Nothing
    , _udcrUploadProtocol = Nothing
    , _udcrAccessToken = Nothing
    , _udcrUploadType = Nothing
    , _udcrUserId = pUdcrUserId_
    , _udcrRequestMetadataPartnersSessionId = Nothing
    , _udcrRequestMetadataLocale = Nothing
    , _udcrRequestMetadataExperimentIds = Nothing
    , _udcrRequestMetadataUserOverridesIPAddress = Nothing
    , _udcrRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _udcrRequestMetadataUserOverridesUserId = Nothing
    , _udcrRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _udcrCallback = Nothing
    }

-- | V1 error format.
udcrXgafv :: Lens' UsersDeleteCompanyRelation (Maybe Xgafv)
udcrXgafv
  = lens _udcrXgafv (\ s a -> s{_udcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udcrUploadProtocol :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrUploadProtocol
  = lens _udcrUploadProtocol
      (\ s a -> s{_udcrUploadProtocol = a})

-- | OAuth access token.
udcrAccessToken :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrAccessToken
  = lens _udcrAccessToken
      (\ s a -> s{_udcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udcrUploadType :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrUploadType
  = lens _udcrUploadType
      (\ s a -> s{_udcrUploadType = a})

-- | The ID of the user. Can be set to 'me' to mean the currently
-- authenticated user.
udcrUserId :: Lens' UsersDeleteCompanyRelation Text
udcrUserId
  = lens _udcrUserId (\ s a -> s{_udcrUserId = a})

-- | Google Partners session ID.
udcrRequestMetadataPartnersSessionId :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrRequestMetadataPartnersSessionId
  = lens _udcrRequestMetadataPartnersSessionId
      (\ s a ->
         s{_udcrRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
udcrRequestMetadataLocale :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrRequestMetadataLocale
  = lens _udcrRequestMetadataLocale
      (\ s a -> s{_udcrRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
udcrRequestMetadataExperimentIds :: Lens' UsersDeleteCompanyRelation [Text]
udcrRequestMetadataExperimentIds
  = lens _udcrRequestMetadataExperimentIds
      (\ s a -> s{_udcrRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
udcrRequestMetadataUserOverridesIPAddress :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrRequestMetadataUserOverridesIPAddress
  = lens _udcrRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_udcrRequestMetadataUserOverridesIPAddress = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
udcrRequestMetadataTrafficSourceTrafficSubId :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrRequestMetadataTrafficSourceTrafficSubId
  = lens _udcrRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_udcrRequestMetadataTrafficSourceTrafficSubId = a})

-- | Logged-in user ID to impersonate instead of the user\'s ID.
udcrRequestMetadataUserOverridesUserId :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrRequestMetadataUserOverridesUserId
  = lens _udcrRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_udcrRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
udcrRequestMetadataTrafficSourceTrafficSourceId :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrRequestMetadataTrafficSourceTrafficSourceId
  = lens
      _udcrRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_udcrRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
udcrCallback :: Lens' UsersDeleteCompanyRelation (Maybe Text)
udcrCallback
  = lens _udcrCallback (\ s a -> s{_udcrCallback = a})

instance GoogleRequest UsersDeleteCompanyRelation
         where
        type Rs UsersDeleteCompanyRelation = Empty
        type Scopes UsersDeleteCompanyRelation = '[]
        requestClient UsersDeleteCompanyRelation'{..}
          = go _udcrUserId _udcrXgafv _udcrUploadProtocol
              _udcrAccessToken
              _udcrUploadType
              _udcrRequestMetadataPartnersSessionId
              _udcrRequestMetadataLocale
              (_udcrRequestMetadataExperimentIds ^. _Default)
              _udcrRequestMetadataUserOverridesIPAddress
              _udcrRequestMetadataTrafficSourceTrafficSubId
              _udcrRequestMetadataUserOverridesUserId
              _udcrRequestMetadataTrafficSourceTrafficSourceId
              _udcrCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDeleteCompanyRelationResource)
                      mempty
