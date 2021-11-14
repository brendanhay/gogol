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
-- Module      : Network.Google.Resource.Search.CSE.Siterestrict.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about the search performed, metadata about the engine
-- used for the search, and the search results. Uses a small set of url
-- patterns.
--
-- /See:/ <https://developers.google.com/custom-search/v1/introduction Custom Search API Reference> for @search.cse.siterestrict.list@.
module Network.Google.Resource.Search.CSE.Siterestrict.List
    (
    -- * REST Resource
      CSESiterestrictListResource

    -- * Creating a Request
    , cSESiterestrictList
    , CSESiterestrictList

    -- * Request Lenses
    , cseslImgDominantColor
    , cseslXgafv
    , cseslUploadProtocol
    , cseslSiteSearchFilter
    , cseslC2coff
    , cseslOrTerms
    , cseslAccessToken
    , cseslStart
    , cseslRights
    , cseslUploadType
    , cseslExcludeTerms
    , cseslNum
    , cseslFileType
    , cseslSearchType
    , cseslLr
    , cseslQ
    , cseslGooglehost
    , cseslRelatedSite
    , cseslHl
    , cseslSort
    , cseslSiteSearch
    , cseslFilter
    , cseslDateRestrict
    , cseslLinkSite
    , cseslLowRange
    , cseslImgType
    , cseslGl
    , cseslCx
    , cseslImgColorType
    , cseslImgSize
    , cseslExactTerms
    , cseslCr
    , cseslSafe
    , cseslHq
    , cseslCallback
    , cseslHighRange
    ) where

import Network.Google.CustomSearch.Types
import Network.Google.Prelude

-- | A resource alias for @search.cse.siterestrict.list@ method which the
-- 'CSESiterestrictList' request conforms to.
type CSESiterestrictListResource =
     "customsearch" :>
       "v1" :>
         "siterestrict" :>
           QueryParam "imgDominantColor"
             CSESiterestrictListImgDominantColor
             :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "siteSearchFilter"
                   CSESiterestrictListSiteSearchFilter
                   :>
                   QueryParam "c2coff" Text :>
                     QueryParam "orTerms" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "start" (Textual Word32) :>
                           QueryParam "rights" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "excludeTerms" Text :>
                                 QueryParam "num" (Textual Int32) :>
                                   QueryParam "fileType" Text :>
                                     QueryParam "searchType"
                                       CSESiterestrictListSearchType
                                       :>
                                       QueryParam "lr" Text :>
                                         QueryParam "q" Text :>
                                           QueryParam "googlehost" Text :>
                                             QueryParam "relatedSite" Text :>
                                               QueryParam "hl" Text :>
                                                 QueryParam "sort" Text :>
                                                   QueryParam "siteSearch" Text
                                                     :>
                                                     QueryParam "filter" Text :>
                                                       QueryParam "dateRestrict"
                                                         Text
                                                         :>
                                                         QueryParam "linkSite"
                                                           Text
                                                           :>
                                                           QueryParam "lowRange"
                                                             Text
                                                             :>
                                                             QueryParam
                                                               "imgType"
                                                               CSESiterestrictListImgType
                                                               :>
                                                               QueryParam "gl"
                                                                 Text
                                                                 :>
                                                                 QueryParam "cx"
                                                                   Text
                                                                   :>
                                                                   QueryParam
                                                                     "imgColorType"
                                                                     CSESiterestrictListImgColorType
                                                                     :>
                                                                     QueryParam
                                                                       "imgSize"
                                                                       CSESiterestrictListImgSize
                                                                       :>
                                                                       QueryParam
                                                                         "exactTerms"
                                                                         Text
                                                                         :>
                                                                         QueryParam
                                                                           "cr"
                                                                           Text
                                                                           :>
                                                                           QueryParam
                                                                             "safe"
                                                                             CSESiterestrictListSafe
                                                                             :>
                                                                             QueryParam
                                                                               "hq"
                                                                               Text
                                                                               :>
                                                                               QueryParam
                                                                                 "callback"
                                                                                 Text
                                                                                 :>
                                                                                 QueryParam
                                                                                   "highRange"
                                                                                   Text
                                                                                   :>
                                                                                   QueryParam
                                                                                     "alt"
                                                                                     AltJSON
                                                                                     :>
                                                                                     Get
                                                                                       '[JSON]
                                                                                       Search

