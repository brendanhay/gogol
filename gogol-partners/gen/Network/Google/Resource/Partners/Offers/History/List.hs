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
-- Module      : Network.Google.Resource.Partners.Offers.History.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Historical Offers for the current user (or user\'s entire
-- company)
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.offers.history.list@.
module Network.Google.Resource.Partners.Offers.History.List
    (
    -- * REST Resource
      OffersHistoryListResource

    -- * Creating a Request
    , offersHistoryList
    , OffersHistoryList

    -- * Request Lenses
    , ohlXgafv
    , ohlUploadProtocol
    , ohlOrderBy
    , ohlAccessToken
    , ohlUploadType
    , ohlEntireCompany
    , ohlRequestMetadataPartnersSessionId
    , ohlRequestMetadataLocale
    , ohlRequestMetadataExperimentIds
    , ohlRequestMetadataUserOverridesIPAddress
    , ohlPageToken
    , ohlRequestMetadataTrafficSourceTrafficSubId
    , ohlPageSize
    , ohlRequestMetadataUserOverridesUserId
    , ohlRequestMetadataTrafficSourceTrafficSourceId
    , ohlCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.offers.history.list@ method which the
-- 'OffersHistoryList' request conforms to.
type OffersHistoryListResource =
     "v2" :>
       "offers" :>
         "history" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "entireCompany" Bool :>
                       QueryParam "requestMetadata.partnersSessionId" Text
                         :>
                         QueryParam "requestMetadata.locale" Text :>
                           QueryParams "requestMetadata.experimentIds" Text :>
                             QueryParam
                               "requestMetadata.userOverrides.ipAddress"
                               Text
                               :>
                               QueryParam "pageToken" Text :>
                                 QueryParam
                                   "requestMetadata.trafficSource.trafficSubId"
                                   Text
                                   :>
                                   QueryParam "pageSize" (Textual Int32) :>
                                     QueryParam
                                       "requestMetadata.userOverrides.userId"
                                       Text
                                       :>
                                       QueryParam
                                         "requestMetadata.trafficSource.trafficSourceId"
                                         Text
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON]
                                               ListOffersHistoryResponse

