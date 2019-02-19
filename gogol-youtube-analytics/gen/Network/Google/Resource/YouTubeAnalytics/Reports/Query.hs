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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve your YouTube Analytics reports.
--
-- /See:/ <https://developers.google.com/youtube/analytics YouTube Analytics API Reference> for @youtubeAnalytics.reports.query@.
module Network.Google.Resource.YouTubeAnalytics.Reports.Query
    (
    -- * REST Resource
      ReportsQueryResource

    -- * Creating a Request
    , reportsQuery
    , ReportsQuery

    -- * Request Lenses
    , rqXgafv
    , rqMetrics
    , rqUploadProtocol
    , rqAccessToken
    , rqEndDate
    , rqIncludeHistoricalChannelData
    , rqFilters
    , rqUploadType
    , rqIds
    , rqStartDate
    , rqCurrency
    , rqSort
    , rqDimensions
    , rqStartIndex
    , rqMaxResults
    , rqCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.reports.query@ method which the
-- 'ReportsQuery' request conforms to.
type ReportsQueryResource =
     "v2" :>
       "reports" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "metrics" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "endDate" Text :>
                   QueryParam "includeHistoricalChannelData" Bool :>
                     QueryParam "filters" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "ids" Text :>
                           QueryParam "startDate" Text :>
                             QueryParam "currency" Text :>
                               QueryParam "sort" Text :>
                                 QueryParam "dimensions" Text :>
                                   QueryParam "startIndex" (Textual Int32) :>
                                     QueryParam "maxResults" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] QueryResponse

