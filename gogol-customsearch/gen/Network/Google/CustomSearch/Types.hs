{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
    -- * API Definition
      customsearch


    -- * Context
    , Context
    , context
    , cFacets
    , cTitle

    -- * ContextItemItemFacets
    , ContextItemItemFacets
    , contextItemItemFacets
    , ciifAnchor
    , ciifLabelWithOp
    , ciifLabel

    -- * Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHtmlTitle
    , pTitle

    -- * PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- * PromotionItemBodyLines
    , PromotionItemBodyLines
    , promotionItemBodyLines
    , piblLink
    , piblUrl
    , piblHtmlTitle
    , piblTitle

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

    -- * ResultItemLabels
    , ResultItemLabels
    , resultItemLabels
    , rilName
    , rilDisplayName
    , rilLabelWithOp

    -- * ResultPagemap
    , ResultPagemap
    , resultPagemap

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

    -- * SearchQueries
    , SearchQueries
    , searchQueries

    -- * SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- * SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHtmlCorrectedQuery

    -- * SearchUrl
    , SearchUrl
    , searchUrl
    , suType
    , suTemplate
    ) where

import           Network.Google.CustomSearch.Types.Product
import           Network.Google.CustomSearch.Types.Sum
import           Network.Google.Prelude

customsearch :: a
customsearch = error "customsearch"
