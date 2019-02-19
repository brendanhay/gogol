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
-- Module      : Network.Google.Resource.Partners.Analytics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists analytics data for a user\'s associated company. Should only be
-- called within the context of an authorized logged in user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.analytics.list@.
module Network.Google.Resource.Partners.Analytics.List
    (
    -- * REST Resource
      AnalyticsListResource

    -- * Creating a Request
    , analyticsList
    , AnalyticsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alAccessToken
    , alUploadType
    , alRequestMetadataPartnersSessionId
    , alRequestMetadataLocale
    , alRequestMetadataExperimentIds
    , alRequestMetadataUserOverridesIPAddress
    , alPageToken
    , alRequestMetadataTrafficSourceTrafficSubId
    , alPageSize
    , alRequestMetadataUserOverridesUserId
    , alRequestMetadataTrafficSourceTrafficSourceId
    , alCallback
    ) where

import           Network.Google.Partners.Types
import           Network.Google.Prelude

-- | A resource alias for @partners.analytics.list@ method which the
-- 'AnalyticsList' request conforms to.
type AnalyticsListResource =
     "v2" :>
       "analytics" :>
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
                         QueryParam "pageToken" Text :>
                           QueryParam
                             "requestMetadata.trafficSource.trafficSubId"
                             Text
                             :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "requestMetadata.userOverrides.userId"
                                 Text
                                 :>
                                 QueryParam
                                   "requestMetadata.trafficSource.trafficSourceId"
                                   Text
                                   :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListAnalyticsResponse

-- | Lists analytics data for a user\'s associated company. Should only be
-- called within the context of an authorized logged in user.
--
-- /See:/ 'analyticsList' smart constructor.
data AnalyticsList =
  AnalyticsList'
    { _alXgafv                                       :: !(Maybe Xgafv)
    , _alUploadProtocol                              :: !(Maybe Text)
    , _alAccessToken                                 :: !(Maybe Text)
    , _alUploadType                                  :: !(Maybe Text)
    , _alRequestMetadataPartnersSessionId            :: !(Maybe Text)
    , _alRequestMetadataLocale                       :: !(Maybe Text)
    , _alRequestMetadataExperimentIds                :: !(Maybe [Text])
    , _alRequestMetadataUserOverridesIPAddress       :: !(Maybe Text)
    , _alPageToken                                   :: !(Maybe Text)
    , _alRequestMetadataTrafficSourceTrafficSubId    :: !(Maybe Text)
    , _alPageSize                                    :: !(Maybe (Textual Int32))
    , _alRequestMetadataUserOverridesUserId          :: !(Maybe Text)
    , _alRequestMetadataTrafficSourceTrafficSourceId :: !(Maybe Text)
    , _alCallback                                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AnalyticsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alRequestMetadataPartnersSessionId'
--
-- * 'alRequestMetadataLocale'
--
-- * 'alRequestMetadataExperimentIds'
--
-- * 'alRequestMetadataUserOverridesIPAddress'
--
-- * 'alPageToken'
--
-- * 'alRequestMetadataTrafficSourceTrafficSubId'
--
-- * 'alPageSize'
--
-- * 'alRequestMetadataUserOverridesUserId'
--
-- * 'alRequestMetadataTrafficSourceTrafficSourceId'
--
-- * 'alCallback'
analyticsList
    :: AnalyticsList
analyticsList =
  AnalyticsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alRequestMetadataPartnersSessionId = Nothing
    , _alRequestMetadataLocale = Nothing
    , _alRequestMetadataExperimentIds = Nothing
    , _alRequestMetadataUserOverridesIPAddress = Nothing
    , _alPageToken = Nothing
    , _alRequestMetadataTrafficSourceTrafficSubId = Nothing
    , _alPageSize = Nothing
    , _alRequestMetadataUserOverridesUserId = Nothing
    , _alRequestMetadataTrafficSourceTrafficSourceId = Nothing
    , _alCallback = Nothing
    }

-- | V1 error format.
alXgafv :: Lens' AnalyticsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AnalyticsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' AnalyticsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AnalyticsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | Google Partners session ID.
alRequestMetadataPartnersSessionId :: Lens' AnalyticsList (Maybe Text)
alRequestMetadataPartnersSessionId
  = lens _alRequestMetadataPartnersSessionId
      (\ s a -> s{_alRequestMetadataPartnersSessionId = a})

