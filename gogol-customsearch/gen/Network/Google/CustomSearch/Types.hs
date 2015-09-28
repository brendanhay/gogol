{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types
    (
    -- * Service URL
      customSearchURL

    -- * CseList'ImgDominantColor
    , CseList'ImgDominantColor (..)

    -- * ContextItemItemFacets
    , ContextItemItemFacets
    , contextItemItemFacets
    , ciifAnchor
    , ciifLabelWithOp
    , ciifLabel

    -- * ResultItemLabels
    , ResultItemLabels
    , resultItemLabels
    , rilName
    , rilDisplayName
    , rilLabelWithOp

    -- * Alt
    , Alt (..)

    -- * CseList'Safe
    , CseList'Safe (..)

    -- * CseList'ImgColorType
    , CseList'ImgColorType (..)

    -- * CseList'ImgType
    , CseList'ImgType (..)

    -- * Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHtmlTitle
    , pTitle

    -- * CseList'SiteSearchFilter
    , CseList'SiteSearchFilter (..)

    -- * SearchUrl
    , SearchUrl
    , searchUrl
    , suType
    , suTemplate

    -- * SearchQueries
    , SearchQueries
    , searchQueries

    -- * Context
    , Context
    , context
    , cFacets
    , cTitle

    -- * SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- * PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- * Query
    , Query
    , query
    , qImgDominantColor
    , qOutputEncoding
    , qSiteSearchFilter
    , qInputEncoding
    , qOrTerms
    , qSearchTerms
    , qStartPage
    , qRights
    , qCount
    , qExcludeTerms
    , qFileType
    , qSearchType
    , qGoogleHost
    , qDisableCnTwTranslation
    , qRelatedSite
    , qHl
    , qCref
    , qSort
    , qLanguage
    , qSiteSearch
    , qFilter
    , qTotalResults
    , qDateRestrict
    , qTitle
    , qLinkSite
    , qLowRange
    , qImgType
    , qGl
    , qCx
    , qImgColorType
    , qImgSize
    , qExactTerms
    , qStartIndex
    , qCr
    , qSafe
    , qHq
    , qHighRange

    -- * ResultImage
    , ResultImage
    , resultImage
    , riThumbnailLink
    , riHeight
    , riByteSize
    , riContextLink
    , riThumbnailHeight
    , riWidth
    , riThumbnailWidth

    -- * ResultPagemap
    , ResultPagemap
    , resultPagemap

    -- * CseList'Lr
    , CseList'Lr (..)

    -- * CseList'ImgSize
    , CseList'ImgSize (..)

    -- * CseList'SearchType
    , CseList'SearchType (..)

    -- * PromotionItemBodyLines
    , PromotionItemBodyLines
    , promotionItemBodyLines
    , piblLink
    , piblUrl
    , piblHtmlTitle
    , piblTitle

    -- * SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHtmlCorrectedQuery

    -- * CseList'Filter
    , CseList'Filter (..)

    -- * Search
    , Search
    , search
    , sQueries
    , sContext
    , sKind
    , sUrl
    , sItems
    , sSearchInformation
    , sPromotions
    , sSpelling

    -- * Result
    , Result
    , result
    , rMime
    , rImage
    , rPagemap
    , rDisplayLink
    , rFileFormat
    , rSnippet
    , rKind
    , rLink
    , rHtmlSnippet
    , rHtmlFormattedUrl
    , rCacheId
    , rFormattedUrl
    , rHtmlTitle
    , rLabels
    , rTitle
    ) where

import           Network.Google.CustomSearch.Types.Product
import           Network.Google.CustomSearch.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the CustomSearch API.
customSearchURL :: BaseUrl
customSearchURL
  = BaseUrl Https
      "https://www.googleapis.com/customsearch/"
      443
