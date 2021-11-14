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
-- Module      : Network.Google.Resource.Search.CSE.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about the search performed, metadata about the engine
-- used for the search, and the search results.
--
-- /See:/ <https://developers.google.com/custom-search/v1/introduction Custom Search API Reference> for @search.cse.list@.
module Network.Google.Resource.Search.CSE.List
    (
    -- * REST Resource
      CSEListResource

    -- * Creating a Request
    , cSEList
    , CSEList

    -- * Request Lenses
    , cselImgDominantColor
    , cselXgafv
    , cselUploadProtocol
    , cselSiteSearchFilter
    , cselC2coff
    , cselOrTerms
    , cselAccessToken
    , cselStart
    , cselRights
    , cselUploadType
    , cselExcludeTerms
    , cselNum
    , cselFileType
    , cselSearchType
    , cselLr
    , cselQ
    , cselGooglehost
    , cselRelatedSite
    , cselHl
    , cselSort
    , cselSiteSearch
    , cselFilter
    , cselDateRestrict
    , cselLinkSite
    , cselLowRange
    , cselImgType
    , cselGl
    , cselCx
    , cselImgColorType
    , cselImgSize
    , cselExactTerms
    , cselCr
    , cselSafe
    , cselHq
    , cselCallback
    , cselHighRange
    ) where

import Network.Google.CustomSearch.Types
import Network.Google.Prelude

