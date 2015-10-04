{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Data.Ga.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns Analytics data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsDataGaGet@.
module Network.Google.Resource.Analytics.Data.Ga.Get
    (
    -- * REST Resource
      DataGaGetResource

    -- * Creating a Request
    , dataGaGet'
    , DataGaGet'

    -- * Request Lenses
    , dggQuotaUser
    , dggMetrics
    , dggPrettyPrint
    , dggSamplingLevel
    , dggUserIP
    , dggFilters
    , dggIds
    , dggEndDate
    , dggKey
    , dggOutput
    , dggSort
    , dggDimensions
    , dggOAuthToken
    , dggStartIndex
    , dggMaxResults
    , dggSegment
    , dggStartDate
    , dggFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsDataGaGet@ which the
-- 'DataGaGet'' request conforms to.
type DataGaGetResource =
     "data" :>
       "ga" :>
         QueryParam "ids" Text :>
           QueryParam "start-date" Text :>
             QueryParam "end-date" Text :>
               QueryParam "metrics" Text :>
                 QueryParam "samplingLevel" DataGaGetSamplingLevel :>
                   QueryParam "filters" Text :>
                     QueryParam "output" DataGaGetOutput :>
                       QueryParam "sort" Text :>
                         QueryParam "dimensions" Text :>
                           QueryParam "start-index" Int32 :>
                             QueryParam "max-results" Int32 :>
                               QueryParam "segment" Text :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" Key :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] GaData

-- | Returns Analytics data for a view (profile).
--
-- /See:/ 'dataGaGet'' smart constructor.
data DataGaGet' = DataGaGet'
    { _dggQuotaUser     :: !(Maybe Text)
    , _dggMetrics       :: !Text
    , _dggPrettyPrint   :: !Bool
    , _dggSamplingLevel :: !(Maybe DataGaGetSamplingLevel)
    , _dggUserIP        :: !(Maybe Text)
    , _dggFilters       :: !(Maybe Text)
    , _dggIds           :: !Text
    , _dggEndDate       :: !Text
    , _dggKey           :: !(Maybe Key)
    , _dggOutput        :: !(Maybe DataGaGetOutput)
    , _dggSort          :: !(Maybe Text)
    , _dggDimensions    :: !(Maybe Text)
    , _dggOAuthToken    :: !(Maybe OAuthToken)
    , _dggStartIndex    :: !(Maybe Int32)
    , _dggMaxResults    :: !(Maybe Int32)
    , _dggSegment       :: !(Maybe Text)
    , _dggStartDate     :: !Text
    , _dggFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataGaGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dggQuotaUser'
--
-- * 'dggMetrics'
--
-- * 'dggPrettyPrint'
--
-- * 'dggSamplingLevel'
--
-- * 'dggUserIP'
--
-- * 'dggFilters'
--
-- * 'dggIds'
--
-- * 'dggEndDate'
--
-- * 'dggKey'
--
-- * 'dggOutput'
--
-- * 'dggSort'
--
-- * 'dggDimensions'
--
-- * 'dggOAuthToken'
--
-- * 'dggStartIndex'
--
-- * 'dggMaxResults'
--
-- * 'dggSegment'
--
-- * 'dggStartDate'
--
-- * 'dggFields'
dataGaGet'
    :: Text -- ^ 'metrics'
    -> Text -- ^ 'ids'
    -> Text -- ^ 'end-date'
    -> Text -- ^ 'start-date'
    -> DataGaGet'
dataGaGet' pDggMetrics_ pDggIds_ pDggEndDate_ pDggStartDate_ =
    DataGaGet'
    { _dggQuotaUser = Nothing
    , _dggMetrics = pDggMetrics_
    , _dggPrettyPrint = False
    , _dggSamplingLevel = Nothing
    , _dggUserIP = Nothing
    , _dggFilters = Nothing
    , _dggIds = pDggIds_
    , _dggEndDate = pDggEndDate_
    , _dggKey = Nothing
    , _dggOutput = Nothing
    , _dggSort = Nothing
    , _dggDimensions = Nothing
    , _dggOAuthToken = Nothing
    , _dggStartIndex = Nothing
    , _dggMaxResults = Nothing
    , _dggSegment = Nothing
    , _dggStartDate = pDggStartDate_
    , _dggFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dggQuotaUser :: Lens' DataGaGet' (Maybe Text)
dggQuotaUser
  = lens _dggQuotaUser (\ s a -> s{_dggQuotaUser = a})

-- | A comma-separated list of Analytics metrics. E.g.,
-- \'ga:sessions,ga:pageviews\'. At least one metric must be specified.
dggMetrics :: Lens' DataGaGet' Text
dggMetrics
  = lens _dggMetrics (\ s a -> s{_dggMetrics = a})

-- | Returns response with indentations and line breaks.
dggPrettyPrint :: Lens' DataGaGet' Bool
dggPrettyPrint
  = lens _dggPrettyPrint
      (\ s a -> s{_dggPrettyPrint = a})

-- | The desired sampling level.
dggSamplingLevel :: Lens' DataGaGet' (Maybe DataGaGetSamplingLevel)
dggSamplingLevel
  = lens _dggSamplingLevel
      (\ s a -> s{_dggSamplingLevel = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dggUserIP :: Lens' DataGaGet' (Maybe Text)
dggUserIP
  = lens _dggUserIP (\ s a -> s{_dggUserIP = a})

-- | A comma-separated list of dimension or metric filters to be applied to
-- Analytics data.
dggFilters :: Lens' DataGaGet' (Maybe Text)
dggFilters
  = lens _dggFilters (\ s a -> s{_dggFilters = a})

-- | Unique table ID for retrieving Analytics data. Table ID is of the form
-- ga:XXXX, where XXXX is the Analytics view (profile) ID.
dggIds :: Lens' DataGaGet' Text
dggIds = lens _dggIds (\ s a -> s{_dggIds = a})

-- | End date for fetching Analytics data. Request can should specify an end
-- date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
-- yesterday, or 7daysAgo). The default value is yesterday.
dggEndDate :: Lens' DataGaGet' Text
dggEndDate
  = lens _dggEndDate (\ s a -> s{_dggEndDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dggKey :: Lens' DataGaGet' (Maybe Key)
dggKey = lens _dggKey (\ s a -> s{_dggKey = a})

-- | The selected format for the response. Default format is JSON.
dggOutput :: Lens' DataGaGet' (Maybe DataGaGetOutput)
dggOutput
  = lens _dggOutput (\ s a -> s{_dggOutput = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for Analytics data.
dggSort :: Lens' DataGaGet' (Maybe Text)
dggSort = lens _dggSort (\ s a -> s{_dggSort = a})

-- | A comma-separated list of Analytics dimensions. E.g.,
-- \'ga:browser,ga:city\'.
dggDimensions :: Lens' DataGaGet' (Maybe Text)
dggDimensions
  = lens _dggDimensions
      (\ s a -> s{_dggDimensions = a})

-- | OAuth 2.0 token for the current user.
dggOAuthToken :: Lens' DataGaGet' (Maybe OAuthToken)
dggOAuthToken
  = lens _dggOAuthToken
      (\ s a -> s{_dggOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
dggStartIndex :: Lens' DataGaGet' (Maybe Int32)
dggStartIndex
  = lens _dggStartIndex
      (\ s a -> s{_dggStartIndex = a})

-- | The maximum number of entries to include in this feed.
dggMaxResults :: Lens' DataGaGet' (Maybe Int32)
dggMaxResults
  = lens _dggMaxResults
      (\ s a -> s{_dggMaxResults = a})

-- | An Analytics segment to be applied to data.
dggSegment :: Lens' DataGaGet' (Maybe Text)
dggSegment
  = lens _dggSegment (\ s a -> s{_dggSegment = a})

-- | Start date for fetching Analytics data. Requests can specify a start
-- date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
-- yesterday, or 7daysAgo). The default value is 7daysAgo.
dggStartDate :: Lens' DataGaGet' Text
dggStartDate
  = lens _dggStartDate (\ s a -> s{_dggStartDate = a})

-- | Selector specifying which fields to include in a partial response.
dggFields :: Lens' DataGaGet' (Maybe Text)
dggFields
  = lens _dggFields (\ s a -> s{_dggFields = a})

instance GoogleAuth DataGaGet' where
        authKey = dggKey . _Just
        authToken = dggOAuthToken . _Just

instance GoogleRequest DataGaGet' where
        type Rs DataGaGet' = GaData
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u DataGaGet'{..}
          = go (Just _dggIds) (Just _dggStartDate)
              (Just _dggEndDate)
              (Just _dggMetrics)
              _dggSamplingLevel
              _dggFilters
              _dggOutput
              _dggSort
              _dggDimensions
              _dggStartIndex
              _dggMaxResults
              _dggSegment
              _dggQuotaUser
              (Just _dggPrettyPrint)
              _dggUserIP
              _dggFields
              _dggKey
              _dggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy DataGaGetResource)
                      r
                      u
