{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.WebmasterTools.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebmasterTools.Types.Product where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types.Sum

--
-- /See:/ 'apiDataRow' smart constructor.
data ApiDataRow = ApiDataRow
    { _adrImpressions :: !(Maybe Double)
    , _adrKeys        :: !(Maybe [Text])
    , _adrCtr         :: !(Maybe Double)
    , _adrClicks      :: !(Maybe Double)
    , _adrPosition    :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApiDataRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrImpressions'
--
-- * 'adrKeys'
--
-- * 'adrCtr'
--
-- * 'adrClicks'
--
-- * 'adrPosition'
apiDataRow
    :: ApiDataRow
apiDataRow =
    ApiDataRow
    { _adrImpressions = Nothing
    , _adrKeys = Nothing
    , _adrCtr = Nothing
    , _adrClicks = Nothing
    , _adrPosition = Nothing
    }

adrImpressions :: Lens' ApiDataRow (Maybe Double)
adrImpressions
  = lens _adrImpressions
      (\ s a -> s{_adrImpressions = a})

adrKeys :: Lens' ApiDataRow [Text]
adrKeys
  = lens _adrKeys (\ s a -> s{_adrKeys = a}) . _Default
      . _Coerce

adrCtr :: Lens' ApiDataRow (Maybe Double)
adrCtr = lens _adrCtr (\ s a -> s{_adrCtr = a})

adrClicks :: Lens' ApiDataRow (Maybe Double)
adrClicks
  = lens _adrClicks (\ s a -> s{_adrClicks = a})

adrPosition :: Lens' ApiDataRow (Maybe Double)
adrPosition
  = lens _adrPosition (\ s a -> s{_adrPosition = a})

--
-- /See:/ 'apiDimensionFilter' smart constructor.
data ApiDimensionFilter = ApiDimensionFilter
    { _adfOperator   :: !(Maybe Text)
    , _adfDimension  :: !(Maybe Text)
    , _adfExpression :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApiDimensionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adfOperator'
--
-- * 'adfDimension'
--
-- * 'adfExpression'
apiDimensionFilter
    :: ApiDimensionFilter
apiDimensionFilter =
    ApiDimensionFilter
    { _adfOperator = Nothing
    , _adfDimension = Nothing
    , _adfExpression = Nothing
    }

adfOperator :: Lens' ApiDimensionFilter (Maybe Text)
adfOperator
  = lens _adfOperator (\ s a -> s{_adfOperator = a})

adfDimension :: Lens' ApiDimensionFilter (Maybe Text)
adfDimension
  = lens _adfDimension (\ s a -> s{_adfDimension = a})

adfExpression :: Lens' ApiDimensionFilter (Maybe Text)
adfExpression
  = lens _adfExpression
      (\ s a -> s{_adfExpression = a})

--
-- /See:/ 'apiDimensionFilterGroup' smart constructor.
data ApiDimensionFilterGroup = ApiDimensionFilterGroup
    { _adfgFilters   :: !(Maybe [Maybe ApiDimensionFilter])
    , _adfgGroupType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApiDimensionFilterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adfgFilters'
--
-- * 'adfgGroupType'
apiDimensionFilterGroup
    :: ApiDimensionFilterGroup
apiDimensionFilterGroup =
    ApiDimensionFilterGroup
    { _adfgFilters = Nothing
    , _adfgGroupType = Nothing
    }

adfgFilters :: Lens' ApiDimensionFilterGroup [Maybe ApiDimensionFilter]
adfgFilters
  = lens _adfgFilters (\ s a -> s{_adfgFilters = a}) .
      _Default
      . _Coerce

adfgGroupType :: Lens' ApiDimensionFilterGroup (Maybe Text)
adfgGroupType
  = lens _adfgGroupType
      (\ s a -> s{_adfgGroupType = a})

--
-- /See:/ 'searchAnalyticsQueryRequest' smart constructor.
data SearchAnalyticsQueryRequest = SearchAnalyticsQueryRequest
    { _saqrAggregationType       :: !(Maybe Text)
    , _saqrRowLimit              :: !(Maybe Int32)
    , _saqrEndDate               :: !(Maybe Text)
    , _saqrSearchType            :: !(Maybe Text)
    , _saqrDimensionFilterGroups :: !(Maybe [Maybe ApiDimensionFilterGroup])
    , _saqrStartDate             :: !(Maybe Text)
    , _saqrDimensions            :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnalyticsQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saqrAggregationType'
--
-- * 'saqrRowLimit'
--
-- * 'saqrEndDate'
--
-- * 'saqrSearchType'
--
-- * 'saqrDimensionFilterGroups'
--
-- * 'saqrStartDate'
--
-- * 'saqrDimensions'
searchAnalyticsQueryRequest
    :: SearchAnalyticsQueryRequest
searchAnalyticsQueryRequest =
    SearchAnalyticsQueryRequest
    { _saqrAggregationType = Nothing
    , _saqrRowLimit = Nothing
    , _saqrEndDate = Nothing
    , _saqrSearchType = Nothing
    , _saqrDimensionFilterGroups = Nothing
    , _saqrStartDate = Nothing
    , _saqrDimensions = Nothing
    }

-- | [Optional; Default is \"auto\"] How data is aggregated. If aggregated by
-- property, all data for the same property is aggregated; if aggregated by
-- page, all data is aggregated by canonical URI. If you filter or group by
-- page, choose AUTO; otherwise you can aggregate either by property or by
-- page, depending on how you want your data calculated; see the help
-- documentation to learn how data is calculated differently by site versus
-- by page. Note: If you group or filter by page, you cannot aggregate by
-- property. If you specify any value other than AUTO, the aggregation type
-- in the result will match the requested type, or if you request an
-- invalid type, you will get an error. The API will never change your
-- aggregation type if the requested type is invalid.
saqrAggregationType :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrAggregationType
  = lens _saqrAggregationType
      (\ s a -> s{_saqrAggregationType = a})

-- | [Optional; Default is 1000] The maximum number of rows to return. Must
-- be a number from 1 to 5,000 (inclusive).
saqrRowLimit :: Lens' SearchAnalyticsQueryRequest (Maybe Int32)
saqrRowLimit
  = lens _saqrRowLimit (\ s a -> s{_saqrRowLimit = a})

-- | [Required] End date of the requested date range, in YYYY-MM-DD format,
-- in PST (UTC - 8:00). Must be greater than or equal to the start date.
-- This value is included in the range.
saqrEndDate :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrEndDate
  = lens _saqrEndDate (\ s a -> s{_saqrEndDate = a})

-- | [Optional; Default is \"web\"] The search type to filter for.
saqrSearchType :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrSearchType
  = lens _saqrSearchType
      (\ s a -> s{_saqrSearchType = a})

-- | [Optional] Zero or more filters to apply to the dimension grouping
-- values; for example, \'query contains \"buy\"\' to see only data where
-- the query string contains the substring \"buy\" (not case-sensitive).
-- You can filter by a dimension without grouping by it.
saqrDimensionFilterGroups :: Lens' SearchAnalyticsQueryRequest [Maybe ApiDimensionFilterGroup]
saqrDimensionFilterGroups
  = lens _saqrDimensionFilterGroups
      (\ s a -> s{_saqrDimensionFilterGroups = a})
      . _Default
      . _Coerce

-- | [Required] Start date of the requested date range, in YYYY-MM-DD format,
-- in PST time (UTC - 8:00). Must be less than or equal to the end date.
-- This value is included in the range.
saqrStartDate :: Lens' SearchAnalyticsQueryRequest (Maybe Text)
saqrStartDate
  = lens _saqrStartDate
      (\ s a -> s{_saqrStartDate = a})

-- | [Optional] Zero or more dimensions to group results by. Dimensions are
-- the group-by values in the Search Analytics page. Dimensions are
-- combined to create a unique row key for each row. Results are grouped in
-- the order that you supply these dimensions.
saqrDimensions :: Lens' SearchAnalyticsQueryRequest [Text]
saqrDimensions
  = lens _saqrDimensions
      (\ s a -> s{_saqrDimensions = a})
      . _Default
      . _Coerce

-- | A list of rows, one per result, grouped by key. Metrics in each row are
-- aggregated for all data grouped by that key either by page or property,
-- as specified by the aggregation type parameter.
--
-- /See:/ 'searchAnalyticsQueryResponse' smart constructor.
data SearchAnalyticsQueryResponse = SearchAnalyticsQueryResponse
    { _saqrRows                    :: !(Maybe [Maybe ApiDataRow])
    , _saqrResponseAggregationType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchAnalyticsQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saqrRows'
--
-- * 'saqrResponseAggregationType'
searchAnalyticsQueryResponse
    :: SearchAnalyticsQueryResponse
searchAnalyticsQueryResponse =
    SearchAnalyticsQueryResponse
    { _saqrRows = Nothing
    , _saqrResponseAggregationType = Nothing
    }

-- | A list of rows grouped by the key values in the order given in the
-- query.
saqrRows :: Lens' SearchAnalyticsQueryResponse [Maybe ApiDataRow]
saqrRows
  = lens _saqrRows (\ s a -> s{_saqrRows = a}) .
      _Default
      . _Coerce

-- | How the results were aggregated.
saqrResponseAggregationType :: Lens' SearchAnalyticsQueryResponse (Maybe Text)
saqrResponseAggregationType
  = lens _saqrResponseAggregationType
      (\ s a -> s{_saqrResponseAggregationType = a})

-- | List of sitemaps.
--
-- /See:/ 'sitemapsListResponse' smart constructor.
newtype SitemapsListResponse = SitemapsListResponse
    { _slrSitemap :: Maybe [Maybe WmxSitemap]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrSitemap'
sitemapsListResponse
    :: SitemapsListResponse
sitemapsListResponse =
    SitemapsListResponse
    { _slrSitemap = Nothing
    }

-- | Contains detailed information about a specific URL submitted as a
-- sitemap.
slrSitemap :: Lens' SitemapsListResponse [Maybe WmxSitemap]
slrSitemap
  = lens _slrSitemap (\ s a -> s{_slrSitemap = a}) .
      _Default
      . _Coerce

-- | List of sites with access level information.
--
-- /See:/ 'sitesListResponse' smart constructor.
newtype SitesListResponse = SitesListResponse
    { _slrSiteEntry :: Maybe [Maybe WmxSite]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrSiteEntry'
sitesListResponse
    :: SitesListResponse
sitesListResponse =
    SitesListResponse
    { _slrSiteEntry = Nothing
    }

-- | Contains permission level information about a Webmaster Tools site. For
-- more information, see Permissions in Webmaster Tools.
slrSiteEntry :: Lens' SitesListResponse [Maybe WmxSite]
slrSiteEntry
  = lens _slrSiteEntry (\ s a -> s{_slrSiteEntry = a})
      . _Default
      . _Coerce

-- | An entry in a URL crawl errors time series.
--
-- /See:/ 'urlCrawlErrorCount' smart constructor.
data UrlCrawlErrorCount = UrlCrawlErrorCount
    { _ucecCount     :: !(Maybe Int64)
    , _ucecTimestamp :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlCrawlErrorCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecCount'
--
-- * 'ucecTimestamp'
urlCrawlErrorCount
    :: UrlCrawlErrorCount
urlCrawlErrorCount =
    UrlCrawlErrorCount
    { _ucecCount = Nothing
    , _ucecTimestamp = Nothing
    }

-- | The error count at the given timestamp.
ucecCount :: Lens' UrlCrawlErrorCount (Maybe Int64)
ucecCount
  = lens _ucecCount (\ s a -> s{_ucecCount = a})

-- | The date and time when the crawl attempt took place, in RFC 3339 format.
ucecTimestamp :: Lens' UrlCrawlErrorCount (Maybe UTCTime)
ucecTimestamp
  = lens _ucecTimestamp
      (\ s a -> s{_ucecTimestamp = a})

-- | Number of errors per day for a specific error type (defined by platform
-- and category).
--
-- /See:/ 'urlCrawlErrorCountsPerType' smart constructor.
data UrlCrawlErrorCountsPerType = UrlCrawlErrorCountsPerType
    { _ucecptPlatform :: !(Maybe Text)
    , _ucecptEntries  :: !(Maybe [Maybe UrlCrawlErrorCount])
    , _ucecptCategory :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlCrawlErrorCountsPerType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecptPlatform'
--
-- * 'ucecptEntries'
--
-- * 'ucecptCategory'
urlCrawlErrorCountsPerType
    :: UrlCrawlErrorCountsPerType
urlCrawlErrorCountsPerType =
    UrlCrawlErrorCountsPerType
    { _ucecptPlatform = Nothing
    , _ucecptEntries = Nothing
    , _ucecptCategory = Nothing
    }

-- | The general type of Googlebot that made the request (see list of
-- Googlebot user-agents for the user-agents used).
ucecptPlatform :: Lens' UrlCrawlErrorCountsPerType (Maybe Text)
ucecptPlatform
  = lens _ucecptPlatform
      (\ s a -> s{_ucecptPlatform = a})

-- | The error count entries time series.
ucecptEntries :: Lens' UrlCrawlErrorCountsPerType [Maybe UrlCrawlErrorCount]
ucecptEntries
  = lens _ucecptEntries
      (\ s a -> s{_ucecptEntries = a})
      . _Default
      . _Coerce

-- | The crawl error type.
ucecptCategory :: Lens' UrlCrawlErrorCountsPerType (Maybe Text)
ucecptCategory
  = lens _ucecptCategory
      (\ s a -> s{_ucecptCategory = a})

-- | A time series of the number of URL crawl errors per error category and
-- platform.
--
-- /See:/ 'urlCrawlErrorsCountsQueryResponse' smart constructor.
newtype UrlCrawlErrorsCountsQueryResponse = UrlCrawlErrorsCountsQueryResponse
    { _ucecqrCountPerTypes :: Maybe [Maybe UrlCrawlErrorCountsPerType]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlCrawlErrorsCountsQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecqrCountPerTypes'
urlCrawlErrorsCountsQueryResponse
    :: UrlCrawlErrorsCountsQueryResponse
urlCrawlErrorsCountsQueryResponse =
    UrlCrawlErrorsCountsQueryResponse
    { _ucecqrCountPerTypes = Nothing
    }

-- | The time series of the number of URL crawl errors per error category and
-- platform.
ucecqrCountPerTypes :: Lens' UrlCrawlErrorsCountsQueryResponse [Maybe UrlCrawlErrorCountsPerType]
ucecqrCountPerTypes
  = lens _ucecqrCountPerTypes
      (\ s a -> s{_ucecqrCountPerTypes = a})
      . _Default
      . _Coerce

-- | Contains information about specific crawl errors.
--
-- /See:/ 'urlCrawlErrorsSample' smart constructor.
data UrlCrawlErrorsSample = UrlCrawlErrorsSample
    { _ucesResponseCode  :: !(Maybe Int32)
    , _ucesUrlDetails    :: !(Maybe (Maybe UrlSampleDetails))
    , _ucesLastCrawled   :: !(Maybe UTCTime)
    , _ucesPageUrl       :: !(Maybe Text)
    , _ucesFirstDetected :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlCrawlErrorsSample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesResponseCode'
--
-- * 'ucesUrlDetails'
--
-- * 'ucesLastCrawled'
--
-- * 'ucesPageUrl'
--
-- * 'ucesFirstDetected'
urlCrawlErrorsSample
    :: UrlCrawlErrorsSample
urlCrawlErrorsSample =
    UrlCrawlErrorsSample
    { _ucesResponseCode = Nothing
    , _ucesUrlDetails = Nothing
    , _ucesLastCrawled = Nothing
    , _ucesPageUrl = Nothing
    , _ucesFirstDetected = Nothing
    }

-- | The HTTP response code, if any.
ucesResponseCode :: Lens' UrlCrawlErrorsSample (Maybe Int32)
ucesResponseCode
  = lens _ucesResponseCode
      (\ s a -> s{_ucesResponseCode = a})

-- | Additional details about the URL, set only when calling get().
ucesUrlDetails :: Lens' UrlCrawlErrorsSample (Maybe (Maybe UrlSampleDetails))
ucesUrlDetails
  = lens _ucesUrlDetails
      (\ s a -> s{_ucesUrlDetails = a})

-- | The time when the URL was last crawled, in RFC 3339 format.
ucesLastCrawled :: Lens' UrlCrawlErrorsSample (Maybe UTCTime)
ucesLastCrawled
  = lens _ucesLastCrawled
      (\ s a -> s{_ucesLastCrawled = a})

-- | The URL of an error, relative to the site.
ucesPageUrl :: Lens' UrlCrawlErrorsSample (Maybe Text)
ucesPageUrl
  = lens _ucesPageUrl (\ s a -> s{_ucesPageUrl = a})

-- | The time the error was first detected, in RFC 3339 format.
ucesFirstDetected :: Lens' UrlCrawlErrorsSample (Maybe UTCTime)
ucesFirstDetected
  = lens _ucesFirstDetected
      (\ s a -> s{_ucesFirstDetected = a})

-- | List of crawl error samples.
--
-- /See:/ 'urlCrawlErrorsSamplesListResponse' smart constructor.
newtype UrlCrawlErrorsSamplesListResponse = UrlCrawlErrorsSamplesListResponse
    { _uceslrUrlCrawlErrorSample :: Maybe [Maybe UrlCrawlErrorsSample]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlCrawlErrorsSamplesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceslrUrlCrawlErrorSample'
urlCrawlErrorsSamplesListResponse
    :: UrlCrawlErrorsSamplesListResponse
urlCrawlErrorsSamplesListResponse =
    UrlCrawlErrorsSamplesListResponse
    { _uceslrUrlCrawlErrorSample = Nothing
    }

-- | Information about the sample URL and its crawl error.
uceslrUrlCrawlErrorSample :: Lens' UrlCrawlErrorsSamplesListResponse [Maybe UrlCrawlErrorsSample]
uceslrUrlCrawlErrorSample
  = lens _uceslrUrlCrawlErrorSample
      (\ s a -> s{_uceslrUrlCrawlErrorSample = a})
      . _Default
      . _Coerce

-- | Additional details about the URL, set only when calling get().
--
-- /See:/ 'urlSampleDetails' smart constructor.
data UrlSampleDetails = UrlSampleDetails
    { _usdLinkedFromUrls     :: !(Maybe [Text])
    , _usdContainingSitemaps :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlSampleDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdLinkedFromUrls'
--
-- * 'usdContainingSitemaps'
urlSampleDetails
    :: UrlSampleDetails
urlSampleDetails =
    UrlSampleDetails
    { _usdLinkedFromUrls = Nothing
    , _usdContainingSitemaps = Nothing
    }

-- | A sample set of URLs linking to this URL.
usdLinkedFromUrls :: Lens' UrlSampleDetails [Text]
usdLinkedFromUrls
  = lens _usdLinkedFromUrls
      (\ s a -> s{_usdLinkedFromUrls = a})
      . _Default
      . _Coerce

-- | List of sitemaps pointing at this URL.
usdContainingSitemaps :: Lens' UrlSampleDetails [Text]
usdContainingSitemaps
  = lens _usdContainingSitemaps
      (\ s a -> s{_usdContainingSitemaps = a})
      . _Default
      . _Coerce

-- | Contains permission level information about a Webmaster Tools site. For
-- more information, see Permissions in Webmaster Tools.
--
-- /See:/ 'wmxSite' smart constructor.
data WmxSite = WmxSite
    { _wsPermissionLevel :: !(Maybe Text)
    , _wsSiteUrl         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsPermissionLevel'
--
-- * 'wsSiteUrl'
wmxSite
    :: WmxSite
wmxSite =
    WmxSite
    { _wsPermissionLevel = Nothing
    , _wsSiteUrl = Nothing
    }

-- | The user\'s permission level for the site.
wsPermissionLevel :: Lens' WmxSite (Maybe Text)
wsPermissionLevel
  = lens _wsPermissionLevel
      (\ s a -> s{_wsPermissionLevel = a})

-- | The URL of the site.
wsSiteUrl :: Lens' WmxSite (Maybe Text)
wsSiteUrl
  = lens _wsSiteUrl (\ s a -> s{_wsSiteUrl = a})

-- | Contains detailed information about a specific URL submitted as a
-- sitemap.
--
-- /See:/ 'wmxSitemap' smart constructor.
data WmxSitemap = WmxSitemap
    { _wsContents        :: !(Maybe [Maybe WmxSitemapContent])
    , _wsPath            :: !(Maybe Text)
    , _wsIsSitemapsIndex :: !(Maybe Bool)
    , _wsLastSubmitted   :: !(Maybe UTCTime)
    , _wsWarnings        :: !(Maybe Int64)
    , _wsLastDownloaded  :: !(Maybe UTCTime)
    , _wsIsPending       :: !(Maybe Bool)
    , _wsType            :: !(Maybe Text)
    , _wsErrors          :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSitemap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsContents'
--
-- * 'wsPath'
--
-- * 'wsIsSitemapsIndex'
--
-- * 'wsLastSubmitted'
--
-- * 'wsWarnings'
--
-- * 'wsLastDownloaded'
--
-- * 'wsIsPending'
--
-- * 'wsType'
--
-- * 'wsErrors'
wmxSitemap
    :: WmxSitemap
wmxSitemap =
    WmxSitemap
    { _wsContents = Nothing
    , _wsPath = Nothing
    , _wsIsSitemapsIndex = Nothing
    , _wsLastSubmitted = Nothing
    , _wsWarnings = Nothing
    , _wsLastDownloaded = Nothing
    , _wsIsPending = Nothing
    , _wsType = Nothing
    , _wsErrors = Nothing
    }

-- | The various content types in the sitemap.
wsContents :: Lens' WmxSitemap [Maybe WmxSitemapContent]
wsContents
  = lens _wsContents (\ s a -> s{_wsContents = a}) .
      _Default
      . _Coerce

-- | The url of the sitemap.
wsPath :: Lens' WmxSitemap (Maybe Text)
wsPath = lens _wsPath (\ s a -> s{_wsPath = a})

-- | If true, the sitemap is a collection of sitemaps.
wsIsSitemapsIndex :: Lens' WmxSitemap (Maybe Bool)
wsIsSitemapsIndex
  = lens _wsIsSitemapsIndex
      (\ s a -> s{_wsIsSitemapsIndex = a})

-- | Date & time in which this sitemap was submitted. Date format is in RFC
-- 3339 format (yyyy-mm-dd).
wsLastSubmitted :: Lens' WmxSitemap (Maybe UTCTime)
wsLastSubmitted
  = lens _wsLastSubmitted
      (\ s a -> s{_wsLastSubmitted = a})

-- | Number of warnings for the sitemap. These are generally non-critical
-- issues with URLs in the sitemaps.
wsWarnings :: Lens' WmxSitemap (Maybe Int64)
wsWarnings
  = lens _wsWarnings (\ s a -> s{_wsWarnings = a})

-- | Date & time in which this sitemap was last downloaded. Date format is in
-- RFC 3339 format (yyyy-mm-dd).
wsLastDownloaded :: Lens' WmxSitemap (Maybe UTCTime)
wsLastDownloaded
  = lens _wsLastDownloaded
      (\ s a -> s{_wsLastDownloaded = a})

-- | If true, the sitemap has not been processed.
wsIsPending :: Lens' WmxSitemap (Maybe Bool)
wsIsPending
  = lens _wsIsPending (\ s a -> s{_wsIsPending = a})

-- | The type of the sitemap. For example: rssFeed.
wsType :: Lens' WmxSitemap (Maybe Text)
wsType = lens _wsType (\ s a -> s{_wsType = a})

-- | Number of errors in the sitemap. These are issues with the sitemap
-- itself that need to be fixed before it can be processed correctly.
wsErrors :: Lens' WmxSitemap (Maybe Int64)
wsErrors = lens _wsErrors (\ s a -> s{_wsErrors = a})

-- | Information about the various content types in the sitemap.
--
-- /See:/ 'wmxSitemapContent' smart constructor.
data WmxSitemapContent = WmxSitemapContent
    { _wscIndexed   :: !(Maybe Int64)
    , _wscType      :: !(Maybe Text)
    , _wscSubmitted :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSitemapContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wscIndexed'
--
-- * 'wscType'
--
-- * 'wscSubmitted'
wmxSitemapContent
    :: WmxSitemapContent
wmxSitemapContent =
    WmxSitemapContent
    { _wscIndexed = Nothing
    , _wscType = Nothing
    , _wscSubmitted = Nothing
    }

-- | The number of URLs from the sitemap that were indexed (of the content
-- type).
wscIndexed :: Lens' WmxSitemapContent (Maybe Int64)
wscIndexed
  = lens _wscIndexed (\ s a -> s{_wscIndexed = a})

-- | The specific type of content in this sitemap. For example: web.
wscType :: Lens' WmxSitemapContent (Maybe Text)
wscType = lens _wscType (\ s a -> s{_wscType = a})

-- | The number of URLs in the sitemap (of the content type).
wscSubmitted :: Lens' WmxSitemapContent (Maybe Int64)
wscSubmitted
  = lens _wscSubmitted (\ s a -> s{_wscSubmitted = a})
