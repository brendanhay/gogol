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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Reports.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve your YouTube Analytics reports.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.reports.query@.
module Network.Google.Resource.YouTubeAnalytics.Reports.Query
    (
    -- * REST Resource
      ReportsQueryResource

    -- * Creating a Request
    , reportsQuery
    , ReportsQuery

    -- * Request Lenses
    , rqMetrics
    , rqFilters
    , rqIds
    , rqEndDate
    , rqCurrency
    , rqSort
    , rqDimensions
    , rqStartIndex
    , rqMaxResults
    , rqStartDate
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.reports.query@ method which the
-- 'ReportsQuery' request conforms to.
type ReportsQueryResource =
     "youtube" :>
       "analytics" :>
         "v1" :>
           "reports" :>
             QueryParam "ids" Text :>
               QueryParam "start-date" Text :>
                 QueryParam "end-date" Text :>
                   QueryParam "metrics" Text :>
                     QueryParam "filters" Text :>
                       QueryParam "currency" Text :>
                         QueryParam "sort" Text :>
                           QueryParam "dimensions" Text :>
                             QueryParam "start-index" (Textual Int32) :>
                               QueryParam "max-results" (Textual Int32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ResultTable

-- | Retrieve your YouTube Analytics reports.
--
-- /See:/ 'reportsQuery' smart constructor.
data ReportsQuery = ReportsQuery
    { _rqMetrics    :: !Text
    , _rqFilters    :: !(Maybe Text)
    , _rqIds        :: !Text
    , _rqEndDate    :: !Text
    , _rqCurrency   :: !(Maybe Text)
    , _rqSort       :: !(Maybe Text)
    , _rqDimensions :: !(Maybe Text)
    , _rqStartIndex :: !(Maybe (Textual Int32))
    , _rqMaxResults :: !(Maybe (Textual Int32))
    , _rqStartDate  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqMetrics'
--
-- * 'rqFilters'
--
-- * 'rqIds'
--
-- * 'rqEndDate'
--
-- * 'rqCurrency'
--
-- * 'rqSort'
--
-- * 'rqDimensions'
--
-- * 'rqStartIndex'
--
-- * 'rqMaxResults'
--
-- * 'rqStartDate'
reportsQuery
    :: Text -- ^ 'rqMetrics'
    -> Text -- ^ 'rqIds'
    -> Text -- ^ 'rqEndDate'
    -> Text -- ^ 'rqStartDate'
    -> ReportsQuery
reportsQuery pRqMetrics_ pRqIds_ pRqEndDate_ pRqStartDate_ =
    ReportsQuery
    { _rqMetrics = pRqMetrics_
    , _rqFilters = Nothing
    , _rqIds = pRqIds_
    , _rqEndDate = pRqEndDate_
    , _rqCurrency = Nothing
    , _rqSort = Nothing
    , _rqDimensions = Nothing
    , _rqStartIndex = Nothing
    , _rqMaxResults = Nothing
    , _rqStartDate = pRqStartDate_
    }

-- | A comma-separated list of YouTube Analytics metrics, such as views or
-- likes,dislikes. See the Available Reports document for a list of the
-- reports that you can retrieve and the metrics available in each report,
-- and see the Metrics document for definitions of those metrics.
rqMetrics :: Lens' ReportsQuery Text
rqMetrics
  = lens _rqMetrics (\ s a -> s{_rqMetrics = a})

-- | A list of filters that should be applied when retrieving YouTube
-- Analytics data. The Available Reports document identifies the dimensions
-- that can be used to filter each report, and the Dimensions document
-- defines those dimensions. If a request uses multiple filters, join them
-- together with a semicolon (;), and the returned result table will
-- satisfy both filters. For example, a filters parameter value of
-- video==dMH0bHeiRNg;country==IT restricts the result set to include data
-- for the given video in Italy.
rqFilters :: Lens' ReportsQuery (Maybe Text)
rqFilters
  = lens _rqFilters (\ s a -> s{_rqFilters = a})

-- | Identifies the YouTube channel or content owner for which you are
-- retrieving YouTube Analytics data. - To request data for a YouTube user,
-- set the ids parameter value to channel==CHANNEL_ID, where CHANNEL_ID
-- specifies the unique YouTube channel ID. - To request data for a YouTube
-- CMS content owner, set the ids parameter value to
-- contentOwner==OWNER_NAME, where OWNER_NAME is the CMS name of the
-- content owner.
rqIds :: Lens' ReportsQuery Text
rqIds = lens _rqIds (\ s a -> s{_rqIds = a})

-- | The end date for fetching YouTube Analytics data. The value should be in
-- YYYY-MM-DD format.
rqEndDate :: Lens' ReportsQuery Text
rqEndDate
  = lens _rqEndDate (\ s a -> s{_rqEndDate = a})

-- | The currency to which financial metrics should be converted. The default
-- is US Dollar (USD). If the result contains no financial metrics, this
-- flag will be ignored. Responds with an error if the specified currency
-- is not recognized.
rqCurrency :: Lens' ReportsQuery (Maybe Text)
rqCurrency
  = lens _rqCurrency (\ s a -> s{_rqCurrency = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for YouTube Analytics data. By default the sort order is
-- ascending. The \'-\' prefix causes descending sort order.
rqSort :: Lens' ReportsQuery (Maybe Text)
rqSort = lens _rqSort (\ s a -> s{_rqSort = a})

-- | A comma-separated list of YouTube Analytics dimensions, such as views or
-- ageGroup,gender. See the Available Reports document for a list of the
-- reports that you can retrieve and the dimensions used for those reports.
-- Also see the Dimensions document for definitions of those dimensions.
rqDimensions :: Lens' ReportsQuery (Maybe Text)
rqDimensions
  = lens _rqDimensions (\ s a -> s{_rqDimensions = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter (one-based,
-- inclusive).
rqStartIndex :: Lens' ReportsQuery (Maybe Int32)
rqStartIndex
  = lens _rqStartIndex (\ s a -> s{_rqStartIndex = a})
      . mapping _Coerce

-- | The maximum number of rows to include in the response.
rqMaxResults :: Lens' ReportsQuery (Maybe Int32)
rqMaxResults
  = lens _rqMaxResults (\ s a -> s{_rqMaxResults = a})
      . mapping _Coerce

-- | The start date for fetching YouTube Analytics data. The value should be
-- in YYYY-MM-DD format.
rqStartDate :: Lens' ReportsQuery Text
rqStartDate
  = lens _rqStartDate (\ s a -> s{_rqStartDate = a})

instance GoogleRequest ReportsQuery where
        type Rs ReportsQuery = ResultTable
        requestClient ReportsQuery{..}
          = go (Just _rqIds) (Just _rqStartDate)
              (Just _rqEndDate)
              (Just _rqMetrics)
              _rqFilters
              _rqCurrency
              _rqSort
              _rqDimensions
              _rqStartIndex
              _rqMaxResults
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy ReportsQueryResource)
                      mempty