-- | Lists the Historical Offers for the current user (or user\'s entire
-- company)
--
-- /See:/ 'offersHistoryList' smart constructor.
data OffersHistoryList =
  OffersHistoryList'
    { _ohlXgafv                                       :: !(Maybe Xgafv)
    , _ohlUploadProtocol                              :: !(Maybe Text)
    , _ohlOrderBy                                     :: !(Maybe Text)
    , _ohlAccessToken                                 :: !(Maybe Text)
    , _ohlUploadType                                  :: !(Maybe Text)
    , _ohlEntireCompany                               :: !(Maybe Bool)
    , _ohlRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _ohlRequestMetadataLocale                       :: !(Maybe Text)
    , _ohlRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _ohlRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _ohlPageToken                                   :: !(Maybe Text)
    , _ohlRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _ohlPageSize                                    :: !(Maybe (Textual Int32))
    , _ohlRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _ohlRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _ohlCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OffersHistoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ohlXgafv'
--
-- * 'ohlUploadProtocol'
--
-- * 'ohlOrderBy'
--
-- * 'ohlAccessToken'
--
-- * 'ohlUploadType'
--
-- * 'ohlEntireCompany'
--
-- * 'ohlRequestMetadataPartnersSessionId'
--
-- * 'ohlRequestMetadataLocale'
--
-- * 'ohlRequestMetadataExperimentIds'
--
-- * 'ohlRequestMetadataUserOverridesIPAddress'
--
-- * 'ohlPageToken'
--
-- * 'ohlRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'ohlPageSize'
--
-- * 'ohlRequestMetadataUserOverridesUserId'
--
-- * 'ohlRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'ohlCallback'
offersHistoryList
    :: OffersHistoryList
offersHistoryList =
  OffersHistoryList'
    { _ohlXgafv = Nothing
    , _ohlUploadProtocol = Nothing
    , _ohlOrderBy = Nothing
    , _ohlAccessToken = Nothing
    , _ohlUploadType = Nothing
    , _ohlEntireCompany = Nothing
    , _ohlRequestMetadataPartnersSessionId = Nothing
    , _ohlRequestMetadataLocale = Nothing
    , _ohlRequestMetadataExperimentIds = Nothing
    , _ohlRequestMetadataUserOverridesIPAddress = Nothing
    , _ohlPageToken = Nothing
    , _ohlRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _ohlPageSize = Nothing
    , _ohlRequestMetadataUserOverridesUserId = Nothing
    , _ohlRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _ohlCallback = Nothing
    }

-- | V1 error format.
ohlXgafv :: Lens' OffersHistoryList (Maybe Xgafv)
ohlXgafv = lens _ohlXgafv (\ s a -> s{_ohlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ohlUploadProtocol :: Lens' OffersHistoryList (Maybe Text)
ohlUploadProtocol
  = lens _ohlUploadProtocol
      (\ s a -> s{_ohlUploadProtocol = a})

-- | Comma-separated list of fields to order by, e.g.: \"foo,bar,baz\". Use
-- \"foo desc\" to sort descending. List of valid field names is: name,
-- offer_code, expiration_time, status, last_modified_time, sender_name,
-- creation_time, country_code, offer_type.
ohlOrderBy :: Lens' OffersHistoryList (Maybe Text)
ohlOrderBy
  = lens _ohlOrderBy (\ s a -> s{_ohlOrderBy = a})

-- | OAuth access token.
ohlAccessToken :: Lens' OffersHistoryList (Maybe Text)
ohlAccessToken
  = lens _ohlAccessToken
      (\ s a -> s{_ohlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ohlUploadType :: Lens' OffersHistoryList (Maybe Text)
ohlUploadType
  = lens _ohlUploadType
      (\ s a -> s{_ohlUploadType = a})

-- | if true, show history for the entire company. Requires user to be admin.
ohlEntireCompany :: Lens' OffersHistoryList (Maybe Bool)
ohlEntireCompany
  = lens _ohlEntireCompany
      (\ s a -> s{_ohlEntireCompany = a})

-- | Google Partners session ID.
ohlRequestMetadataPartnersSessionId :: Lens' OffersHistoryList (Maybe Text)
ohlRequestMetadataPartnersSessionId
  = lens _ohlRequestMetadataPartnersSessionId
      (\ s a ->
         s{_ohlRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
ohlRequestMetadataLocale :: Lens' OffersHistoryList (Maybe Text)
ohlRequestMetadataLocale
  = lens _ohlRequestMetadataLocale
      (\ s a -> s{_ohlRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
ohlRequestMetadataExperimentIds :: Lens' OffersHistoryList [Text]
ohlRequestMetadataExperimentIds
  = lens _ohlRequestMetadataExperimentIds
      (\ s a -> s{_ohlRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
ohlRequestMetadataUserOverridesIPAddress :: Lens' OffersHistoryList (Maybe Text)
ohlRequestMetadataUserOverridesIPAddress
  = lens _ohlRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_ohlRequestMetadataUserOverridesIPAddress = a})

-- | Token to retrieve a specific page.
ohlPageToken :: Lens' OffersHistoryList (Maybe Text)
ohlPageToken
  = lens _ohlPageToken (\ s a -> s{_ohlPageToken = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
ohlRequestMetadataTrafficSourceTrafficSubId :: Lens' OffersHistoryList (Maybe Text)
ohlRequestMetadataTrafficSourceTrafficSubId
  = lens _ohlRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_ohlRequestMetadataTrafficSourceTrafficSubId = a})

-- | Maximum number of rows to return per page.
ohlPageSize :: Lens' OffersHistoryList (Maybe Int32)
ohlPageSize
  = lens _ohlPageSize (\ s a -> s{_ohlPageSize = a}) .
      mapping _Coerce

-- | Logged-in user ID to impersonate instead of the user\'s ID.
ohlRequestMetadataUserOverridesUserId :: Lens' OffersHistoryList (Maybe Text)
ohlRequestMetadataUserOverridesUserId
  = lens _ohlRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_ohlRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
ohlRequestMetadataTrafficSourceTrafficSourceId :: Lens' OffersHistoryList (Maybe Text)
ohlRequestMetadataTrafficSourceTrafficSourceId
  = lens
      _ohlRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_ohlRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
ohlCallback :: Lens' OffersHistoryList (Maybe Text)
ohlCallback
  = lens _ohlCallback (\ s a -> s{_ohlCallback = a})

instance GoogleRequest OffersHistoryList where
        type Rs OffersHistoryList = ListOffersHistoryResponse
        type Scopes OffersHistoryList = '[]
        requestClient OffersHistoryList'{..}
          = go _ohlXgafv _ohlUploadProtocol _ohlOrderBy
              _ohlAccessToken
              _ohlUploadType
              _ohlEntireCompany
              _ohlRequestMetadataPartnersSessionId
              _ohlRequestMetadataLocale
              (_ohlRequestMetadataExperimentIds ^. _Default)
              _ohlRequestMetadataUserOverridesIPAddress
              _ohlPageToken
              _ohlRequestMetadataTrafficSourceTrafficSubId
              _ohlPageSize
              _ohlRequestMetadataUserOverridesUserId
              _ohlRequestMetadataTrafficSourceTrafficSourceId
              _ohlCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient
                      (Proxy :: Proxy OffersHistoryListResource)
                      mempty
