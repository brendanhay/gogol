{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CustomSearch.Search.Cse.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about the search performed, metadata about the engine used for the search, and the search results.
--
-- /See:/ <https://developers.google.com/custom-search/v1/introduction Custom Search API Reference> for @search.cse.list@.
module Gogol.CustomSearch.Search.Cse.List
    (
    -- * Resource
      SearchCseListResource

    -- ** Constructing a Request
    , newSearchCseList
    , SearchCseList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CustomSearch.Types

-- | A resource alias for @search.cse.list@ method which the
-- 'SearchCseList' request conforms to.
type SearchCseListResource =
     "customsearch" Core.:>
       "v1" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "c2coff" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "cr" Core.Text Core.:>
                   Core.QueryParam "cx" Core.Text Core.:>
                     Core.QueryParam "dateRestrict" Core.Text Core.:>
                       Core.QueryParam "exactTerms" Core.Text Core.:>
                         Core.QueryParam "excludeTerms" Core.Text Core.:>
                           Core.QueryParam "fileType" Core.Text Core.:>
                             Core.QueryParam "filter" Core.Text Core.:>
                               Core.QueryParam "gl" Core.Text Core.:>
                                 Core.QueryParam "googlehost" Core.Text Core.:>
                                   Core.QueryParam "highRange" Core.Text Core.:>
                                     Core.QueryParam "hl" Core.Text Core.:>
                                       Core.QueryParam "hq" Core.Text Core.:>
                                         Core.QueryParam "imgColorType"
                                           CseListImgColorType
                                           Core.:>
                                           Core.QueryParam "imgDominantColor"
                                             CseListImgDominantColor
                                             Core.:>
                                             Core.QueryParam "imgSize"
                                               CseListImgSize
                                               Core.:>
                                               Core.QueryParam "imgType"
                                                 CseListImgType
                                                 Core.:>
                                                 Core.QueryParam "linkSite"
                                                   Core.Text
                                                   Core.:>
                                                   Core.QueryParam "lowRange"
                                                     Core.Text
                                                     Core.:>
                                                     Core.QueryParam "lr"
                                                       Core.Text
                                                       Core.:>
                                                       Core.QueryParam "num"
                                                         Core.Int32
                                                         Core.:>
                                                         Core.QueryParam
                                                           "orTerms"
                                                           Core.Text
                                                           Core.:>
                                                           Core.QueryParam "q"
                                                             Core.Text
                                                             Core.:>
                                                             Core.QueryParam
                                                               "relatedSite"
                                                               Core.Text
                                                               Core.:>
                                                               Core.QueryParam
                                                                 "rights"
                                                                 Core.Text
                                                                 Core.:>
                                                                 Core.QueryParam
                                                                   "safe"
                                                                   CseListSafe
                                                                   Core.:>
                                                                   Core.QueryParam
                                                                     "searchType"
                                                                     CseListSearchType
                                                                     Core.:>
                                                                     Core.QueryParam
                                                                       "siteSearch"
                                                                       Core.Text
                                                                       Core.:>
                                                                       Core.QueryParam
                                                                         "siteSearchFilter"
                                                                         CseListSiteSearchFilter
                                                                         Core.:>
                                                                         Core.QueryParam
                                                                           "sort"
                                                                           Core.Text
                                                                           Core.:>
                                                                           Core.QueryParam
                                                                             "start"
                                                                             Core.Word32
                                                                             Core.:>
                                                                             Core.QueryParam
                                                                               "uploadType"
                                                                               Core.Text
                                                                               Core.:>
                                                                               Core.QueryParam
                                                                                 "upload_protocol"
                                                                                 Core.Text
                                                                                 Core.:>
                                                                                 Core.QueryParam
                                                                                   "alt"
                                                                                   Core.AltJSON
                                                                                   Core.:>
                                                                                   Core.Get
                                                                                     '[Core.JSON]
                                                                                     Search

-- | Returns metadata about the search performed, metadata about the engine used for the search, and the search results.
--
-- /See:/ 'newSearchCseList' smart constructor.
data SearchCseList = SearchCseList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Enables or disables <https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch Simplified and Traditional Chinese Search>. The default value for this parameter is 0 (zero), meaning that the feature is enabled. Supported values are: * @1@: Disabled * @0@: Enabled (default)
    , c2coff :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Restricts search results to documents originating in a particular country. You may use <https://developers.google.com/custom-search/docs/json_api_reference#booleanOperators Boolean operators> in the cr parameter\'s value. Google Search determines the country of a document by analyzing: * the top-level domain (TLD) of the document\'s URL * the geographic location of the Web server\'s IP address See the <https://developers.google.com/custom-search/docs/json_api_reference#countryCollections Country Parameter Values> page for a list of valid values for this parameter.
    , cr :: (Core.Maybe Core.Text)
      -- | The Programmable Search Engine ID to use for this request.
    , cx :: (Core.Maybe Core.Text)
      -- | Restricts results to URLs based on date. Supported values include: * @d[number]@: requests results from the specified number of past days. * @w[number]@: requests results from the specified number of past weeks. * @m[number]@: requests results from the specified number of past months. * @y[number]@: requests results from the specified number of past years.
    , dateRestrict :: (Core.Maybe Core.Text)
      -- | Identifies a phrase that all documents in the search results must contain.
    , exactTerms :: (Core.Maybe Core.Text)
      -- | Identifies a word or phrase that should not appear in any documents in the search results.
    , excludeTerms :: (Core.Maybe Core.Text)
      -- | Restricts results to files of a specified extension. A list of file types indexable by Google can be found in Search Console <https://support.google.com/webmasters/answer/35287 Help Center>.
    , fileType :: (Core.Maybe Core.Text)
      -- | Controls turning on or off the duplicate content filter. * See <https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering Automatic Filtering> for more information about Google\'s search results filters. Note that host crowding filtering applies only to multi-site searches. * By default, Google applies filtering to all search results to improve the quality of those results. Acceptable values are: * @0@: Turns off duplicate content filter. * @1@: Turns on duplicate content filter.
    , filter :: (Core.Maybe Core.Text)
      -- | Geolocation of end user. * The @gl@ parameter value is a two-letter country code. The @gl@ parameter boosts search results whose country of origin matches the parameter value. See the <https://developers.google.com/custom-search/docs/json_api_reference#countryCodes Country Codes> page for a list of valid values. * Specifying a @gl@ parameter value should lead to more relevant results. This is particularly true for international customers and, even more specifically, for customers in English- speaking countries other than the United States.
    , gl :: (Core.Maybe Core.Text)
      -- | __Deprecated__. Use the @gl@ parameter for a similar effect. The local Google domain (for example, google.com, google.de, or google.fr) to use to perform the search.
    , googlehost :: (Core.Maybe Core.Text)
      -- | Specifies the ending value for a search range. * Use @lowRange@ and @highRange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    , highRange :: (Core.Maybe Core.Text)
      -- | Sets the user interface language. * Explicitly setting this parameter improves the performance and the quality of your search results. * See the <https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages Interface Languages> section of <https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing Internationalizing Queries and Results Presentation> for more information, and <https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages Supported Interface Languages> for a list of supported languages.
    , hl :: (Core.Maybe Core.Text)
      -- | Appends the specified query terms to the query, as if they were combined with a logical AND operator.
    , hq :: (Core.Maybe Core.Text)
      -- | Returns black and white, grayscale, transparent, or color images. Acceptable values are: * @\"color\"@ * @\"gray\"@ * @\"mono\"@: black and white * @\"trans\"@: transparent background
    , imgColorType :: (Core.Maybe CseListImgColorType)
      -- | Returns images of a specific dominant color. Acceptable values are: * @\"black\"@ * @\"blue\"@ * @\"brown\"@ * @\"gray\"@ * @\"green\"@ * @\"orange\"@ * @\"pink\"@ * @\"purple\"@ * @\"red\"@ * @\"teal\"@ * @\"white\"@ * @\"yellow\"@
    , imgDominantColor :: (Core.Maybe CseListImgDominantColor)
      -- | Returns images of a specified size. Acceptable values are: * @\"huge\"@ * @\"icon\"@ * @\"large\"@ * @\"medium\"@ * @\"small\"@ * @\"xlarge\"@ * @\"xxlarge\"@
    , imgSize :: (Core.Maybe CseListImgSize)
      -- | Returns images of a type. Acceptable values are: * @\"clipart\"@ * @\"face\"@ * @\"lineart\"@ * @\"stock\"@ * @\"photo\"@ * @\"animated\"@
    , imgType :: (Core.Maybe CseListImgType)
      -- | Specifies that all search results should contain a link to a particular URL.
    , linkSite :: (Core.Maybe Core.Text)
      -- | Specifies the starting value for a search range. Use @lowRange@ and @highRange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    , lowRange :: (Core.Maybe Core.Text)
      -- | Restricts the search to documents written in a particular language (e.g., @lr=lang_ja@). Acceptable values are: * @\"lang_ar\"@: Arabic * @\"lang_bg\"@: Bulgarian * @\"lang_ca\"@: Catalan * @\"lang_cs\"@: Czech * @\"lang_da\"@: Danish * @\"lang_de\"@: German * @\"lang_el\"@: Greek * @\"lang_en\"@: English * @\"lang_es\"@: Spanish * @\"lang_et\"@: Estonian * @\"lang_fi\"@: Finnish * @\"lang_fr\"@: French * @\"lang_hr\"@: Croatian * @\"lang_hu\"@: Hungarian * @\"lang_id\"@: Indonesian * @\"lang_is\"@: Icelandic * @\"lang_it\"@: Italian * @\"lang_iw\"@: Hebrew * @\"lang_ja\"@: Japanese * @\"lang_ko\"@: Korean * @\"lang_lt\"@: Lithuanian * @\"lang_lv\"@: Latvian * @\"lang_nl\"@: Dutch * @\"lang_no\"@: Norwegian * @\"lang_pl\"@: Polish * @\"lang_pt\"@: Portuguese * @\"lang_ro\"@: Romanian * @\"lang_ru\"@: Russian * @\"lang_sk\"@: Slovak * @\"lang_sl\"@: Slovenian * @\"lang_sr\"@: Serbian * @\"lang_sv\"@: Swedish * @\"lang_tr\"@: Turkish * @\"lang_zh-CN\"@: Chinese (Simplified) * @\"lang_zh-TW\"@: Chinese
      -- (Traditional)
    , lr :: (Core.Maybe Core.Text)
      -- | Number of search results to return. * Valid values are integers between 1 and 10, inclusive.
    , num :: (Core.Maybe Core.Int32)
      -- | Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms.
    , orTerms :: (Core.Maybe Core.Text)
      -- | Query
    , q :: (Core.Maybe Core.Text)
      -- | Specifies that all search results should be pages that are related to the specified URL.
    , relatedSite :: (Core.Maybe Core.Text)
      -- | Filters based on licensing. Supported values include: @cc_publicdomain@, @cc_attribute@, @cc_sharealike@, @cc_noncommercial@, @cc_nonderived@ and combinations of these. See <https://wiki.creativecommons.org/wiki/CC_Search_integration typical combinations>.
    , rights :: (Core.Maybe Core.Text)
      -- | Search safety level. Acceptable values are: * @\"active\"@: Enables SafeSearch filtering. * @\"off\"@: Disables SafeSearch filtering. (default)
    , safe :: (Core.Maybe CseListSafe)
      -- | Specifies the search type: @image@. If unspecified, results are limited to webpages. Acceptable values are: * @\"image\"@: custom image search.
    , searchType :: (Core.Maybe CseListSearchType)
      -- | Specifies a given site which should always be included or excluded from results (see @siteSearchFilter@ parameter, below).
    , siteSearch :: (Core.Maybe Core.Text)
      -- | Controls whether to include or exclude results from the site named in the @siteSearch@ parameter. Acceptable values are: * @\"e\"@: exclude * @\"i\"@: include
    , siteSearchFilter :: (Core.Maybe CseListSiteSearchFilter)
      -- | The sort expression to apply to the results. The sort parameter specifies that the results be sorted according to the specified expression i.e. sort by date. <https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute Example: sort=date>.
    , sort :: (Core.Maybe Core.Text)
      -- | The index of the first result to return. The default number of results per page is 10, so @&start=11@ would start at the top of the second page of results. __Note__: The JSON API will never return more than 100 results, even if more than 100 documents match the query, so setting the sum of @start + num@ to a number greater than 100 will produce an error. Also note that the maximum value for @num@ is 10.
    , start :: (Core.Maybe Core.Word32)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchCseList' with the minimum fields required to make a request.
newSearchCseList 
    ::  SearchCseList
newSearchCseList =
  SearchCseList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , c2coff = Core.Nothing
    , callback = Core.Nothing
    , cr = Core.Nothing
    , cx = Core.Nothing
    , dateRestrict = Core.Nothing
    , exactTerms = Core.Nothing
    , excludeTerms = Core.Nothing
    , fileType = Core.Nothing
    , filter = Core.Nothing
    , gl = Core.Nothing
    , googlehost = Core.Nothing
    , highRange = Core.Nothing
    , hl = Core.Nothing
    , hq = Core.Nothing
    , imgColorType = Core.Nothing
    , imgDominantColor = Core.Nothing
    , imgSize = Core.Nothing
    , imgType = Core.Nothing
    , linkSite = Core.Nothing
    , lowRange = Core.Nothing
    , lr = Core.Nothing
    , num = Core.Nothing
    , orTerms = Core.Nothing
    , q = Core.Nothing
    , relatedSite = Core.Nothing
    , rights = Core.Nothing
    , safe = Core.Nothing
    , searchType = Core.Nothing
    , siteSearch = Core.Nothing
    , siteSearchFilter = Core.Nothing
    , sort = Core.Nothing
    , start = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SearchCseList where
        type Rs SearchCseList = Search
        type Scopes SearchCseList = '[]
        requestClient SearchCseList{..}
          = go xgafv accessToken c2coff callback cr cx
              dateRestrict
              exactTerms
              excludeTerms
              fileType
              filter
              gl
              googlehost
              highRange
              hl
              hq
              imgColorType
              imgDominantColor
              imgSize
              imgType
              linkSite
              lowRange
              lr
              num
              orTerms
              q
              relatedSite
              rights
              safe
              searchType
              siteSearch
              siteSearchFilter
              sort
              start
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              customSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy SearchCseListResource)
                      Core.mempty

