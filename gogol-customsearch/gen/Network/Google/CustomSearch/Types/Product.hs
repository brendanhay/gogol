{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types.Product where

import Network.Google.CustomSearch.Types.Sum
import Network.Google.Prelude

-- | Image belonging to a promotion.
--
-- /See:/ 'promotionImage' smart constructor.
data PromotionImage =
  PromotionImage'
    { _piHeight :: !(Maybe (Textual Int32))
    , _piWidth :: !(Maybe (Textual Int32))
    , _piSource :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PromotionImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piHeight'
--
-- * 'piWidth'
--
-- * 'piSource'
promotionImage
    :: PromotionImage
promotionImage =
  PromotionImage' {_piHeight = Nothing, _piWidth = Nothing, _piSource = Nothing}


-- | Image height in pixels.
piHeight :: Lens' PromotionImage (Maybe Int32)
piHeight
  = lens _piHeight (\ s a -> s{_piHeight = a}) .
      mapping _Coerce

-- | Image width in pixels.
piWidth :: Lens' PromotionImage (Maybe Int32)
piWidth
  = lens _piWidth (\ s a -> s{_piWidth = a}) .
      mapping _Coerce

-- | URL of the image for this promotion link.
piSource :: Lens' PromotionImage (Maybe Text)
piSource = lens _piSource (\ s a -> s{_piSource = a})

instance FromJSON PromotionImage where
        parseJSON
          = withObject "PromotionImage"
              (\ o ->
                 PromotionImage' <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "source"))

instance ToJSON PromotionImage where
        toJSON PromotionImage'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _piHeight,
                  ("width" .=) <$> _piWidth,
                  ("source" .=) <$> _piSource])

-- | Query metadata for the previous, current, and next pages of results.
--
-- /See:/ 'searchQueries' smart constructor.
data SearchQueries =
  SearchQueries'
    { _sqNextPage :: !(Maybe [SearchQueriesNextPageItem])
    , _sqPreviousPage :: !(Maybe [SearchQueriesPreviousPageItem])
    , _sqRequest :: !(Maybe [SearchQueriesRequestItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchQueries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqNextPage'
--
-- * 'sqPreviousPage'
--
-- * 'sqRequest'
searchQueries
    :: SearchQueries
searchQueries =
  SearchQueries'
    {_sqNextPage = Nothing, _sqPreviousPage = Nothing, _sqRequest = Nothing}


-- | Metadata representing the next page of results, if applicable.
sqNextPage :: Lens' SearchQueries [SearchQueriesNextPageItem]
sqNextPage
  = lens _sqNextPage (\ s a -> s{_sqNextPage = a}) .
      _Default
      . _Coerce

-- | Metadata representing the previous page of results, if applicable.
sqPreviousPage :: Lens' SearchQueries [SearchQueriesPreviousPageItem]
sqPreviousPage
  = lens _sqPreviousPage
      (\ s a -> s{_sqPreviousPage = a})
      . _Default
      . _Coerce

-- | Metadata representing the current request.
sqRequest :: Lens' SearchQueries [SearchQueriesRequestItem]
sqRequest
  = lens _sqRequest (\ s a -> s{_sqRequest = a}) .
      _Default
      . _Coerce

instance FromJSON SearchQueries where
        parseJSON
          = withObject "SearchQueries"
              (\ o ->
                 SearchQueries' <$>
                   (o .:? "nextPage" .!= mempty) <*>
                     (o .:? "previousPage" .!= mempty)
                     <*> (o .:? "request" .!= mempty))

instance ToJSON SearchQueries where
        toJSON SearchQueries'{..}
          = object
              (catMaybes
                 [("nextPage" .=) <$> _sqNextPage,
                  ("previousPage" .=) <$> _sqPreviousPage,
                  ("request" .=) <$> _sqRequest])

-- | Custom search request metadata.
--
-- /See:/ 'searchQueriesPreviousPageItem' smart constructor.
data SearchQueriesPreviousPageItem =
  SearchQueriesPreviousPageItem'
    { _sqppiImgDominantColor :: !(Maybe Text)
    , _sqppiOutputEncoding :: !(Maybe Text)
    , _sqppiSiteSearchFilter :: !(Maybe Text)
    , _sqppiInputEncoding :: !(Maybe Text)
    , _sqppiOrTerms :: !(Maybe Text)
    , _sqppiSearchTerms :: !(Maybe Text)
    , _sqppiStartPage :: !(Maybe (Textual Int32))
    , _sqppiRights :: !(Maybe Text)
    , _sqppiCount :: !(Maybe (Textual Int32))
    , _sqppiExcludeTerms :: !(Maybe Text)
    , _sqppiFileType :: !(Maybe Text)
    , _sqppiSearchType :: !(Maybe Text)
    , _sqppiGoogleHost :: !(Maybe Text)
    , _sqppiDisableCnTwTranslation :: !(Maybe Text)
    , _sqppiRelatedSite :: !(Maybe Text)
    , _sqppiHl :: !(Maybe Text)
    , _sqppiSort :: !(Maybe Text)
    , _sqppiLanguage :: !(Maybe Text)
    , _sqppiSiteSearch :: !(Maybe Text)
    , _sqppiFilter :: !(Maybe Text)
    , _sqppiTotalResults :: !(Maybe (Textual Int64))
    , _sqppiDateRestrict :: !(Maybe Text)
    , _sqppiTitle :: !(Maybe Text)
    , _sqppiLinkSite :: !(Maybe Text)
    , _sqppiLowRange :: !(Maybe Text)
    , _sqppiImgType :: !(Maybe Text)
    , _sqppiGl :: !(Maybe Text)
    , _sqppiCx :: !(Maybe Text)
    , _sqppiImgColorType :: !(Maybe Text)
    , _sqppiImgSize :: !(Maybe Text)
    , _sqppiExactTerms :: !(Maybe Text)
    , _sqppiStartIndex :: !(Maybe (Textual Int32))
    , _sqppiCr :: !(Maybe Text)
    , _sqppiSafe :: !(Maybe Text)
    , _sqppiHq :: !(Maybe Text)
    , _sqppiHighRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchQueriesPreviousPageItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqppiImgDominantColor'
--
-- * 'sqppiOutputEncoding'
--
-- * 'sqppiSiteSearchFilter'
--
-- * 'sqppiInputEncoding'
--
-- * 'sqppiOrTerms'
--
-- * 'sqppiSearchTerms'
--
-- * 'sqppiStartPage'
--
-- * 'sqppiRights'
--
-- * 'sqppiCount'
--
-- * 'sqppiExcludeTerms'
--
-- * 'sqppiFileType'
--
-- * 'sqppiSearchType'
--
-- * 'sqppiGoogleHost'
--
-- * 'sqppiDisableCnTwTranslation'
--
-- * 'sqppiRelatedSite'
--
-- * 'sqppiHl'
--
-- * 'sqppiSort'
--
-- * 'sqppiLanguage'
--
-- * 'sqppiSiteSearch'
--
-- * 'sqppiFilter'
--
-- * 'sqppiTotalResults'
--
-- * 'sqppiDateRestrict'
--
-- * 'sqppiTitle'
--
-- * 'sqppiLinkSite'
--
-- * 'sqppiLowRange'
--
-- * 'sqppiImgType'
--
-- * 'sqppiGl'
--
-- * 'sqppiCx'
--
-- * 'sqppiImgColorType'
--
-- * 'sqppiImgSize'
--
-- * 'sqppiExactTerms'
--
-- * 'sqppiStartIndex'
--
-- * 'sqppiCr'
--
-- * 'sqppiSafe'
--
-- * 'sqppiHq'
--
-- * 'sqppiHighRange'
searchQueriesPreviousPageItem
    :: SearchQueriesPreviousPageItem
searchQueriesPreviousPageItem =
  SearchQueriesPreviousPageItem'
    { _sqppiImgDominantColor = Nothing
    , _sqppiOutputEncoding = Nothing
    , _sqppiSiteSearchFilter = Nothing
    , _sqppiInputEncoding = Nothing
    , _sqppiOrTerms = Nothing
    , _sqppiSearchTerms = Nothing
    , _sqppiStartPage = Nothing
    , _sqppiRights = Nothing
    , _sqppiCount = Nothing
    , _sqppiExcludeTerms = Nothing
    , _sqppiFileType = Nothing
    , _sqppiSearchType = Nothing
    , _sqppiGoogleHost = Nothing
    , _sqppiDisableCnTwTranslation = Nothing
    , _sqppiRelatedSite = Nothing
    , _sqppiHl = Nothing
    , _sqppiSort = Nothing
    , _sqppiLanguage = Nothing
    , _sqppiSiteSearch = Nothing
    , _sqppiFilter = Nothing
    , _sqppiTotalResults = Nothing
    , _sqppiDateRestrict = Nothing
    , _sqppiTitle = Nothing
    , _sqppiLinkSite = Nothing
    , _sqppiLowRange = Nothing
    , _sqppiImgType = Nothing
    , _sqppiGl = Nothing
    , _sqppiCx = Nothing
    , _sqppiImgColorType = Nothing
    , _sqppiImgSize = Nothing
    , _sqppiExactTerms = Nothing
    , _sqppiStartIndex = Nothing
    , _sqppiCr = Nothing
    , _sqppiSafe = Nothing
    , _sqppiHq = Nothing
    , _sqppiHighRange = Nothing
    }


-- | Restricts results to images with a specific dominant color. Supported
-- values are: * \`red\` * \`orange\` * \`yellow\` * \`green\` * \`teal\` *
-- \`blue\` * \`purple\` * \`pink\` * \`white\` * \`gray\` * \`black\` *
-- \`brown\`
sqppiImgDominantColor :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiImgDominantColor
  = lens _sqppiImgDominantColor
      (\ s a -> s{_sqppiImgDominantColor = a})

-- | The character encoding supported for search results.
sqppiOutputEncoding :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiOutputEncoding
  = lens _sqppiOutputEncoding
      (\ s a -> s{_sqppiOutputEncoding = a})

-- | Specifies whether to include or exclude results from the site named in
-- the \`sitesearch\` parameter. Supported values are: * \`i\`: include
-- content from site * \`e\`: exclude content from site
sqppiSiteSearchFilter :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiSiteSearchFilter
  = lens _sqppiSiteSearchFilter
      (\ s a -> s{_sqppiSiteSearchFilter = a})

-- | The character encoding supported for search requests.
sqppiInputEncoding :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiInputEncoding
  = lens _sqppiInputEncoding
      (\ s a -> s{_sqppiInputEncoding = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms. You can also use the [Boolean
-- OR](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#BooleanOrqt)
-- query term for this type of query.
sqppiOrTerms :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiOrTerms
  = lens _sqppiOrTerms (\ s a -> s{_sqppiOrTerms = a})

-- | The search terms entered by the user.
sqppiSearchTerms :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiSearchTerms
  = lens _sqppiSearchTerms
      (\ s a -> s{_sqppiSearchTerms = a})

-- | The page number of this set of results, where the page length is set by
-- the \`count\` property.
sqppiStartPage :: Lens' SearchQueriesPreviousPageItem (Maybe Int32)
sqppiStartPage
  = lens _sqppiStartPage
      (\ s a -> s{_sqppiStartPage = a})
      . mapping _Coerce

-- | Filters based on licensing. Supported values include: *
-- \`cc_publicdomain\` * \`cc_attribute\` * \`cc_sharealike\` *
-- \`cc_noncommercial\` * \`cc_nonderived\`
sqppiRights :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiRights
  = lens _sqppiRights (\ s a -> s{_sqppiRights = a})

-- | Number of search results returned in this set.
sqppiCount :: Lens' SearchQueriesPreviousPageItem (Maybe Int32)
sqppiCount
  = lens _sqppiCount (\ s a -> s{_sqppiCount = a}) .
      mapping _Coerce

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results.
sqppiExcludeTerms :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiExcludeTerms
  = lens _sqppiExcludeTerms
      (\ s a -> s{_sqppiExcludeTerms = a})

-- | Restricts results to files of a specified extension. Filetypes supported
-- by Google include: * Adobe Portable Document Format (\`pdf\`) * Adobe
-- PostScript (\`ps\`) * Lotus 1-2-3 (\`wk1\`, \`wk2\`, \`wk3\`, \`wk4\`,
-- \`wk5\`, \`wki\`, \`wks\`, \`wku\`) * Lotus WordPro (\`lwp\`) * Macwrite
-- (\`mw\`) * Microsoft Excel (\`xls\`) * Microsoft PowerPoint (\`ppt\`) *
-- Microsoft Word (\`doc\`) * Microsoft Works (\`wks\`, \`wps\`, \`wdb\`) *
-- Microsoft Write (\`wri\`) * Rich Text Format (\`rtf\`) * Shockwave Flash
-- (\`swf\`) * Text (\`ans\`, \`txt\`). Additional filetypes may be added
-- in the future. An up-to-date list can always be found in Google\'s [file
-- type FAQ](https:\/\/support.google.com\/webmasters\/answer\/35287).
sqppiFileType :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiFileType
  = lens _sqppiFileType
      (\ s a -> s{_sqppiFileType = a})

-- | Allowed values are \`web\` or \`image\`. If unspecified, results are
-- limited to webpages.
sqppiSearchType :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiSearchType
  = lens _sqppiSearchType
      (\ s a -> s{_sqppiSearchType = a})

-- | Specifies the Google domain (for example, google.com, google.de, or
-- google.fr) to which the search should be limited.
sqppiGoogleHost :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiGoogleHost
  = lens _sqppiGoogleHost
      (\ s a -> s{_sqppiGoogleHost = a})

-- | Enables or disables the [Simplified and Traditional Chinese
-- Search](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#chineseSearch)
-- feature. Supported values are: * \`0\`: enabled (default) * \`1\`:
-- disabled
sqppiDisableCnTwTranslation :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiDisableCnTwTranslation
  = lens _sqppiDisableCnTwTranslation
      (\ s a -> s{_sqppiDisableCnTwTranslation = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL. The parameter value should be a URL.
sqppiRelatedSite :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiRelatedSite
  = lens _sqppiRelatedSite
      (\ s a -> s{_sqppiRelatedSite = a})

-- | Specifies the interface language (host language) of your user interface.
-- Explicitly setting this parameter improves the performance and the
-- quality of your search results. See the [Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInterfaceLanguages)
-- section of [Internationalizing Queries and Results
-- Presentation](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInternationalizing)
-- for more information, and [Supported Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#interfaceLanguages)
-- for a list of supported languages.
sqppiHl :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiHl = lens _sqppiHl (\ s a -> s{_sqppiHl = a})

-- | Specifies that results should be sorted according to the specified
-- expression. For example, sort by date.
sqppiSort :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiSort
  = lens _sqppiSort (\ s a -> s{_sqppiSort = a})

-- | The language of the search results.
sqppiLanguage :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiLanguage
  = lens _sqppiLanguage
      (\ s a -> s{_sqppiLanguage = a})

-- | Restricts results to URLs from a specified site.
sqppiSiteSearch :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiSiteSearch
  = lens _sqppiSiteSearch
      (\ s a -> s{_sqppiSiteSearch = a})

-- | Activates or deactivates the automatic filtering of Google search
-- results. See [Automatic
-- Filtering](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#automaticFiltering)
-- for more information about Google\'s search results filters. Valid
-- values for this parameter are: * \`0\`: Disabled * \`1\`: Enabled
-- (default) **Note**: By default, Google applies filtering to all search
-- results to improve the quality of those results.
sqppiFilter :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiFilter
  = lens _sqppiFilter (\ s a -> s{_sqppiFilter = a})

-- | Estimated number of total search results. May not be accurate.
sqppiTotalResults :: Lens' SearchQueriesPreviousPageItem (Maybe Int64)
sqppiTotalResults
  = lens _sqppiTotalResults
      (\ s a -> s{_sqppiTotalResults = a})
      . mapping _Coerce

-- | Restricts results to URLs based on date. Supported values include: *
-- \`d[number]\`: requests results from the specified number of past days.
-- * \`w[number]\`: requests results from the specified number of past
-- weeks. * \`m[number]\`: requests results from the specified number of
-- past months. * \`y[number]\`: requests results from the specified number
-- of past years.
sqppiDateRestrict :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiDateRestrict
  = lens _sqppiDateRestrict
      (\ s a -> s{_sqppiDateRestrict = a})

-- | A description of the query.
sqppiTitle :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiTitle
  = lens _sqppiTitle (\ s a -> s{_sqppiTitle = a})

-- | Specifies that all results should contain a link to a specific URL.
sqppiLinkSite :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiLinkSite
  = lens _sqppiLinkSite
      (\ s a -> s{_sqppiLinkSite = a})

-- | Specifies the starting value for a search range. Use \`cse:lowRange\`
-- and \`cse:highrange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
sqppiLowRange :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiLowRange
  = lens _sqppiLowRange
      (\ s a -> s{_sqppiLowRange = a})

-- | Restricts results to images of a specified type. Supported values are: *
-- \`clipart\` (Clip art) * \`face\` (Face) * \`lineart\` (Line drawing) *
-- \`photo\` (Photo) * \`animated\` (Animated) * \`stock\` (Stock)
sqppiImgType :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiImgType
  = lens _sqppiImgType (\ s a -> s{_sqppiImgType = a})

-- | Boosts search results whose country of origin matches the parameter
-- value. See [Country
-- Codes](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#countryCodes)
-- for a list of valid values. Specifying a \`gl\` parameter value in
-- WebSearch requests should improve the relevance of results. This is
-- particularly true for international customers and, even more
-- specifically, for customers in English-speaking countries other than the
-- United States.
sqppiGl :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiGl = lens _sqppiGl (\ s a -> s{_sqppiGl = a})

-- | The identifier of an engine created using the Programmable Search Engine
-- [Control Panel](https:\/\/programmablesearchengine.google.com\/). This
-- is a custom property not defined in the OpenSearch spec. This parameter
-- is **required**.
sqppiCx :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiCx = lens _sqppiCx (\ s a -> s{_sqppiCx = a})

-- | Restricts results to images of a specified color type. Supported values
-- are: * \`mono\` (black and white) * \`gray\` (grayscale) * \`color\`
-- (color)
sqppiImgColorType :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiImgColorType
  = lens _sqppiImgColorType
      (\ s a -> s{_sqppiImgColorType = a})

-- | Restricts results to images of a specified size. Supported values are: *
-- \`icon\` (small) * \`small | medium | large | xlarge\` (medium) *
-- \`xxlarge\` (large) * \`huge\` (extra-large)
sqppiImgSize :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiImgSize
  = lens _sqppiImgSize (\ s a -> s{_sqppiImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain.
sqppiExactTerms :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiExactTerms
  = lens _sqppiExactTerms
      (\ s a -> s{_sqppiExactTerms = a})

-- | The index of the current set of search results into the total set of
-- results, where the index of the first result is 1.
sqppiStartIndex :: Lens' SearchQueriesPreviousPageItem (Maybe Int32)
sqppiStartIndex
  = lens _sqppiStartIndex
      (\ s a -> s{_sqppiStartIndex = a})
      . mapping _Coerce

-- | Restricts search results to documents originating in a particular
-- country. You may use [Boolean
-- operators](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#booleanOperators)
-- in the \`cr\` parameter\'s value. Google WebSearch determines the
-- country of a document by analyzing the following: * The top-level domain
-- (TLD) of the document\'s URL. * The geographic location of the web
-- server\'s IP address. See [Country (cr) Parameter
-- Values](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#countryCollections)
-- for a list of valid values for this parameter.
sqppiCr :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiCr = lens _sqppiCr (\ s a -> s{_sqppiCr = a})

-- | Specifies the [SafeSearch
-- level](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#safeSearchLevels)
-- used for filtering out adult results. This is a custom property not
-- defined in the OpenSearch spec. Valid parameter values are: *
-- \`\"off\"\`: Disable SafeSearch * \`\"active\"\`: Enable SafeSearch
sqppiSafe :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiSafe
  = lens _sqppiSafe (\ s a -> s{_sqppiSafe = a})

-- | Appends the specified query terms to the query, as if they were combined
-- with a logical \`AND\` operator.
sqppiHq :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiHq = lens _sqppiHq (\ s a -> s{_sqppiHq = a})

-- | Specifies the ending value for a search range. Use \`cse:lowRange\` and
-- \`cse:highrange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
sqppiHighRange :: Lens' SearchQueriesPreviousPageItem (Maybe Text)
sqppiHighRange
  = lens _sqppiHighRange
      (\ s a -> s{_sqppiHighRange = a})

instance FromJSON SearchQueriesPreviousPageItem where
        parseJSON
          = withObject "SearchQueriesPreviousPageItem"
              (\ o ->
                 SearchQueriesPreviousPageItem' <$>
                   (o .:? "imgDominantColor") <*>
                     (o .:? "outputEncoding")
                     <*> (o .:? "siteSearchFilter")
                     <*> (o .:? "inputEncoding")
                     <*> (o .:? "orTerms")
                     <*> (o .:? "searchTerms")
                     <*> (o .:? "startPage")
                     <*> (o .:? "rights")
                     <*> (o .:? "count")
                     <*> (o .:? "excludeTerms")
                     <*> (o .:? "fileType")
                     <*> (o .:? "searchType")
                     <*> (o .:? "googleHost")
                     <*> (o .:? "disableCnTwTranslation")
                     <*> (o .:? "relatedSite")
                     <*> (o .:? "hl")
                     <*> (o .:? "sort")
                     <*> (o .:? "language")
                     <*> (o .:? "siteSearch")
                     <*> (o .:? "filter")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "dateRestrict")
                     <*> (o .:? "title")
                     <*> (o .:? "linkSite")
                     <*> (o .:? "lowRange")
                     <*> (o .:? "imgType")
                     <*> (o .:? "gl")
                     <*> (o .:? "cx")
                     <*> (o .:? "imgColorType")
                     <*> (o .:? "imgSize")
                     <*> (o .:? "exactTerms")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "cr")
                     <*> (o .:? "safe")
                     <*> (o .:? "hq")
                     <*> (o .:? "highRange"))

instance ToJSON SearchQueriesPreviousPageItem where
        toJSON SearchQueriesPreviousPageItem'{..}
          = object
              (catMaybes
                 [("imgDominantColor" .=) <$> _sqppiImgDominantColor,
                  ("outputEncoding" .=) <$> _sqppiOutputEncoding,
                  ("siteSearchFilter" .=) <$> _sqppiSiteSearchFilter,
                  ("inputEncoding" .=) <$> _sqppiInputEncoding,
                  ("orTerms" .=) <$> _sqppiOrTerms,
                  ("searchTerms" .=) <$> _sqppiSearchTerms,
                  ("startPage" .=) <$> _sqppiStartPage,
                  ("rights" .=) <$> _sqppiRights,
                  ("count" .=) <$> _sqppiCount,
                  ("excludeTerms" .=) <$> _sqppiExcludeTerms,
                  ("fileType" .=) <$> _sqppiFileType,
                  ("searchType" .=) <$> _sqppiSearchType,
                  ("googleHost" .=) <$> _sqppiGoogleHost,
                  ("disableCnTwTranslation" .=) <$>
                    _sqppiDisableCnTwTranslation,
                  ("relatedSite" .=) <$> _sqppiRelatedSite,
                  ("hl" .=) <$> _sqppiHl, ("sort" .=) <$> _sqppiSort,
                  ("language" .=) <$> _sqppiLanguage,
                  ("siteSearch" .=) <$> _sqppiSiteSearch,
                  ("filter" .=) <$> _sqppiFilter,
                  ("totalResults" .=) <$> _sqppiTotalResults,
                  ("dateRestrict" .=) <$> _sqppiDateRestrict,
                  ("title" .=) <$> _sqppiTitle,
                  ("linkSite" .=) <$> _sqppiLinkSite,
                  ("lowRange" .=) <$> _sqppiLowRange,
                  ("imgType" .=) <$> _sqppiImgType,
                  ("gl" .=) <$> _sqppiGl, ("cx" .=) <$> _sqppiCx,
                  ("imgColorType" .=) <$> _sqppiImgColorType,
                  ("imgSize" .=) <$> _sqppiImgSize,
                  ("exactTerms" .=) <$> _sqppiExactTerms,
                  ("startIndex" .=) <$> _sqppiStartIndex,
                  ("cr" .=) <$> _sqppiCr, ("safe" .=) <$> _sqppiSafe,
                  ("hq" .=) <$> _sqppiHq,
                  ("highRange" .=) <$> _sqppiHighRange])

-- | OpenSearch template and URL.
--
-- /See:/ 'searchURL' smart constructor.
data SearchURL =
  SearchURL'
    { _suType :: !(Maybe Text)
    , _suTemplate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suType'
--
-- * 'suTemplate'
searchURL
    :: SearchURL
searchURL = SearchURL' {_suType = Nothing, _suTemplate = Nothing}


-- | The MIME type of the OpenSearch URL template for the Custom Search JSON
-- API.
suType :: Lens' SearchURL (Maybe Text)
suType = lens _suType (\ s a -> s{_suType = a})

-- | The actual [OpenSearch
-- template](http:\/\/www.opensearch.org\/specifications\/opensearch\/1.1#opensearch_url_template_syntax)
-- for this API.
suTemplate :: Lens' SearchURL (Maybe Text)
suTemplate
  = lens _suTemplate (\ s a -> s{_suTemplate = a})

instance FromJSON SearchURL where
        parseJSON
          = withObject "SearchURL"
              (\ o ->
                 SearchURL' <$> (o .:? "type") <*> (o .:? "template"))

instance ToJSON SearchURL where
        toJSON SearchURL'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _suType,
                  ("template" .=) <$> _suTemplate])

-- | Spell correction information for a query.
--
-- /See:/ 'searchSpelling' smart constructor.
data SearchSpelling =
  SearchSpelling'
    { _ssCorrectedQuery :: !(Maybe Text)
    , _ssHTMLCorrectedQuery :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchSpelling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssCorrectedQuery'
--
-- * 'ssHTMLCorrectedQuery'
searchSpelling
    :: SearchSpelling
searchSpelling =
  SearchSpelling' {_ssCorrectedQuery = Nothing, _ssHTMLCorrectedQuery = Nothing}


-- | The corrected query.
ssCorrectedQuery :: Lens' SearchSpelling (Maybe Text)
ssCorrectedQuery
  = lens _ssCorrectedQuery
      (\ s a -> s{_ssCorrectedQuery = a})

-- | The corrected query, formatted in HTML.
ssHTMLCorrectedQuery :: Lens' SearchSpelling (Maybe Text)
ssHTMLCorrectedQuery
  = lens _ssHTMLCorrectedQuery
      (\ s a -> s{_ssHTMLCorrectedQuery = a})

instance FromJSON SearchSpelling where
        parseJSON
          = withObject "SearchSpelling"
              (\ o ->
                 SearchSpelling' <$>
                   (o .:? "correctedQuery") <*>
                     (o .:? "htmlCorrectedQuery"))

instance ToJSON SearchSpelling where
        toJSON SearchSpelling'{..}
          = object
              (catMaybes
                 [("correctedQuery" .=) <$> _ssCorrectedQuery,
                  ("htmlCorrectedQuery" .=) <$> _ssHTMLCorrectedQuery])

-- | Image belonging to a custom search result.
--
-- /See:/ 'resultImage' smart constructor.
data ResultImage =
  ResultImage'
    { _riThumbnailLink :: !(Maybe Text)
    , _riHeight :: !(Maybe (Textual Int32))
    , _riByteSize :: !(Maybe (Textual Int32))
    , _riContextLink :: !(Maybe Text)
    , _riThumbnailHeight :: !(Maybe (Textual Int32))
    , _riWidth :: !(Maybe (Textual Int32))
    , _riThumbnailWidth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riThumbnailLink'
--
-- * 'riHeight'
--
-- * 'riByteSize'
--
-- * 'riContextLink'
--
-- * 'riThumbnailHeight'
--
-- * 'riWidth'
--
-- * 'riThumbnailWidth'
resultImage
    :: ResultImage
resultImage =
  ResultImage'
    { _riThumbnailLink = Nothing
    , _riHeight = Nothing
    , _riByteSize = Nothing
    , _riContextLink = Nothing
    , _riThumbnailHeight = Nothing
    , _riWidth = Nothing
    , _riThumbnailWidth = Nothing
    }


-- | A URL to the thumbnail image.
riThumbnailLink :: Lens' ResultImage (Maybe Text)
riThumbnailLink
  = lens _riThumbnailLink
      (\ s a -> s{_riThumbnailLink = a})

-- | The height of the image, in pixels.
riHeight :: Lens' ResultImage (Maybe Int32)
riHeight
  = lens _riHeight (\ s a -> s{_riHeight = a}) .
      mapping _Coerce

-- | The size of the image, in pixels.
riByteSize :: Lens' ResultImage (Maybe Int32)
riByteSize
  = lens _riByteSize (\ s a -> s{_riByteSize = a}) .
      mapping _Coerce

-- | A URL pointing to the webpage hosting the image.
riContextLink :: Lens' ResultImage (Maybe Text)
riContextLink
  = lens _riContextLink
      (\ s a -> s{_riContextLink = a})

-- | The height of the thumbnail image, in pixels.
riThumbnailHeight :: Lens' ResultImage (Maybe Int32)
riThumbnailHeight
  = lens _riThumbnailHeight
      (\ s a -> s{_riThumbnailHeight = a})
      . mapping _Coerce

-- | The width of the image, in pixels.
riWidth :: Lens' ResultImage (Maybe Int32)
riWidth
  = lens _riWidth (\ s a -> s{_riWidth = a}) .
      mapping _Coerce

-- | The width of the thumbnail image, in pixels.
riThumbnailWidth :: Lens' ResultImage (Maybe Int32)
riThumbnailWidth
  = lens _riThumbnailWidth
      (\ s a -> s{_riThumbnailWidth = a})
      . mapping _Coerce

instance FromJSON ResultImage where
        parseJSON
          = withObject "ResultImage"
              (\ o ->
                 ResultImage' <$>
                   (o .:? "thumbnailLink") <*> (o .:? "height") <*>
                     (o .:? "byteSize")
                     <*> (o .:? "contextLink")
                     <*> (o .:? "thumbnailHeight")
                     <*> (o .:? "width")
                     <*> (o .:? "thumbnailWidth"))

instance ToJSON ResultImage where
        toJSON ResultImage'{..}
          = object
              (catMaybes
                 [("thumbnailLink" .=) <$> _riThumbnailLink,
                  ("height" .=) <$> _riHeight,
                  ("byteSize" .=) <$> _riByteSize,
                  ("contextLink" .=) <$> _riContextLink,
                  ("thumbnailHeight" .=) <$> _riThumbnailHeight,
                  ("width" .=) <$> _riWidth,
                  ("thumbnailWidth" .=) <$> _riThumbnailWidth])

-- | Contains
-- [PageMap](https:\/\/developers.google.com\/custom-search\/docs\/structured_data#pagemaps)
-- information for this search result.
--
-- /See:/ 'resultPagemap' smart constructor.
newtype ResultPagemap =
  ResultPagemap'
    { _rpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultPagemap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpAddtional'
resultPagemap
    :: HashMap Text JSONValue -- ^ 'rpAddtional'
    -> ResultPagemap
resultPagemap pRpAddtional_ =
  ResultPagemap' {_rpAddtional = _Coerce # pRpAddtional_}


-- | Properties of the object.
rpAddtional :: Lens' ResultPagemap (HashMap Text JSONValue)
rpAddtional
  = lens _rpAddtional (\ s a -> s{_rpAddtional = a}) .
      _Coerce

instance FromJSON ResultPagemap where
        parseJSON
          = withObject "ResultPagemap"
              (\ o -> ResultPagemap' <$> (parseJSONObject o))

instance ToJSON ResultPagemap where
        toJSON = toJSON . _rpAddtional

-- | A custom search result.
--
-- /See:/ 'result' smart constructor.
data Result =
  Result'
    { _rMime :: !(Maybe Text)
    , _rImage :: !(Maybe ResultImage)
    , _rPagemap :: !(Maybe ResultPagemap)
    , _rDisplayLink :: !(Maybe Text)
    , _rFileFormat :: !(Maybe Text)
    , _rSnippet :: !(Maybe Text)
    , _rKind :: !(Maybe Text)
    , _rLink :: !(Maybe Text)
    , _rHTMLSnippet :: !(Maybe Text)
    , _rHTMLFormattedURL :: !(Maybe Text)
    , _rCacheId :: !(Maybe Text)
    , _rFormattedURL :: !(Maybe Text)
    , _rHTMLTitle :: !(Maybe Text)
    , _rLabels :: !(Maybe [ResultLabelsItem])
    , _rTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Result' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMime'
--
-- * 'rImage'
--
-- * 'rPagemap'
--
-- * 'rDisplayLink'
--
-- * 'rFileFormat'
--
-- * 'rSnippet'
--
-- * 'rKind'
--
-- * 'rLink'
--
-- * 'rHTMLSnippet'
--
-- * 'rHTMLFormattedURL'
--
-- * 'rCacheId'
--
-- * 'rFormattedURL'
--
-- * 'rHTMLTitle'
--
-- * 'rLabels'
--
-- * 'rTitle'
result
    :: Result
result =
  Result'
    { _rMime = Nothing
    , _rImage = Nothing
    , _rPagemap = Nothing
    , _rDisplayLink = Nothing
    , _rFileFormat = Nothing
    , _rSnippet = Nothing
    , _rKind = Nothing
    , _rLink = Nothing
    , _rHTMLSnippet = Nothing
    , _rHTMLFormattedURL = Nothing
    , _rCacheId = Nothing
    , _rFormattedURL = Nothing
    , _rHTMLTitle = Nothing
    , _rLabels = Nothing
    , _rTitle = Nothing
    }


-- | The MIME type of the search result.
rMime :: Lens' Result (Maybe Text)
rMime = lens _rMime (\ s a -> s{_rMime = a})

-- | Image belonging to a custom search result.
rImage :: Lens' Result (Maybe ResultImage)
rImage = lens _rImage (\ s a -> s{_rImage = a})

-- | Contains
-- [PageMap](https:\/\/developers.google.com\/custom-search\/docs\/structured_data#pagemaps)
-- information for this search result.
rPagemap :: Lens' Result (Maybe ResultPagemap)
rPagemap = lens _rPagemap (\ s a -> s{_rPagemap = a})

-- | An abridged version of this search result’s URL, e.g. www.example.com.
rDisplayLink :: Lens' Result (Maybe Text)
rDisplayLink
  = lens _rDisplayLink (\ s a -> s{_rDisplayLink = a})

-- | The file format of the search result.
rFileFormat :: Lens' Result (Maybe Text)
rFileFormat
  = lens _rFileFormat (\ s a -> s{_rFileFormat = a})

-- | The snippet of the search result, in plain text.
rSnippet :: Lens' Result (Maybe Text)
rSnippet = lens _rSnippet (\ s a -> s{_rSnippet = a})

-- | A unique identifier for the type of current object. For this API, it is
-- \`customsearch#result.\`
rKind :: Lens' Result (Maybe Text)
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The full URL to which the search result is pointing, e.g.
-- http:\/\/www.example.com\/foo\/bar.
rLink :: Lens' Result (Maybe Text)
rLink = lens _rLink (\ s a -> s{_rLink = a})

-- | The snippet of the search result, in HTML.
rHTMLSnippet :: Lens' Result (Maybe Text)
rHTMLSnippet
  = lens _rHTMLSnippet (\ s a -> s{_rHTMLSnippet = a})

-- | The HTML-formatted URL displayed after the snippet for each search
-- result.
rHTMLFormattedURL :: Lens' Result (Maybe Text)
rHTMLFormattedURL
  = lens _rHTMLFormattedURL
      (\ s a -> s{_rHTMLFormattedURL = a})

-- | Indicates the ID of Google\'s cached version of the search result.
rCacheId :: Lens' Result (Maybe Text)
rCacheId = lens _rCacheId (\ s a -> s{_rCacheId = a})

-- | The URL displayed after the snippet for each search result.
rFormattedURL :: Lens' Result (Maybe Text)
rFormattedURL
  = lens _rFormattedURL
      (\ s a -> s{_rFormattedURL = a})

-- | The title of the search result, in HTML.
rHTMLTitle :: Lens' Result (Maybe Text)
rHTMLTitle
  = lens _rHTMLTitle (\ s a -> s{_rHTMLTitle = a})

-- | Encapsulates all information about [refinement
-- labels](https:\/\/developers.google.com\/custom-search\/docs\/xml_results).
rLabels :: Lens' Result [ResultLabelsItem]
rLabels
  = lens _rLabels (\ s a -> s{_rLabels = a}) . _Default
      . _Coerce

-- | The title of the search result, in plain text.
rTitle :: Lens' Result (Maybe Text)
rTitle = lens _rTitle (\ s a -> s{_rTitle = a})

instance FromJSON Result where
        parseJSON
          = withObject "Result"
              (\ o ->
                 Result' <$>
                   (o .:? "mime") <*> (o .:? "image") <*>
                     (o .:? "pagemap")
                     <*> (o .:? "displayLink")
                     <*> (o .:? "fileFormat")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind")
                     <*> (o .:? "link")
                     <*> (o .:? "htmlSnippet")
                     <*> (o .:? "htmlFormattedUrl")
                     <*> (o .:? "cacheId")
                     <*> (o .:? "formattedUrl")
                     <*> (o .:? "htmlTitle")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "title"))

instance ToJSON Result where
        toJSON Result'{..}
          = object
              (catMaybes
                 [("mime" .=) <$> _rMime, ("image" .=) <$> _rImage,
                  ("pagemap" .=) <$> _rPagemap,
                  ("displayLink" .=) <$> _rDisplayLink,
                  ("fileFormat" .=) <$> _rFileFormat,
                  ("snippet" .=) <$> _rSnippet, ("kind" .=) <$> _rKind,
                  ("link" .=) <$> _rLink,
                  ("htmlSnippet" .=) <$> _rHTMLSnippet,
                  ("htmlFormattedUrl" .=) <$> _rHTMLFormattedURL,
                  ("cacheId" .=) <$> _rCacheId,
                  ("formattedUrl" .=) <$> _rFormattedURL,
                  ("htmlTitle" .=) <$> _rHTMLTitle,
                  ("labels" .=) <$> _rLabels,
                  ("title" .=) <$> _rTitle])

-- | Refinement label associated with a custom search result.
--
-- /See:/ 'resultLabelsItem' smart constructor.
data ResultLabelsItem =
  ResultLabelsItem'
    { _rliName :: !(Maybe Text)
    , _rliDisplayName :: !(Maybe Text)
    , _rliLabelWithOp :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultLabelsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rliName'
--
-- * 'rliDisplayName'
--
-- * 'rliLabelWithOp'
resultLabelsItem
    :: ResultLabelsItem
resultLabelsItem =
  ResultLabelsItem'
    {_rliName = Nothing, _rliDisplayName = Nothing, _rliLabelWithOp = Nothing}


-- | The name of a refinement label, which you can use to refine searches.
-- Don\'t display this in your user interface; instead, use displayName.
rliName :: Lens' ResultLabelsItem (Maybe Text)
rliName = lens _rliName (\ s a -> s{_rliName = a})

-- | The display name of a refinement label. This is the name you should
-- display in your user interface.
rliDisplayName :: Lens' ResultLabelsItem (Maybe Text)
rliDisplayName
  = lens _rliDisplayName
      (\ s a -> s{_rliDisplayName = a})

-- | Refinement label and the associated refinement operation.
rliLabelWithOp :: Lens' ResultLabelsItem (Maybe Text)
rliLabelWithOp
  = lens _rliLabelWithOp
      (\ s a -> s{_rliLabelWithOp = a})

instance FromJSON ResultLabelsItem where
        parseJSON
          = withObject "ResultLabelsItem"
              (\ o ->
                 ResultLabelsItem' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "label_with_op"))

instance ToJSON ResultLabelsItem where
        toJSON ResultLabelsItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rliName,
                  ("displayName" .=) <$> _rliDisplayName,
                  ("label_with_op" .=) <$> _rliLabelWithOp])

-- | Metadata and refinements associated with the given search engine,
-- including: * The name of the search engine that was used for the query.
-- * A set of [facet
-- objects](https:\/\/developers.google.com\/custom-search\/docs\/refinements#create)
-- (refinements) you can use for refining a search.
--
-- /See:/ 'searchContext' smart constructor.
newtype SearchContext =
  SearchContext'
    { _scAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scAddtional'
searchContext
    :: HashMap Text JSONValue -- ^ 'scAddtional'
    -> SearchContext
searchContext pScAddtional_ =
  SearchContext' {_scAddtional = _Coerce # pScAddtional_}


-- | Properties of the object.
scAddtional :: Lens' SearchContext (HashMap Text JSONValue)
scAddtional
  = lens _scAddtional (\ s a -> s{_scAddtional = a}) .
      _Coerce

instance FromJSON SearchContext where
        parseJSON
          = withObject "SearchContext"
              (\ o -> SearchContext' <$> (parseJSONObject o))

instance ToJSON SearchContext where
        toJSON = toJSON . _scAddtional

-- | Metadata about a search operation.
--
-- /See:/ 'searchSearchInformation' smart constructor.
data SearchSearchInformation =
  SearchSearchInformation'
    { _ssiSearchTime :: !(Maybe (Textual Double))
    , _ssiFormattedSearchTime :: !(Maybe Text)
    , _ssiTotalResults :: !(Maybe Text)
    , _ssiFormattedTotalResults :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchSearchInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssiSearchTime'
--
-- * 'ssiFormattedSearchTime'
--
-- * 'ssiTotalResults'
--
-- * 'ssiFormattedTotalResults'
searchSearchInformation
    :: SearchSearchInformation
searchSearchInformation =
  SearchSearchInformation'
    { _ssiSearchTime = Nothing
    , _ssiFormattedSearchTime = Nothing
    , _ssiTotalResults = Nothing
    , _ssiFormattedTotalResults = Nothing
    }


-- | The time taken for the server to return search results.
ssiSearchTime :: Lens' SearchSearchInformation (Maybe Double)
ssiSearchTime
  = lens _ssiSearchTime
      (\ s a -> s{_ssiSearchTime = a})
      . mapping _Coerce

-- | The time taken for the server to return search results, formatted
-- according to locale style.
ssiFormattedSearchTime :: Lens' SearchSearchInformation (Maybe Text)
ssiFormattedSearchTime
  = lens _ssiFormattedSearchTime
      (\ s a -> s{_ssiFormattedSearchTime = a})

-- | The total number of search results returned by the query.
ssiTotalResults :: Lens' SearchSearchInformation (Maybe Text)
ssiTotalResults
  = lens _ssiTotalResults
      (\ s a -> s{_ssiTotalResults = a})

-- | The total number of search results, formatted according to locale style.
ssiFormattedTotalResults :: Lens' SearchSearchInformation (Maybe Text)
ssiFormattedTotalResults
  = lens _ssiFormattedTotalResults
      (\ s a -> s{_ssiFormattedTotalResults = a})

instance FromJSON SearchSearchInformation where
        parseJSON
          = withObject "SearchSearchInformation"
              (\ o ->
                 SearchSearchInformation' <$>
                   (o .:? "searchTime") <*>
                     (o .:? "formattedSearchTime")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "formattedTotalResults"))

instance ToJSON SearchSearchInformation where
        toJSON SearchSearchInformation'{..}
          = object
              (catMaybes
                 [("searchTime" .=) <$> _ssiSearchTime,
                  ("formattedSearchTime" .=) <$>
                    _ssiFormattedSearchTime,
                  ("totalResults" .=) <$> _ssiTotalResults,
                  ("formattedTotalResults" .=) <$>
                    _ssiFormattedTotalResults])

-- | Custom search request metadata.
--
-- /See:/ 'searchQueriesNextPageItem' smart constructor.
data SearchQueriesNextPageItem =
  SearchQueriesNextPageItem'
    { _sqnpiImgDominantColor :: !(Maybe Text)
    , _sqnpiOutputEncoding :: !(Maybe Text)
    , _sqnpiSiteSearchFilter :: !(Maybe Text)
    , _sqnpiInputEncoding :: !(Maybe Text)
    , _sqnpiOrTerms :: !(Maybe Text)
    , _sqnpiSearchTerms :: !(Maybe Text)
    , _sqnpiStartPage :: !(Maybe (Textual Int32))
    , _sqnpiRights :: !(Maybe Text)
    , _sqnpiCount :: !(Maybe (Textual Int32))
    , _sqnpiExcludeTerms :: !(Maybe Text)
    , _sqnpiFileType :: !(Maybe Text)
    , _sqnpiSearchType :: !(Maybe Text)
    , _sqnpiGoogleHost :: !(Maybe Text)
    , _sqnpiDisableCnTwTranslation :: !(Maybe Text)
    , _sqnpiRelatedSite :: !(Maybe Text)
    , _sqnpiHl :: !(Maybe Text)
    , _sqnpiSort :: !(Maybe Text)
    , _sqnpiLanguage :: !(Maybe Text)
    , _sqnpiSiteSearch :: !(Maybe Text)
    , _sqnpiFilter :: !(Maybe Text)
    , _sqnpiTotalResults :: !(Maybe (Textual Int64))
    , _sqnpiDateRestrict :: !(Maybe Text)
    , _sqnpiTitle :: !(Maybe Text)
    , _sqnpiLinkSite :: !(Maybe Text)
    , _sqnpiLowRange :: !(Maybe Text)
    , _sqnpiImgType :: !(Maybe Text)
    , _sqnpiGl :: !(Maybe Text)
    , _sqnpiCx :: !(Maybe Text)
    , _sqnpiImgColorType :: !(Maybe Text)
    , _sqnpiImgSize :: !(Maybe Text)
    , _sqnpiExactTerms :: !(Maybe Text)
    , _sqnpiStartIndex :: !(Maybe (Textual Int32))
    , _sqnpiCr :: !(Maybe Text)
    , _sqnpiSafe :: !(Maybe Text)
    , _sqnpiHq :: !(Maybe Text)
    , _sqnpiHighRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchQueriesNextPageItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqnpiImgDominantColor'
--
-- * 'sqnpiOutputEncoding'
--
-- * 'sqnpiSiteSearchFilter'
--
-- * 'sqnpiInputEncoding'
--
-- * 'sqnpiOrTerms'
--
-- * 'sqnpiSearchTerms'
--
-- * 'sqnpiStartPage'
--
-- * 'sqnpiRights'
--
-- * 'sqnpiCount'
--
-- * 'sqnpiExcludeTerms'
--
-- * 'sqnpiFileType'
--
-- * 'sqnpiSearchType'
--
-- * 'sqnpiGoogleHost'
--
-- * 'sqnpiDisableCnTwTranslation'
--
-- * 'sqnpiRelatedSite'
--
-- * 'sqnpiHl'
--
-- * 'sqnpiSort'
--
-- * 'sqnpiLanguage'
--
-- * 'sqnpiSiteSearch'
--
-- * 'sqnpiFilter'
--
-- * 'sqnpiTotalResults'
--
-- * 'sqnpiDateRestrict'
--
-- * 'sqnpiTitle'
--
-- * 'sqnpiLinkSite'
--
-- * 'sqnpiLowRange'
--
-- * 'sqnpiImgType'
--
-- * 'sqnpiGl'
--
-- * 'sqnpiCx'
--
-- * 'sqnpiImgColorType'
--
-- * 'sqnpiImgSize'
--
-- * 'sqnpiExactTerms'
--
-- * 'sqnpiStartIndex'
--
-- * 'sqnpiCr'
--
-- * 'sqnpiSafe'
--
-- * 'sqnpiHq'
--
-- * 'sqnpiHighRange'
searchQueriesNextPageItem
    :: SearchQueriesNextPageItem
searchQueriesNextPageItem =
  SearchQueriesNextPageItem'
    { _sqnpiImgDominantColor = Nothing
    , _sqnpiOutputEncoding = Nothing
    , _sqnpiSiteSearchFilter = Nothing
    , _sqnpiInputEncoding = Nothing
    , _sqnpiOrTerms = Nothing
    , _sqnpiSearchTerms = Nothing
    , _sqnpiStartPage = Nothing
    , _sqnpiRights = Nothing
    , _sqnpiCount = Nothing
    , _sqnpiExcludeTerms = Nothing
    , _sqnpiFileType = Nothing
    , _sqnpiSearchType = Nothing
    , _sqnpiGoogleHost = Nothing
    , _sqnpiDisableCnTwTranslation = Nothing
    , _sqnpiRelatedSite = Nothing
    , _sqnpiHl = Nothing
    , _sqnpiSort = Nothing
    , _sqnpiLanguage = Nothing
    , _sqnpiSiteSearch = Nothing
    , _sqnpiFilter = Nothing
    , _sqnpiTotalResults = Nothing
    , _sqnpiDateRestrict = Nothing
    , _sqnpiTitle = Nothing
    , _sqnpiLinkSite = Nothing
    , _sqnpiLowRange = Nothing
    , _sqnpiImgType = Nothing
    , _sqnpiGl = Nothing
    , _sqnpiCx = Nothing
    , _sqnpiImgColorType = Nothing
    , _sqnpiImgSize = Nothing
    , _sqnpiExactTerms = Nothing
    , _sqnpiStartIndex = Nothing
    , _sqnpiCr = Nothing
    , _sqnpiSafe = Nothing
    , _sqnpiHq = Nothing
    , _sqnpiHighRange = Nothing
    }


-- | Restricts results to images with a specific dominant color. Supported
-- values are: * \`red\` * \`orange\` * \`yellow\` * \`green\` * \`teal\` *
-- \`blue\` * \`purple\` * \`pink\` * \`white\` * \`gray\` * \`black\` *
-- \`brown\`
sqnpiImgDominantColor :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiImgDominantColor
  = lens _sqnpiImgDominantColor
      (\ s a -> s{_sqnpiImgDominantColor = a})

-- | The character encoding supported for search results.
sqnpiOutputEncoding :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiOutputEncoding
  = lens _sqnpiOutputEncoding
      (\ s a -> s{_sqnpiOutputEncoding = a})

-- | Specifies whether to include or exclude results from the site named in
-- the \`sitesearch\` parameter. Supported values are: * \`i\`: include
-- content from site * \`e\`: exclude content from site
sqnpiSiteSearchFilter :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiSiteSearchFilter
  = lens _sqnpiSiteSearchFilter
      (\ s a -> s{_sqnpiSiteSearchFilter = a})

-- | The character encoding supported for search requests.
sqnpiInputEncoding :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiInputEncoding
  = lens _sqnpiInputEncoding
      (\ s a -> s{_sqnpiInputEncoding = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms. You can also use the [Boolean
-- OR](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#BooleanOrqt)
-- query term for this type of query.
sqnpiOrTerms :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiOrTerms
  = lens _sqnpiOrTerms (\ s a -> s{_sqnpiOrTerms = a})

-- | The search terms entered by the user.
sqnpiSearchTerms :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiSearchTerms
  = lens _sqnpiSearchTerms
      (\ s a -> s{_sqnpiSearchTerms = a})

-- | The page number of this set of results, where the page length is set by
-- the \`count\` property.
sqnpiStartPage :: Lens' SearchQueriesNextPageItem (Maybe Int32)
sqnpiStartPage
  = lens _sqnpiStartPage
      (\ s a -> s{_sqnpiStartPage = a})
      . mapping _Coerce

-- | Filters based on licensing. Supported values include: *
-- \`cc_publicdomain\` * \`cc_attribute\` * \`cc_sharealike\` *
-- \`cc_noncommercial\` * \`cc_nonderived\`
sqnpiRights :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiRights
  = lens _sqnpiRights (\ s a -> s{_sqnpiRights = a})

-- | Number of search results returned in this set.
sqnpiCount :: Lens' SearchQueriesNextPageItem (Maybe Int32)
sqnpiCount
  = lens _sqnpiCount (\ s a -> s{_sqnpiCount = a}) .
      mapping _Coerce

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results.
sqnpiExcludeTerms :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiExcludeTerms
  = lens _sqnpiExcludeTerms
      (\ s a -> s{_sqnpiExcludeTerms = a})

-- | Restricts results to files of a specified extension. Filetypes supported
-- by Google include: * Adobe Portable Document Format (\`pdf\`) * Adobe
-- PostScript (\`ps\`) * Lotus 1-2-3 (\`wk1\`, \`wk2\`, \`wk3\`, \`wk4\`,
-- \`wk5\`, \`wki\`, \`wks\`, \`wku\`) * Lotus WordPro (\`lwp\`) * Macwrite
-- (\`mw\`) * Microsoft Excel (\`xls\`) * Microsoft PowerPoint (\`ppt\`) *
-- Microsoft Word (\`doc\`) * Microsoft Works (\`wks\`, \`wps\`, \`wdb\`) *
-- Microsoft Write (\`wri\`) * Rich Text Format (\`rtf\`) * Shockwave Flash
-- (\`swf\`) * Text (\`ans\`, \`txt\`). Additional filetypes may be added
-- in the future. An up-to-date list can always be found in Google\'s [file
-- type FAQ](https:\/\/support.google.com\/webmasters\/answer\/35287).
sqnpiFileType :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiFileType
  = lens _sqnpiFileType
      (\ s a -> s{_sqnpiFileType = a})

-- | Allowed values are \`web\` or \`image\`. If unspecified, results are
-- limited to webpages.
sqnpiSearchType :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiSearchType
  = lens _sqnpiSearchType
      (\ s a -> s{_sqnpiSearchType = a})

-- | Specifies the Google domain (for example, google.com, google.de, or
-- google.fr) to which the search should be limited.
sqnpiGoogleHost :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiGoogleHost
  = lens _sqnpiGoogleHost
      (\ s a -> s{_sqnpiGoogleHost = a})

-- | Enables or disables the [Simplified and Traditional Chinese
-- Search](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#chineseSearch)
-- feature. Supported values are: * \`0\`: enabled (default) * \`1\`:
-- disabled
sqnpiDisableCnTwTranslation :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiDisableCnTwTranslation
  = lens _sqnpiDisableCnTwTranslation
      (\ s a -> s{_sqnpiDisableCnTwTranslation = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL. The parameter value should be a URL.
sqnpiRelatedSite :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiRelatedSite
  = lens _sqnpiRelatedSite
      (\ s a -> s{_sqnpiRelatedSite = a})

-- | Specifies the interface language (host language) of your user interface.
-- Explicitly setting this parameter improves the performance and the
-- quality of your search results. See the [Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInterfaceLanguages)
-- section of [Internationalizing Queries and Results
-- Presentation](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInternationalizing)
-- for more information, and [Supported Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#interfaceLanguages)
-- for a list of supported languages.
sqnpiHl :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiHl = lens _sqnpiHl (\ s a -> s{_sqnpiHl = a})

-- | Specifies that results should be sorted according to the specified
-- expression. For example, sort by date.
sqnpiSort :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiSort
  = lens _sqnpiSort (\ s a -> s{_sqnpiSort = a})

-- | The language of the search results.
sqnpiLanguage :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiLanguage
  = lens _sqnpiLanguage
      (\ s a -> s{_sqnpiLanguage = a})

-- | Restricts results to URLs from a specified site.
sqnpiSiteSearch :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiSiteSearch
  = lens _sqnpiSiteSearch
      (\ s a -> s{_sqnpiSiteSearch = a})

-- | Activates or deactivates the automatic filtering of Google search
-- results. See [Automatic
-- Filtering](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#automaticFiltering)
-- for more information about Google\'s search results filters. Valid
-- values for this parameter are: * \`0\`: Disabled * \`1\`: Enabled
-- (default) **Note**: By default, Google applies filtering to all search
-- results to improve the quality of those results.
sqnpiFilter :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiFilter
  = lens _sqnpiFilter (\ s a -> s{_sqnpiFilter = a})

-- | Estimated number of total search results. May not be accurate.
sqnpiTotalResults :: Lens' SearchQueriesNextPageItem (Maybe Int64)
sqnpiTotalResults
  = lens _sqnpiTotalResults
      (\ s a -> s{_sqnpiTotalResults = a})
      . mapping _Coerce

-- | Restricts results to URLs based on date. Supported values include: *
-- \`d[number]\`: requests results from the specified number of past days.
-- * \`w[number]\`: requests results from the specified number of past
-- weeks. * \`m[number]\`: requests results from the specified number of
-- past months. * \`y[number]\`: requests results from the specified number
-- of past years.
sqnpiDateRestrict :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiDateRestrict
  = lens _sqnpiDateRestrict
      (\ s a -> s{_sqnpiDateRestrict = a})

-- | A description of the query.
sqnpiTitle :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiTitle
  = lens _sqnpiTitle (\ s a -> s{_sqnpiTitle = a})

-- | Specifies that all results should contain a link to a specific URL.
sqnpiLinkSite :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiLinkSite
  = lens _sqnpiLinkSite
      (\ s a -> s{_sqnpiLinkSite = a})

-- | Specifies the starting value for a search range. Use \`cse:lowRange\`
-- and \`cse:highrange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
sqnpiLowRange :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiLowRange
  = lens _sqnpiLowRange
      (\ s a -> s{_sqnpiLowRange = a})

-- | Restricts results to images of a specified type. Supported values are: *
-- \`clipart\` (Clip art) * \`face\` (Face) * \`lineart\` (Line drawing) *
-- \`photo\` (Photo) * \`animated\` (Animated) * \`stock\` (Stock)
sqnpiImgType :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiImgType
  = lens _sqnpiImgType (\ s a -> s{_sqnpiImgType = a})

-- | Boosts search results whose country of origin matches the parameter
-- value. See [Country
-- Codes](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#countryCodes)
-- for a list of valid values. Specifying a \`gl\` parameter value in
-- WebSearch requests should improve the relevance of results. This is
-- particularly true for international customers and, even more
-- specifically, for customers in English-speaking countries other than the
-- United States.
sqnpiGl :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiGl = lens _sqnpiGl (\ s a -> s{_sqnpiGl = a})

-- | The identifier of an engine created using the Programmable Search Engine
-- [Control Panel](https:\/\/programmablesearchengine.google.com\/). This
-- is a custom property not defined in the OpenSearch spec. This parameter
-- is **required**.
sqnpiCx :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiCx = lens _sqnpiCx (\ s a -> s{_sqnpiCx = a})

-- | Restricts results to images of a specified color type. Supported values
-- are: * \`mono\` (black and white) * \`gray\` (grayscale) * \`color\`
-- (color)
sqnpiImgColorType :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiImgColorType
  = lens _sqnpiImgColorType
      (\ s a -> s{_sqnpiImgColorType = a})

-- | Restricts results to images of a specified size. Supported values are: *
-- \`icon\` (small) * \`small | medium | large | xlarge\` (medium) *
-- \`xxlarge\` (large) * \`huge\` (extra-large)
sqnpiImgSize :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiImgSize
  = lens _sqnpiImgSize (\ s a -> s{_sqnpiImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain.
sqnpiExactTerms :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiExactTerms
  = lens _sqnpiExactTerms
      (\ s a -> s{_sqnpiExactTerms = a})

-- | The index of the current set of search results into the total set of
-- results, where the index of the first result is 1.
sqnpiStartIndex :: Lens' SearchQueriesNextPageItem (Maybe Int32)
sqnpiStartIndex
  = lens _sqnpiStartIndex
      (\ s a -> s{_sqnpiStartIndex = a})
      . mapping _Coerce

-- | Restricts search results to documents originating in a particular
-- country. You may use [Boolean
-- operators](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#booleanOperators)
-- in the \`cr\` parameter\'s value. Google WebSearch determines the
-- country of a document by analyzing the following: * The top-level domain
-- (TLD) of the document\'s URL. * The geographic location of the web
-- server\'s IP address. See [Country (cr) Parameter
-- Values](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#countryCollections)
-- for a list of valid values for this parameter.
sqnpiCr :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiCr = lens _sqnpiCr (\ s a -> s{_sqnpiCr = a})

-- | Specifies the [SafeSearch
-- level](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#safeSearchLevels)
-- used for filtering out adult results. This is a custom property not
-- defined in the OpenSearch spec. Valid parameter values are: *
-- \`\"off\"\`: Disable SafeSearch * \`\"active\"\`: Enable SafeSearch
sqnpiSafe :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiSafe
  = lens _sqnpiSafe (\ s a -> s{_sqnpiSafe = a})

-- | Appends the specified query terms to the query, as if they were combined
-- with a logical \`AND\` operator.
sqnpiHq :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiHq = lens _sqnpiHq (\ s a -> s{_sqnpiHq = a})

-- | Specifies the ending value for a search range. Use \`cse:lowRange\` and
-- \`cse:highrange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
sqnpiHighRange :: Lens' SearchQueriesNextPageItem (Maybe Text)
sqnpiHighRange
  = lens _sqnpiHighRange
      (\ s a -> s{_sqnpiHighRange = a})

instance FromJSON SearchQueriesNextPageItem where
        parseJSON
          = withObject "SearchQueriesNextPageItem"
              (\ o ->
                 SearchQueriesNextPageItem' <$>
                   (o .:? "imgDominantColor") <*>
                     (o .:? "outputEncoding")
                     <*> (o .:? "siteSearchFilter")
                     <*> (o .:? "inputEncoding")
                     <*> (o .:? "orTerms")
                     <*> (o .:? "searchTerms")
                     <*> (o .:? "startPage")
                     <*> (o .:? "rights")
                     <*> (o .:? "count")
                     <*> (o .:? "excludeTerms")
                     <*> (o .:? "fileType")
                     <*> (o .:? "searchType")
                     <*> (o .:? "googleHost")
                     <*> (o .:? "disableCnTwTranslation")
                     <*> (o .:? "relatedSite")
                     <*> (o .:? "hl")
                     <*> (o .:? "sort")
                     <*> (o .:? "language")
                     <*> (o .:? "siteSearch")
                     <*> (o .:? "filter")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "dateRestrict")
                     <*> (o .:? "title")
                     <*> (o .:? "linkSite")
                     <*> (o .:? "lowRange")
                     <*> (o .:? "imgType")
                     <*> (o .:? "gl")
                     <*> (o .:? "cx")
                     <*> (o .:? "imgColorType")
                     <*> (o .:? "imgSize")
                     <*> (o .:? "exactTerms")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "cr")
                     <*> (o .:? "safe")
                     <*> (o .:? "hq")
                     <*> (o .:? "highRange"))

instance ToJSON SearchQueriesNextPageItem where
        toJSON SearchQueriesNextPageItem'{..}
          = object
              (catMaybes
                 [("imgDominantColor" .=) <$> _sqnpiImgDominantColor,
                  ("outputEncoding" .=) <$> _sqnpiOutputEncoding,
                  ("siteSearchFilter" .=) <$> _sqnpiSiteSearchFilter,
                  ("inputEncoding" .=) <$> _sqnpiInputEncoding,
                  ("orTerms" .=) <$> _sqnpiOrTerms,
                  ("searchTerms" .=) <$> _sqnpiSearchTerms,
                  ("startPage" .=) <$> _sqnpiStartPage,
                  ("rights" .=) <$> _sqnpiRights,
                  ("count" .=) <$> _sqnpiCount,
                  ("excludeTerms" .=) <$> _sqnpiExcludeTerms,
                  ("fileType" .=) <$> _sqnpiFileType,
                  ("searchType" .=) <$> _sqnpiSearchType,
                  ("googleHost" .=) <$> _sqnpiGoogleHost,
                  ("disableCnTwTranslation" .=) <$>
                    _sqnpiDisableCnTwTranslation,
                  ("relatedSite" .=) <$> _sqnpiRelatedSite,
                  ("hl" .=) <$> _sqnpiHl, ("sort" .=) <$> _sqnpiSort,
                  ("language" .=) <$> _sqnpiLanguage,
                  ("siteSearch" .=) <$> _sqnpiSiteSearch,
                  ("filter" .=) <$> _sqnpiFilter,
                  ("totalResults" .=) <$> _sqnpiTotalResults,
                  ("dateRestrict" .=) <$> _sqnpiDateRestrict,
                  ("title" .=) <$> _sqnpiTitle,
                  ("linkSite" .=) <$> _sqnpiLinkSite,
                  ("lowRange" .=) <$> _sqnpiLowRange,
                  ("imgType" .=) <$> _sqnpiImgType,
                  ("gl" .=) <$> _sqnpiGl, ("cx" .=) <$> _sqnpiCx,
                  ("imgColorType" .=) <$> _sqnpiImgColorType,
                  ("imgSize" .=) <$> _sqnpiImgSize,
                  ("exactTerms" .=) <$> _sqnpiExactTerms,
                  ("startIndex" .=) <$> _sqnpiStartIndex,
                  ("cr" .=) <$> _sqnpiCr, ("safe" .=) <$> _sqnpiSafe,
                  ("hq" .=) <$> _sqnpiHq,
                  ("highRange" .=) <$> _sqnpiHighRange])

-- | Block object belonging to a promotion.
--
-- /See:/ 'promotionBodyLinesItem' smart constructor.
data PromotionBodyLinesItem =
  PromotionBodyLinesItem'
    { _pbliLink :: !(Maybe Text)
    , _pbliURL :: !(Maybe Text)
    , _pbliHTMLTitle :: !(Maybe Text)
    , _pbliTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PromotionBodyLinesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbliLink'
--
-- * 'pbliURL'
--
-- * 'pbliHTMLTitle'
--
-- * 'pbliTitle'
promotionBodyLinesItem
    :: PromotionBodyLinesItem
promotionBodyLinesItem =
  PromotionBodyLinesItem'
    { _pbliLink = Nothing
    , _pbliURL = Nothing
    , _pbliHTMLTitle = Nothing
    , _pbliTitle = Nothing
    }


-- | The anchor text of the block object\'s link, if it has a link.
pbliLink :: Lens' PromotionBodyLinesItem (Maybe Text)
pbliLink = lens _pbliLink (\ s a -> s{_pbliLink = a})

-- | The URL of the block object\'s link, if it has one.
pbliURL :: Lens' PromotionBodyLinesItem (Maybe Text)
pbliURL = lens _pbliURL (\ s a -> s{_pbliURL = a})

-- | The block object\'s text in HTML, if it has text.
pbliHTMLTitle :: Lens' PromotionBodyLinesItem (Maybe Text)
pbliHTMLTitle
  = lens _pbliHTMLTitle
      (\ s a -> s{_pbliHTMLTitle = a})

-- | The block object\'s text, if it has text.
pbliTitle :: Lens' PromotionBodyLinesItem (Maybe Text)
pbliTitle
  = lens _pbliTitle (\ s a -> s{_pbliTitle = a})

instance FromJSON PromotionBodyLinesItem where
        parseJSON
          = withObject "PromotionBodyLinesItem"
              (\ o ->
                 PromotionBodyLinesItem' <$>
                   (o .:? "link") <*> (o .:? "url") <*>
                     (o .:? "htmlTitle")
                     <*> (o .:? "title"))

instance ToJSON PromotionBodyLinesItem where
        toJSON PromotionBodyLinesItem'{..}
          = object
              (catMaybes
                 [("link" .=) <$> _pbliLink, ("url" .=) <$> _pbliURL,
                  ("htmlTitle" .=) <$> _pbliHTMLTitle,
                  ("title" .=) <$> _pbliTitle])

-- | Promotion result.
--
-- /See:/ 'promotion' smart constructor.
data Promotion =
  Promotion'
    { _pImage :: !(Maybe PromotionImage)
    , _pDisplayLink :: !(Maybe Text)
    , _pBodyLines :: !(Maybe [PromotionBodyLinesItem])
    , _pLink :: !(Maybe Text)
    , _pHTMLTitle :: !(Maybe Text)
    , _pTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Promotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pImage'
--
-- * 'pDisplayLink'
--
-- * 'pBodyLines'
--
-- * 'pLink'
--
-- * 'pHTMLTitle'
--
-- * 'pTitle'
promotion
    :: Promotion
promotion =
  Promotion'
    { _pImage = Nothing
    , _pDisplayLink = Nothing
    , _pBodyLines = Nothing
    , _pLink = Nothing
    , _pHTMLTitle = Nothing
    , _pTitle = Nothing
    }


-- | Image belonging to a promotion.
pImage :: Lens' Promotion (Maybe PromotionImage)
pImage = lens _pImage (\ s a -> s{_pImage = a})

-- | An abridged version of this search\'s result URL, e.g. www.example.com.
pDisplayLink :: Lens' Promotion (Maybe Text)
pDisplayLink
  = lens _pDisplayLink (\ s a -> s{_pDisplayLink = a})

-- | An array of block objects for this promotion. See [Google WebSearch
-- Protocol
-- reference](https:\/\/developers.google.com\/custom-search\/docs\/xml_results)
-- for more information.
pBodyLines :: Lens' Promotion [PromotionBodyLinesItem]
pBodyLines
  = lens _pBodyLines (\ s a -> s{_pBodyLines = a}) .
      _Default
      . _Coerce

-- | The URL of the promotion.
pLink :: Lens' Promotion (Maybe Text)
pLink = lens _pLink (\ s a -> s{_pLink = a})

-- | The title of the promotion, in HTML.
pHTMLTitle :: Lens' Promotion (Maybe Text)
pHTMLTitle
  = lens _pHTMLTitle (\ s a -> s{_pHTMLTitle = a})

-- | The title of the promotion.
pTitle :: Lens' Promotion (Maybe Text)
pTitle = lens _pTitle (\ s a -> s{_pTitle = a})

instance FromJSON Promotion where
        parseJSON
          = withObject "Promotion"
              (\ o ->
                 Promotion' <$>
                   (o .:? "image") <*> (o .:? "displayLink") <*>
                     (o .:? "bodyLines" .!= mempty)
                     <*> (o .:? "link")
                     <*> (o .:? "htmlTitle")
                     <*> (o .:? "title"))

instance ToJSON Promotion where
        toJSON Promotion'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _pImage,
                  ("displayLink" .=) <$> _pDisplayLink,
                  ("bodyLines" .=) <$> _pBodyLines,
                  ("link" .=) <$> _pLink,
                  ("htmlTitle" .=) <$> _pHTMLTitle,
                  ("title" .=) <$> _pTitle])

-- | Custom search request metadata.
--
-- /See:/ 'searchQueriesRequestItem' smart constructor.
data SearchQueriesRequestItem =
  SearchQueriesRequestItem'
    { _sqriImgDominantColor :: !(Maybe Text)
    , _sqriOutputEncoding :: !(Maybe Text)
    , _sqriSiteSearchFilter :: !(Maybe Text)
    , _sqriInputEncoding :: !(Maybe Text)
    , _sqriOrTerms :: !(Maybe Text)
    , _sqriSearchTerms :: !(Maybe Text)
    , _sqriStartPage :: !(Maybe (Textual Int32))
    , _sqriRights :: !(Maybe Text)
    , _sqriCount :: !(Maybe (Textual Int32))
    , _sqriExcludeTerms :: !(Maybe Text)
    , _sqriFileType :: !(Maybe Text)
    , _sqriSearchType :: !(Maybe Text)
    , _sqriGoogleHost :: !(Maybe Text)
    , _sqriDisableCnTwTranslation :: !(Maybe Text)
    , _sqriRelatedSite :: !(Maybe Text)
    , _sqriHl :: !(Maybe Text)
    , _sqriSort :: !(Maybe Text)
    , _sqriLanguage :: !(Maybe Text)
    , _sqriSiteSearch :: !(Maybe Text)
    , _sqriFilter :: !(Maybe Text)
    , _sqriTotalResults :: !(Maybe (Textual Int64))
    , _sqriDateRestrict :: !(Maybe Text)
    , _sqriTitle :: !(Maybe Text)
    , _sqriLinkSite :: !(Maybe Text)
    , _sqriLowRange :: !(Maybe Text)
    , _sqriImgType :: !(Maybe Text)
    , _sqriGl :: !(Maybe Text)
    , _sqriCx :: !(Maybe Text)
    , _sqriImgColorType :: !(Maybe Text)
    , _sqriImgSize :: !(Maybe Text)
    , _sqriExactTerms :: !(Maybe Text)
    , _sqriStartIndex :: !(Maybe (Textual Int32))
    , _sqriCr :: !(Maybe Text)
    , _sqriSafe :: !(Maybe Text)
    , _sqriHq :: !(Maybe Text)
    , _sqriHighRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchQueriesRequestItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqriImgDominantColor'
--
-- * 'sqriOutputEncoding'
--
-- * 'sqriSiteSearchFilter'
--
-- * 'sqriInputEncoding'
--
-- * 'sqriOrTerms'
--
-- * 'sqriSearchTerms'
--
-- * 'sqriStartPage'
--
-- * 'sqriRights'
--
-- * 'sqriCount'
--
-- * 'sqriExcludeTerms'
--
-- * 'sqriFileType'
--
-- * 'sqriSearchType'
--
-- * 'sqriGoogleHost'
--
-- * 'sqriDisableCnTwTranslation'
--
-- * 'sqriRelatedSite'
--
-- * 'sqriHl'
--
-- * 'sqriSort'
--
-- * 'sqriLanguage'
--
-- * 'sqriSiteSearch'
--
-- * 'sqriFilter'
--
-- * 'sqriTotalResults'
--
-- * 'sqriDateRestrict'
--
-- * 'sqriTitle'
--
-- * 'sqriLinkSite'
--
-- * 'sqriLowRange'
--
-- * 'sqriImgType'
--
-- * 'sqriGl'
--
-- * 'sqriCx'
--
-- * 'sqriImgColorType'
--
-- * 'sqriImgSize'
--
-- * 'sqriExactTerms'
--
-- * 'sqriStartIndex'
--
-- * 'sqriCr'
--
-- * 'sqriSafe'
--
-- * 'sqriHq'
--
-- * 'sqriHighRange'
searchQueriesRequestItem
    :: SearchQueriesRequestItem
searchQueriesRequestItem =
  SearchQueriesRequestItem'
    { _sqriImgDominantColor = Nothing
    , _sqriOutputEncoding = Nothing
    , _sqriSiteSearchFilter = Nothing
    , _sqriInputEncoding = Nothing
    , _sqriOrTerms = Nothing
    , _sqriSearchTerms = Nothing
    , _sqriStartPage = Nothing
    , _sqriRights = Nothing
    , _sqriCount = Nothing
    , _sqriExcludeTerms = Nothing
    , _sqriFileType = Nothing
    , _sqriSearchType = Nothing
    , _sqriGoogleHost = Nothing
    , _sqriDisableCnTwTranslation = Nothing
    , _sqriRelatedSite = Nothing
    , _sqriHl = Nothing
    , _sqriSort = Nothing
    , _sqriLanguage = Nothing
    , _sqriSiteSearch = Nothing
    , _sqriFilter = Nothing
    , _sqriTotalResults = Nothing
    , _sqriDateRestrict = Nothing
    , _sqriTitle = Nothing
    , _sqriLinkSite = Nothing
    , _sqriLowRange = Nothing
    , _sqriImgType = Nothing
    , _sqriGl = Nothing
    , _sqriCx = Nothing
    , _sqriImgColorType = Nothing
    , _sqriImgSize = Nothing
    , _sqriExactTerms = Nothing
    , _sqriStartIndex = Nothing
    , _sqriCr = Nothing
    , _sqriSafe = Nothing
    , _sqriHq = Nothing
    , _sqriHighRange = Nothing
    }


-- | Restricts results to images with a specific dominant color. Supported
-- values are: * \`red\` * \`orange\` * \`yellow\` * \`green\` * \`teal\` *
-- \`blue\` * \`purple\` * \`pink\` * \`white\` * \`gray\` * \`black\` *
-- \`brown\`
sqriImgDominantColor :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriImgDominantColor
  = lens _sqriImgDominantColor
      (\ s a -> s{_sqriImgDominantColor = a})

-- | The character encoding supported for search results.
sqriOutputEncoding :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriOutputEncoding
  = lens _sqriOutputEncoding
      (\ s a -> s{_sqriOutputEncoding = a})

-- | Specifies whether to include or exclude results from the site named in
-- the \`sitesearch\` parameter. Supported values are: * \`i\`: include
-- content from site * \`e\`: exclude content from site
sqriSiteSearchFilter :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriSiteSearchFilter
  = lens _sqriSiteSearchFilter
      (\ s a -> s{_sqriSiteSearchFilter = a})

-- | The character encoding supported for search requests.
sqriInputEncoding :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriInputEncoding
  = lens _sqriInputEncoding
      (\ s a -> s{_sqriInputEncoding = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms. You can also use the [Boolean
-- OR](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#BooleanOrqt)
-- query term for this type of query.
sqriOrTerms :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriOrTerms
  = lens _sqriOrTerms (\ s a -> s{_sqriOrTerms = a})

-- | The search terms entered by the user.
sqriSearchTerms :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriSearchTerms
  = lens _sqriSearchTerms
      (\ s a -> s{_sqriSearchTerms = a})

-- | The page number of this set of results, where the page length is set by
-- the \`count\` property.
sqriStartPage :: Lens' SearchQueriesRequestItem (Maybe Int32)
sqriStartPage
  = lens _sqriStartPage
      (\ s a -> s{_sqriStartPage = a})
      . mapping _Coerce

-- | Filters based on licensing. Supported values include: *
-- \`cc_publicdomain\` * \`cc_attribute\` * \`cc_sharealike\` *
-- \`cc_noncommercial\` * \`cc_nonderived\`
sqriRights :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriRights
  = lens _sqriRights (\ s a -> s{_sqriRights = a})

-- | Number of search results returned in this set.
sqriCount :: Lens' SearchQueriesRequestItem (Maybe Int32)
sqriCount
  = lens _sqriCount (\ s a -> s{_sqriCount = a}) .
      mapping _Coerce

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results.
sqriExcludeTerms :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriExcludeTerms
  = lens _sqriExcludeTerms
      (\ s a -> s{_sqriExcludeTerms = a})

-- | Restricts results to files of a specified extension. Filetypes supported
-- by Google include: * Adobe Portable Document Format (\`pdf\`) * Adobe
-- PostScript (\`ps\`) * Lotus 1-2-3 (\`wk1\`, \`wk2\`, \`wk3\`, \`wk4\`,
-- \`wk5\`, \`wki\`, \`wks\`, \`wku\`) * Lotus WordPro (\`lwp\`) * Macwrite
-- (\`mw\`) * Microsoft Excel (\`xls\`) * Microsoft PowerPoint (\`ppt\`) *
-- Microsoft Word (\`doc\`) * Microsoft Works (\`wks\`, \`wps\`, \`wdb\`) *
-- Microsoft Write (\`wri\`) * Rich Text Format (\`rtf\`) * Shockwave Flash
-- (\`swf\`) * Text (\`ans\`, \`txt\`). Additional filetypes may be added
-- in the future. An up-to-date list can always be found in Google\'s [file
-- type FAQ](https:\/\/support.google.com\/webmasters\/answer\/35287).
sqriFileType :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriFileType
  = lens _sqriFileType (\ s a -> s{_sqriFileType = a})

-- | Allowed values are \`web\` or \`image\`. If unspecified, results are
-- limited to webpages.
sqriSearchType :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriSearchType
  = lens _sqriSearchType
      (\ s a -> s{_sqriSearchType = a})

-- | Specifies the Google domain (for example, google.com, google.de, or
-- google.fr) to which the search should be limited.
sqriGoogleHost :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriGoogleHost
  = lens _sqriGoogleHost
      (\ s a -> s{_sqriGoogleHost = a})

-- | Enables or disables the [Simplified and Traditional Chinese
-- Search](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#chineseSearch)
-- feature. Supported values are: * \`0\`: enabled (default) * \`1\`:
-- disabled
sqriDisableCnTwTranslation :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriDisableCnTwTranslation
  = lens _sqriDisableCnTwTranslation
      (\ s a -> s{_sqriDisableCnTwTranslation = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL. The parameter value should be a URL.
sqriRelatedSite :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriRelatedSite
  = lens _sqriRelatedSite
      (\ s a -> s{_sqriRelatedSite = a})

-- | Specifies the interface language (host language) of your user interface.
-- Explicitly setting this parameter improves the performance and the
-- quality of your search results. See the [Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInterfaceLanguages)
-- section of [Internationalizing Queries and Results
-- Presentation](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInternationalizing)
-- for more information, and [Supported Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#interfaceLanguages)
-- for a list of supported languages.
sqriHl :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriHl = lens _sqriHl (\ s a -> s{_sqriHl = a})

-- | Specifies that results should be sorted according to the specified
-- expression. For example, sort by date.
sqriSort :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriSort = lens _sqriSort (\ s a -> s{_sqriSort = a})

-- | The language of the search results.
sqriLanguage :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriLanguage
  = lens _sqriLanguage (\ s a -> s{_sqriLanguage = a})

-- | Restricts results to URLs from a specified site.
sqriSiteSearch :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriSiteSearch
  = lens _sqriSiteSearch
      (\ s a -> s{_sqriSiteSearch = a})

-- | Activates or deactivates the automatic filtering of Google search
-- results. See [Automatic
-- Filtering](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#automaticFiltering)
-- for more information about Google\'s search results filters. Valid
-- values for this parameter are: * \`0\`: Disabled * \`1\`: Enabled
-- (default) **Note**: By default, Google applies filtering to all search
-- results to improve the quality of those results.
sqriFilter :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriFilter
  = lens _sqriFilter (\ s a -> s{_sqriFilter = a})

-- | Estimated number of total search results. May not be accurate.
sqriTotalResults :: Lens' SearchQueriesRequestItem (Maybe Int64)
sqriTotalResults
  = lens _sqriTotalResults
      (\ s a -> s{_sqriTotalResults = a})
      . mapping _Coerce

-- | Restricts results to URLs based on date. Supported values include: *
-- \`d[number]\`: requests results from the specified number of past days.
-- * \`w[number]\`: requests results from the specified number of past
-- weeks. * \`m[number]\`: requests results from the specified number of
-- past months. * \`y[number]\`: requests results from the specified number
-- of past years.
sqriDateRestrict :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriDateRestrict
  = lens _sqriDateRestrict
      (\ s a -> s{_sqriDateRestrict = a})

-- | A description of the query.
sqriTitle :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriTitle
  = lens _sqriTitle (\ s a -> s{_sqriTitle = a})

-- | Specifies that all results should contain a link to a specific URL.
sqriLinkSite :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriLinkSite
  = lens _sqriLinkSite (\ s a -> s{_sqriLinkSite = a})

-- | Specifies the starting value for a search range. Use \`cse:lowRange\`
-- and \`cse:highrange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
sqriLowRange :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriLowRange
  = lens _sqriLowRange (\ s a -> s{_sqriLowRange = a})

-- | Restricts results to images of a specified type. Supported values are: *
-- \`clipart\` (Clip art) * \`face\` (Face) * \`lineart\` (Line drawing) *
-- \`photo\` (Photo) * \`animated\` (Animated) * \`stock\` (Stock)
sqriImgType :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriImgType
  = lens _sqriImgType (\ s a -> s{_sqriImgType = a})

-- | Boosts search results whose country of origin matches the parameter
-- value. See [Country
-- Codes](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#countryCodes)
-- for a list of valid values. Specifying a \`gl\` parameter value in
-- WebSearch requests should improve the relevance of results. This is
-- particularly true for international customers and, even more
-- specifically, for customers in English-speaking countries other than the
-- United States.
sqriGl :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriGl = lens _sqriGl (\ s a -> s{_sqriGl = a})

-- | The identifier of an engine created using the Programmable Search Engine
-- [Control Panel](https:\/\/programmablesearchengine.google.com\/). This
-- is a custom property not defined in the OpenSearch spec. This parameter
-- is **required**.
sqriCx :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriCx = lens _sqriCx (\ s a -> s{_sqriCx = a})

-- | Restricts results to images of a specified color type. Supported values
-- are: * \`mono\` (black and white) * \`gray\` (grayscale) * \`color\`
-- (color)
sqriImgColorType :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriImgColorType
  = lens _sqriImgColorType
      (\ s a -> s{_sqriImgColorType = a})

-- | Restricts results to images of a specified size. Supported values are: *
-- \`icon\` (small) * \`small | medium | large | xlarge\` (medium) *
-- \`xxlarge\` (large) * \`huge\` (extra-large)
sqriImgSize :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriImgSize
  = lens _sqriImgSize (\ s a -> s{_sqriImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain.
sqriExactTerms :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriExactTerms
  = lens _sqriExactTerms
      (\ s a -> s{_sqriExactTerms = a})

-- | The index of the current set of search results into the total set of
-- results, where the index of the first result is 1.
sqriStartIndex :: Lens' SearchQueriesRequestItem (Maybe Int32)
sqriStartIndex
  = lens _sqriStartIndex
      (\ s a -> s{_sqriStartIndex = a})
      . mapping _Coerce

-- | Restricts search results to documents originating in a particular
-- country. You may use [Boolean
-- operators](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#booleanOperators)
-- in the \`cr\` parameter\'s value. Google WebSearch determines the
-- country of a document by analyzing the following: * The top-level domain
-- (TLD) of the document\'s URL. * The geographic location of the web
-- server\'s IP address. See [Country (cr) Parameter
-- Values](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#countryCollections)
-- for a list of valid values for this parameter.
sqriCr :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriCr = lens _sqriCr (\ s a -> s{_sqriCr = a})

-- | Specifies the [SafeSearch
-- level](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#safeSearchLevels)
-- used for filtering out adult results. This is a custom property not
-- defined in the OpenSearch spec. Valid parameter values are: *
-- \`\"off\"\`: Disable SafeSearch * \`\"active\"\`: Enable SafeSearch
sqriSafe :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriSafe = lens _sqriSafe (\ s a -> s{_sqriSafe = a})

-- | Appends the specified query terms to the query, as if they were combined
-- with a logical \`AND\` operator.
sqriHq :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriHq = lens _sqriHq (\ s a -> s{_sqriHq = a})

-- | Specifies the ending value for a search range. Use \`cse:lowRange\` and
-- \`cse:highrange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
sqriHighRange :: Lens' SearchQueriesRequestItem (Maybe Text)
sqriHighRange
  = lens _sqriHighRange
      (\ s a -> s{_sqriHighRange = a})

instance FromJSON SearchQueriesRequestItem where
        parseJSON
          = withObject "SearchQueriesRequestItem"
              (\ o ->
                 SearchQueriesRequestItem' <$>
                   (o .:? "imgDominantColor") <*>
                     (o .:? "outputEncoding")
                     <*> (o .:? "siteSearchFilter")
                     <*> (o .:? "inputEncoding")
                     <*> (o .:? "orTerms")
                     <*> (o .:? "searchTerms")
                     <*> (o .:? "startPage")
                     <*> (o .:? "rights")
                     <*> (o .:? "count")
                     <*> (o .:? "excludeTerms")
                     <*> (o .:? "fileType")
                     <*> (o .:? "searchType")
                     <*> (o .:? "googleHost")
                     <*> (o .:? "disableCnTwTranslation")
                     <*> (o .:? "relatedSite")
                     <*> (o .:? "hl")
                     <*> (o .:? "sort")
                     <*> (o .:? "language")
                     <*> (o .:? "siteSearch")
                     <*> (o .:? "filter")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "dateRestrict")
                     <*> (o .:? "title")
                     <*> (o .:? "linkSite")
                     <*> (o .:? "lowRange")
                     <*> (o .:? "imgType")
                     <*> (o .:? "gl")
                     <*> (o .:? "cx")
                     <*> (o .:? "imgColorType")
                     <*> (o .:? "imgSize")
                     <*> (o .:? "exactTerms")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "cr")
                     <*> (o .:? "safe")
                     <*> (o .:? "hq")
                     <*> (o .:? "highRange"))

instance ToJSON SearchQueriesRequestItem where
        toJSON SearchQueriesRequestItem'{..}
          = object
              (catMaybes
                 [("imgDominantColor" .=) <$> _sqriImgDominantColor,
                  ("outputEncoding" .=) <$> _sqriOutputEncoding,
                  ("siteSearchFilter" .=) <$> _sqriSiteSearchFilter,
                  ("inputEncoding" .=) <$> _sqriInputEncoding,
                  ("orTerms" .=) <$> _sqriOrTerms,
                  ("searchTerms" .=) <$> _sqriSearchTerms,
                  ("startPage" .=) <$> _sqriStartPage,
                  ("rights" .=) <$> _sqriRights,
                  ("count" .=) <$> _sqriCount,
                  ("excludeTerms" .=) <$> _sqriExcludeTerms,
                  ("fileType" .=) <$> _sqriFileType,
                  ("searchType" .=) <$> _sqriSearchType,
                  ("googleHost" .=) <$> _sqriGoogleHost,
                  ("disableCnTwTranslation" .=) <$>
                    _sqriDisableCnTwTranslation,
                  ("relatedSite" .=) <$> _sqriRelatedSite,
                  ("hl" .=) <$> _sqriHl, ("sort" .=) <$> _sqriSort,
                  ("language" .=) <$> _sqriLanguage,
                  ("siteSearch" .=) <$> _sqriSiteSearch,
                  ("filter" .=) <$> _sqriFilter,
                  ("totalResults" .=) <$> _sqriTotalResults,
                  ("dateRestrict" .=) <$> _sqriDateRestrict,
                  ("title" .=) <$> _sqriTitle,
                  ("linkSite" .=) <$> _sqriLinkSite,
                  ("lowRange" .=) <$> _sqriLowRange,
                  ("imgType" .=) <$> _sqriImgType,
                  ("gl" .=) <$> _sqriGl, ("cx" .=) <$> _sqriCx,
                  ("imgColorType" .=) <$> _sqriImgColorType,
                  ("imgSize" .=) <$> _sqriImgSize,
                  ("exactTerms" .=) <$> _sqriExactTerms,
                  ("startIndex" .=) <$> _sqriStartIndex,
                  ("cr" .=) <$> _sqriCr, ("safe" .=) <$> _sqriSafe,
                  ("hq" .=) <$> _sqriHq,
                  ("highRange" .=) <$> _sqriHighRange])

-- | Response to a custom search request.
--
-- /See:/ 'search' smart constructor.
data Search =
  Search'
    { _sQueries :: !(Maybe SearchQueries)
    , _sContext :: !(Maybe SearchContext)
    , _sKind :: !(Maybe Text)
    , _sURL :: !(Maybe SearchURL)
    , _sItems :: !(Maybe [Result])
    , _sSearchInformation :: !(Maybe SearchSearchInformation)
    , _sPromotions :: !(Maybe [Promotion])
    , _sSpelling :: !(Maybe SearchSpelling)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Search' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQueries'
--
-- * 'sContext'
--
-- * 'sKind'
--
-- * 'sURL'
--
-- * 'sItems'
--
-- * 'sSearchInformation'
--
-- * 'sPromotions'
--
-- * 'sSpelling'
search
    :: Search
search =
  Search'
    { _sQueries = Nothing
    , _sContext = Nothing
    , _sKind = Nothing
    , _sURL = Nothing
    , _sItems = Nothing
    , _sSearchInformation = Nothing
    , _sPromotions = Nothing
    , _sSpelling = Nothing
    }


-- | Query metadata for the previous, current, and next pages of results.
sQueries :: Lens' Search (Maybe SearchQueries)
sQueries = lens _sQueries (\ s a -> s{_sQueries = a})

-- | Metadata and refinements associated with the given search engine,
-- including: * The name of the search engine that was used for the query.
-- * A set of [facet
-- objects](https:\/\/developers.google.com\/custom-search\/docs\/refinements#create)
-- (refinements) you can use for refining a search.
sContext :: Lens' Search (Maybe SearchContext)
sContext = lens _sContext (\ s a -> s{_sContext = a})

-- | Unique identifier for the type of current object. For this API, it is
-- customsearch#search.
sKind :: Lens' Search (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | OpenSearch template and URL.
sURL :: Lens' Search (Maybe SearchURL)
sURL = lens _sURL (\ s a -> s{_sURL = a})

-- | The current set of custom search results.
sItems :: Lens' Search [Result]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

-- | Metadata about a search operation.
sSearchInformation :: Lens' Search (Maybe SearchSearchInformation)
sSearchInformation
  = lens _sSearchInformation
      (\ s a -> s{_sSearchInformation = a})

-- | The set of
-- [promotions](https:\/\/developers.google.com\/custom-search\/docs\/promotions).
-- Present only if the custom search engine\'s configuration files define
-- any promotions for the given query.
sPromotions :: Lens' Search [Promotion]
sPromotions
  = lens _sPromotions (\ s a -> s{_sPromotions = a}) .
      _Default
      . _Coerce

-- | Spell correction information for a query.
sSpelling :: Lens' Search (Maybe SearchSpelling)
sSpelling
  = lens _sSpelling (\ s a -> s{_sSpelling = a})

instance FromJSON Search where
        parseJSON
          = withObject "Search"
              (\ o ->
                 Search' <$>
                   (o .:? "queries") <*> (o .:? "context") <*>
                     (o .:? "kind")
                     <*> (o .:? "url")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "searchInformation")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "spelling"))

instance ToJSON Search where
        toJSON Search'{..}
          = object
              (catMaybes
                 [("queries" .=) <$> _sQueries,
                  ("context" .=) <$> _sContext, ("kind" .=) <$> _sKind,
                  ("url" .=) <$> _sURL, ("items" .=) <$> _sItems,
                  ("searchInformation" .=) <$> _sSearchInformation,
                  ("promotions" .=) <$> _sPromotions,
                  ("spelling" .=) <$> _sSpelling])
