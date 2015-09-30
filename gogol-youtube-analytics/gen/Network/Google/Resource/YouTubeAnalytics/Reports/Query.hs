{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTubeAnalytics.Reports.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve your YouTube Analytics reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsReportsQuery@.
module YouTubeAnalytics.Reports.Query
    (
    -- * REST Resource
      ReportsQueryAPI

    -- * Creating a Request
    , reportsQuery
    , ReportsQuery

    -- * Request Lenses
    , rqQuotaUser
    , rqMetrics
    , rqPrettyPrint
    , rqUserIp
    , rqFilters
    , rqIds
    , rqEndDate
    , rqKey
    , rqCurrency
    , rqSort
    , rqDimensions
    , rqOauthToken
    , rqStartIndex
    , rqMaxResults
    , rqStartDate
    , rqFields
    , rqAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsReportsQuery@ which the
-- 'ReportsQuery' request conforms to.
type ReportsQueryAPI =
     "reports" :>
       QueryParam "metrics" Text :>
         QueryParam "filters" Text :>
           QueryParam "ids" Text :>
             QueryParam "end-date" Text :>
               QueryParam "currency" Text :>
                 QueryParam "sort" Text :>
                   QueryParam "dimensions" Text :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "start-date" Text :>
                           Get '[JSON] ResultTable

-- | Retrieve your YouTube Analytics reports.
--
-- /See:/ 'reportsQuery' smart constructor.
data ReportsQuery = ReportsQuery
    { _rqQuotaUser   :: !(Maybe Text)
    , _rqMetrics     :: !Text
    , _rqPrettyPrint :: !Bool
    , _rqUserIp      :: !(Maybe Text)
    , _rqFilters     :: !(Maybe Text)
    , _rqIds         :: !Text
    , _rqEndDate     :: !Text
    , _rqKey         :: !(Maybe Text)
    , _rqCurrency    :: !(Maybe Text)
    , _rqSort        :: !(Maybe Text)
    , _rqDimensions  :: !(Maybe Text)
    , _rqOauthToken  :: !(Maybe Text)
    , _rqStartIndex  :: !(Maybe Int32)
    , _rqMaxResults  :: !(Maybe Int32)
    , _rqStartDate   :: !Text
    , _rqFields      :: !(Maybe Text)
    , _rqAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqQuotaUser'
--
-- * 'rqMetrics'
--
-- * 'rqPrettyPrint'
--
-- * 'rqUserIp'
--
-- * 'rqFilters'
--
-- * 'rqIds'
--
-- * 'rqEndDate'
--
-- * 'rqKey'
--
-- * 'rqCurrency'
--
-- * 'rqSort'
--
-- * 'rqDimensions'
--
-- * 'rqOauthToken'
--
-- * 'rqStartIndex'
--
-- * 'rqMaxResults'
--
-- * 'rqStartDate'
--
-- * 'rqFields'
--
-- * 'rqAlt'
reportsQuery
    :: Text -- ^ 'metrics'
    -> Text -- ^ 'ids'
    -> Text -- ^ 'end-date'
    -> Text -- ^ 'start-date'
    -> ReportsQuery
reportsQuery pRqMetrics_ pRqIds_ pRqEndDate_ pRqStartDate_ =
    ReportsQuery
    { _rqQuotaUser = Nothing
    , _rqMetrics = pRqMetrics_
    , _rqPrettyPrint = True
    , _rqUserIp = Nothing
    , _rqFilters = Nothing
    , _rqIds = pRqIds_
    , _rqEndDate = pRqEndDate_
    , _rqKey = Nothing
    , _rqCurrency = Nothing
    , _rqSort = Nothing
    , _rqDimensions = Nothing
    , _rqOauthToken = Nothing
    , _rqStartIndex = Nothing
    , _rqMaxResults = Nothing
    , _rqStartDate = pRqStartDate_
    , _rqFields = Nothing
    , _rqAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rqQuotaUser :: Lens' ReportsQuery' (Maybe Text)
rqQuotaUser
  = lens _rqQuotaUser (\ s a -> s{_rqQuotaUser = a})

-- | A comma-separated list of YouTube Analytics metrics, such as views or
-- likes,dislikes. See the Available Reports document for a list of the
-- reports that you can retrieve and the metrics available in each report,
-- and see the Metrics document for definitions of those metrics.
rqMetrics :: Lens' ReportsQuery' Text
rqMetrics
  = lens _rqMetrics (\ s a -> s{_rqMetrics = a})

-- | Returns response with indentations and line breaks.
rqPrettyPrint :: Lens' ReportsQuery' Bool
rqPrettyPrint
  = lens _rqPrettyPrint
      (\ s a -> s{_rqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rqUserIp :: Lens' ReportsQuery' (Maybe Text)
rqUserIp = lens _rqUserIp (\ s a -> s{_rqUserIp = a})

-- | A list of filters that should be applied when retrieving YouTube
-- Analytics data. The Available Reports document identifies the dimensions
-- that can be used to filter each report, and the Dimensions document
-- defines those dimensions. If a request uses multiple filters, join them
-- together with a semicolon (;), and the returned result table will
-- satisfy both filters. For example, a filters parameter value of
-- video==dMH0bHeiRNg;country==IT restricts the result set to include data
-- for the given video in Italy.
rqFilters :: Lens' ReportsQuery' (Maybe Text)
rqFilters
  = lens _rqFilters (\ s a -> s{_rqFilters = a})

-- | Identifies the YouTube channel or content owner for which you are
-- retrieving YouTube Analytics data. - To request data for a YouTube user,
-- set the ids parameter value to channel==CHANNEL_ID, where CHANNEL_ID
-- specifies the unique YouTube channel ID. - To request data for a YouTube
-- CMS content owner, set the ids parameter value to
-- contentOwner==OWNER_NAME, where OWNER_NAME is the CMS name of the
-- content owner.
rqIds :: Lens' ReportsQuery' Text
rqIds = lens _rqIds (\ s a -> s{_rqIds = a})

-- | The end date for fetching YouTube Analytics data. The value should be in
-- YYYY-MM-DD format.
rqEndDate :: Lens' ReportsQuery' Text
rqEndDate
  = lens _rqEndDate (\ s a -> s{_rqEndDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rqKey :: Lens' ReportsQuery' (Maybe Text)
rqKey = lens _rqKey (\ s a -> s{_rqKey = a})

-- | The currency to which financial metrics should be converted. The default
-- is US Dollar (USD). If the result contains no financial metrics, this
-- flag will be ignored. Responds with an error if the specified currency
-- is not recognized.
rqCurrency :: Lens' ReportsQuery' (Maybe Text)
rqCurrency
  = lens _rqCurrency (\ s a -> s{_rqCurrency = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for YouTube Analytics data. By default the sort order is
-- ascending. The \'-\' prefix causes descending sort order.
rqSort :: Lens' ReportsQuery' (Maybe Text)
rqSort = lens _rqSort (\ s a -> s{_rqSort = a})

-- | A comma-separated list of YouTube Analytics dimensions, such as views or
-- ageGroup,gender. See the Available Reports document for a list of the
-- reports that you can retrieve and the dimensions used for those reports.
-- Also see the Dimensions document for definitions of those dimensions.
rqDimensions :: Lens' ReportsQuery' (Maybe Text)
rqDimensions
  = lens _rqDimensions (\ s a -> s{_rqDimensions = a})

-- | OAuth 2.0 token for the current user.
rqOauthToken :: Lens' ReportsQuery' (Maybe Text)
rqOauthToken
  = lens _rqOauthToken (\ s a -> s{_rqOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter (one-based,
-- inclusive).
rqStartIndex :: Lens' ReportsQuery' (Maybe Int32)
rqStartIndex
  = lens _rqStartIndex (\ s a -> s{_rqStartIndex = a})

-- | The maximum number of rows to include in the response.
rqMaxResults :: Lens' ReportsQuery' (Maybe Int32)
rqMaxResults
  = lens _rqMaxResults (\ s a -> s{_rqMaxResults = a})

-- | The start date for fetching YouTube Analytics data. The value should be
-- in YYYY-MM-DD format.
rqStartDate :: Lens' ReportsQuery' Text
rqStartDate
  = lens _rqStartDate (\ s a -> s{_rqStartDate = a})

-- | Selector specifying which fields to include in a partial response.
rqFields :: Lens' ReportsQuery' (Maybe Text)
rqFields = lens _rqFields (\ s a -> s{_rqFields = a})

-- | Data format for the response.
rqAlt :: Lens' ReportsQuery' Text
rqAlt = lens _rqAlt (\ s a -> s{_rqAlt = a})

instance GoogleRequest ReportsQuery' where
        type Rs ReportsQuery' = ResultTable
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u ReportsQuery{..}
          = go _rqQuotaUser (Just _rqMetrics) _rqPrettyPrint
              _rqUserIp
              _rqFilters
              (Just _rqIds)
              (Just _rqEndDate)
              _rqKey
              _rqCurrency
              _rqSort
              _rqDimensions
              _rqOauthToken
              _rqStartIndex
              _rqMaxResults
              (Just _rqStartDate)
              _rqFields
              _rqAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsQueryAPI) r
                      u