-- | Locale to use for the current request.
alRequestMetadataLocale :: Lens' AnalyticsList (Maybe Text)
alRequestMetadataLocale
  = lens _alRequestMetadataLocale
      (\ s a -> s{_alRequestMetadataLocale = a})

-- | Experiment IDs the current request belongs to.
alRequestMetadataExperimentIds :: Lens' AnalyticsList [Text]
alRequestMetadataExperimentIds
  = lens _alRequestMetadataExperimentIds
      (\ s a -> s{_alRequestMetadataExperimentIds = a})
      . _Default
      . _Coerce

-- | IP address to use instead of the user\'s geo-located IP address.
alRequestMetadataUserOverridesIPAddress :: Lens' AnalyticsList (Maybe Text)
alRequestMetadataUserOverridesIPAddress
  = lens _alRequestMetadataUserOverridesIPAddress
      (\ s a ->
         s{_alRequestMetadataUserOverridesIPAddress = a})

-- | A token identifying a page of results that the server returns.
-- Typically, this is the value of
-- \`ListAnalyticsResponse.next_page_token\` returned from the previous
-- call to ListAnalytics. Will be a date string in \`YYYY-MM-DD\` format
-- representing the end date of the date range of results to return. If
-- unspecified or set to \"\", default value is the current date.
alPageToken :: Lens' AnalyticsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Second level identifier to indicate where the traffic comes from. An
-- identifier has multiple letters created by a team which redirected the
-- traffic to us.
alRequestMetadataTrafficSourceTrafficSubId :: Lens' AnalyticsList (Maybe Text)
alRequestMetadataTrafficSourceTrafficSubId
  = lens _alRequestMetadataTrafficSourceTrafficSubId
      (\ s a ->
         s{_alRequestMetadataTrafficSourceTrafficSubId = a})

-- | Requested page size. Server may return fewer analytics than requested.
-- If unspecified or set to 0, default value is 30. Specifies the number of
-- days in the date range when querying analytics. The \`page_token\`
-- represents the end date of the date range and the start date is
-- calculated using the \`page_size\` as the number of days BEFORE the end
-- date. Must be a non-negative integer.
alPageSize :: Lens' AnalyticsList (Maybe Int32)
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      mapping _Coerce

-- | Logged-in user ID to impersonate instead of the user\'s ID.
alRequestMetadataUserOverridesUserId :: Lens' AnalyticsList (Maybe Text)
alRequestMetadataUserOverridesUserId
  = lens _alRequestMetadataUserOverridesUserId
      (\ s a ->
         s{_alRequestMetadataUserOverridesUserId = a})

-- | Identifier to indicate where the traffic comes from. An identifier has
-- multiple letters created by a team which redirected the traffic to us.
alRequestMetadataTrafficSourceTrafficSourceId :: Lens' AnalyticsList (Maybe Text)
alRequestMetadataTrafficSourceTrafficSourceId
  = lens _alRequestMetadataTrafficSourceTrafficSourceId
      (\ s a ->
         s{_alRequestMetadataTrafficSourceTrafficSourceId =
             a})

-- | JSONP
alCallback :: Lens' AnalyticsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AnalyticsList where
        type Rs AnalyticsList = ListAnalyticsResponse
        type Scopes AnalyticsList = '[]
        requestClient AnalyticsList'{..}
          = go _alXgafv _alUploadProtocol _alAccessToken
              _alUploadType
              _alRequestMetadataPartnersSessionId
              _alRequestMetadataLocale
              (_alRequestMetadataExperimentIds ^. _Default)
              _alRequestMetadataUserOverridesIPAddress
              _alPageToken
              _alRequestMetadataTrafficSourceTrafficSubId
              _alPageSize
              _alRequestMetadataUserOverridesUserId
              _alRequestMetadataTrafficSourceTrafficSourceId
              _alCallback
              (Just AltJSON)
              partnersService
          where go
                  = buildClient (Proxy :: Proxy AnalyticsListResource)
                      mempty
