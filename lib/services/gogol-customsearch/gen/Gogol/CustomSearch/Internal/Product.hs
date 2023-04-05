{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CustomSearch.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CustomSearch.Internal.Product
  ( -- * Promotion
    Promotion (..),
    newPromotion,

    -- * Promotion_BodyLinesItem
    Promotion_BodyLinesItem (..),
    newPromotion_BodyLinesItem,

    -- * Promotion_Image
    Promotion_Image (..),
    newPromotion_Image,

    -- * Result
    Result (..),
    newResult,

    -- * Result_Image
    Result_Image (..),
    newResult_Image,

    -- * Result_LabelsItem
    Result_LabelsItem (..),
    newResult_LabelsItem,

    -- * Result_Pagemap
    Result_Pagemap (..),
    newResult_Pagemap,

    -- * Search
    Search (..),
    newSearch,

    -- * Search_Context
    Search_Context (..),
    newSearch_Context,

    -- * Search_Queries
    Search_Queries (..),
    newSearch_Queries,

    -- * Search_Queries_NextPageItem
    Search_Queries_NextPageItem (..),
    newSearch_Queries_NextPageItem,

    -- * Search_Queries_PreviousPageItem
    Search_Queries_PreviousPageItem (..),
    newSearch_Queries_PreviousPageItem,

    -- * Search_Queries_RequestItem
    Search_Queries_RequestItem (..),
    newSearch_Queries_RequestItem,

    -- * Search_SearchInformation
    Search_SearchInformation (..),
    newSearch_SearchInformation,

    -- * Search_Spelling
    Search_Spelling (..),
    newSearch_Spelling,

    -- * Search_Url
    Search_Url (..),
    newSearch_Url,
  )
where

import Gogol.CustomSearch.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Promotion result.
--
-- /See:/ 'newPromotion' smart constructor.
data Promotion = Promotion
  { -- | An array of block objects for this promotion.
    bodyLines :: (Core.Maybe [Promotion_BodyLinesItem]),
    -- | An abridged version of this search\'s result URL, e.g. www.example.com.
    displayLink :: (Core.Maybe Core.Text),
    -- | The title of the promotion, in HTML.
    htmlTitle :: (Core.Maybe Core.Text),
    -- | Image belonging to a promotion.
    image :: (Core.Maybe Promotion_Image),
    -- | The URL of the promotion.
    link :: (Core.Maybe Core.Text),
    -- | The title of the promotion.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Promotion' with the minimum fields required to make a request.
newPromotion ::
  Promotion
newPromotion =
  Promotion
    { bodyLines = Core.Nothing,
      displayLink = Core.Nothing,
      htmlTitle = Core.Nothing,
      image = Core.Nothing,
      link = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Promotion where
  parseJSON =
    Core.withObject
      "Promotion"
      ( \o ->
          Promotion
            Core.<$> (o Core..:? "bodyLines")
            Core.<*> (o Core..:? "displayLink")
            Core.<*> (o Core..:? "htmlTitle")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Promotion where
  toJSON Promotion {..} =
    Core.object
      ( Core.catMaybes
          [ ("bodyLines" Core..=) Core.<$> bodyLines,
            ("displayLink" Core..=) Core.<$> displayLink,
            ("htmlTitle" Core..=) Core.<$> htmlTitle,
            ("image" Core..=) Core.<$> image,
            ("link" Core..=) Core.<$> link,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Block object belonging to a promotion.
--
-- /See:/ 'newPromotion_BodyLinesItem' smart constructor.
data Promotion_BodyLinesItem = Promotion_BodyLinesItem
  { -- | The block object\'s text in HTML, if it has text.
    htmlTitle :: (Core.Maybe Core.Text),
    -- | The anchor text of the block object\'s link, if it has a link.
    link :: (Core.Maybe Core.Text),
    -- | The block object\'s text, if it has text.
    title :: (Core.Maybe Core.Text),
    -- | The URL of the block object\'s link, if it has one.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Promotion_BodyLinesItem' with the minimum fields required to make a request.
newPromotion_BodyLinesItem ::
  Promotion_BodyLinesItem
newPromotion_BodyLinesItem =
  Promotion_BodyLinesItem
    { htmlTitle = Core.Nothing,
      link = Core.Nothing,
      title = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Promotion_BodyLinesItem where
  parseJSON =
    Core.withObject
      "Promotion_BodyLinesItem"
      ( \o ->
          Promotion_BodyLinesItem
            Core.<$> (o Core..:? "htmlTitle")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Promotion_BodyLinesItem where
  toJSON Promotion_BodyLinesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("htmlTitle" Core..=) Core.<$> htmlTitle,
            ("link" Core..=) Core.<$> link,
            ("title" Core..=) Core.<$> title,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Image belonging to a promotion.
--
-- /See:/ 'newPromotion_Image' smart constructor.
data Promotion_Image = Promotion_Image
  { -- | Image height in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | URL of the image for this promotion link.
    source :: (Core.Maybe Core.Text),
    -- | Image width in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Promotion_Image' with the minimum fields required to make a request.
newPromotion_Image ::
  Promotion_Image
newPromotion_Image =
  Promotion_Image
    { height = Core.Nothing,
      source = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Promotion_Image where
  parseJSON =
    Core.withObject
      "Promotion_Image"
      ( \o ->
          Promotion_Image
            Core.<$> (o Core..:? "height")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Promotion_Image where
  toJSON Promotion_Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("source" Core..=) Core.<$> source,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A custom search result.
--
-- /See:/ 'newResult' smart constructor.
data Result = Result
  { -- | Indicates the ID of Google\'s cached version of the search result.
    cacheId :: (Core.Maybe Core.Text),
    -- | An abridged version of this search result’s URL, e.g. www.example.com.
    displayLink :: (Core.Maybe Core.Text),
    -- | The file format of the search result.
    fileFormat :: (Core.Maybe Core.Text),
    -- | The URL displayed after the snippet for each search result.
    formattedUrl :: (Core.Maybe Core.Text),
    -- | The HTML-formatted URL displayed after the snippet for each search result.
    htmlFormattedUrl :: (Core.Maybe Core.Text),
    -- | The snippet of the search result, in HTML.
    htmlSnippet :: (Core.Maybe Core.Text),
    -- | The title of the search result, in HTML.
    htmlTitle :: (Core.Maybe Core.Text),
    -- | Image belonging to a custom search result.
    image :: (Core.Maybe Result_Image),
    -- | A unique identifier for the type of current object. For this API, it is @customsearch#result.@
    kind :: (Core.Maybe Core.Text),
    -- | Encapsulates all information about refinement labels.
    labels :: (Core.Maybe [Result_LabelsItem]),
    -- | The full URL to which the search result is pointing, e.g. http:\/\/www.example.com\/foo\/bar.
    link :: (Core.Maybe Core.Text),
    -- | The MIME type of the search result.
    mime :: (Core.Maybe Core.Text),
    -- | Contains <https://developers.google.com/custom-search/docs/structured_data#pagemaps PageMap> information for this search result.
    pagemap :: (Core.Maybe Result_Pagemap),
    -- | The snippet of the search result, in plain text.
    snippet :: (Core.Maybe Core.Text),
    -- | The title of the search result, in plain text.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
newResult ::
  Result
newResult =
  Result
    { cacheId = Core.Nothing,
      displayLink = Core.Nothing,
      fileFormat = Core.Nothing,
      formattedUrl = Core.Nothing,
      htmlFormattedUrl = Core.Nothing,
      htmlSnippet = Core.Nothing,
      htmlTitle = Core.Nothing,
      image = Core.Nothing,
      kind = Core.Nothing,
      labels = Core.Nothing,
      link = Core.Nothing,
      mime = Core.Nothing,
      pagemap = Core.Nothing,
      snippet = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Result where
  parseJSON =
    Core.withObject
      "Result"
      ( \o ->
          Result
            Core.<$> (o Core..:? "cacheId")
            Core.<*> (o Core..:? "displayLink")
            Core.<*> (o Core..:? "fileFormat")
            Core.<*> (o Core..:? "formattedUrl")
            Core.<*> (o Core..:? "htmlFormattedUrl")
            Core.<*> (o Core..:? "htmlSnippet")
            Core.<*> (o Core..:? "htmlTitle")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "mime")
            Core.<*> (o Core..:? "pagemap")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Result where
  toJSON Result {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheId" Core..=) Core.<$> cacheId,
            ("displayLink" Core..=) Core.<$> displayLink,
            ("fileFormat" Core..=) Core.<$> fileFormat,
            ("formattedUrl" Core..=) Core.<$> formattedUrl,
            ("htmlFormattedUrl" Core..=)
              Core.<$> htmlFormattedUrl,
            ("htmlSnippet" Core..=) Core.<$> htmlSnippet,
            ("htmlTitle" Core..=) Core.<$> htmlTitle,
            ("image" Core..=) Core.<$> image,
            ("kind" Core..=) Core.<$> kind,
            ("labels" Core..=) Core.<$> labels,
            ("link" Core..=) Core.<$> link,
            ("mime" Core..=) Core.<$> mime,
            ("pagemap" Core..=) Core.<$> pagemap,
            ("snippet" Core..=) Core.<$> snippet,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Image belonging to a custom search result.
--
-- /See:/ 'newResult_Image' smart constructor.
data Result_Image = Result_Image
  { -- | The size of the image, in bytes.
    byteSize :: (Core.Maybe Core.Int32),
    -- | A URL pointing to the webpage hosting the image.
    contextLink :: (Core.Maybe Core.Text),
    -- | The height of the image, in pixels.
    height :: (Core.Maybe Core.Int32),
    -- | The height of the thumbnail image, in pixels.
    thumbnailHeight :: (Core.Maybe Core.Int32),
    -- | A URL to the thumbnail image.
    thumbnailLink :: (Core.Maybe Core.Text),
    -- | The width of the thumbnail image, in pixels.
    thumbnailWidth :: (Core.Maybe Core.Int32),
    -- | The width of the image, in pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result_Image' with the minimum fields required to make a request.
newResult_Image ::
  Result_Image
newResult_Image =
  Result_Image
    { byteSize = Core.Nothing,
      contextLink = Core.Nothing,
      height = Core.Nothing,
      thumbnailHeight = Core.Nothing,
      thumbnailLink = Core.Nothing,
      thumbnailWidth = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Result_Image where
  parseJSON =
    Core.withObject
      "Result_Image"
      ( \o ->
          Result_Image
            Core.<$> (o Core..:? "byteSize")
            Core.<*> (o Core..:? "contextLink")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "thumbnailHeight")
            Core.<*> (o Core..:? "thumbnailLink")
            Core.<*> (o Core..:? "thumbnailWidth")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Result_Image where
  toJSON Result_Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("byteSize" Core..=) Core.<$> byteSize,
            ("contextLink" Core..=) Core.<$> contextLink,
            ("height" Core..=) Core.<$> height,
            ("thumbnailHeight" Core..=) Core.<$> thumbnailHeight,
            ("thumbnailLink" Core..=) Core.<$> thumbnailLink,
            ("thumbnailWidth" Core..=) Core.<$> thumbnailWidth,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Refinement label associated with a custom search result.
--
-- /See:/ 'newResult_LabelsItem' smart constructor.
data Result_LabelsItem = Result_LabelsItem
  { -- | The display name of a refinement label. This is the name you should display in your user interface.
    displayName :: (Core.Maybe Core.Text),
    -- | Refinement label and the associated refinement operation.
    labelWithOp :: (Core.Maybe Core.Text),
    -- | The name of a refinement label, which you can use to refine searches. Don\'t display this in your user interface; instead, use displayName.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result_LabelsItem' with the minimum fields required to make a request.
newResult_LabelsItem ::
  Result_LabelsItem
newResult_LabelsItem =
  Result_LabelsItem
    { displayName = Core.Nothing,
      labelWithOp = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Result_LabelsItem where
  parseJSON =
    Core.withObject
      "Result_LabelsItem"
      ( \o ->
          Result_LabelsItem
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "label_with_op")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Result_LabelsItem where
  toJSON Result_LabelsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("label_with_op" Core..=) Core.<$> labelWithOp,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Contains <https://developers.google.com/custom-search/docs/structured_data#pagemaps PageMap> information for this search result.
--
-- /See:/ 'newResult_Pagemap' smart constructor.
newtype Result_Pagemap = Result_Pagemap
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result_Pagemap' with the minimum fields required to make a request.
newResult_Pagemap ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Result_Pagemap
newResult_Pagemap additional = Result_Pagemap {additional = additional}

instance Core.FromJSON Result_Pagemap where
  parseJSON =
    Core.withObject
      "Result_Pagemap"
      ( \o ->
          Result_Pagemap Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Result_Pagemap where
  toJSON Result_Pagemap {..} = Core.toJSON additional

-- | Response to a custom search request.
--
-- /See:/ 'newSearch' smart constructor.
data Search = Search
  { -- | Metadata and refinements associated with the given search engine, including: * The name of the search engine that was used for the query. * A set of <https://developers.google.com/custom-search/docs/refinements#create facet objects> (refinements) you can use for refining a search.
    context :: (Core.Maybe Search_Context),
    -- | The current set of custom search results.
    items :: (Core.Maybe [Result]),
    -- | Unique identifier for the type of current object. For this API, it is customsearch#search.
    kind :: (Core.Maybe Core.Text),
    -- | The set of <https://developers.google.com/custom-search/docs/promotions promotions>. Present only if the custom search engine\'s configuration files define any promotions for the given query.
    promotions :: (Core.Maybe [Promotion]),
    -- | Query metadata for the previous, current, and next pages of results.
    queries :: (Core.Maybe Search_Queries),
    -- | Metadata about a search operation.
    searchInformation :: (Core.Maybe Search_SearchInformation),
    -- | Spell correction information for a query.
    spelling :: (Core.Maybe Search_Spelling),
    -- | OpenSearch template and URL.
    url :: (Core.Maybe Search_Url)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search' with the minimum fields required to make a request.
newSearch ::
  Search
newSearch =
  Search
    { context = Core.Nothing,
      items = Core.Nothing,
      kind = Core.Nothing,
      promotions = Core.Nothing,
      queries = Core.Nothing,
      searchInformation = Core.Nothing,
      spelling = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Search where
  parseJSON =
    Core.withObject
      "Search"
      ( \o ->
          Search
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "promotions")
            Core.<*> (o Core..:? "queries")
            Core.<*> (o Core..:? "searchInformation")
            Core.<*> (o Core..:? "spelling")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Search where
  toJSON Search {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("promotions" Core..=) Core.<$> promotions,
            ("queries" Core..=) Core.<$> queries,
            ("searchInformation" Core..=)
              Core.<$> searchInformation,
            ("spelling" Core..=) Core.<$> spelling,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Metadata and refinements associated with the given search engine, including: * The name of the search engine that was used for the query. * A set of <https://developers.google.com/custom-search/docs/refinements#create facet objects> (refinements) you can use for refining a search.
--
-- /See:/ 'newSearch_Context' smart constructor.
newtype Search_Context = Search_Context
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Context' with the minimum fields required to make a request.
newSearch_Context ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Search_Context
newSearch_Context additional = Search_Context {additional = additional}

instance Core.FromJSON Search_Context where
  parseJSON =
    Core.withObject
      "Search_Context"
      ( \o ->
          Search_Context Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Search_Context where
  toJSON Search_Context {..} = Core.toJSON additional

-- | Query metadata for the previous, current, and next pages of results.
--
-- /See:/ 'newSearch_Queries' smart constructor.
data Search_Queries = Search_Queries
  { -- | Metadata representing the next page of results, if applicable.
    nextPage :: (Core.Maybe [Search_Queries_NextPageItem]),
    -- | Metadata representing the previous page of results, if applicable.
    previousPage :: (Core.Maybe [Search_Queries_PreviousPageItem]),
    -- | Metadata representing the current request.
    request' :: (Core.Maybe [Search_Queries_RequestItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Queries' with the minimum fields required to make a request.
newSearch_Queries ::
  Search_Queries
newSearch_Queries =
  Search_Queries
    { nextPage = Core.Nothing,
      previousPage = Core.Nothing,
      request' = Core.Nothing
    }

instance Core.FromJSON Search_Queries where
  parseJSON =
    Core.withObject
      "Search_Queries"
      ( \o ->
          Search_Queries
            Core.<$> (o Core..:? "nextPage")
            Core.<*> (o Core..:? "previousPage")
            Core.<*> (o Core..:? "request")
      )

instance Core.ToJSON Search_Queries where
  toJSON Search_Queries {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPage" Core..=) Core.<$> nextPage,
            ("previousPage" Core..=) Core.<$> previousPage,
            ("request" Core..=) Core.<$> request'
          ]
      )

-- | Custom search request metadata.
--
-- /See:/ 'newSearch_Queries_NextPageItem' smart constructor.
data Search_Queries_NextPageItem = Search_Queries_NextPageItem
  { -- | Number of search results returned in this set.
    count :: (Core.Maybe Core.Int32),
    -- | Restricts search results to documents originating in a particular country. You may use <https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch Boolean operators> in the @cr@ parameter\'s value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document\'s URL. * The geographic location of the web server\'s IP address. See <https://developers.google.com/custom-search/docs/json_api_reference#countryCollections Country (cr) Parameter Values> for a list of valid values for this parameter.
    cr :: (Core.Maybe Core.Text),
    -- | The identifier of an engine created using the Programmable Search Engine <https://programmablesearchengine.google.com/ Control Panel>. This is a custom property not defined in the OpenSearch spec. This parameter is __required__.
    cx :: (Core.Maybe Core.Text),
    -- | Restricts results to URLs based on date. Supported values include: * @d[number]@: requests results from the specified number of past days. * @w[number]@: requests results from the specified number of past weeks. * @m[number]@: requests results from the specified number of past months. * @y[number]@: requests results from the specified number of past years.
    dateRestrict :: (Core.Maybe Core.Text),
    -- | Enables or disables the <https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch Simplified and Traditional Chinese Search> feature. Supported values are: * @0@: enabled (default) * @1@: disabled
    disableCnTwTranslation :: (Core.Maybe Core.Text),
    -- | Identifies a phrase that all documents in the search results must contain.
    exactTerms :: (Core.Maybe Core.Text),
    -- | Identifies a word or phrase that should not appear in any documents in the search results.
    excludeTerms :: (Core.Maybe Core.Text),
    -- | Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (@pdf@) * Adobe PostScript (@ps@) * Lotus 1-2-3 (@wk1@, @wk2@, @wk3@, @wk4@, @wk5@, @wki@, @wks@, @wku@) * Lotus WordPro (@lwp@) * Macwrite (@mw@) * Microsoft Excel (@xls@) * Microsoft PowerPoint (@ppt@) * Microsoft Word (@doc@) * Microsoft Works (@wks@, @wps@, @wdb@) * Microsoft Write (@wri@) * Rich Text Format (@rtf@) * Shockwave Flash (@swf@) * Text (@ans@, @txt@). Additional filetypes may be added in the future. An up-to-date list can always be found in Google\'s <https://support.google.com/webmasters/answer/35287 file type FAQ>.
    fileType :: (Core.Maybe Core.Text),
    -- | Activates or deactivates the automatic filtering of Google search results. See <https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering Automatic Filtering> for more information about Google\'s search results filters. Valid values for this parameter are: * @0@: Disabled * @1@: Enabled (default) __Note__: By default, Google applies filtering to all search results to improve the quality of those results.
    filter :: (Core.Maybe Core.Text),
    -- | Boosts search results whose country of origin matches the parameter value. See <https://developers.google.com/custom-search/docs/json_api_reference#countryCodes Country Codes> for a list of valid values. Specifying a @gl@ parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.
    gl :: (Core.Maybe Core.Text),
    -- | Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.
    googleHost :: (Core.Maybe Core.Text),
    -- | Specifies the ending value for a search range. Use @cse:lowRange@ and @cse:highrange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    highRange :: (Core.Maybe Core.Text),
    -- | Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the <https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages Interface Languages> section of <https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing Internationalizing Queries and Results Presentation> for more information, and <https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages Supported Interface Languages> for a list of supported languages.
    hl :: (Core.Maybe Core.Text),
    -- | Appends the specified query terms to the query, as if they were combined with a logical @AND@ operator.
    hq :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified color type. Supported values are: * @mono@ (black and white) * @gray@ (grayscale) * @color@ (color)
    imgColorType :: (Core.Maybe Core.Text),
    -- | Restricts results to images with a specific dominant color. Supported values are: * @red@ * @orange@ * @yellow@ * @green@ * @teal@ * @blue@ * @purple@ * @pink@ * @white@ * @gray@ * @black@ * @brown@
    imgDominantColor :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified size. Supported values are: * @icon@ (small) * @small | medium | large | xlarge@ (medium) * @xxlarge@ (large) * @huge@ (extra-large)
    imgSize :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified type. Supported values are: * @clipart@ (Clip art) * @face@ (Face) * @lineart@ (Line drawing) * @photo@ (Photo) * @animated@ (Animated) * @stock@ (Stock)
    imgType :: (Core.Maybe Core.Text),
    -- | The character encoding supported for search requests.
    inputEncoding :: (Core.Maybe Core.Text),
    -- | The language of the search results.
    language :: (Core.Maybe Core.Text),
    -- | Specifies that all results should contain a link to a specific URL.
    linkSite :: (Core.Maybe Core.Text),
    -- | Specifies the starting value for a search range. Use @cse:lowRange@ and @cse:highrange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    lowRange :: (Core.Maybe Core.Text),
    -- | Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the <https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch Boolean OR> query term for this type of query.
    orTerms :: (Core.Maybe Core.Text),
    -- | The character encoding supported for search results.
    outputEncoding :: (Core.Maybe Core.Text),
    -- | Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.
    relatedSite :: (Core.Maybe Core.Text),
    -- | Filters based on licensing. Supported values include: * @cc_publicdomain@ * @cc_attribute@ * @cc_sharealike@ * @cc_noncommercial@ * @cc_nonderived@
    rights :: (Core.Maybe Core.Text),
    -- | Specifies the <https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels SafeSearch level> used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * @\"off\"@: Disable SafeSearch * @\"active\"@: Enable SafeSearch
    safe :: (Core.Maybe Core.Text),
    -- | The search terms entered by the user.
    searchTerms :: (Core.Maybe Core.Text),
    -- | Allowed values are @web@ or @image@. If unspecified, results are limited to webpages.
    searchType :: (Core.Maybe Core.Text),
    -- | Restricts results to URLs from a specified site.
    siteSearch :: (Core.Maybe Core.Text),
    -- | Specifies whether to include or exclude results from the site named in the @sitesearch@ parameter. Supported values are: * @i@: include content from site * @e@: exclude content from site
    siteSearchFilter :: (Core.Maybe Core.Text),
    -- | Specifies that results should be sorted according to the specified expression. For example, sort by date.
    sort :: (Core.Maybe Core.Text),
    -- | The index of the current set of search results into the total set of results, where the index of the first result is 1.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The page number of this set of results, where the page length is set by the @count@ property.
    startPage :: (Core.Maybe Core.Int32),
    -- | A description of the query.
    title :: (Core.Maybe Core.Text),
    -- | Estimated number of total search results. May not be accurate.
    totalResults :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Queries_NextPageItem' with the minimum fields required to make a request.
newSearch_Queries_NextPageItem ::
  Search_Queries_NextPageItem
newSearch_Queries_NextPageItem =
  Search_Queries_NextPageItem
    { count = Core.Nothing,
      cr = Core.Nothing,
      cx = Core.Nothing,
      dateRestrict = Core.Nothing,
      disableCnTwTranslation = Core.Nothing,
      exactTerms = Core.Nothing,
      excludeTerms = Core.Nothing,
      fileType = Core.Nothing,
      filter = Core.Nothing,
      gl = Core.Nothing,
      googleHost = Core.Nothing,
      highRange = Core.Nothing,
      hl = Core.Nothing,
      hq = Core.Nothing,
      imgColorType = Core.Nothing,
      imgDominantColor = Core.Nothing,
      imgSize = Core.Nothing,
      imgType = Core.Nothing,
      inputEncoding = Core.Nothing,
      language = Core.Nothing,
      linkSite = Core.Nothing,
      lowRange = Core.Nothing,
      orTerms = Core.Nothing,
      outputEncoding = Core.Nothing,
      relatedSite = Core.Nothing,
      rights = Core.Nothing,
      safe = Core.Nothing,
      searchTerms = Core.Nothing,
      searchType = Core.Nothing,
      siteSearch = Core.Nothing,
      siteSearchFilter = Core.Nothing,
      sort = Core.Nothing,
      startIndex = Core.Nothing,
      startPage = Core.Nothing,
      title = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON Search_Queries_NextPageItem where
  parseJSON =
    Core.withObject
      "Search_Queries_NextPageItem"
      ( \o ->
          Search_Queries_NextPageItem
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "cr")
            Core.<*> (o Core..:? "cx")
            Core.<*> (o Core..:? "dateRestrict")
            Core.<*> (o Core..:? "disableCnTwTranslation")
            Core.<*> (o Core..:? "exactTerms")
            Core.<*> (o Core..:? "excludeTerms")
            Core.<*> (o Core..:? "fileType")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "gl")
            Core.<*> (o Core..:? "googleHost")
            Core.<*> (o Core..:? "highRange")
            Core.<*> (o Core..:? "hl")
            Core.<*> (o Core..:? "hq")
            Core.<*> (o Core..:? "imgColorType")
            Core.<*> (o Core..:? "imgDominantColor")
            Core.<*> (o Core..:? "imgSize")
            Core.<*> (o Core..:? "imgType")
            Core.<*> (o Core..:? "inputEncoding")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "linkSite")
            Core.<*> (o Core..:? "lowRange")
            Core.<*> (o Core..:? "orTerms")
            Core.<*> (o Core..:? "outputEncoding")
            Core.<*> (o Core..:? "relatedSite")
            Core.<*> (o Core..:? "rights")
            Core.<*> (o Core..:? "safe")
            Core.<*> (o Core..:? "searchTerms")
            Core.<*> (o Core..:? "searchType")
            Core.<*> (o Core..:? "siteSearch")
            Core.<*> (o Core..:? "siteSearchFilter")
            Core.<*> (o Core..:? "sort")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "startPage")
            Core.<*> (o Core..:? "title")
            Core.<*> ( o Core..:? "totalResults"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Search_Queries_NextPageItem where
  toJSON Search_Queries_NextPageItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("cr" Core..=) Core.<$> cr,
            ("cx" Core..=) Core.<$> cx,
            ("dateRestrict" Core..=) Core.<$> dateRestrict,
            ("disableCnTwTranslation" Core..=)
              Core.<$> disableCnTwTranslation,
            ("exactTerms" Core..=) Core.<$> exactTerms,
            ("excludeTerms" Core..=) Core.<$> excludeTerms,
            ("fileType" Core..=) Core.<$> fileType,
            ("filter" Core..=) Core.<$> filter,
            ("gl" Core..=) Core.<$> gl,
            ("googleHost" Core..=) Core.<$> googleHost,
            ("highRange" Core..=) Core.<$> highRange,
            ("hl" Core..=) Core.<$> hl,
            ("hq" Core..=) Core.<$> hq,
            ("imgColorType" Core..=) Core.<$> imgColorType,
            ("imgDominantColor" Core..=)
              Core.<$> imgDominantColor,
            ("imgSize" Core..=) Core.<$> imgSize,
            ("imgType" Core..=) Core.<$> imgType,
            ("inputEncoding" Core..=) Core.<$> inputEncoding,
            ("language" Core..=) Core.<$> language,
            ("linkSite" Core..=) Core.<$> linkSite,
            ("lowRange" Core..=) Core.<$> lowRange,
            ("orTerms" Core..=) Core.<$> orTerms,
            ("outputEncoding" Core..=) Core.<$> outputEncoding,
            ("relatedSite" Core..=) Core.<$> relatedSite,
            ("rights" Core..=) Core.<$> rights,
            ("safe" Core..=) Core.<$> safe,
            ("searchTerms" Core..=) Core.<$> searchTerms,
            ("searchType" Core..=) Core.<$> searchType,
            ("siteSearch" Core..=) Core.<$> siteSearch,
            ("siteSearchFilter" Core..=)
              Core.<$> siteSearchFilter,
            ("sort" Core..=) Core.<$> sort,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("startPage" Core..=) Core.<$> startPage,
            ("title" Core..=) Core.<$> title,
            ("totalResults" Core..=) Core.. Core.AsText
              Core.<$> totalResults
          ]
      )

-- | Custom search request metadata.
--
-- /See:/ 'newSearch_Queries_PreviousPageItem' smart constructor.
data Search_Queries_PreviousPageItem = Search_Queries_PreviousPageItem
  { -- | Number of search results returned in this set.
    count :: (Core.Maybe Core.Int32),
    -- | Restricts search results to documents originating in a particular country. You may use <https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch Boolean operators> in the @cr@ parameter\'s value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document\'s URL. * The geographic location of the web server\'s IP address. See <https://developers.google.com/custom-search/docs/json_api_reference#countryCollections Country (cr) Parameter Values> for a list of valid values for this parameter.
    cr :: (Core.Maybe Core.Text),
    -- | The identifier of an engine created using the Programmable Search Engine <https://programmablesearchengine.google.com/ Control Panel>. This is a custom property not defined in the OpenSearch spec. This parameter is __required__.
    cx :: (Core.Maybe Core.Text),
    -- | Restricts results to URLs based on date. Supported values include: * @d[number]@: requests results from the specified number of past days. * @w[number]@: requests results from the specified number of past weeks. * @m[number]@: requests results from the specified number of past months. * @y[number]@: requests results from the specified number of past years.
    dateRestrict :: (Core.Maybe Core.Text),
    -- | Enables or disables the <https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch Simplified and Traditional Chinese Search> feature. Supported values are: * @0@: enabled (default) * @1@: disabled
    disableCnTwTranslation :: (Core.Maybe Core.Text),
    -- | Identifies a phrase that all documents in the search results must contain.
    exactTerms :: (Core.Maybe Core.Text),
    -- | Identifies a word or phrase that should not appear in any documents in the search results.
    excludeTerms :: (Core.Maybe Core.Text),
    -- | Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (@pdf@) * Adobe PostScript (@ps@) * Lotus 1-2-3 (@wk1@, @wk2@, @wk3@, @wk4@, @wk5@, @wki@, @wks@, @wku@) * Lotus WordPro (@lwp@) * Macwrite (@mw@) * Microsoft Excel (@xls@) * Microsoft PowerPoint (@ppt@) * Microsoft Word (@doc@) * Microsoft Works (@wks@, @wps@, @wdb@) * Microsoft Write (@wri@) * Rich Text Format (@rtf@) * Shockwave Flash (@swf@) * Text (@ans@, @txt@). Additional filetypes may be added in the future. An up-to-date list can always be found in Google\'s <https://support.google.com/webmasters/answer/35287 file type FAQ>.
    fileType :: (Core.Maybe Core.Text),
    -- | Activates or deactivates the automatic filtering of Google search results. See <https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering Automatic Filtering> for more information about Google\'s search results filters. Valid values for this parameter are: * @0@: Disabled * @1@: Enabled (default) __Note__: By default, Google applies filtering to all search results to improve the quality of those results.
    filter :: (Core.Maybe Core.Text),
    -- | Boosts search results whose country of origin matches the parameter value. See <https://developers.google.com/custom-search/docs/json_api_reference#countryCodes Country Codes> for a list of valid values. Specifying a @gl@ parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.
    gl :: (Core.Maybe Core.Text),
    -- | Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.
    googleHost :: (Core.Maybe Core.Text),
    -- | Specifies the ending value for a search range. Use @cse:lowRange@ and @cse:highrange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    highRange :: (Core.Maybe Core.Text),
    -- | Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the <https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages Interface Languages> section of <https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing Internationalizing Queries and Results Presentation> for more information, and <https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages Supported Interface Languages> for a list of supported languages.
    hl :: (Core.Maybe Core.Text),
    -- | Appends the specified query terms to the query, as if they were combined with a logical @AND@ operator.
    hq :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified color type. Supported values are: * @mono@ (black and white) * @gray@ (grayscale) * @color@ (color)
    imgColorType :: (Core.Maybe Core.Text),
    -- | Restricts results to images with a specific dominant color. Supported values are: * @red@ * @orange@ * @yellow@ * @green@ * @teal@ * @blue@ * @purple@ * @pink@ * @white@ * @gray@ * @black@ * @brown@
    imgDominantColor :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified size. Supported values are: * @icon@ (small) * @small | medium | large | xlarge@ (medium) * @xxlarge@ (large) * @huge@ (extra-large)
    imgSize :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified type. Supported values are: * @clipart@ (Clip art) * @face@ (Face) * @lineart@ (Line drawing) * @photo@ (Photo) * @animated@ (Animated) * @stock@ (Stock)
    imgType :: (Core.Maybe Core.Text),
    -- | The character encoding supported for search requests.
    inputEncoding :: (Core.Maybe Core.Text),
    -- | The language of the search results.
    language :: (Core.Maybe Core.Text),
    -- | Specifies that all results should contain a link to a specific URL.
    linkSite :: (Core.Maybe Core.Text),
    -- | Specifies the starting value for a search range. Use @cse:lowRange@ and @cse:highrange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    lowRange :: (Core.Maybe Core.Text),
    -- | Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the <https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch Boolean OR> query term for this type of query.
    orTerms :: (Core.Maybe Core.Text),
    -- | The character encoding supported for search results.
    outputEncoding :: (Core.Maybe Core.Text),
    -- | Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.
    relatedSite :: (Core.Maybe Core.Text),
    -- | Filters based on licensing. Supported values include: * @cc_publicdomain@ * @cc_attribute@ * @cc_sharealike@ * @cc_noncommercial@ * @cc_nonderived@
    rights :: (Core.Maybe Core.Text),
    -- | Specifies the <https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels SafeSearch level> used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * @\"off\"@: Disable SafeSearch * @\"active\"@: Enable SafeSearch
    safe :: (Core.Maybe Core.Text),
    -- | The search terms entered by the user.
    searchTerms :: (Core.Maybe Core.Text),
    -- | Allowed values are @web@ or @image@. If unspecified, results are limited to webpages.
    searchType :: (Core.Maybe Core.Text),
    -- | Restricts results to URLs from a specified site.
    siteSearch :: (Core.Maybe Core.Text),
    -- | Specifies whether to include or exclude results from the site named in the @sitesearch@ parameter. Supported values are: * @i@: include content from site * @e@: exclude content from site
    siteSearchFilter :: (Core.Maybe Core.Text),
    -- | Specifies that results should be sorted according to the specified expression. For example, sort by date.
    sort :: (Core.Maybe Core.Text),
    -- | The index of the current set of search results into the total set of results, where the index of the first result is 1.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The page number of this set of results, where the page length is set by the @count@ property.
    startPage :: (Core.Maybe Core.Int32),
    -- | A description of the query.
    title :: (Core.Maybe Core.Text),
    -- | Estimated number of total search results. May not be accurate.
    totalResults :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Queries_PreviousPageItem' with the minimum fields required to make a request.
newSearch_Queries_PreviousPageItem ::
  Search_Queries_PreviousPageItem
newSearch_Queries_PreviousPageItem =
  Search_Queries_PreviousPageItem
    { count = Core.Nothing,
      cr = Core.Nothing,
      cx = Core.Nothing,
      dateRestrict = Core.Nothing,
      disableCnTwTranslation = Core.Nothing,
      exactTerms = Core.Nothing,
      excludeTerms = Core.Nothing,
      fileType = Core.Nothing,
      filter = Core.Nothing,
      gl = Core.Nothing,
      googleHost = Core.Nothing,
      highRange = Core.Nothing,
      hl = Core.Nothing,
      hq = Core.Nothing,
      imgColorType = Core.Nothing,
      imgDominantColor = Core.Nothing,
      imgSize = Core.Nothing,
      imgType = Core.Nothing,
      inputEncoding = Core.Nothing,
      language = Core.Nothing,
      linkSite = Core.Nothing,
      lowRange = Core.Nothing,
      orTerms = Core.Nothing,
      outputEncoding = Core.Nothing,
      relatedSite = Core.Nothing,
      rights = Core.Nothing,
      safe = Core.Nothing,
      searchTerms = Core.Nothing,
      searchType = Core.Nothing,
      siteSearch = Core.Nothing,
      siteSearchFilter = Core.Nothing,
      sort = Core.Nothing,
      startIndex = Core.Nothing,
      startPage = Core.Nothing,
      title = Core.Nothing,
      totalResults = Core.Nothing
    }

instance
  Core.FromJSON
    Search_Queries_PreviousPageItem
  where
  parseJSON =
    Core.withObject
      "Search_Queries_PreviousPageItem"
      ( \o ->
          Search_Queries_PreviousPageItem
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "cr")
            Core.<*> (o Core..:? "cx")
            Core.<*> (o Core..:? "dateRestrict")
            Core.<*> (o Core..:? "disableCnTwTranslation")
            Core.<*> (o Core..:? "exactTerms")
            Core.<*> (o Core..:? "excludeTerms")
            Core.<*> (o Core..:? "fileType")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "gl")
            Core.<*> (o Core..:? "googleHost")
            Core.<*> (o Core..:? "highRange")
            Core.<*> (o Core..:? "hl")
            Core.<*> (o Core..:? "hq")
            Core.<*> (o Core..:? "imgColorType")
            Core.<*> (o Core..:? "imgDominantColor")
            Core.<*> (o Core..:? "imgSize")
            Core.<*> (o Core..:? "imgType")
            Core.<*> (o Core..:? "inputEncoding")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "linkSite")
            Core.<*> (o Core..:? "lowRange")
            Core.<*> (o Core..:? "orTerms")
            Core.<*> (o Core..:? "outputEncoding")
            Core.<*> (o Core..:? "relatedSite")
            Core.<*> (o Core..:? "rights")
            Core.<*> (o Core..:? "safe")
            Core.<*> (o Core..:? "searchTerms")
            Core.<*> (o Core..:? "searchType")
            Core.<*> (o Core..:? "siteSearch")
            Core.<*> (o Core..:? "siteSearchFilter")
            Core.<*> (o Core..:? "sort")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "startPage")
            Core.<*> (o Core..:? "title")
            Core.<*> ( o Core..:? "totalResults"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Search_Queries_PreviousPageItem where
  toJSON Search_Queries_PreviousPageItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("cr" Core..=) Core.<$> cr,
            ("cx" Core..=) Core.<$> cx,
            ("dateRestrict" Core..=) Core.<$> dateRestrict,
            ("disableCnTwTranslation" Core..=)
              Core.<$> disableCnTwTranslation,
            ("exactTerms" Core..=) Core.<$> exactTerms,
            ("excludeTerms" Core..=) Core.<$> excludeTerms,
            ("fileType" Core..=) Core.<$> fileType,
            ("filter" Core..=) Core.<$> filter,
            ("gl" Core..=) Core.<$> gl,
            ("googleHost" Core..=) Core.<$> googleHost,
            ("highRange" Core..=) Core.<$> highRange,
            ("hl" Core..=) Core.<$> hl,
            ("hq" Core..=) Core.<$> hq,
            ("imgColorType" Core..=) Core.<$> imgColorType,
            ("imgDominantColor" Core..=)
              Core.<$> imgDominantColor,
            ("imgSize" Core..=) Core.<$> imgSize,
            ("imgType" Core..=) Core.<$> imgType,
            ("inputEncoding" Core..=) Core.<$> inputEncoding,
            ("language" Core..=) Core.<$> language,
            ("linkSite" Core..=) Core.<$> linkSite,
            ("lowRange" Core..=) Core.<$> lowRange,
            ("orTerms" Core..=) Core.<$> orTerms,
            ("outputEncoding" Core..=) Core.<$> outputEncoding,
            ("relatedSite" Core..=) Core.<$> relatedSite,
            ("rights" Core..=) Core.<$> rights,
            ("safe" Core..=) Core.<$> safe,
            ("searchTerms" Core..=) Core.<$> searchTerms,
            ("searchType" Core..=) Core.<$> searchType,
            ("siteSearch" Core..=) Core.<$> siteSearch,
            ("siteSearchFilter" Core..=)
              Core.<$> siteSearchFilter,
            ("sort" Core..=) Core.<$> sort,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("startPage" Core..=) Core.<$> startPage,
            ("title" Core..=) Core.<$> title,
            ("totalResults" Core..=) Core.. Core.AsText
              Core.<$> totalResults
          ]
      )

-- | Custom search request metadata.
--
-- /See:/ 'newSearch_Queries_RequestItem' smart constructor.
data Search_Queries_RequestItem = Search_Queries_RequestItem
  { -- | Number of search results returned in this set.
    count :: (Core.Maybe Core.Int32),
    -- | Restricts search results to documents originating in a particular country. You may use <https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch Boolean operators> in the @cr@ parameter\'s value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document\'s URL. * The geographic location of the web server\'s IP address. See <https://developers.google.com/custom-search/docs/json_api_reference#countryCollections Country (cr) Parameter Values> for a list of valid values for this parameter.
    cr :: (Core.Maybe Core.Text),
    -- | The identifier of an engine created using the Programmable Search Engine <https://programmablesearchengine.google.com/ Control Panel>. This is a custom property not defined in the OpenSearch spec. This parameter is __required__.
    cx :: (Core.Maybe Core.Text),
    -- | Restricts results to URLs based on date. Supported values include: * @d[number]@: requests results from the specified number of past days. * @w[number]@: requests results from the specified number of past weeks. * @m[number]@: requests results from the specified number of past months. * @y[number]@: requests results from the specified number of past years.
    dateRestrict :: (Core.Maybe Core.Text),
    -- | Enables or disables the <https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch Simplified and Traditional Chinese Search> feature. Supported values are: * @0@: enabled (default) * @1@: disabled
    disableCnTwTranslation :: (Core.Maybe Core.Text),
    -- | Identifies a phrase that all documents in the search results must contain.
    exactTerms :: (Core.Maybe Core.Text),
    -- | Identifies a word or phrase that should not appear in any documents in the search results.
    excludeTerms :: (Core.Maybe Core.Text),
    -- | Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (@pdf@) * Adobe PostScript (@ps@) * Lotus 1-2-3 (@wk1@, @wk2@, @wk3@, @wk4@, @wk5@, @wki@, @wks@, @wku@) * Lotus WordPro (@lwp@) * Macwrite (@mw@) * Microsoft Excel (@xls@) * Microsoft PowerPoint (@ppt@) * Microsoft Word (@doc@) * Microsoft Works (@wks@, @wps@, @wdb@) * Microsoft Write (@wri@) * Rich Text Format (@rtf@) * Shockwave Flash (@swf@) * Text (@ans@, @txt@). Additional filetypes may be added in the future. An up-to-date list can always be found in Google\'s <https://support.google.com/webmasters/answer/35287 file type FAQ>.
    fileType :: (Core.Maybe Core.Text),
    -- | Activates or deactivates the automatic filtering of Google search results. See <https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering Automatic Filtering> for more information about Google\'s search results filters. Valid values for this parameter are: * @0@: Disabled * @1@: Enabled (default) __Note__: By default, Google applies filtering to all search results to improve the quality of those results.
    filter :: (Core.Maybe Core.Text),
    -- | Boosts search results whose country of origin matches the parameter value. See <https://developers.google.com/custom-search/docs/json_api_reference#countryCodes Country Codes> for a list of valid values. Specifying a @gl@ parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.
    gl :: (Core.Maybe Core.Text),
    -- | Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.
    googleHost :: (Core.Maybe Core.Text),
    -- | Specifies the ending value for a search range. Use @cse:lowRange@ and @cse:highrange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    highRange :: (Core.Maybe Core.Text),
    -- | Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the <https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages Interface Languages> section of <https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing Internationalizing Queries and Results Presentation> for more information, and <https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages Supported Interface Languages> for a list of supported languages.
    hl :: (Core.Maybe Core.Text),
    -- | Appends the specified query terms to the query, as if they were combined with a logical @AND@ operator.
    hq :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified color type. Supported values are: * @mono@ (black and white) * @gray@ (grayscale) * @color@ (color)
    imgColorType :: (Core.Maybe Core.Text),
    -- | Restricts results to images with a specific dominant color. Supported values are: * @red@ * @orange@ * @yellow@ * @green@ * @teal@ * @blue@ * @purple@ * @pink@ * @white@ * @gray@ * @black@ * @brown@
    imgDominantColor :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified size. Supported values are: * @icon@ (small) * @small | medium | large | xlarge@ (medium) * @xxlarge@ (large) * @huge@ (extra-large)
    imgSize :: (Core.Maybe Core.Text),
    -- | Restricts results to images of a specified type. Supported values are: * @clipart@ (Clip art) * @face@ (Face) * @lineart@ (Line drawing) * @photo@ (Photo) * @animated@ (Animated) * @stock@ (Stock)
    imgType :: (Core.Maybe Core.Text),
    -- | The character encoding supported for search requests.
    inputEncoding :: (Core.Maybe Core.Text),
    -- | The language of the search results.
    language :: (Core.Maybe Core.Text),
    -- | Specifies that all results should contain a link to a specific URL.
    linkSite :: (Core.Maybe Core.Text),
    -- | Specifies the starting value for a search range. Use @cse:lowRange@ and @cse:highrange@ to append an inclusive search range of @lowRange...highRange@ to the query.
    lowRange :: (Core.Maybe Core.Text),
    -- | Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the <https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch Boolean OR> query term for this type of query.
    orTerms :: (Core.Maybe Core.Text),
    -- | The character encoding supported for search results.
    outputEncoding :: (Core.Maybe Core.Text),
    -- | Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.
    relatedSite :: (Core.Maybe Core.Text),
    -- | Filters based on licensing. Supported values include: * @cc_publicdomain@ * @cc_attribute@ * @cc_sharealike@ * @cc_noncommercial@ * @cc_nonderived@
    rights :: (Core.Maybe Core.Text),
    -- | Specifies the <https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels SafeSearch level> used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * @\"off\"@: Disable SafeSearch * @\"active\"@: Enable SafeSearch
    safe :: (Core.Maybe Core.Text),
    -- | The search terms entered by the user.
    searchTerms :: (Core.Maybe Core.Text),
    -- | Allowed values are @web@ or @image@. If unspecified, results are limited to webpages.
    searchType :: (Core.Maybe Core.Text),
    -- | Restricts results to URLs from a specified site.
    siteSearch :: (Core.Maybe Core.Text),
    -- | Specifies whether to include or exclude results from the site named in the @sitesearch@ parameter. Supported values are: * @i@: include content from site * @e@: exclude content from site
    siteSearchFilter :: (Core.Maybe Core.Text),
    -- | Specifies that results should be sorted according to the specified expression. For example, sort by date.
    sort :: (Core.Maybe Core.Text),
    -- | The index of the current set of search results into the total set of results, where the index of the first result is 1.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The page number of this set of results, where the page length is set by the @count@ property.
    startPage :: (Core.Maybe Core.Int32),
    -- | A description of the query.
    title :: (Core.Maybe Core.Text),
    -- | Estimated number of total search results. May not be accurate.
    totalResults :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Queries_RequestItem' with the minimum fields required to make a request.
newSearch_Queries_RequestItem ::
  Search_Queries_RequestItem
newSearch_Queries_RequestItem =
  Search_Queries_RequestItem
    { count = Core.Nothing,
      cr = Core.Nothing,
      cx = Core.Nothing,
      dateRestrict = Core.Nothing,
      disableCnTwTranslation = Core.Nothing,
      exactTerms = Core.Nothing,
      excludeTerms = Core.Nothing,
      fileType = Core.Nothing,
      filter = Core.Nothing,
      gl = Core.Nothing,
      googleHost = Core.Nothing,
      highRange = Core.Nothing,
      hl = Core.Nothing,
      hq = Core.Nothing,
      imgColorType = Core.Nothing,
      imgDominantColor = Core.Nothing,
      imgSize = Core.Nothing,
      imgType = Core.Nothing,
      inputEncoding = Core.Nothing,
      language = Core.Nothing,
      linkSite = Core.Nothing,
      lowRange = Core.Nothing,
      orTerms = Core.Nothing,
      outputEncoding = Core.Nothing,
      relatedSite = Core.Nothing,
      rights = Core.Nothing,
      safe = Core.Nothing,
      searchTerms = Core.Nothing,
      searchType = Core.Nothing,
      siteSearch = Core.Nothing,
      siteSearchFilter = Core.Nothing,
      sort = Core.Nothing,
      startIndex = Core.Nothing,
      startPage = Core.Nothing,
      title = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON Search_Queries_RequestItem where
  parseJSON =
    Core.withObject
      "Search_Queries_RequestItem"
      ( \o ->
          Search_Queries_RequestItem
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "cr")
            Core.<*> (o Core..:? "cx")
            Core.<*> (o Core..:? "dateRestrict")
            Core.<*> (o Core..:? "disableCnTwTranslation")
            Core.<*> (o Core..:? "exactTerms")
            Core.<*> (o Core..:? "excludeTerms")
            Core.<*> (o Core..:? "fileType")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "gl")
            Core.<*> (o Core..:? "googleHost")
            Core.<*> (o Core..:? "highRange")
            Core.<*> (o Core..:? "hl")
            Core.<*> (o Core..:? "hq")
            Core.<*> (o Core..:? "imgColorType")
            Core.<*> (o Core..:? "imgDominantColor")
            Core.<*> (o Core..:? "imgSize")
            Core.<*> (o Core..:? "imgType")
            Core.<*> (o Core..:? "inputEncoding")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "linkSite")
            Core.<*> (o Core..:? "lowRange")
            Core.<*> (o Core..:? "orTerms")
            Core.<*> (o Core..:? "outputEncoding")
            Core.<*> (o Core..:? "relatedSite")
            Core.<*> (o Core..:? "rights")
            Core.<*> (o Core..:? "safe")
            Core.<*> (o Core..:? "searchTerms")
            Core.<*> (o Core..:? "searchType")
            Core.<*> (o Core..:? "siteSearch")
            Core.<*> (o Core..:? "siteSearchFilter")
            Core.<*> (o Core..:? "sort")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "startPage")
            Core.<*> (o Core..:? "title")
            Core.<*> ( o Core..:? "totalResults"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Search_Queries_RequestItem where
  toJSON Search_Queries_RequestItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("cr" Core..=) Core.<$> cr,
            ("cx" Core..=) Core.<$> cx,
            ("dateRestrict" Core..=) Core.<$> dateRestrict,
            ("disableCnTwTranslation" Core..=)
              Core.<$> disableCnTwTranslation,
            ("exactTerms" Core..=) Core.<$> exactTerms,
            ("excludeTerms" Core..=) Core.<$> excludeTerms,
            ("fileType" Core..=) Core.<$> fileType,
            ("filter" Core..=) Core.<$> filter,
            ("gl" Core..=) Core.<$> gl,
            ("googleHost" Core..=) Core.<$> googleHost,
            ("highRange" Core..=) Core.<$> highRange,
            ("hl" Core..=) Core.<$> hl,
            ("hq" Core..=) Core.<$> hq,
            ("imgColorType" Core..=) Core.<$> imgColorType,
            ("imgDominantColor" Core..=)
              Core.<$> imgDominantColor,
            ("imgSize" Core..=) Core.<$> imgSize,
            ("imgType" Core..=) Core.<$> imgType,
            ("inputEncoding" Core..=) Core.<$> inputEncoding,
            ("language" Core..=) Core.<$> language,
            ("linkSite" Core..=) Core.<$> linkSite,
            ("lowRange" Core..=) Core.<$> lowRange,
            ("orTerms" Core..=) Core.<$> orTerms,
            ("outputEncoding" Core..=) Core.<$> outputEncoding,
            ("relatedSite" Core..=) Core.<$> relatedSite,
            ("rights" Core..=) Core.<$> rights,
            ("safe" Core..=) Core.<$> safe,
            ("searchTerms" Core..=) Core.<$> searchTerms,
            ("searchType" Core..=) Core.<$> searchType,
            ("siteSearch" Core..=) Core.<$> siteSearch,
            ("siteSearchFilter" Core..=)
              Core.<$> siteSearchFilter,
            ("sort" Core..=) Core.<$> sort,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("startPage" Core..=) Core.<$> startPage,
            ("title" Core..=) Core.<$> title,
            ("totalResults" Core..=) Core.. Core.AsText
              Core.<$> totalResults
          ]
      )

-- | Metadata about a search operation.
--
-- /See:/ 'newSearch_SearchInformation' smart constructor.
data Search_SearchInformation = Search_SearchInformation
  { -- | The time taken for the server to return search results, formatted according to locale style.
    formattedSearchTime :: (Core.Maybe Core.Text),
    -- | The total number of search results, formatted according to locale style.
    formattedTotalResults :: (Core.Maybe Core.Text),
    -- | The time taken for the server to return search results.
    searchTime :: (Core.Maybe Core.Double),
    -- | The total number of search results returned by the query.
    totalResults :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_SearchInformation' with the minimum fields required to make a request.
newSearch_SearchInformation ::
  Search_SearchInformation
newSearch_SearchInformation =
  Search_SearchInformation
    { formattedSearchTime = Core.Nothing,
      formattedTotalResults = Core.Nothing,
      searchTime = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON Search_SearchInformation where
  parseJSON =
    Core.withObject
      "Search_SearchInformation"
      ( \o ->
          Search_SearchInformation
            Core.<$> (o Core..:? "formattedSearchTime")
            Core.<*> (o Core..:? "formattedTotalResults")
            Core.<*> (o Core..:? "searchTime")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON Search_SearchInformation where
  toJSON Search_SearchInformation {..} =
    Core.object
      ( Core.catMaybes
          [ ("formattedSearchTime" Core..=)
              Core.<$> formattedSearchTime,
            ("formattedTotalResults" Core..=)
              Core.<$> formattedTotalResults,
            ("searchTime" Core..=) Core.<$> searchTime,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | Spell correction information for a query.
--
-- /See:/ 'newSearch_Spelling' smart constructor.
data Search_Spelling = Search_Spelling
  { -- | The corrected query.
    correctedQuery :: (Core.Maybe Core.Text),
    -- | The corrected query, formatted in HTML.
    htmlCorrectedQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Spelling' with the minimum fields required to make a request.
newSearch_Spelling ::
  Search_Spelling
newSearch_Spelling =
  Search_Spelling
    { correctedQuery = Core.Nothing,
      htmlCorrectedQuery = Core.Nothing
    }

instance Core.FromJSON Search_Spelling where
  parseJSON =
    Core.withObject
      "Search_Spelling"
      ( \o ->
          Search_Spelling
            Core.<$> (o Core..:? "correctedQuery")
            Core.<*> (o Core..:? "htmlCorrectedQuery")
      )

instance Core.ToJSON Search_Spelling where
  toJSON Search_Spelling {..} =
    Core.object
      ( Core.catMaybes
          [ ("correctedQuery" Core..=) Core.<$> correctedQuery,
            ("htmlCorrectedQuery" Core..=)
              Core.<$> htmlCorrectedQuery
          ]
      )

-- | OpenSearch template and URL.
--
-- /See:/ 'newSearch_Url' smart constructor.
data Search_Url = Search_Url
  { -- | The actual <http://www.opensearch.org/specifications/opensearch/1.1#opensearch_url_template_syntax OpenSearch template> for this API.
    template :: (Core.Maybe Core.Text),
    -- | The MIME type of the OpenSearch URL template for the Custom Search JSON API.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Search_Url' with the minimum fields required to make a request.
newSearch_Url ::
  Search_Url
newSearch_Url = Search_Url {template = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Search_Url where
  parseJSON =
    Core.withObject
      "Search_Url"
      ( \o ->
          Search_Url
            Core.<$> (o Core..:? "template") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Search_Url where
  toJSON Search_Url {..} =
    Core.object
      ( Core.catMaybes
          [ ("template" Core..=) Core.<$> template,
            ("type" Core..=) Core.<$> type'
          ]
      )