-- | Returns metadata about the search performed, metadata about the engine
-- used for the search, and the search results. Uses a small set of url
-- patterns.
--
-- /See:/ 'cSESiterestrictList' smart constructor.
data CSESiterestrictList =
  CSESiterestrictList'
    { _cseslImgDominantColor :: !(Maybe CSESiterestrictListImgDominantColor)
    , _cseslXgafv :: !(Maybe Xgafv)
    , _cseslUploadProtocol :: !(Maybe Text)
    , _cseslSiteSearchFilter :: !(Maybe CSESiterestrictListSiteSearchFilter)
    , _cseslC2coff :: !(Maybe Text)
    , _cseslOrTerms :: !(Maybe Text)
    , _cseslAccessToken :: !(Maybe Text)
    , _cseslStart :: !(Maybe (Textual Word32))
    , _cseslRights :: !(Maybe Text)
    , _cseslUploadType :: !(Maybe Text)
    , _cseslExcludeTerms :: !(Maybe Text)
    , _cseslNum :: !(Maybe (Textual Int32))
    , _cseslFileType :: !(Maybe Text)
    , _cseslSearchType :: !(Maybe CSESiterestrictListSearchType)
    , _cseslLr :: !(Maybe Text)
    , _cseslQ :: !(Maybe Text)
    , _cseslGooglehost :: !(Maybe Text)
    , _cseslRelatedSite :: !(Maybe Text)
    , _cseslHl :: !(Maybe Text)
    , _cseslSort :: !(Maybe Text)
    , _cseslSiteSearch :: !(Maybe Text)
    , _cseslFilter :: !(Maybe Text)
    , _cseslDateRestrict :: !(Maybe Text)
    , _cseslLinkSite :: !(Maybe Text)
    , _cseslLowRange :: !(Maybe Text)
    , _cseslImgType :: !(Maybe CSESiterestrictListImgType)
    , _cseslGl :: !(Maybe Text)
    , _cseslCx :: !(Maybe Text)
    , _cseslImgColorType :: !(Maybe CSESiterestrictListImgColorType)
    , _cseslImgSize :: !(Maybe CSESiterestrictListImgSize)
    , _cseslExactTerms :: !(Maybe Text)
    , _cseslCr :: !(Maybe Text)
    , _cseslSafe :: !(Maybe CSESiterestrictListSafe)
    , _cseslHq :: !(Maybe Text)
    , _cseslCallback :: !(Maybe Text)
    , _cseslHighRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CSESiterestrictList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cseslImgDominantColor'
--
-- * 'cseslXgafv'
--
-- * 'cseslUploadProtocol'
--
-- * 'cseslSiteSearchFilter'
--
-- * 'cseslC2coff'
--
-- * 'cseslOrTerms'
--
-- * 'cseslAccessToken'
--
-- * 'cseslStart'
--
-- * 'cseslRights'
--
-- * 'cseslUploadType'
--
-- * 'cseslExcludeTerms'
--
-- * 'cseslNum'
--
-- * 'cseslFileType'
--
-- * 'cseslSearchType'
--
-- * 'cseslLr'
--
-- * 'cseslQ'
--
-- * 'cseslGooglehost'
--
-- * 'cseslRelatedSite'
--
-- * 'cseslHl'
--
-- * 'cseslSort'
--
-- * 'cseslSiteSearch'
--
-- * 'cseslFilter'
--
-- * 'cseslDateRestrict'
--
-- * 'cseslLinkSite'
--
-- * 'cseslLowRange'
--
-- * 'cseslImgType'
--
-- * 'cseslGl'
--
-- * 'cseslCx'
--
-- * 'cseslImgColorType'
--
-- * 'cseslImgSize'
--
-- * 'cseslExactTerms'
--
-- * 'cseslCr'
--
-- * 'cseslSafe'
--
-- * 'cseslHq'
--
-- * 'cseslCallback'
--
-- * 'cseslHighRange'
cSESiterestrictList
    :: CSESiterestrictList
cSESiterestrictList =
  CSESiterestrictList'
    { _cseslImgDominantColor = Nothing
    , _cseslXgafv = Nothing
    , _cseslUploadProtocol = Nothing
    , _cseslSiteSearchFilter = Nothing
    , _cseslC2coff = Nothing
    , _cseslOrTerms = Nothing
    , _cseslAccessToken = Nothing
    , _cseslStart = Nothing
    , _cseslRights = Nothing
    , _cseslUploadType = Nothing
    , _cseslExcludeTerms = Nothing
    , _cseslNum = Nothing
    , _cseslFileType = Nothing
    , _cseslSearchType = Nothing
    , _cseslLr = Nothing
    , _cseslQ = Nothing
    , _cseslGooglehost = Nothing
    , _cseslRelatedSite = Nothing
    , _cseslHl = Nothing
    , _cseslSort = Nothing
    , _cseslSiteSearch = Nothing
    , _cseslFilter = Nothing
    , _cseslDateRestrict = Nothing
    , _cseslLinkSite = Nothing
    , _cseslLowRange = Nothing
    , _cseslImgType = Nothing
    , _cseslGl = Nothing
    , _cseslCx = Nothing
    , _cseslImgColorType = Nothing
    , _cseslImgSize = Nothing
    , _cseslExactTerms = Nothing
    , _cseslCr = Nothing
    , _cseslSafe = Nothing
    , _cseslHq = Nothing
    , _cseslCallback = Nothing
    , _cseslHighRange = Nothing
    }


-- | Returns images of a specific dominant color. Acceptable values are: *
-- \`\"black\"\` * \`\"blue\"\` * \`\"brown\"\` * \`\"gray\"\` *
-- \`\"green\"\` * \`\"orange\"\` * \`\"pink\"\` * \`\"purple\"\` *
-- \`\"red\"\` * \`\"teal\"\` * \`\"white\"\` * \`\"yellow\"\`
cseslImgDominantColor :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgDominantColor)
cseslImgDominantColor
  = lens _cseslImgDominantColor
      (\ s a -> s{_cseslImgDominantColor = a})

-- | V1 error format.
cseslXgafv :: Lens' CSESiterestrictList (Maybe Xgafv)
cseslXgafv
  = lens _cseslXgafv (\ s a -> s{_cseslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cseslUploadProtocol :: Lens' CSESiterestrictList (Maybe Text)
cseslUploadProtocol
  = lens _cseslUploadProtocol
      (\ s a -> s{_cseslUploadProtocol = a})

-- | Controls whether to include or exclude results from the site named in
-- the \`siteSearch\` parameter. Acceptable values are: * \`\"e\"\`:
-- exclude * \`\"i\"\`: include
cseslSiteSearchFilter :: Lens' CSESiterestrictList (Maybe CSESiterestrictListSiteSearchFilter)
cseslSiteSearchFilter
  = lens _cseslSiteSearchFilter
      (\ s a -> s{_cseslSiteSearchFilter = a})

-- | Enables or disables [Simplified and Traditional Chinese
-- Search](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#chineseSearch).
-- The default value for this parameter is 0 (zero), meaning that the
-- feature is enabled. Supported values are: * \`1\`: Disabled * \`0\`:
-- Enabled (default)
cseslC2coff :: Lens' CSESiterestrictList (Maybe Text)
cseslC2coff
  = lens _cseslC2coff (\ s a -> s{_cseslC2coff = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms.
cseslOrTerms :: Lens' CSESiterestrictList (Maybe Text)
cseslOrTerms
  = lens _cseslOrTerms (\ s a -> s{_cseslOrTerms = a})

-- | OAuth access token.
cseslAccessToken :: Lens' CSESiterestrictList (Maybe Text)
cseslAccessToken
  = lens _cseslAccessToken
      (\ s a -> s{_cseslAccessToken = a})

-- | The index of the first result to return. The default number of results
-- per page is 10, so \`&start=11\` would start at the top of the second
-- page of results. **Note**: The JSON API will never return more than 100
-- results, even if more than 100 documents match the query, so setting the
-- sum of \`start + num\` to a number greater than 100 will produce an
-- error. Also note that the maximum value for \`num\` is 10.
cseslStart :: Lens' CSESiterestrictList (Maybe Word32)
cseslStart
  = lens _cseslStart (\ s a -> s{_cseslStart = a}) .
      mapping _Coerce

-- | Filters based on licensing. Supported values include:
-- \`cc_publicdomain\`, \`cc_attribute\`, \`cc_sharealike\`,
-- \`cc_noncommercial\`, \`cc_nonderived\` and combinations of these. See
-- [typical
-- combinations](https:\/\/wiki.creativecommons.org\/wiki\/CC_Search_integration).
cseslRights :: Lens' CSESiterestrictList (Maybe Text)
cseslRights
  = lens _cseslRights (\ s a -> s{_cseslRights = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cseslUploadType :: Lens' CSESiterestrictList (Maybe Text)
cseslUploadType
  = lens _cseslUploadType
      (\ s a -> s{_cseslUploadType = a})

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results.
cseslExcludeTerms :: Lens' CSESiterestrictList (Maybe Text)
cseslExcludeTerms
  = lens _cseslExcludeTerms
      (\ s a -> s{_cseslExcludeTerms = a})

-- | Number of search results to return. * Valid values are integers between
-- 1 and 10, inclusive.
cseslNum :: Lens' CSESiterestrictList (Maybe Int32)
cseslNum
  = lens _cseslNum (\ s a -> s{_cseslNum = a}) .
      mapping _Coerce

-- | Restricts results to files of a specified extension. A list of file
-- types indexable by Google can be found in Search Console [Help
-- Center](https:\/\/support.google.com\/webmasters\/answer\/35287).
cseslFileType :: Lens' CSESiterestrictList (Maybe Text)
cseslFileType
  = lens _cseslFileType
      (\ s a -> s{_cseslFileType = a})

-- | Specifies the search type: \`image\`. If unspecified, results are
-- limited to webpages. Acceptable values are: * \`\"image\"\`: custom
-- image search.
cseslSearchType :: Lens' CSESiterestrictList (Maybe CSESiterestrictListSearchType)
cseslSearchType
  = lens _cseslSearchType
      (\ s a -> s{_cseslSearchType = a})

-- | Restricts the search to documents written in a particular language
-- (e.g., \`lr=lang_ja\`). Acceptable values are: * \`\"lang_ar\"\`: Arabic
-- * \`\"lang_bg\"\`: Bulgarian * \`\"lang_ca\"\`: Catalan *
-- \`\"lang_cs\"\`: Czech * \`\"lang_da\"\`: Danish * \`\"lang_de\"\`:
-- German * \`\"lang_el\"\`: Greek * \`\"lang_en\"\`: English *
-- \`\"lang_es\"\`: Spanish * \`\"lang_et\"\`: Estonian * \`\"lang_fi\"\`:
-- Finnish * \`\"lang_fr\"\`: French * \`\"lang_hr\"\`: Croatian *
-- \`\"lang_hu\"\`: Hungarian * \`\"lang_id\"\`: Indonesian *
-- \`\"lang_is\"\`: Icelandic * \`\"lang_it\"\`: Italian * \`\"lang_iw\"\`:
-- Hebrew * \`\"lang_ja\"\`: Japanese * \`\"lang_ko\"\`: Korean *
-- \`\"lang_lt\"\`: Lithuanian * \`\"lang_lv\"\`: Latvian *
-- \`\"lang_nl\"\`: Dutch * \`\"lang_no\"\`: Norwegian * \`\"lang_pl\"\`:
-- Polish * \`\"lang_pt\"\`: Portuguese * \`\"lang_ro\"\`: Romanian *
-- \`\"lang_ru\"\`: Russian * \`\"lang_sk\"\`: Slovak * \`\"lang_sl\"\`:
-- Slovenian * \`\"lang_sr\"\`: Serbian * \`\"lang_sv\"\`: Swedish *
-- \`\"lang_tr\"\`: Turkish * \`\"lang_zh-CN\"\`: Chinese (Simplified) *
-- \`\"lang_zh-TW\"\`: Chinese (Traditional)
cseslLr :: Lens' CSESiterestrictList (Maybe Text)
cseslLr = lens _cseslLr (\ s a -> s{_cseslLr = a})

-- | Query
cseslQ :: Lens' CSESiterestrictList (Maybe Text)
cseslQ = lens _cseslQ (\ s a -> s{_cseslQ = a})

-- | **Deprecated**. Use the \`gl\` parameter for a similar effect. The local
-- Google domain (for example, google.com, google.de, or google.fr) to use
-- to perform the search.
cseslGooglehost :: Lens' CSESiterestrictList (Maybe Text)
cseslGooglehost
  = lens _cseslGooglehost
      (\ s a -> s{_cseslGooglehost = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL.
cseslRelatedSite :: Lens' CSESiterestrictList (Maybe Text)
cseslRelatedSite
  = lens _cseslRelatedSite
      (\ s a -> s{_cseslRelatedSite = a})

-- | Sets the user interface language. * Explicitly setting this parameter
-- improves the performance and the quality of your search results. * See
-- the [Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInterfaceLanguages)
-- section of [Internationalizing Queries and Results
-- Presentation](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInternationalizing)
-- for more information, and (Supported Interface
-- Languages)[https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#interfaceLanguages]
-- for a list of supported languages.
cseslHl :: Lens' CSESiterestrictList (Maybe Text)
cseslHl = lens _cseslHl (\ s a -> s{_cseslHl = a})

-- | The sort expression to apply to the results. The sort parameter
-- specifies that the results be sorted according to the specified
-- expression i.e. sort by date. [Example:
-- sort=date](https:\/\/developers.google.com\/custom-search\/docs\/structured_search#sort-by-attribute).
cseslSort :: Lens' CSESiterestrictList (Maybe Text)
cseslSort
  = lens _cseslSort (\ s a -> s{_cseslSort = a})

-- | Specifies a given site which should always be included or excluded from
-- results (see \`siteSearchFilter\` parameter, below).
cseslSiteSearch :: Lens' CSESiterestrictList (Maybe Text)
cseslSiteSearch
  = lens _cseslSiteSearch
      (\ s a -> s{_cseslSiteSearch = a})

-- | Controls turning on or off the duplicate content filter. * See
-- [Automatic
-- Filtering](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#automaticFiltering)
-- for more information about Google\'s search results filters. Note that
-- host crowding filtering applies only to multi-site searches. * By
-- default, Google applies filtering to all search results to improve the
-- quality of those results. Acceptable values are: * \`0\`: Turns off
-- duplicate content filter. * \`1\`: Turns on duplicate content filter.
cseslFilter :: Lens' CSESiterestrictList (Maybe Text)
cseslFilter
  = lens _cseslFilter (\ s a -> s{_cseslFilter = a})

-- | Restricts results to URLs based on date. Supported values include: *
-- \`d[number]\`: requests results from the specified number of past days.
-- * \`w[number]\`: requests results from the specified number of past
-- weeks. * \`m[number]\`: requests results from the specified number of
-- past months. * \`y[number]\`: requests results from the specified number
-- of past years.
cseslDateRestrict :: Lens' CSESiterestrictList (Maybe Text)
cseslDateRestrict
  = lens _cseslDateRestrict
      (\ s a -> s{_cseslDateRestrict = a})

-- | Specifies that all search results should contain a link to a particular
-- URL.
cseslLinkSite :: Lens' CSESiterestrictList (Maybe Text)
cseslLinkSite
  = lens _cseslLinkSite
      (\ s a -> s{_cseslLinkSite = a})

-- | Specifies the starting value for a search range. Use \`lowRange\` and
-- \`highRange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
cseslLowRange :: Lens' CSESiterestrictList (Maybe Text)
cseslLowRange
  = lens _cseslLowRange
      (\ s a -> s{_cseslLowRange = a})

-- | Returns images of a type. Acceptable values are: * \`\"clipart\"\` *
-- \`\"face\"\` * \`\"lineart\"\` * \`\"stock\"\` * \`\"photo\"\` *
-- \`\"animated\"\`
cseslImgType :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgType)
cseslImgType
  = lens _cseslImgType (\ s a -> s{_cseslImgType = a})

-- | Geolocation of end user. * The \`gl\` parameter value is a two-letter
-- country code. The \`gl\` parameter boosts search results whose country
-- of origin matches the parameter value. See the [Country
-- Codes](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#countryCodes)
-- page for a list of valid values. * Specifying a \`gl\` parameter value
-- should lead to more relevant results. This is particularly true for
-- international customers and, even more specifically, for customers in
-- English- speaking countries other than the United States.
cseslGl :: Lens' CSESiterestrictList (Maybe Text)
cseslGl = lens _cseslGl (\ s a -> s{_cseslGl = a})

-- | The Programmable Search Engine ID to use for this request.
cseslCx :: Lens' CSESiterestrictList (Maybe Text)
cseslCx = lens _cseslCx (\ s a -> s{_cseslCx = a})

-- | Returns black and white, grayscale, transparent, or color images.
-- Acceptable values are: * \`\"color\"\` * \`\"gray\"\` * \`\"mono\"\`:
-- black and white * \`\"trans\"\`: transparent background
cseslImgColorType :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgColorType)
cseslImgColorType
  = lens _cseslImgColorType
      (\ s a -> s{_cseslImgColorType = a})

-- | Returns images of a specified size. Acceptable values are: *
-- \`\"huge\"\` * \`\"icon\"\` * \`\"large\"\` * \`\"medium\"\` *
-- \`\"small\"\` * \`\"xlarge\"\` * \`\"xxlarge\"\`
cseslImgSize :: Lens' CSESiterestrictList (Maybe CSESiterestrictListImgSize)
cseslImgSize
  = lens _cseslImgSize (\ s a -> s{_cseslImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain.
cseslExactTerms :: Lens' CSESiterestrictList (Maybe Text)
cseslExactTerms
  = lens _cseslExactTerms
      (\ s a -> s{_cseslExactTerms = a})

-- | Restricts search results to documents originating in a particular
-- country. You may use [Boolean
-- operators](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#booleanOperators)
-- in the cr parameter\'s value. Google Search determines the country of a
-- document by analyzing: * the top-level domain (TLD) of the document\'s
-- URL * the geographic location of the Web server\'s IP address See the
-- [Country Parameter
-- Values](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#countryCollections)
-- page for a list of valid values for this parameter.
cseslCr :: Lens' CSESiterestrictList (Maybe Text)
cseslCr = lens _cseslCr (\ s a -> s{_cseslCr = a})

-- | Search safety level. Acceptable values are: * \`\"active\"\`: Enables
-- SafeSearch filtering. * \`\"off\"\`: Disables SafeSearch filtering.
-- (default)
cseslSafe :: Lens' CSESiterestrictList (Maybe CSESiterestrictListSafe)
cseslSafe
  = lens _cseslSafe (\ s a -> s{_cseslSafe = a})

-- | Appends the specified query terms to the query, as if they were combined
-- with a logical AND operator.
cseslHq :: Lens' CSESiterestrictList (Maybe Text)
cseslHq = lens _cseslHq (\ s a -> s{_cseslHq = a})

-- | JSONP
cseslCallback :: Lens' CSESiterestrictList (Maybe Text)
cseslCallback
  = lens _cseslCallback
      (\ s a -> s{_cseslCallback = a})

-- | Specifies the ending value for a search range. * Use \`lowRange\` and
-- \`highRange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
cseslHighRange :: Lens' CSESiterestrictList (Maybe Text)
cseslHighRange
  = lens _cseslHighRange
      (\ s a -> s{_cseslHighRange = a})

instance GoogleRequest CSESiterestrictList where
        type Rs CSESiterestrictList = Search
        type Scopes CSESiterestrictList = '[]
        requestClient CSESiterestrictList'{..}
          = go _cseslImgDominantColor _cseslXgafv
              _cseslUploadProtocol
              _cseslSiteSearchFilter
              _cseslC2coff
              _cseslOrTerms
              _cseslAccessToken
              _cseslStart
              _cseslRights
              _cseslUploadType
              _cseslExcludeTerms
              _cseslNum
              _cseslFileType
              _cseslSearchType
              _cseslLr
              _cseslQ
              _cseslGooglehost
              _cseslRelatedSite
              _cseslHl
              _cseslSort
              _cseslSiteSearch
              _cseslFilter
              _cseslDateRestrict
              _cseslLinkSite
              _cseslLowRange
              _cseslImgType
              _cseslGl
              _cseslCx
              _cseslImgColorType
              _cseslImgSize
              _cseslExactTerms
              _cseslCr
              _cseslSafe
              _cseslHq
              _cseslCallback
              _cseslHighRange
              (Just AltJSON)
              customSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy CSESiterestrictListResource)
                      mempty