-- | A resource alias for @search.cse.list@ method which the
-- 'CSEList' request conforms to.
type CSEListResource =
     "customsearch" :>
       "v1" :>
         QueryParam "imgDominantColor" CSEListImgDominantColor
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "siteSearchFilter" CSEListSiteSearchFilter
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
                                   QueryParam "searchType" CSEListSearchType :>
                                     QueryParam "lr" Text :>
                                       QueryParam "q" Text :>
                                         QueryParam "googlehost" Text :>
                                           QueryParam "relatedSite" Text :>
                                             QueryParam "hl" Text :>
                                               QueryParam "sort" Text :>
                                                 QueryParam "siteSearch" Text :>
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
                                                           QueryParam "imgType"
                                                             CSEListImgType
                                                             :>
                                                             QueryParam "gl"
                                                               Text
                                                               :>
                                                               QueryParam "cx"
                                                                 Text
                                                                 :>
                                                                 QueryParam
                                                                   "imgColorType"
                                                                   CSEListImgColorType
                                                                   :>
                                                                   QueryParam
                                                                     "imgSize"
                                                                     CSEListImgSize
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
                                                                           CSEListSafe
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
-- used for the search, and the search results.
--
-- /See:/ 'cSEList' smart constructor.
data CSEList =
  CSEList'
    { _cselImgDominantColor :: !(Maybe CSEListImgDominantColor)
    , _cselXgafv :: !(Maybe Xgafv)
    , _cselUploadProtocol :: !(Maybe Text)
    , _cselSiteSearchFilter :: !(Maybe CSEListSiteSearchFilter)
    , _cselC2coff :: !(Maybe Text)
    , _cselOrTerms :: !(Maybe Text)
    , _cselAccessToken :: !(Maybe Text)
    , _cselStart :: !(Maybe (Textual Word32))
    , _cselRights :: !(Maybe Text)
    , _cselUploadType :: !(Maybe Text)
    , _cselExcludeTerms :: !(Maybe Text)
    , _cselNum :: !(Maybe (Textual Int32))
    , _cselFileType :: !(Maybe Text)
    , _cselSearchType :: !(Maybe CSEListSearchType)
    , _cselLr :: !(Maybe Text)
    , _cselQ :: !(Maybe Text)
    , _cselGooglehost :: !(Maybe Text)
    , _cselRelatedSite :: !(Maybe Text)
    , _cselHl :: !(Maybe Text)
    , _cselSort :: !(Maybe Text)
    , _cselSiteSearch :: !(Maybe Text)
    , _cselFilter :: !(Maybe Text)
    , _cselDateRestrict :: !(Maybe Text)
    , _cselLinkSite :: !(Maybe Text)
    , _cselLowRange :: !(Maybe Text)
    , _cselImgType :: !(Maybe CSEListImgType)
    , _cselGl :: !(Maybe Text)
    , _cselCx :: !(Maybe Text)
    , _cselImgColorType :: !(Maybe CSEListImgColorType)
    , _cselImgSize :: !(Maybe CSEListImgSize)
    , _cselExactTerms :: !(Maybe Text)
    , _cselCr :: !(Maybe Text)
    , _cselSafe :: !(Maybe CSEListSafe)
    , _cselHq :: !(Maybe Text)
    , _cselCallback :: !(Maybe Text)
    , _cselHighRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CSEList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cselImgDominantColor'
--
-- * 'cselXgafv'
--
-- * 'cselUploadProtocol'
--
-- * 'cselSiteSearchFilter'
--
-- * 'cselC2coff'
--
-- * 'cselOrTerms'
--
-- * 'cselAccessToken'
--
-- * 'cselStart'
--
-- * 'cselRights'
--
-- * 'cselUploadType'
--
-- * 'cselExcludeTerms'
--
-- * 'cselNum'
--
-- * 'cselFileType'
--
-- * 'cselSearchType'
--
-- * 'cselLr'
--
-- * 'cselQ'
--
-- * 'cselGooglehost'
--
-- * 'cselRelatedSite'
--
-- * 'cselHl'
--
-- * 'cselSort'
--
-- * 'cselSiteSearch'
--
-- * 'cselFilter'
--
-- * 'cselDateRestrict'
--
-- * 'cselLinkSite'
--
-- * 'cselLowRange'
--
-- * 'cselImgType'
--
-- * 'cselGl'
--
-- * 'cselCx'
--
-- * 'cselImgColorType'
--
-- * 'cselImgSize'
--
-- * 'cselExactTerms'
--
-- * 'cselCr'
--
-- * 'cselSafe'
--
-- * 'cselHq'
--
-- * 'cselCallback'
--
-- * 'cselHighRange'
cSEList
    :: CSEList
cSEList =
  CSEList'
    { _cselImgDominantColor = Nothing
    , _cselXgafv = Nothing
    , _cselUploadProtocol = Nothing
    , _cselSiteSearchFilter = Nothing
    , _cselC2coff = Nothing
    , _cselOrTerms = Nothing
    , _cselAccessToken = Nothing
    , _cselStart = Nothing
    , _cselRights = Nothing
    , _cselUploadType = Nothing
    , _cselExcludeTerms = Nothing
    , _cselNum = Nothing
    , _cselFileType = Nothing
    , _cselSearchType = Nothing
    , _cselLr = Nothing
    , _cselQ = Nothing
    , _cselGooglehost = Nothing
    , _cselRelatedSite = Nothing
    , _cselHl = Nothing
    , _cselSort = Nothing
    , _cselSiteSearch = Nothing
    , _cselFilter = Nothing
    , _cselDateRestrict = Nothing
    , _cselLinkSite = Nothing
    , _cselLowRange = Nothing
    , _cselImgType = Nothing
    , _cselGl = Nothing
    , _cselCx = Nothing
    , _cselImgColorType = Nothing
    , _cselImgSize = Nothing
    , _cselExactTerms = Nothing
    , _cselCr = Nothing
    , _cselSafe = Nothing
    , _cselHq = Nothing
    , _cselCallback = Nothing
    , _cselHighRange = Nothing
    }


-- | Returns images of a specific dominant color. Acceptable values are: *
-- \`\"black\"\` * \`\"blue\"\` * \`\"brown\"\` * \`\"gray\"\` *
-- \`\"green\"\` * \`\"orange\"\` * \`\"pink\"\` * \`\"purple\"\` *
-- \`\"red\"\` * \`\"teal\"\` * \`\"white\"\` * \`\"yellow\"\`
cselImgDominantColor :: Lens' CSEList (Maybe CSEListImgDominantColor)
cselImgDominantColor
  = lens _cselImgDominantColor
      (\ s a -> s{_cselImgDominantColor = a})

-- | V1 error format.
cselXgafv :: Lens' CSEList (Maybe Xgafv)
cselXgafv
  = lens _cselXgafv (\ s a -> s{_cselXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cselUploadProtocol :: Lens' CSEList (Maybe Text)
cselUploadProtocol
  = lens _cselUploadProtocol
      (\ s a -> s{_cselUploadProtocol = a})

-- | Controls whether to include or exclude results from the site named in
-- the \`siteSearch\` parameter. Acceptable values are: * \`\"e\"\`:
-- exclude * \`\"i\"\`: include
cselSiteSearchFilter :: Lens' CSEList (Maybe CSEListSiteSearchFilter)
cselSiteSearchFilter
  = lens _cselSiteSearchFilter
      (\ s a -> s{_cselSiteSearchFilter = a})

-- | Enables or disables [Simplified and Traditional Chinese
-- Search](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#chineseSearch).
-- The default value for this parameter is 0 (zero), meaning that the
-- feature is enabled. Supported values are: * \`1\`: Disabled * \`0\`:
-- Enabled (default)
cselC2coff :: Lens' CSEList (Maybe Text)
cselC2coff
  = lens _cselC2coff (\ s a -> s{_cselC2coff = a})

-- | Provides additional search terms to check for in a document, where each
-- document in the search results must contain at least one of the
-- additional search terms.
cselOrTerms :: Lens' CSEList (Maybe Text)
cselOrTerms
  = lens _cselOrTerms (\ s a -> s{_cselOrTerms = a})

-- | OAuth access token.
cselAccessToken :: Lens' CSEList (Maybe Text)
cselAccessToken
  = lens _cselAccessToken
      (\ s a -> s{_cselAccessToken = a})

-- | The index of the first result to return. The default number of results
-- per page is 10, so \`&start=11\` would start at the top of the second
-- page of results. **Note**: The JSON API will never return more than 100
-- results, even if more than 100 documents match the query, so setting the
-- sum of \`start + num\` to a number greater than 100 will produce an
-- error. Also note that the maximum value for \`num\` is 10.
cselStart :: Lens' CSEList (Maybe Word32)
cselStart
  = lens _cselStart (\ s a -> s{_cselStart = a}) .
      mapping _Coerce

-- | Filters based on licensing. Supported values include:
-- \`cc_publicdomain\`, \`cc_attribute\`, \`cc_sharealike\`,
-- \`cc_noncommercial\`, \`cc_nonderived\` and combinations of these. See
-- [typical
-- combinations](https:\/\/wiki.creativecommons.org\/wiki\/CC_Search_integration).
cselRights :: Lens' CSEList (Maybe Text)
cselRights
  = lens _cselRights (\ s a -> s{_cselRights = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cselUploadType :: Lens' CSEList (Maybe Text)
cselUploadType
  = lens _cselUploadType
      (\ s a -> s{_cselUploadType = a})

-- | Identifies a word or phrase that should not appear in any documents in
-- the search results.
cselExcludeTerms :: Lens' CSEList (Maybe Text)
cselExcludeTerms
  = lens _cselExcludeTerms
      (\ s a -> s{_cselExcludeTerms = a})

-- | Number of search results to return. * Valid values are integers between
-- 1 and 10, inclusive.
cselNum :: Lens' CSEList (Maybe Int32)
cselNum
  = lens _cselNum (\ s a -> s{_cselNum = a}) .
      mapping _Coerce

-- | Restricts results to files of a specified extension. A list of file
-- types indexable by Google can be found in Search Console [Help
-- Center](https:\/\/support.google.com\/webmasters\/answer\/35287).
cselFileType :: Lens' CSEList (Maybe Text)
cselFileType
  = lens _cselFileType (\ s a -> s{_cselFileType = a})

-- | Specifies the search type: \`image\`. If unspecified, results are
-- limited to webpages. Acceptable values are: * \`\"image\"\`: custom
-- image search.
cselSearchType :: Lens' CSEList (Maybe CSEListSearchType)
cselSearchType
  = lens _cselSearchType
      (\ s a -> s{_cselSearchType = a})

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
cselLr :: Lens' CSEList (Maybe Text)
cselLr = lens _cselLr (\ s a -> s{_cselLr = a})

-- | Query
cselQ :: Lens' CSEList (Maybe Text)
cselQ = lens _cselQ (\ s a -> s{_cselQ = a})

-- | **Deprecated**. Use the \`gl\` parameter for a similar effect. The local
-- Google domain (for example, google.com, google.de, or google.fr) to use
-- to perform the search.
cselGooglehost :: Lens' CSEList (Maybe Text)
cselGooglehost
  = lens _cselGooglehost
      (\ s a -> s{_cselGooglehost = a})

-- | Specifies that all search results should be pages that are related to
-- the specified URL.
cselRelatedSite :: Lens' CSEList (Maybe Text)
cselRelatedSite
  = lens _cselRelatedSite
      (\ s a -> s{_cselRelatedSite = a})

-- | Sets the user interface language. * Explicitly setting this parameter
-- improves the performance and the quality of your search results. * See
-- the [Interface
-- Languages](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInterfaceLanguages)
-- section of [Internationalizing Queries and Results
-- Presentation](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#wsInternationalizing)
-- for more information, and (Supported Interface
-- Languages)[https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#interfaceLanguages]
-- for a list of supported languages.
cselHl :: Lens' CSEList (Maybe Text)
cselHl = lens _cselHl (\ s a -> s{_cselHl = a})

-- | The sort expression to apply to the results. The sort parameter
-- specifies that the results be sorted according to the specified
-- expression i.e. sort by date. [Example:
-- sort=date](https:\/\/developers.google.com\/custom-search\/docs\/structured_search#sort-by-attribute).
cselSort :: Lens' CSEList (Maybe Text)
cselSort = lens _cselSort (\ s a -> s{_cselSort = a})

-- | Specifies a given site which should always be included or excluded from
-- results (see \`siteSearchFilter\` parameter, below).
cselSiteSearch :: Lens' CSEList (Maybe Text)
cselSiteSearch
  = lens _cselSiteSearch
      (\ s a -> s{_cselSiteSearch = a})

-- | Controls turning on or off the duplicate content filter. * See
-- [Automatic
-- Filtering](https:\/\/developers.google.com\/custom-search\/docs\/xml_results#automaticFiltering)
-- for more information about Google\'s search results filters. Note that
-- host crowding filtering applies only to multi-site searches. * By
-- default, Google applies filtering to all search results to improve the
-- quality of those results. Acceptable values are: * \`0\`: Turns off
-- duplicate content filter. * \`1\`: Turns on duplicate content filter.
cselFilter :: Lens' CSEList (Maybe Text)
cselFilter
  = lens _cselFilter (\ s a -> s{_cselFilter = a})

-- | Restricts results to URLs based on date. Supported values include: *
-- \`d[number]\`: requests results from the specified number of past days.
-- * \`w[number]\`: requests results from the specified number of past
-- weeks. * \`m[number]\`: requests results from the specified number of
-- past months. * \`y[number]\`: requests results from the specified number
-- of past years.
cselDateRestrict :: Lens' CSEList (Maybe Text)
cselDateRestrict
  = lens _cselDateRestrict
      (\ s a -> s{_cselDateRestrict = a})

-- | Specifies that all search results should contain a link to a particular
-- URL.
cselLinkSite :: Lens' CSEList (Maybe Text)
cselLinkSite
  = lens _cselLinkSite (\ s a -> s{_cselLinkSite = a})

-- | Specifies the starting value for a search range. Use \`lowRange\` and
-- \`highRange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
cselLowRange :: Lens' CSEList (Maybe Text)
cselLowRange
  = lens _cselLowRange (\ s a -> s{_cselLowRange = a})

-- | Returns images of a type. Acceptable values are: * \`\"clipart\"\` *
-- \`\"face\"\` * \`\"lineart\"\` * \`\"stock\"\` * \`\"photo\"\` *
-- \`\"animated\"\`
cselImgType :: Lens' CSEList (Maybe CSEListImgType)
cselImgType
  = lens _cselImgType (\ s a -> s{_cselImgType = a})

-- | Geolocation of end user. * The \`gl\` parameter value is a two-letter
-- country code. The \`gl\` parameter boosts search results whose country
-- of origin matches the parameter value. See the [Country
-- Codes](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#countryCodes)
-- page for a list of valid values. * Specifying a \`gl\` parameter value
-- should lead to more relevant results. This is particularly true for
-- international customers and, even more specifically, for customers in
-- English- speaking countries other than the United States.
cselGl :: Lens' CSEList (Maybe Text)
cselGl = lens _cselGl (\ s a -> s{_cselGl = a})

-- | The Programmable Search Engine ID to use for this request.
cselCx :: Lens' CSEList (Maybe Text)
cselCx = lens _cselCx (\ s a -> s{_cselCx = a})

-- | Returns black and white, grayscale, transparent, or color images.
-- Acceptable values are: * \`\"color\"\` * \`\"gray\"\` * \`\"mono\"\`:
-- black and white * \`\"trans\"\`: transparent background
cselImgColorType :: Lens' CSEList (Maybe CSEListImgColorType)
cselImgColorType
  = lens _cselImgColorType
      (\ s a -> s{_cselImgColorType = a})

-- | Returns images of a specified size. Acceptable values are: *
-- \`\"huge\"\` * \`\"icon\"\` * \`\"large\"\` * \`\"medium\"\` *
-- \`\"small\"\` * \`\"xlarge\"\` * \`\"xxlarge\"\`
cselImgSize :: Lens' CSEList (Maybe CSEListImgSize)
cselImgSize
  = lens _cselImgSize (\ s a -> s{_cselImgSize = a})

-- | Identifies a phrase that all documents in the search results must
-- contain.
cselExactTerms :: Lens' CSEList (Maybe Text)
cselExactTerms
  = lens _cselExactTerms
      (\ s a -> s{_cselExactTerms = a})

-- | Restricts search results to documents originating in a particular
-- country. You may use [Boolean
-- operators](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#booleanOperators)
-- in the cr parameter\'s value. Google Search determines the country of a
-- document by analyzing: * the top-level domain (TLD) of the document\'s
-- URL * the geographic location of the Web server\'s IP address See the
-- [Country Parameter
-- Values](https:\/\/developers.google.com\/custom-search\/docs\/xml_results_appendices#countryCollections)
-- page for a list of valid values for this parameter.
cselCr :: Lens' CSEList (Maybe Text)
cselCr = lens _cselCr (\ s a -> s{_cselCr = a})

-- | Search safety level. Acceptable values are: * \`\"active\"\`: Enables
-- SafeSearch filtering. * \`\"off\"\`: Disables SafeSearch filtering.
-- (default)
cselSafe :: Lens' CSEList (Maybe CSEListSafe)
cselSafe = lens _cselSafe (\ s a -> s{_cselSafe = a})

-- | Appends the specified query terms to the query, as if they were combined
-- with a logical AND operator.
cselHq :: Lens' CSEList (Maybe Text)
cselHq = lens _cselHq (\ s a -> s{_cselHq = a})

-- | JSONP
cselCallback :: Lens' CSEList (Maybe Text)
cselCallback
  = lens _cselCallback (\ s a -> s{_cselCallback = a})

-- | Specifies the ending value for a search range. * Use \`lowRange\` and
-- \`highRange\` to append an inclusive search range of
-- \`lowRange...highRange\` to the query.
cselHighRange :: Lens' CSEList (Maybe Text)
cselHighRange
  = lens _cselHighRange
      (\ s a -> s{_cselHighRange = a})

instance GoogleRequest CSEList where
        type Rs CSEList = Search
        type Scopes CSEList = '[]
        requestClient CSEList'{..}
          = go _cselImgDominantColor _cselXgafv
              _cselUploadProtocol
              _cselSiteSearchFilter
              _cselC2coff
              _cselOrTerms
              _cselAccessToken
              _cselStart
              _cselRights
              _cselUploadType
              _cselExcludeTerms
              _cselNum
              _cselFileType
              _cselSearchType
              _cselLr
              _cselQ
              _cselGooglehost
              _cselRelatedSite
              _cselHl
              _cselSort
              _cselSiteSearch
              _cselFilter
              _cselDateRestrict
              _cselLinkSite
              _cselLowRange
              _cselImgType
              _cselGl
              _cselCx
              _cselImgColorType
              _cselImgSize
              _cselExactTerms
              _cselCr
              _cselSafe
              _cselHq
              _cselCallback
              _cselHighRange
              (Just AltJSON)
              customSearchService
          where go
                  = buildClient (Proxy :: Proxy CSEListResource) mempty
