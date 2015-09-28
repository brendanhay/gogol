{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Data.Ga.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns Analytics data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.ga.get@.
module Network.Google.API.Analytics.Data.Ga.Get
    (
    -- * REST Resource
      DataGaGetAPI

    -- * Creating a Request
    , dataGaGet'
    , DataGaGet'

    -- * Request Lenses
    , dggQuotaUser
    , dggMetrics
    , dggPrettyPrint
    , dggSamplingLevel
    , dggUserIp
    , dggFilters
    , dggIds
    , dggEndDate
    , dggKey
    , dggOutput
    , dggSort
    , dggDimensions
    , dggOauthToken
    , dggStartIndex
    , dggMaxResults
    , dggSegment
    , dggStartDate
    , dggFields
    , dggAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.data.ga.get which the
-- 'DataGaGet'' request conforms to.
type DataGaGetAPI =
     "data" :>
       "ga" :>
         QueryParam "quotaUser" Text :>
           QueryParam "metrics" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "samplingLevel" DataGaGet'SamplingLevel :>
                 QueryParam "userIp" Text :>
                   QueryParam "filters" Text :>
                     QueryParam "ids" Text :>
                       QueryParam "end-date" Text :>
                         QueryParam "key" Text :>
                           QueryParam "output" DataGaGet'Output :>
                             QueryParam "sort" Text :>
                               QueryParam "dimensions" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "start-index" Nat :>
                                     QueryParam "max-results" Int32 :>
                                       QueryParam "segment" Text :>
                                         QueryParam "start-date" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" Alt :>
                                               Get '[JSON] GaData

-- | Returns Analytics data for a view (profile).
--
-- /See:/ 'dataGaGet'' smart constructor.
data DataGaGet' = DataGaGet'
    { _dggQuotaUser     :: !(Maybe Text)
    , _dggMetrics       :: !Text
    , _dggPrettyPrint   :: !Bool
    , _dggSamplingLevel :: !(Maybe DataGaGet'SamplingLevel)
    , _dggUserIp        :: !(Maybe Text)
    , _dggFilters       :: !(Maybe Text)
    , _dggIds           :: !Text
    , _dggEndDate       :: !Text
    , _dggKey           :: !(Maybe Text)
    , _dggOutput        :: !(Maybe DataGaGet'Output)
    , _dggSort          :: !(Maybe Text)
    , _dggDimensions    :: !(Maybe Text)
    , _dggOauthToken    :: !(Maybe Text)
    , _dggStartIndex    :: !(Maybe Nat)
    , _dggMaxResults    :: !(Maybe Int32)
    , _dggSegment       :: !(Maybe Text)
    , _dggStartDate     :: !Text
    , _dggFields        :: !(Maybe Text)
    , _dggAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'dggUserIp'
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
-- * 'dggOauthToken'
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
--
-- * 'dggAlt'
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
    , _dggUserIp = Nothing
    , _dggFilters = Nothing
    , _dggIds = pDggIds_
    , _dggEndDate = pDggEndDate_
    , _dggKey = Nothing
    , _dggOutput = Nothing
    , _dggSort = Nothing
    , _dggDimensions = Nothing
    , _dggOauthToken = Nothing
    , _dggStartIndex = Nothing
    , _dggMaxResults = Nothing
    , _dggSegment = Nothing
    , _dggStartDate = pDggStartDate_
    , _dggFields = Nothing
    , _dggAlt = JSON
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
dggSamplingLevel :: Lens' DataGaGet' (Maybe DataGaGet'SamplingLevel)
dggSamplingLevel
  = lens _dggSamplingLevel
      (\ s a -> s{_dggSamplingLevel = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dggUserIp :: Lens' DataGaGet' (Maybe Text)
dggUserIp
  = lens _dggUserIp (\ s a -> s{_dggUserIp = a})

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
dggKey :: Lens' DataGaGet' (Maybe Text)
dggKey = lens _dggKey (\ s a -> s{_dggKey = a})

-- | The selected format for the response. Default format is JSON.
dggOutput :: Lens' DataGaGet' (Maybe DataGaGet'Output)
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
dggOauthToken :: Lens' DataGaGet' (Maybe Text)
dggOauthToken
  = lens _dggOauthToken
      (\ s a -> s{_dggOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
dggStartIndex :: Lens' DataGaGet' (Maybe Natural)
dggStartIndex
  = lens _dggStartIndex
      (\ s a -> s{_dggStartIndex = a})
      . mapping _Nat

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

-- | Data format for the response.
dggAlt :: Lens' DataGaGet' Alt
dggAlt = lens _dggAlt (\ s a -> s{_dggAlt = a})

instance GoogleRequest DataGaGet' where
        type Rs DataGaGet' = GaData
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u DataGaGet'{..}
          = go _dggQuotaUser (Just _dggMetrics)
              (Just _dggPrettyPrint)
              _dggSamplingLevel
              _dggUserIp
              _dggFilters
              (Just _dggIds)
              (Just _dggEndDate)
              _dggKey
              _dggOutput
              _dggSort
              _dggDimensions
              _dggOauthToken
              _dggStartIndex
              _dggMaxResults
              _dggSegment
              (Just _dggStartDate)
              _dggFields
              (Just _dggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DataGaGetAPI) r u
