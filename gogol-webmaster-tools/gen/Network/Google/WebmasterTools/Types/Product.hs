{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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

-- | Information about the various content types in the sitemap.
--
-- /See:/ 'wmxSitemapContent' smart constructor.
data WmxSitemapContent = WmxSitemapContent
    { _wscIndexed   :: !(Maybe (Textual Int64))
    , _wscType      :: !(Maybe Text)
    , _wscSubmitted :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
  = lens _wscIndexed (\ s a -> s{_wscIndexed = a}) .
      mapping _Coerce

-- | The specific type of content in this sitemap. For example: web.
wscType :: Lens' WmxSitemapContent (Maybe Text)
wscType = lens _wscType (\ s a -> s{_wscType = a})

-- | The number of URLs in the sitemap (of the content type).
wscSubmitted :: Lens' WmxSitemapContent (Maybe Int64)
wscSubmitted
  = lens _wscSubmitted (\ s a -> s{_wscSubmitted = a})
      . mapping _Coerce

instance FromJSON WmxSitemapContent where
        parseJSON
          = withObject "WmxSitemapContent"
              (\ o ->
                 WmxSitemapContent <$>
                   (o .:? "indexed") <*> (o .:? "type") <*>
                     (o .:? "submitted"))

instance ToJSON WmxSitemapContent where
        toJSON WmxSitemapContent{..}
          = object
              (catMaybes
                 [("indexed" .=) <$> _wscIndexed,
                  ("type" .=) <$> _wscType,
                  ("submitted" .=) <$> _wscSubmitted])

--
-- /See:/ 'apidimensionFilterGroup' smart constructor.
data APIdimensionFilterGroup = APIdimensionFilterGroup
    { _afgFilters   :: !(Maybe [APIdimensionFilter])
    , _afgGroupType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIdimensionFilterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afgFilters'
--
-- * 'afgGroupType'
apidimensionFilterGroup
    :: APIdimensionFilterGroup
apidimensionFilterGroup =
    APIdimensionFilterGroup
    { _afgFilters = Nothing
    , _afgGroupType = Nothing
    }

afgFilters :: Lens' APIdimensionFilterGroup [APIdimensionFilter]
afgFilters
  = lens _afgFilters (\ s a -> s{_afgFilters = a}) .
      _Default
      . _Coerce

afgGroupType :: Lens' APIdimensionFilterGroup (Maybe Text)
afgGroupType
  = lens _afgGroupType (\ s a -> s{_afgGroupType = a})

instance FromJSON APIdimensionFilterGroup where
        parseJSON
          = withObject "APIdimensionFilterGroup"
              (\ o ->
                 APIdimensionFilterGroup <$>
                   (o .:? "filters" .!= mempty) <*> (o .:? "groupType"))

instance ToJSON APIdimensionFilterGroup where
        toJSON APIdimensionFilterGroup{..}
          = object
              (catMaybes
                 [("filters" .=) <$> _afgFilters,
                  ("groupType" .=) <$> _afgGroupType])

-- | Additional details about the URL, set only when calling get().
--
-- /See:/ 'urlSampleDetails' smart constructor.
data URLSampleDetails = URLSampleDetails
    { _usdLinkedFromURLs     :: !(Maybe [Text])
    , _usdContainingSitemaps :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLSampleDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdLinkedFromURLs'
--
-- * 'usdContainingSitemaps'
urlSampleDetails
    :: URLSampleDetails
urlSampleDetails =
    URLSampleDetails
    { _usdLinkedFromURLs = Nothing
    , _usdContainingSitemaps = Nothing
    }

-- | A sample set of URLs linking to this URL.
usdLinkedFromURLs :: Lens' URLSampleDetails [Text]
usdLinkedFromURLs
  = lens _usdLinkedFromURLs
      (\ s a -> s{_usdLinkedFromURLs = a})
      . _Default
      . _Coerce

-- | List of sitemaps pointing at this URL.
usdContainingSitemaps :: Lens' URLSampleDetails [Text]
usdContainingSitemaps
  = lens _usdContainingSitemaps
      (\ s a -> s{_usdContainingSitemaps = a})
      . _Default
      . _Coerce

instance FromJSON URLSampleDetails where
        parseJSON
          = withObject "URLSampleDetails"
              (\ o ->
                 URLSampleDetails <$>
                   (o .:? "linkedFromUrls" .!= mempty) <*>
                     (o .:? "containingSitemaps" .!= mempty))

instance ToJSON URLSampleDetails where
        toJSON URLSampleDetails{..}
          = object
              (catMaybes
                 [("linkedFromUrls" .=) <$> _usdLinkedFromURLs,
                  ("containingSitemaps" .=) <$>
                    _usdContainingSitemaps])

-- | Number of errors per day for a specific error type (defined by platform
-- and category).
--
-- /See:/ 'urlCrawlErrorCountsPerType' smart constructor.
data URLCrawlErrorCountsPerType = URLCrawlErrorCountsPerType
    { _ucecptPlatform :: !(Maybe Text)
    , _ucecptEntries  :: !(Maybe [URLCrawlErrorCount])
    , _ucecptCategory :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorCountsPerType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecptPlatform'
--
-- * 'ucecptEntries'
--
-- * 'ucecptCategory'
urlCrawlErrorCountsPerType
    :: URLCrawlErrorCountsPerType
urlCrawlErrorCountsPerType =
    URLCrawlErrorCountsPerType
    { _ucecptPlatform = Nothing
    , _ucecptEntries = Nothing
    , _ucecptCategory = Nothing
    }

-- | The general type of Googlebot that made the request (see list of
-- Googlebot user-agents for the user-agents used).
ucecptPlatform :: Lens' URLCrawlErrorCountsPerType (Maybe Text)
ucecptPlatform
  = lens _ucecptPlatform
      (\ s a -> s{_ucecptPlatform = a})

-- | The error count entries time series.
ucecptEntries :: Lens' URLCrawlErrorCountsPerType [URLCrawlErrorCount]
ucecptEntries
  = lens _ucecptEntries
      (\ s a -> s{_ucecptEntries = a})
      . _Default
      . _Coerce

-- | The crawl error type.
ucecptCategory :: Lens' URLCrawlErrorCountsPerType (Maybe Text)
ucecptCategory
  = lens _ucecptCategory
      (\ s a -> s{_ucecptCategory = a})

instance FromJSON URLCrawlErrorCountsPerType where
        parseJSON
          = withObject "URLCrawlErrorCountsPerType"
              (\ o ->
                 URLCrawlErrorCountsPerType <$>
                   (o .:? "platform") <*> (o .:? "entries" .!= mempty)
                     <*> (o .:? "category"))

instance ToJSON URLCrawlErrorCountsPerType where
        toJSON URLCrawlErrorCountsPerType{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _ucecptPlatform,
                  ("entries" .=) <$> _ucecptEntries,
                  ("category" .=) <$> _ucecptCategory])

--
-- /See:/ 'apiDataRow' smart constructor.
data APIDataRow = APIDataRow
    { _adrImpressions :: !(Maybe (Textual Double))
    , _adrKeys        :: !(Maybe [Text])
    , _adrCtr         :: !(Maybe (Textual Double))
    , _adrClicks      :: !(Maybe (Textual Double))
    , _adrPosition    :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIDataRow' with the minimum fields required to make a request.
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
    :: APIDataRow
apiDataRow =
    APIDataRow
    { _adrImpressions = Nothing
    , _adrKeys = Nothing
    , _adrCtr = Nothing
    , _adrClicks = Nothing
    , _adrPosition = Nothing
    }

adrImpressions :: Lens' APIDataRow (Maybe Double)
adrImpressions
  = lens _adrImpressions
      (\ s a -> s{_adrImpressions = a})
      . mapping _Coerce

adrKeys :: Lens' APIDataRow [Text]
adrKeys
  = lens _adrKeys (\ s a -> s{_adrKeys = a}) . _Default
      . _Coerce

adrCtr :: Lens' APIDataRow (Maybe Double)
adrCtr
  = lens _adrCtr (\ s a -> s{_adrCtr = a}) .
      mapping _Coerce

adrClicks :: Lens' APIDataRow (Maybe Double)
adrClicks
  = lens _adrClicks (\ s a -> s{_adrClicks = a}) .
      mapping _Coerce

adrPosition :: Lens' APIDataRow (Maybe Double)
adrPosition
  = lens _adrPosition (\ s a -> s{_adrPosition = a}) .
      mapping _Coerce

instance FromJSON APIDataRow where
        parseJSON
          = withObject "APIDataRow"
              (\ o ->
                 APIDataRow <$>
                   (o .:? "impressions") <*> (o .:? "keys" .!= mempty)
                     <*> (o .:? "ctr")
                     <*> (o .:? "clicks")
                     <*> (o .:? "position"))

instance ToJSON APIDataRow where
        toJSON APIDataRow{..}
          = object
              (catMaybes
                 [("impressions" .=) <$> _adrImpressions,
                  ("keys" .=) <$> _adrKeys, ("ctr" .=) <$> _adrCtr,
                  ("clicks" .=) <$> _adrClicks,
                  ("position" .=) <$> _adrPosition])

--
-- /See:/ 'apidimensionFilter' smart constructor.
data APIdimensionFilter = APIdimensionFilter
    { _afOperator   :: !(Maybe Text)
    , _afDimension  :: !(Maybe Text)
    , _afExpression :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIdimensionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afOperator'
--
-- * 'afDimension'
--
-- * 'afExpression'
apidimensionFilter
    :: APIdimensionFilter
apidimensionFilter =
    APIdimensionFilter
    { _afOperator = Nothing
    , _afDimension = Nothing
    , _afExpression = Nothing
    }

afOperator :: Lens' APIdimensionFilter (Maybe Text)
afOperator
  = lens _afOperator (\ s a -> s{_afOperator = a})

afDimension :: Lens' APIdimensionFilter (Maybe Text)
afDimension
  = lens _afDimension (\ s a -> s{_afDimension = a})

afExpression :: Lens' APIdimensionFilter (Maybe Text)
afExpression
  = lens _afExpression (\ s a -> s{_afExpression = a})

instance FromJSON APIdimensionFilter where
        parseJSON
          = withObject "APIdimensionFilter"
              (\ o ->
                 APIdimensionFilter <$>
                   (o .:? "operator") <*> (o .:? "dimension") <*>
                     (o .:? "expression"))

instance ToJSON APIdimensionFilter where
        toJSON APIdimensionFilter{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _afOperator,
                  ("dimension" .=) <$> _afDimension,
                  ("expression" .=) <$> _afExpression])

-- | An entry in a URL crawl errors time series.
--
-- /See:/ 'urlCrawlErrorCount' smart constructor.
data URLCrawlErrorCount = URLCrawlErrorCount
    { _ucecCount     :: !(Maybe (Textual Int64))
    , _ucecTimestamp :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecCount'
--
-- * 'ucecTimestamp'
urlCrawlErrorCount
    :: URLCrawlErrorCount
urlCrawlErrorCount =
    URLCrawlErrorCount
    { _ucecCount = Nothing
    , _ucecTimestamp = Nothing
    }

-- | The error count at the given timestamp.
ucecCount :: Lens' URLCrawlErrorCount (Maybe Int64)
ucecCount
  = lens _ucecCount (\ s a -> s{_ucecCount = a}) .
      mapping _Coerce

-- | The date and time when the crawl attempt took place, in RFC 3339 format.
ucecTimestamp :: Lens' URLCrawlErrorCount (Maybe UTCTime)
ucecTimestamp
  = lens _ucecTimestamp
      (\ s a -> s{_ucecTimestamp = a})
      . mapping _DateTime

instance FromJSON URLCrawlErrorCount where
        parseJSON
          = withObject "URLCrawlErrorCount"
              (\ o ->
                 URLCrawlErrorCount <$>
                   (o .:? "count") <*> (o .:? "timestamp"))

instance ToJSON URLCrawlErrorCount where
        toJSON URLCrawlErrorCount{..}
          = object
              (catMaybes
                 [("count" .=) <$> _ucecCount,
                  ("timestamp" .=) <$> _ucecTimestamp])

-- | A list of rows, one per result, grouped by key. Metrics in each row are
-- aggregated for all data grouped by that key either by page or property,
-- as specified by the aggregation type parameter.
--
-- /See:/ 'searchAnalyticsQueryResponse' smart constructor.
data SearchAnalyticsQueryResponse = SearchAnalyticsQueryResponse
    { _saqrRows                    :: !(Maybe [APIDataRow])
    , _saqrResponseAggregationType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
saqrRows :: Lens' SearchAnalyticsQueryResponse [APIDataRow]
saqrRows
  = lens _saqrRows (\ s a -> s{_saqrRows = a}) .
      _Default
      . _Coerce

-- | How the results were aggregated.
saqrResponseAggregationType :: Lens' SearchAnalyticsQueryResponse (Maybe Text)
saqrResponseAggregationType
  = lens _saqrResponseAggregationType
      (\ s a -> s{_saqrResponseAggregationType = a})

instance FromJSON SearchAnalyticsQueryResponse where
        parseJSON
          = withObject "SearchAnalyticsQueryResponse"
              (\ o ->
                 SearchAnalyticsQueryResponse <$>
                   (o .:? "rows" .!= mempty) <*>
                     (o .:? "responseAggregationType"))

instance ToJSON SearchAnalyticsQueryResponse where
        toJSON SearchAnalyticsQueryResponse{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _saqrRows,
                  ("responseAggregationType" .=) <$>
                    _saqrResponseAggregationType])

-- | List of crawl error samples.
--
-- /See:/ 'urlCrawlErrorsSamplesListResponse' smart constructor.
newtype URLCrawlErrorsSamplesListResponse = URLCrawlErrorsSamplesListResponse
    { _uceslrURLCrawlErrorSample :: Maybe [URLCrawlErrorsSample]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceslrURLCrawlErrorSample'
urlCrawlErrorsSamplesListResponse
    :: URLCrawlErrorsSamplesListResponse
urlCrawlErrorsSamplesListResponse =
    URLCrawlErrorsSamplesListResponse
    { _uceslrURLCrawlErrorSample = Nothing
    }

-- | Information about the sample URL and its crawl error.
uceslrURLCrawlErrorSample :: Lens' URLCrawlErrorsSamplesListResponse [URLCrawlErrorsSample]
uceslrURLCrawlErrorSample
  = lens _uceslrURLCrawlErrorSample
      (\ s a -> s{_uceslrURLCrawlErrorSample = a})
      . _Default
      . _Coerce

instance FromJSON URLCrawlErrorsSamplesListResponse
         where
        parseJSON
          = withObject "URLCrawlErrorsSamplesListResponse"
              (\ o ->
                 URLCrawlErrorsSamplesListResponse <$>
                   (o .:? "urlCrawlErrorSample" .!= mempty))

instance ToJSON URLCrawlErrorsSamplesListResponse
         where
        toJSON URLCrawlErrorsSamplesListResponse{..}
          = object
              (catMaybes
                 [("urlCrawlErrorSample" .=) <$>
                    _uceslrURLCrawlErrorSample])

-- | A time series of the number of URL crawl errors per error category and
-- platform.
--
-- /See:/ 'urlCrawlErrorsCountsQueryResponse' smart constructor.
newtype URLCrawlErrorsCountsQueryResponse = URLCrawlErrorsCountsQueryResponse
    { _ucecqrCountPerTypes :: Maybe [URLCrawlErrorCountsPerType]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsCountsQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucecqrCountPerTypes'
urlCrawlErrorsCountsQueryResponse
    :: URLCrawlErrorsCountsQueryResponse
urlCrawlErrorsCountsQueryResponse =
    URLCrawlErrorsCountsQueryResponse
    { _ucecqrCountPerTypes = Nothing
    }

-- | The time series of the number of URL crawl errors per error category and
-- platform.
ucecqrCountPerTypes :: Lens' URLCrawlErrorsCountsQueryResponse [URLCrawlErrorCountsPerType]
ucecqrCountPerTypes
  = lens _ucecqrCountPerTypes
      (\ s a -> s{_ucecqrCountPerTypes = a})
      . _Default
      . _Coerce

instance FromJSON URLCrawlErrorsCountsQueryResponse
         where
        parseJSON
          = withObject "URLCrawlErrorsCountsQueryResponse"
              (\ o ->
                 URLCrawlErrorsCountsQueryResponse <$>
                   (o .:? "countPerTypes" .!= mempty))

instance ToJSON URLCrawlErrorsCountsQueryResponse
         where
        toJSON URLCrawlErrorsCountsQueryResponse{..}
          = object
              (catMaybes
                 [("countPerTypes" .=) <$> _ucecqrCountPerTypes])

-- | Contains information about specific crawl errors.
--
-- /See:/ 'urlCrawlErrorsSample' smart constructor.
data URLCrawlErrorsSample = URLCrawlErrorsSample
    { _ucesResponseCode  :: !(Maybe (Textual Int32))
    , _ucesURLDetails    :: !(Maybe URLSampleDetails)
    , _ucesLastCrawled   :: !(Maybe DateTime')
    , _ucesPageURL       :: !(Maybe Text)
    , _ucesFirstDetected :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesResponseCode'
--
-- * 'ucesURLDetails'
--
-- * 'ucesLastCrawled'
--
-- * 'ucesPageURL'
--
-- * 'ucesFirstDetected'
urlCrawlErrorsSample
    :: URLCrawlErrorsSample
urlCrawlErrorsSample =
    URLCrawlErrorsSample
    { _ucesResponseCode = Nothing
    , _ucesURLDetails = Nothing
    , _ucesLastCrawled = Nothing
    , _ucesPageURL = Nothing
    , _ucesFirstDetected = Nothing
    }

-- | The HTTP response code, if any.
ucesResponseCode :: Lens' URLCrawlErrorsSample (Maybe Int32)
ucesResponseCode
  = lens _ucesResponseCode
      (\ s a -> s{_ucesResponseCode = a})
      . mapping _Coerce

-- | Additional details about the URL, set only when calling get().
ucesURLDetails :: Lens' URLCrawlErrorsSample (Maybe URLSampleDetails)
ucesURLDetails
  = lens _ucesURLDetails
      (\ s a -> s{_ucesURLDetails = a})

-- | The time when the URL was last crawled, in RFC 3339 format.
ucesLastCrawled :: Lens' URLCrawlErrorsSample (Maybe UTCTime)
ucesLastCrawled
  = lens _ucesLastCrawled
      (\ s a -> s{_ucesLastCrawled = a})
      . mapping _DateTime

-- | The URL of an error, relative to the site.
ucesPageURL :: Lens' URLCrawlErrorsSample (Maybe Text)
ucesPageURL
  = lens _ucesPageURL (\ s a -> s{_ucesPageURL = a})

-- | The time the error was first detected, in RFC 3339 format.
ucesFirstDetected :: Lens' URLCrawlErrorsSample (Maybe UTCTime)
ucesFirstDetected
  = lens _ucesFirstDetected
      (\ s a -> s{_ucesFirstDetected = a})
      . mapping _DateTime

instance FromJSON URLCrawlErrorsSample where
        parseJSON
          = withObject "URLCrawlErrorsSample"
              (\ o ->
                 URLCrawlErrorsSample <$>
                   (o .:? "responseCode") <*> (o .:? "urlDetails") <*>
                     (o .:? "last_crawled")
                     <*> (o .:? "pageUrl")
                     <*> (o .:? "first_detected"))

instance ToJSON URLCrawlErrorsSample where
        toJSON URLCrawlErrorsSample{..}
          = object
              (catMaybes
                 [("responseCode" .=) <$> _ucesResponseCode,
                  ("urlDetails" .=) <$> _ucesURLDetails,
                  ("last_crawled" .=) <$> _ucesLastCrawled,
                  ("pageUrl" .=) <$> _ucesPageURL,
                  ("first_detected" .=) <$> _ucesFirstDetected])

-- | Contains detailed information about a specific URL submitted as a
-- sitemap.
--
-- /See:/ 'wmxSitemap' smart constructor.
data WmxSitemap = WmxSitemap
    { _wsContents        :: !(Maybe [WmxSitemapContent])
    , _wsPath            :: !(Maybe Text)
    , _wsIsSitemapsIndex :: !(Maybe Bool)
    , _wsLastSubmitted   :: !(Maybe DateTime')
    , _wsWarnings        :: !(Maybe (Textual Int64))
    , _wsLastDownloaded  :: !(Maybe DateTime')
    , _wsIsPending       :: !(Maybe Bool)
    , _wsType            :: !(Maybe Text)
    , _wsErrors          :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
wsContents :: Lens' WmxSitemap [WmxSitemapContent]
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
      . mapping _DateTime

-- | Number of warnings for the sitemap. These are generally non-critical
-- issues with URLs in the sitemaps.
wsWarnings :: Lens' WmxSitemap (Maybe Int64)
wsWarnings
  = lens _wsWarnings (\ s a -> s{_wsWarnings = a}) .
      mapping _Coerce

-- | Date & time in which this sitemap was last downloaded. Date format is in
-- RFC 3339 format (yyyy-mm-dd).
wsLastDownloaded :: Lens' WmxSitemap (Maybe UTCTime)
wsLastDownloaded
  = lens _wsLastDownloaded
      (\ s a -> s{_wsLastDownloaded = a})
      . mapping _DateTime

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
wsErrors
  = lens _wsErrors (\ s a -> s{_wsErrors = a}) .
      mapping _Coerce

instance FromJSON WmxSitemap where
        parseJSON
          = withObject "WmxSitemap"
              (\ o ->
                 WmxSitemap <$>
                   (o .:? "contents" .!= mempty) <*> (o .:? "path") <*>
                     (o .:? "isSitemapsIndex")
                     <*> (o .:? "lastSubmitted")
                     <*> (o .:? "warnings")
                     <*> (o .:? "lastDownloaded")
                     <*> (o .:? "isPending")
                     <*> (o .:? "type")
                     <*> (o .:? "errors"))

instance ToJSON WmxSitemap where
        toJSON WmxSitemap{..}
          = object
              (catMaybes
                 [("contents" .=) <$> _wsContents,
                  ("path" .=) <$> _wsPath,
                  ("isSitemapsIndex" .=) <$> _wsIsSitemapsIndex,
                  ("lastSubmitted" .=) <$> _wsLastSubmitted,
                  ("warnings" .=) <$> _wsWarnings,
                  ("lastDownloaded" .=) <$> _wsLastDownloaded,
                  ("isPending" .=) <$> _wsIsPending,
                  ("type" .=) <$> _wsType,
                  ("errors" .=) <$> _wsErrors])

-- | List of sitemaps.
--
-- /See:/ 'sitemapsListResponse' smart constructor.
newtype SitemapsListResponse = SitemapsListResponse
    { _slrSitemap :: Maybe [WmxSitemap]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
slrSitemap :: Lens' SitemapsListResponse [WmxSitemap]
slrSitemap
  = lens _slrSitemap (\ s a -> s{_slrSitemap = a}) .
      _Default
      . _Coerce

instance FromJSON SitemapsListResponse where
        parseJSON
          = withObject "SitemapsListResponse"
              (\ o ->
                 SitemapsListResponse <$>
                   (o .:? "sitemap" .!= mempty))

instance ToJSON SitemapsListResponse where
        toJSON SitemapsListResponse{..}
          = object (catMaybes [("sitemap" .=) <$> _slrSitemap])

--
-- /See:/ 'searchAnalyticsQueryRequest' smart constructor.
data SearchAnalyticsQueryRequest = SearchAnalyticsQueryRequest
    { _saqrAggregationType       :: !(Maybe Text)
    , _saqrRowLimit              :: !(Maybe (Textual Int32))
    , _saqrEndDate               :: !(Maybe Text)
    , _saqrSearchType            :: !(Maybe Text)
    , _saqrDimensionFilterGroups :: !(Maybe [APIdimensionFilterGroup])
    , _saqrStartDate             :: !(Maybe Text)
    , _saqrDimensions            :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

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
saqrDimensionFilterGroups :: Lens' SearchAnalyticsQueryRequest [APIdimensionFilterGroup]
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

instance FromJSON SearchAnalyticsQueryRequest where
        parseJSON
          = withObject "SearchAnalyticsQueryRequest"
              (\ o ->
                 SearchAnalyticsQueryRequest <$>
                   (o .:? "aggregationType") <*> (o .:? "rowLimit") <*>
                     (o .:? "endDate")
                     <*> (o .:? "searchType")
                     <*> (o .:? "dimensionFilterGroups" .!= mempty)
                     <*> (o .:? "startDate")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON SearchAnalyticsQueryRequest where
        toJSON SearchAnalyticsQueryRequest{..}
          = object
              (catMaybes
                 [("aggregationType" .=) <$> _saqrAggregationType,
                  ("rowLimit" .=) <$> _saqrRowLimit,
                  ("endDate" .=) <$> _saqrEndDate,
                  ("searchType" .=) <$> _saqrSearchType,
                  ("dimensionFilterGroups" .=) <$>
                    _saqrDimensionFilterGroups,
                  ("startDate" .=) <$> _saqrStartDate,
                  ("dimensions" .=) <$> _saqrDimensions])

-- | List of sites with access level information.
--
-- /See:/ 'sitesListResponse' smart constructor.
newtype SitesListResponse = SitesListResponse
    { _slrSiteEntry :: Maybe [WmxSite]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
slrSiteEntry :: Lens' SitesListResponse [WmxSite]
slrSiteEntry
  = lens _slrSiteEntry (\ s a -> s{_slrSiteEntry = a})
      . _Default
      . _Coerce

instance FromJSON SitesListResponse where
        parseJSON
          = withObject "SitesListResponse"
              (\ o ->
                 SitesListResponse <$> (o .:? "siteEntry" .!= mempty))

instance ToJSON SitesListResponse where
        toJSON SitesListResponse{..}
          = object
              (catMaybes [("siteEntry" .=) <$> _slrSiteEntry])

-- | Contains permission level information about a Webmaster Tools site. For
-- more information, see Permissions in Webmaster Tools.
--
-- /See:/ 'wmxSite' smart constructor.
data WmxSite = WmxSite
    { _wsPermissionLevel :: !(Maybe Text)
    , _wsSiteURL         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WmxSite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsPermissionLevel'
--
-- * 'wsSiteURL'
wmxSite
    :: WmxSite
wmxSite =
    WmxSite
    { _wsPermissionLevel = Nothing
    , _wsSiteURL = Nothing
    }

-- | The user\'s permission level for the site.
wsPermissionLevel :: Lens' WmxSite (Maybe Text)
wsPermissionLevel
  = lens _wsPermissionLevel
      (\ s a -> s{_wsPermissionLevel = a})

-- | The URL of the site.
wsSiteURL :: Lens' WmxSite (Maybe Text)
wsSiteURL
  = lens _wsSiteURL (\ s a -> s{_wsSiteURL = a})

instance FromJSON WmxSite where
        parseJSON
          = withObject "WmxSite"
              (\ o ->
                 WmxSite <$>
                   (o .:? "permissionLevel") <*> (o .:? "siteUrl"))

instance ToJSON WmxSite where
        toJSON WmxSite{..}
          = object
              (catMaybes
                 [("permissionLevel" .=) <$> _wsPermissionLevel,
                  ("siteUrl" .=) <$> _wsSiteURL])