-- | Retrieve your YouTube Analytics reports.
--
-- /See:/ 'reportsQuery' smart constructor.
data ReportsQuery =
  ReportsQuery'
    { _rqXgafv                        :: !(Maybe Xgafv)
    , _rqMetrics                      :: !(Maybe Text)
    , _rqUploadProtocol               :: !(Maybe Text)
    , _rqAccessToken                  :: !(Maybe Text)
    , _rqEndDate                      :: !(Maybe Text)
    , _rqIncludeHistoricalChannelData :: !(Maybe Bool)
    , _rqFilters                      :: !(Maybe Text)
    , _rqUploadType                   :: !(Maybe Text)
    , _rqIds                          :: !(Maybe Text)
    , _rqStartDate                    :: !(Maybe Text)
    , _rqCurrency                     :: !(Maybe Text)
    , _rqSort                         :: !(Maybe Text)
    , _rqDimensions                   :: !(Maybe Text)
    , _rqStartIndex                   :: !(Maybe (Textual Int32))
    , _rqMaxResults                   :: !(Maybe (Textual Int32))
    , _rqCallback                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqXgafv'
--
-- * 'rqMetrics'
--
-- * 'rqUploadProtocol'
--
-- * 'rqAccessToken'
--
-- * 'rqEndDate'
--
-- * 'rqIncludeHistoricalChannelData'
--
-- * 'rqFilters'
--
-- * 'rqUploadType'
--
-- * 'rqIds'
--
-- * 'rqStartDate'
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
-- * 'rqCallback'
reportsQuery
    :: ReportsQuery
reportsQuery =
  ReportsQuery'
    { _rqXgafv = Nothing
    , _rqMetrics = Nothing
    , _rqUploadProtocol = Nothing
    , _rqAccessToken = Nothing
    , _rqEndDate = Nothing
    , _rqIncludeHistoricalChannelData = Nothing
    , _rqFilters = Nothing
    , _rqUploadType = Nothing
    , _rqIds = Nothing
    , _rqStartDate = Nothing
    , _rqCurrency = Nothing
    , _rqSort = Nothing
    , _rqDimensions = Nothing
    , _rqStartIndex = Nothing
    , _rqMaxResults = Nothing
    , _rqCallback = Nothing
    }


-- | V1 error format.
rqXgafv :: Lens' ReportsQuery (Maybe Xgafv)
rqXgafv = lens _rqXgafv (\ s a -> s{_rqXgafv = a})

-- | A comma-separated list of YouTube Analytics metrics, such as \`views\`
-- or \`likes,dislikes\`. See the [Available
-- Reports](\/youtube\/analytics\/v2\/available_reports) document for a
-- list of the reports that you can retrieve and the metrics available in
-- each report, and see the
-- [Metrics](\/youtube\/analytics\/v2\/dimsmets\/mets) document for
-- definitions of those metrics. required: true, pattern: [0-9a-zA-Z,]+
rqMetrics :: Lens' ReportsQuery (Maybe Text)
rqMetrics
  = lens _rqMetrics (\ s a -> s{_rqMetrics = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rqUploadProtocol :: Lens' ReportsQuery (Maybe Text)
rqUploadProtocol
  = lens _rqUploadProtocol
      (\ s a -> s{_rqUploadProtocol = a})

-- | OAuth access token.
rqAccessToken :: Lens' ReportsQuery (Maybe Text)
rqAccessToken
  = lens _rqAccessToken
      (\ s a -> s{_rqAccessToken = a})

-- | The end date for fetching YouTube Analytics data. The value should be in
-- \`YYYY-MM-DD\` format. required: true, pattern:
-- [0-9]{4}-[0-9]{2}-[0-9]{2}
rqEndDate :: Lens' ReportsQuery (Maybe Text)
rqEndDate
  = lens _rqEndDate (\ s a -> s{_rqEndDate = a})

-- | If set to true historical data (i.e. channel data from before the
-- linking of the channel to the content owner) will be retrieved.\",
rqIncludeHistoricalChannelData :: Lens' ReportsQuery (Maybe Bool)
rqIncludeHistoricalChannelData
  = lens _rqIncludeHistoricalChannelData
      (\ s a -> s{_rqIncludeHistoricalChannelData = a})

-- | A list of filters that should be applied when retrieving YouTube
-- Analytics data. The [Available
-- Reports](\/youtube\/analytics\/v2\/available_reports) document
-- identifies the dimensions that can be used to filter each report, and
-- the [Dimensions](\/youtube\/analytics\/v2\/dimsmets\/dims) document
-- defines those dimensions. If a request uses multiple filters, join them
-- together with a semicolon (\`;\`), and the returned result table will
-- satisfy both filters. For example, a filters parameter value of
-- \`video==dMH0bHeiRNg;country==IT\` restricts the result set to include
-- data for the given video in Italy.\",
rqFilters :: Lens' ReportsQuery (Maybe Text)
rqFilters
  = lens _rqFilters (\ s a -> s{_rqFilters = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rqUploadType :: Lens' ReportsQuery (Maybe Text)
rqUploadType
  = lens _rqUploadType (\ s a -> s{_rqUploadType = a})

-- | Identifies the YouTube channel or content owner for which you are
-- retrieving YouTube Analytics data. - To request data for a YouTube user,
-- set the \`ids\` parameter value to \`channel==CHANNEL_ID\`, where
-- \`CHANNEL_ID\` specifies the unique YouTube channel ID. - To request
-- data for a YouTube CMS content owner, set the \`ids\` parameter value to
-- \`contentOwner==OWNER_NAME\`, where \`OWNER_NAME\` is the CMS name of
-- the content owner. required: true, pattern: [a-zA-Z]+==[a-zA-Z0-9_+-]+
rqIds :: Lens' ReportsQuery (Maybe Text)
rqIds = lens _rqIds (\ s a -> s{_rqIds = a})

-- | The start date for fetching YouTube Analytics data. The value should be
-- in \`YYYY-MM-DD\` format. required: true, pattern:
-- \"[0-9]{4}-[0-9]{2}-[0-9]{2}
rqStartDate :: Lens' ReportsQuery (Maybe Text)
rqStartDate
  = lens _rqStartDate (\ s a -> s{_rqStartDate = a})

-- | The currency to which financial metrics should be converted. The default
-- is US Dollar (USD). If the result contains no financial metrics, this
-- flag will be ignored. Responds with an error if the specified currency
-- is not recognized.\", pattern: [A-Z]{3}
rqCurrency :: Lens' ReportsQuery (Maybe Text)
rqCurrency
  = lens _rqCurrency (\ s a -> s{_rqCurrency = a})

-- | A comma-separated list of dimensions or metrics that determine the sort
-- order for YouTube Analytics data. By default the sort order is
-- ascending. The \'\`-\`\' prefix causes descending sort order.\",
-- pattern: [-0-9a-zA-Z,]+
rqSort :: Lens' ReportsQuery (Maybe Text)
rqSort = lens _rqSort (\ s a -> s{_rqSort = a})

-- | A comma-separated list of YouTube Analytics dimensions, such as
-- \`views\` or \`ageGroup,gender\`. See the [Available
-- Reports](\/youtube\/analytics\/v2\/available_reports) document for a
-- list of the reports that you can retrieve and the dimensions used for
-- those reports. Also see the
-- [Dimensions](\/youtube\/analytics\/v2\/dimsmets\/dims) document for
-- definitions of those dimensions.\" pattern: [0-9a-zA-Z,]+
rqDimensions :: Lens' ReportsQuery (Maybe Text)
rqDimensions
  = lens _rqDimensions (\ s a -> s{_rqDimensions = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter (one-based,
-- inclusive).\", minValue: 1
rqStartIndex :: Lens' ReportsQuery (Maybe Int32)
rqStartIndex
  = lens _rqStartIndex (\ s a -> s{_rqStartIndex = a})
      . mapping _Coerce

-- | The maximum number of rows to include in the response.\", minValue: 1
rqMaxResults :: Lens' ReportsQuery (Maybe Int32)
rqMaxResults
  = lens _rqMaxResults (\ s a -> s{_rqMaxResults = a})
      . mapping _Coerce

-- | JSONP
rqCallback :: Lens' ReportsQuery (Maybe Text)
rqCallback
  = lens _rqCallback (\ s a -> s{_rqCallback = a})

instance GoogleRequest ReportsQuery where
        type Rs ReportsQuery = QueryResponse
        type Scopes ReportsQuery =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner",
               "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
               "https://www.googleapis.com/auth/yt-analytics.readonly"]
        requestClient ReportsQuery'{..}
          = go _rqXgafv _rqMetrics _rqUploadProtocol
              _rqAccessToken
              _rqEndDate
              _rqIncludeHistoricalChannelData
              _rqFilters
              _rqUploadType
              _rqIds
              _rqStartDate
              _rqCurrency
              _rqSort
              _rqDimensions
              _rqStartIndex
              _rqMaxResults
              _rqCallback
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy ReportsQueryResource)
                      mempty
