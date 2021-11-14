{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CustomSearch.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CustomSearch.Types
    (
    -- * Service Configuration
      customSearchService

    -- * CSEListImgType
    , CSEListImgType (..)

    -- * PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- * CSEListSiteSearchFilter
    , CSEListSiteSearchFilter (..)

    -- * SearchQueries
    , SearchQueries
    , searchQueries
    , sqNextPage
    , sqPreviousPage
    , sqRequest

    -- * SearchQueriesPreviousPageItem
    , SearchQueriesPreviousPageItem
    , searchQueriesPreviousPageItem
    , sqppiImgDominantColor
    , sqppiOutputEncoding
    , sqppiSiteSearchFilter
    , sqppiInputEncoding
    , sqppiOrTerms
    , sqppiSearchTerms
    , sqppiStartPage
    , sqppiRights
    , sqppiCount
    , sqppiExcludeTerms
    , sqppiFileType
    , sqppiSearchType
    , sqppiGoogleHost
    , sqppiDisableCnTwTranslation
    , sqppiRelatedSite
    , sqppiHl
    , sqppiSort
    , sqppiLanguage
    , sqppiSiteSearch
    , sqppiFilter
    , sqppiTotalResults
    , sqppiDateRestrict
    , sqppiTitle
    , sqppiLinkSite
    , sqppiLowRange
    , sqppiImgType
    , sqppiGl
    , sqppiCx
    , sqppiImgColorType
    , sqppiImgSize
    , sqppiExactTerms
    , sqppiStartIndex
    , sqppiCr
    , sqppiSafe
    , sqppiHq
    , sqppiHighRange

    -- * SearchURL
    , SearchURL
    , searchURL
    , suType
    , suTemplate

    -- * SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHTMLCorrectedQuery

    -- * CSESiterestrictListImgType
    , CSESiterestrictListImgType (..)

    -- * CSEListImgDominantColor
    , CSEListImgDominantColor (..)

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

    -- * CSEListSafe
    , CSEListSafe (..)

    -- * CSESiterestrictListImgSize
    , CSESiterestrictListImgSize (..)

    -- * ResultPagemap
    , ResultPagemap
    , resultPagemap
    , rpAddtional

    -- * CSESiterestrictListImgColorType
    , CSESiterestrictListImgColorType (..)

    -- * CSEListImgColorType
    , CSEListImgColorType (..)

    -- * CSESiterestrictListSafe
    , CSESiterestrictListSafe (..)

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
    , rHTMLSnippet
    , rHTMLFormattedURL
    , rCacheId
    , rFormattedURL
    , rHTMLTitle
    , rLabels
    , rTitle

    -- * ResultLabelsItem
    , ResultLabelsItem
    , resultLabelsItem
    , rliName
    , rliDisplayName
    , rliLabelWithOp

    -- * SearchContext
    , SearchContext
    , searchContext
    , scAddtional

    -- * CSESiterestrictListImgDominantColor
    , CSESiterestrictListImgDominantColor (..)

    -- * SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- * Xgafv
    , Xgafv (..)

    -- * CSESiterestrictListSiteSearchFilter
    , CSESiterestrictListSiteSearchFilter (..)

    -- * SearchQueriesNextPageItem
    , SearchQueriesNextPageItem
    , searchQueriesNextPageItem
    , sqnpiImgDominantColor
    , sqnpiOutputEncoding
    , sqnpiSiteSearchFilter
    , sqnpiInputEncoding
    , sqnpiOrTerms
    , sqnpiSearchTerms
    , sqnpiStartPage
    , sqnpiRights
    , sqnpiCount
    , sqnpiExcludeTerms
    , sqnpiFileType
    , sqnpiSearchType
    , sqnpiGoogleHost
    , sqnpiDisableCnTwTranslation
    , sqnpiRelatedSite
    , sqnpiHl
    , sqnpiSort
    , sqnpiLanguage
    , sqnpiSiteSearch
    , sqnpiFilter
    , sqnpiTotalResults
    , sqnpiDateRestrict
    , sqnpiTitle
    , sqnpiLinkSite
    , sqnpiLowRange
    , sqnpiImgType
    , sqnpiGl
    , sqnpiCx
    , sqnpiImgColorType
    , sqnpiImgSize
    , sqnpiExactTerms
    , sqnpiStartIndex
    , sqnpiCr
    , sqnpiSafe
    , sqnpiHq
    , sqnpiHighRange

    -- * PromotionBodyLinesItem
    , PromotionBodyLinesItem
    , promotionBodyLinesItem
    , pbliLink
    , pbliURL
    , pbliHTMLTitle
    , pbliTitle

    -- * Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHTMLTitle
    , pTitle

    -- * SearchQueriesRequestItem
    , SearchQueriesRequestItem
    , searchQueriesRequestItem
    , sqriImgDominantColor
    , sqriOutputEncoding
    , sqriSiteSearchFilter
    , sqriInputEncoding
    , sqriOrTerms
    , sqriSearchTerms
    , sqriStartPage
    , sqriRights
    , sqriCount
    , sqriExcludeTerms
    , sqriFileType
    , sqriSearchType
    , sqriGoogleHost
    , sqriDisableCnTwTranslation
    , sqriRelatedSite
    , sqriHl
    , sqriSort
    , sqriLanguage
    , sqriSiteSearch
    , sqriFilter
    , sqriTotalResults
    , sqriDateRestrict
    , sqriTitle
    , sqriLinkSite
    , sqriLowRange
    , sqriImgType
    , sqriGl
    , sqriCx
    , sqriImgColorType
    , sqriImgSize
    , sqriExactTerms
    , sqriStartIndex
    , sqriCr
    , sqriSafe
    , sqriHq
    , sqriHighRange

    -- * CSESiterestrictListSearchType
    , CSESiterestrictListSearchType (..)

    -- * Search
    , Search
    , search
    , sQueries
    , sContext
    , sKind
    , sURL
    , sItems
    , sSearchInformation
    , sPromotions
    , sSpelling

    -- * CSEListSearchType
    , CSEListSearchType (..)

    -- * CSEListImgSize
    , CSEListImgSize (..)
    ) where

import Network.Google.CustomSearch.Types.Product
import Network.Google.CustomSearch.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Custom Search API. This contains the host and root path used as a starting point for constructing service requests.
customSearchService :: ServiceConfig
customSearchService
  = defaultService (ServiceId "customsearch:v1")
      "customsearch.googleapis.com"
