{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SearchConsole.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SearchConsole.Types.Product where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types.Sum

-- | Information about the various content types in the sitemap.
--
-- /See:/ 'wmxSitemapContent' smart constructor.
data WmxSitemapContent =
  WmxSitemapContent'
    { _wscIndexed :: !(Maybe (Textual Int64))
    , _wscType :: !(Maybe WmxSitemapContentType)
    , _wscSubmitted :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  WmxSitemapContent'
    {_wscIndexed = Nothing, _wscType = Nothing, _wscSubmitted = Nothing}


-- | The number of URLs from the sitemap that were indexed (of the content
-- type).
wscIndexed :: Lens' WmxSitemapContent (Maybe Int64)
wscIndexed
  = lens _wscIndexed (\ s a -> s{_wscIndexed = a}) .
      mapping _Coerce

-- | The specific type of content in this sitemap. For example: \`web\`.
wscType :: Lens' WmxSitemapContent (Maybe WmxSitemapContentType)
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
                 WmxSitemapContent' <$>
                   (o .:? "indexed") <*> (o .:? "type") <*>
                     (o .:? "submitted"))

instance ToJSON WmxSitemapContent where
        toJSON WmxSitemapContent'{..}
          = object
              (catMaybes
                 [("indexed" .=) <$> _wscIndexed,
                  ("type" .=) <$> _wscType,
                  ("submitted" .=) <$> _wscSubmitted])

-- | A set of dimension value filters to test against each row. Only rows
-- that pass all filter groups will be returned. All results within a
-- filter group are either AND\'ed or OR\'ed together, depending on the
-- group type selected. All filter groups are AND\'ed together.
--
-- /See:/ 'apidimensionFilterGroup' smart constructor.
data APIdimensionFilterGroup =
  APIdimensionFilterGroup'
    { _afgFilters :: !(Maybe [APIdimensionFilter])
    , _afgGroupType :: !(Maybe APIdimensionFilterGroupGroupType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  APIdimensionFilterGroup' {_afgFilters = Nothing, _afgGroupType = Nothing}


afgFilters :: Lens' APIdimensionFilterGroup [APIdimensionFilter]
afgFilters
  = lens _afgFilters (\ s a -> s{_afgFilters = a}) .
      _Default
      . _Coerce

afgGroupType :: Lens' APIdimensionFilterGroup (Maybe APIdimensionFilterGroupGroupType)
afgGroupType
  = lens _afgGroupType (\ s a -> s{_afgGroupType = a})

instance FromJSON APIdimensionFilterGroup where
        parseJSON
          = withObject "APIdimensionFilterGroup"
              (\ o ->
                 APIdimensionFilterGroup' <$>
                   (o .:? "filters" .!= mempty) <*> (o .:? "groupType"))

instance ToJSON APIdimensionFilterGroup where
        toJSON APIdimensionFilterGroup'{..}
          = object
              (catMaybes
                 [("filters" .=) <$> _afgFilters,
                  ("groupType" .=) <$> _afgGroupType])

-- | Describe image data.
--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iData :: !(Maybe Bytes)
    , _iMimeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iData'
--
-- * 'iMimeType'
image
    :: Image
image = Image' {_iData = Nothing, _iMimeType = Nothing}


-- | Image data in format determined by the mime type. Currently, the format
-- will always be \"image\/png\", but this might change in the future.
iData :: Lens' Image (Maybe ByteString)
iData
  = lens _iData (\ s a -> s{_iData = a}) .
      mapping _Bytes

-- | The mime-type of the image data.
iMimeType :: Lens' Image (Maybe Text)
iMimeType
  = lens _iMimeType (\ s a -> s{_iMimeType = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$> (o .:? "data") <*> (o .:? "mimeType"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _iData,
                  ("mimeType" .=) <$> _iMimeType])

-- | Blocked resource.
--
-- /See:/ 'blockedResource' smart constructor.
newtype BlockedResource =
  BlockedResource'
    { _brURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlockedResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brURL'
blockedResource
    :: BlockedResource
blockedResource = BlockedResource' {_brURL = Nothing}


-- | URL of the blocked resource.
brURL :: Lens' BlockedResource (Maybe Text)
brURL = lens _brURL (\ s a -> s{_brURL = a})

instance FromJSON BlockedResource where
        parseJSON
          = withObject "BlockedResource"
              (\ o -> BlockedResource' <$> (o .:? "url"))

instance ToJSON BlockedResource where
        toJSON BlockedResource'{..}
          = object (catMaybes [("url" .=) <$> _brURL])

--
-- /See:/ 'apiDataRow' smart constructor.
data APIDataRow =
  APIDataRow'
    { _adrImpressions :: !(Maybe (Textual Double))
    , _adrKeys :: !(Maybe [Text])
    , _adrCtr :: !(Maybe (Textual Double))
    , _adrClicks :: !(Maybe (Textual Double))
    , _adrPosition :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  APIDataRow'
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
                 APIDataRow' <$>
                   (o .:? "impressions") <*> (o .:? "keys" .!= mempty)
                     <*> (o .:? "ctr")
                     <*> (o .:? "clicks")
                     <*> (o .:? "position"))

instance ToJSON APIDataRow where
        toJSON APIDataRow'{..}
          = object
              (catMaybes
                 [("impressions" .=) <$> _adrImpressions,
                  ("keys" .=) <$> _adrKeys, ("ctr" .=) <$> _adrCtr,
                  ("clicks" .=) <$> _adrClicks,
                  ("position" .=) <$> _adrPosition])

-- | A filter test to be applied to each row in the data set, where a match
-- can return the row. Filters are string comparisons, and values and
-- dimension names are not case-sensitive. Individual filters are either
-- AND\'ed or OR\'ed within their parent filter group, according to the
-- group\'s group type. You do not need to group by a specified dimension
-- to filter against it.
--
-- /See:/ 'apidimensionFilter' smart constructor.
data APIdimensionFilter =
  APIdimensionFilter'
    { _afOperator :: !(Maybe APIdimensionFilterOperator)
    , _afDimension :: !(Maybe APIdimensionFilterDimension)
    , _afExpression :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  APIdimensionFilter'
    {_afOperator = Nothing, _afDimension = Nothing, _afExpression = Nothing}


afOperator :: Lens' APIdimensionFilter (Maybe APIdimensionFilterOperator)
afOperator
  = lens _afOperator (\ s a -> s{_afOperator = a})

afDimension :: Lens' APIdimensionFilter (Maybe APIdimensionFilterDimension)
afDimension
  = lens _afDimension (\ s a -> s{_afDimension = a})

afExpression :: Lens' APIdimensionFilter (Maybe Text)
afExpression
  = lens _afExpression (\ s a -> s{_afExpression = a})

instance FromJSON APIdimensionFilter where
        parseJSON
          = withObject "APIdimensionFilter"
              (\ o ->
                 APIdimensionFilter' <$>
                   (o .:? "operator") <*> (o .:? "dimension") <*>
                     (o .:? "expression"))

instance ToJSON APIdimensionFilter where
        toJSON APIdimensionFilter'{..}
          = object
              (catMaybes
                 [("operator" .=) <$> _afOperator,
                  ("dimension" .=) <$> _afDimension,
                  ("expression" .=) <$> _afExpression])

-- | Information about a resource with issue.
--
-- /See:/ 'resourceIssue' smart constructor.
newtype ResourceIssue =
  ResourceIssue'
    { _riBlockedResource :: Maybe BlockedResource
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riBlockedResource'
resourceIssue
    :: ResourceIssue
resourceIssue = ResourceIssue' {_riBlockedResource = Nothing}


-- | Describes a blocked resource issue.
riBlockedResource :: Lens' ResourceIssue (Maybe BlockedResource)
riBlockedResource
  = lens _riBlockedResource
      (\ s a -> s{_riBlockedResource = a})

instance FromJSON ResourceIssue where
        parseJSON
          = withObject "ResourceIssue"
              (\ o -> ResourceIssue' <$> (o .:? "blockedResource"))

instance ToJSON ResourceIssue where
        toJSON ResourceIssue'{..}
          = object
              (catMaybes
                 [("blockedResource" .=) <$> _riBlockedResource])

-- | A list of rows, one per result, grouped by key. Metrics in each row are
-- aggregated for all data grouped by that key either by page or property,
-- as specified by the aggregation type parameter.
--
-- /See:/ 'searchAnalyticsQueryResponse' smart constructor.
data SearchAnalyticsQueryResponse =
  SearchAnalyticsQueryResponse'
    { _saqrRows :: !(Maybe [APIDataRow])
    , _saqrResponseAggregationType :: !(Maybe SearchAnalyticsQueryResponseResponseAggregationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  SearchAnalyticsQueryResponse'
    {_saqrRows = Nothing, _saqrResponseAggregationType = Nothing}


-- | A list of rows grouped by the key values in the order given in the
-- query.
saqrRows :: Lens' SearchAnalyticsQueryResponse [APIDataRow]
saqrRows
  = lens _saqrRows (\ s a -> s{_saqrRows = a}) .
      _Default
      . _Coerce

-- | How the results were aggregated.
saqrResponseAggregationType :: Lens' SearchAnalyticsQueryResponse (Maybe SearchAnalyticsQueryResponseResponseAggregationType)
saqrResponseAggregationType
  = lens _saqrResponseAggregationType
      (\ s a -> s{_saqrResponseAggregationType = a})

instance FromJSON SearchAnalyticsQueryResponse where
        parseJSON
          = withObject "SearchAnalyticsQueryResponse"
              (\ o ->
                 SearchAnalyticsQueryResponse' <$>
                   (o .:? "rows" .!= mempty) <*>
                     (o .:? "responseAggregationType"))

instance ToJSON SearchAnalyticsQueryResponse where
        toJSON SearchAnalyticsQueryResponse'{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _saqrRows,
                  ("responseAggregationType" .=) <$>
                    _saqrResponseAggregationType])

-- | Mobile-friendly test request.
--
-- /See:/ 'runMobileFriendlyTestRequest' smart constructor.
data RunMobileFriendlyTestRequest =
  RunMobileFriendlyTestRequest'
    { _rmftrURL :: !(Maybe Text)
    , _rmftrRequestScreenshot :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunMobileFriendlyTestRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmftrURL'
--
-- * 'rmftrRequestScreenshot'
runMobileFriendlyTestRequest
    :: RunMobileFriendlyTestRequest
runMobileFriendlyTestRequest =
  RunMobileFriendlyTestRequest'
    {_rmftrURL = Nothing, _rmftrRequestScreenshot = Nothing}


-- | URL for inspection.
rmftrURL :: Lens' RunMobileFriendlyTestRequest (Maybe Text)
rmftrURL = lens _rmftrURL (\ s a -> s{_rmftrURL = a})

-- | Whether or not screenshot is requested. Default is false.
rmftrRequestScreenshot :: Lens' RunMobileFriendlyTestRequest (Maybe Bool)
rmftrRequestScreenshot
  = lens _rmftrRequestScreenshot
      (\ s a -> s{_rmftrRequestScreenshot = a})

instance FromJSON RunMobileFriendlyTestRequest where
        parseJSON
          = withObject "RunMobileFriendlyTestRequest"
              (\ o ->
                 RunMobileFriendlyTestRequest' <$>
                   (o .:? "url") <*> (o .:? "requestScreenshot"))

instance ToJSON RunMobileFriendlyTestRequest where
        toJSON RunMobileFriendlyTestRequest'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _rmftrURL,
                  ("requestScreenshot" .=) <$>
                    _rmftrRequestScreenshot])

-- | Final state of the test, including error details if necessary.
--
-- /See:/ 'testStatus' smart constructor.
data TestStatus =
  TestStatus'
    { _tsStatus :: !(Maybe TestStatusStatus)
    , _tsDetails :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsStatus'
--
-- * 'tsDetails'
testStatus
    :: TestStatus
testStatus = TestStatus' {_tsStatus = Nothing, _tsDetails = Nothing}


-- | Status of the test.
tsStatus :: Lens' TestStatus (Maybe TestStatusStatus)
tsStatus = lens _tsStatus (\ s a -> s{_tsStatus = a})

-- | Error details if applicable.
tsDetails :: Lens' TestStatus (Maybe Text)
tsDetails
  = lens _tsDetails (\ s a -> s{_tsDetails = a})

instance FromJSON TestStatus where
        parseJSON
          = withObject "TestStatus"
              (\ o ->
                 TestStatus' <$>
                   (o .:? "status") <*> (o .:? "details"))

instance ToJSON TestStatus where
        toJSON TestStatus'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _tsStatus,
                  ("details" .=) <$> _tsDetails])

-- | Contains detailed information about a specific URL submitted as a
-- [sitemap](https:\/\/support.google.com\/webmasters\/answer\/156184).
--
-- /See:/ 'wmxSitemap' smart constructor.
data WmxSitemap =
  WmxSitemap'
    { _wsContents :: !(Maybe [WmxSitemapContent])
    , _wsPath :: !(Maybe Text)
    , _wsIsSitemapsIndex :: !(Maybe Bool)
    , _wsLastSubmitted :: !(Maybe DateTime')
    , _wsWarnings :: !(Maybe (Textual Int64))
    , _wsLastDownloaded :: !(Maybe DateTime')
    , _wsIsPending :: !(Maybe Bool)
    , _wsType :: !(Maybe WmxSitemapType)
    , _wsErrors :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  WmxSitemap'
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

-- | The type of the sitemap. For example: \`rssFeed\`.
wsType :: Lens' WmxSitemap (Maybe WmxSitemapType)
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
                 WmxSitemap' <$>
                   (o .:? "contents" .!= mempty) <*> (o .:? "path") <*>
                     (o .:? "isSitemapsIndex")
                     <*> (o .:? "lastSubmitted")
                     <*> (o .:? "warnings")
                     <*> (o .:? "lastDownloaded")
                     <*> (o .:? "isPending")
                     <*> (o .:? "type")
                     <*> (o .:? "errors"))

instance ToJSON WmxSitemap where
        toJSON WmxSitemap'{..}
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
newtype SitemapsListResponse =
  SitemapsListResponse'
    { _slrSitemap :: Maybe [WmxSitemap]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitemapsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrSitemap'
sitemapsListResponse
    :: SitemapsListResponse
sitemapsListResponse = SitemapsListResponse' {_slrSitemap = Nothing}


-- | Contains detailed information about a specific URL submitted as a
-- [sitemap](https:\/\/support.google.com\/webmasters\/answer\/156184).
slrSitemap :: Lens' SitemapsListResponse [WmxSitemap]
slrSitemap
  = lens _slrSitemap (\ s a -> s{_slrSitemap = a}) .
      _Default
      . _Coerce

instance FromJSON SitemapsListResponse where
        parseJSON
          = withObject "SitemapsListResponse"
              (\ o ->
                 SitemapsListResponse' <$>
                   (o .:? "sitemap" .!= mempty))

instance ToJSON SitemapsListResponse where
        toJSON SitemapsListResponse'{..}
          = object (catMaybes [("sitemap" .=) <$> _slrSitemap])

--
-- /See:/ 'searchAnalyticsQueryRequest' smart constructor.
data SearchAnalyticsQueryRequest =
  SearchAnalyticsQueryRequest'
    { _saqrAggregationType :: !(Maybe SearchAnalyticsQueryRequestAggregationType)
    , _saqrDataState :: !(Maybe SearchAnalyticsQueryRequestDataState)
    , _saqrRowLimit :: !(Maybe (Textual Int32))
    , _saqrEndDate :: !(Maybe Text)
    , _saqrSearchType :: !(Maybe SearchAnalyticsQueryRequestSearchType)
    , _saqrDimensionFilterGroups :: !(Maybe [APIdimensionFilterGroup])
    , _saqrStartDate :: !(Maybe Text)
    , _saqrStartRow :: !(Maybe (Textual Int32))
    , _saqrDimensions :: !(Maybe [SearchAnalyticsQueryRequestDimensionsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchAnalyticsQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saqrAggregationType'
--
-- * 'saqrDataState'
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
-- * 'saqrStartRow'
--
-- * 'saqrDimensions'
searchAnalyticsQueryRequest
    :: SearchAnalyticsQueryRequest
searchAnalyticsQueryRequest =
  SearchAnalyticsQueryRequest'
    { _saqrAggregationType = Nothing
    , _saqrDataState = Nothing
    , _saqrRowLimit = Nothing
    , _saqrEndDate = Nothing
    , _saqrSearchType = Nothing
    , _saqrDimensionFilterGroups = Nothing
    , _saqrStartDate = Nothing
    , _saqrStartRow = Nothing
    , _saqrDimensions = Nothing
    }


-- | [Optional; Default is \\\"auto\\\"] How data is aggregated. If
-- aggregated by property, all data for the same property is aggregated; if
-- aggregated by page, all data is aggregated by canonical URI. If you
-- filter or group by page, choose AUTO; otherwise you can aggregate either
-- by property or by page, depending on how you want your data calculated;
-- see the help documentation to learn how data is calculated differently
-- by site versus by page. **Note:** If you group or filter by page, you
-- cannot aggregate by property. If you specify any value other than AUTO,
-- the aggregation type in the result will match the requested type, or if
-- you request an invalid type, you will get an error. The API will never
-- change your aggregation type if the requested type is invalid.
saqrAggregationType :: Lens' SearchAnalyticsQueryRequest (Maybe SearchAnalyticsQueryRequestAggregationType)
saqrAggregationType
  = lens _saqrAggregationType
      (\ s a -> s{_saqrAggregationType = a})

-- | The data state to be fetched, can be full or all, the latter including
-- full and partial data.
saqrDataState :: Lens' SearchAnalyticsQueryRequest (Maybe SearchAnalyticsQueryRequestDataState)
saqrDataState
  = lens _saqrDataState
      (\ s a -> s{_saqrDataState = a})

-- | [Optional; Default is 1000] The maximum number of rows to return. Must
-- be a number from 1 to 25,000 (inclusive).
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

-- | [Optional; Default is \\\"web\\\"] The search type to filter for.
saqrSearchType :: Lens' SearchAnalyticsQueryRequest (Maybe SearchAnalyticsQueryRequestSearchType)
saqrSearchType
  = lens _saqrSearchType
      (\ s a -> s{_saqrSearchType = a})

-- | [Optional] Zero or more filters to apply to the dimension grouping
-- values; for example, \'query contains \\\"buy\\\"\' to see only data
-- where the query string contains the substring \\\"buy\\\" (not
-- case-sensitive). You can filter by a dimension without grouping by it.
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

-- | [Optional; Default is 0] Zero-based index of the first row in the
-- response. Must be a non-negative number.
saqrStartRow :: Lens' SearchAnalyticsQueryRequest (Maybe Int32)
saqrStartRow
  = lens _saqrStartRow (\ s a -> s{_saqrStartRow = a})
      . mapping _Coerce

-- | [Optional] Zero or more dimensions to group results by. Dimensions are
-- the group-by values in the Search Analytics page. Dimensions are
-- combined to create a unique row key for each row. Results are grouped in
-- the order that you supply these dimensions.
saqrDimensions :: Lens' SearchAnalyticsQueryRequest [SearchAnalyticsQueryRequestDimensionsItem]
saqrDimensions
  = lens _saqrDimensions
      (\ s a -> s{_saqrDimensions = a})
      . _Default
      . _Coerce

instance FromJSON SearchAnalyticsQueryRequest where
        parseJSON
          = withObject "SearchAnalyticsQueryRequest"
              (\ o ->
                 SearchAnalyticsQueryRequest' <$>
                   (o .:? "aggregationType") <*> (o .:? "dataState") <*>
                     (o .:? "rowLimit")
                     <*> (o .:? "endDate")
                     <*> (o .:? "searchType")
                     <*> (o .:? "dimensionFilterGroups" .!= mempty)
                     <*> (o .:? "startDate")
                     <*> (o .:? "startRow")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON SearchAnalyticsQueryRequest where
        toJSON SearchAnalyticsQueryRequest'{..}
          = object
              (catMaybes
                 [("aggregationType" .=) <$> _saqrAggregationType,
                  ("dataState" .=) <$> _saqrDataState,
                  ("rowLimit" .=) <$> _saqrRowLimit,
                  ("endDate" .=) <$> _saqrEndDate,
                  ("searchType" .=) <$> _saqrSearchType,
                  ("dimensionFilterGroups" .=) <$>
                    _saqrDimensionFilterGroups,
                  ("startDate" .=) <$> _saqrStartDate,
                  ("startRow" .=) <$> _saqrStartRow,
                  ("dimensions" .=) <$> _saqrDimensions])

-- | Mobile-friendly test response, including mobile-friendly issues and
-- resource issues.
--
-- /See:/ 'runMobileFriendlyTestResponse' smart constructor.
data RunMobileFriendlyTestResponse =
  RunMobileFriendlyTestResponse'
    { _rmftrScreenshot :: !(Maybe Image)
    , _rmftrResourceIssues :: !(Maybe [ResourceIssue])
    , _rmftrMobileFriendliness :: !(Maybe RunMobileFriendlyTestResponseMobileFriendliness)
    , _rmftrTestStatus :: !(Maybe TestStatus)
    , _rmftrMobileFriendlyIssues :: !(Maybe [MobileFriendlyIssue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunMobileFriendlyTestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmftrScreenshot'
--
-- * 'rmftrResourceIssues'
--
-- * 'rmftrMobileFriendliness'
--
-- * 'rmftrTestStatus'
--
-- * 'rmftrMobileFriendlyIssues'
runMobileFriendlyTestResponse
    :: RunMobileFriendlyTestResponse
runMobileFriendlyTestResponse =
  RunMobileFriendlyTestResponse'
    { _rmftrScreenshot = Nothing
    , _rmftrResourceIssues = Nothing
    , _rmftrMobileFriendliness = Nothing
    , _rmftrTestStatus = Nothing
    , _rmftrMobileFriendlyIssues = Nothing
    }


-- | Screenshot of the requested URL.
rmftrScreenshot :: Lens' RunMobileFriendlyTestResponse (Maybe Image)
rmftrScreenshot
  = lens _rmftrScreenshot
      (\ s a -> s{_rmftrScreenshot = a})

-- | Information about embedded resources issues.
rmftrResourceIssues :: Lens' RunMobileFriendlyTestResponse [ResourceIssue]
rmftrResourceIssues
  = lens _rmftrResourceIssues
      (\ s a -> s{_rmftrResourceIssues = a})
      . _Default
      . _Coerce

-- | Test verdict, whether the page is mobile friendly or not.
rmftrMobileFriendliness :: Lens' RunMobileFriendlyTestResponse (Maybe RunMobileFriendlyTestResponseMobileFriendliness)
rmftrMobileFriendliness
  = lens _rmftrMobileFriendliness
      (\ s a -> s{_rmftrMobileFriendliness = a})

-- | Final state of the test, can be either complete or an error.
rmftrTestStatus :: Lens' RunMobileFriendlyTestResponse (Maybe TestStatus)
rmftrTestStatus
  = lens _rmftrTestStatus
      (\ s a -> s{_rmftrTestStatus = a})

-- | List of mobile-usability issues.
rmftrMobileFriendlyIssues :: Lens' RunMobileFriendlyTestResponse [MobileFriendlyIssue]
rmftrMobileFriendlyIssues
  = lens _rmftrMobileFriendlyIssues
      (\ s a -> s{_rmftrMobileFriendlyIssues = a})
      . _Default
      . _Coerce

instance FromJSON RunMobileFriendlyTestResponse where
        parseJSON
          = withObject "RunMobileFriendlyTestResponse"
              (\ o ->
                 RunMobileFriendlyTestResponse' <$>
                   (o .:? "screenshot") <*>
                     (o .:? "resourceIssues" .!= mempty)
                     <*> (o .:? "mobileFriendliness")
                     <*> (o .:? "testStatus")
                     <*> (o .:? "mobileFriendlyIssues" .!= mempty))

instance ToJSON RunMobileFriendlyTestResponse where
        toJSON RunMobileFriendlyTestResponse'{..}
          = object
              (catMaybes
                 [("screenshot" .=) <$> _rmftrScreenshot,
                  ("resourceIssues" .=) <$> _rmftrResourceIssues,
                  ("mobileFriendliness" .=) <$>
                    _rmftrMobileFriendliness,
                  ("testStatus" .=) <$> _rmftrTestStatus,
                  ("mobileFriendlyIssues" .=) <$>
                    _rmftrMobileFriendlyIssues])

-- | Mobile-friendly issue.
--
-- /See:/ 'mobileFriendlyIssue' smart constructor.
newtype MobileFriendlyIssue =
  MobileFriendlyIssue'
    { _mfiRule :: Maybe MobileFriendlyIssueRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileFriendlyIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfiRule'
mobileFriendlyIssue
    :: MobileFriendlyIssue
mobileFriendlyIssue = MobileFriendlyIssue' {_mfiRule = Nothing}


-- | Rule violated.
mfiRule :: Lens' MobileFriendlyIssue (Maybe MobileFriendlyIssueRule)
mfiRule = lens _mfiRule (\ s a -> s{_mfiRule = a})

instance FromJSON MobileFriendlyIssue where
        parseJSON
          = withObject "MobileFriendlyIssue"
              (\ o -> MobileFriendlyIssue' <$> (o .:? "rule"))

instance ToJSON MobileFriendlyIssue where
        toJSON MobileFriendlyIssue'{..}
          = object (catMaybes [("rule" .=) <$> _mfiRule])

-- | List of sites with access level information.
--
-- /See:/ 'sitesListResponse' smart constructor.
newtype SitesListResponse =
  SitesListResponse'
    { _slrSiteEntry :: Maybe [WmxSite]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrSiteEntry'
sitesListResponse
    :: SitesListResponse
sitesListResponse = SitesListResponse' {_slrSiteEntry = Nothing}


-- | Contains permission level information about a Search Console site. For
-- more information, see [Permissions in Search
-- Console](https:\/\/support.google.com\/webmasters\/answer\/2451999).
slrSiteEntry :: Lens' SitesListResponse [WmxSite]
slrSiteEntry
  = lens _slrSiteEntry (\ s a -> s{_slrSiteEntry = a})
      . _Default
      . _Coerce

instance FromJSON SitesListResponse where
        parseJSON
          = withObject "SitesListResponse"
              (\ o ->
                 SitesListResponse' <$>
                   (o .:? "siteEntry" .!= mempty))

instance ToJSON SitesListResponse where
        toJSON SitesListResponse'{..}
          = object
              (catMaybes [("siteEntry" .=) <$> _slrSiteEntry])

-- | Contains permission level information about a Search Console site. For
-- more information, see [Permissions in Search
-- Console](https:\/\/support.google.com\/webmasters\/answer\/2451999).
--
-- /See:/ 'wmxSite' smart constructor.
data WmxSite =
  WmxSite'
    { _wsPermissionLevel :: !(Maybe WmxSitePermissionLevel)
    , _wsSiteURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WmxSite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsPermissionLevel'
--
-- * 'wsSiteURL'
wmxSite
    :: WmxSite
wmxSite = WmxSite' {_wsPermissionLevel = Nothing, _wsSiteURL = Nothing}


-- | The user\'s permission level for the site.
wsPermissionLevel :: Lens' WmxSite (Maybe WmxSitePermissionLevel)
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
                 WmxSite' <$>
                   (o .:? "permissionLevel") <*> (o .:? "siteUrl"))

instance ToJSON WmxSite where
        toJSON WmxSite'{..}
          = object
              (catMaybes
                 [("permissionLevel" .=) <$> _wsPermissionLevel,
                  ("siteUrl" .=) <$> _wsSiteURL])
