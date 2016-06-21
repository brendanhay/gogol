{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CustomSearch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you search over a website or collection of websites
--
-- /See:/ <https://developers.google.com/custom-search/v1/using_rest CustomSearch API Reference>
module Network.Google.CustomSearch
    (
    -- * Service Configuration
      customSearchService

    -- * API Declaration
    , CustomSearchAPI

    -- * Resources

    -- ** search.cse.list
    , module Network.Google.Resource.Search.CSE.List

    -- * Types

    -- ** CSEListImgType
    , CSEListImgType (..)

    -- ** PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- ** Context
    , Context
    , context
    , cFacets
    , cTitle

    -- ** CSEListSiteSearchFilter
    , CSEListSiteSearchFilter (..)

    -- ** SearchQueries
    , SearchQueries
    , searchQueries
    , sqAddtional

    -- ** ResultPagemapAdditionalItem
    , ResultPagemapAdditionalItem
    , resultPagemapAdditionalItem
    , rpaiAddtional

    -- ** SearchURL
    , SearchURL
    , searchURL
    , suType
    , suTemplate

    -- ** SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHTMLCorrectedQuery

    -- ** CSEListImgDominantColor
    , CSEListImgDominantColor (..)

    -- ** ResultImage
    , ResultImage
    , resultImage
    , riThumbnailLink
    , riHeight
    , riByteSize
    , riContextLink
    , riThumbnailHeight
    , riWidth
    , riThumbnailWidth

    -- ** CSEListSafe
    , CSEListSafe (..)

    -- ** ResultPagemap
    , ResultPagemap
    , resultPagemap
    , rpAddtional

    -- ** CSEListImgColorType
    , CSEListImgColorType (..)

    -- ** Result
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

    -- ** ResultLabelsItem
    , ResultLabelsItem
    , resultLabelsItem
    , rliName
    , rliDisplayName
    , rliLabelWithOp

    -- ** SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- ** CSEListFilter
    , CSEListFilter (..)

    -- ** Query
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

    -- ** PromotionBodyLinesItem
    , PromotionBodyLinesItem
    , promotionBodyLinesItem
    , pbliLink
    , pbliURL
    , pbliHTMLTitle
    , pbliTitle

    -- ** Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHTMLTitle
    , pTitle

    -- ** Search
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

    -- ** CSEListLr
    , CSEListLr (..)

    -- ** ContextFacetsItemItem
    , ContextFacetsItemItem
    , contextFacetsItemItem
    , cfiiAnchor
    , cfiiLabelWithOp
    , cfiiLabel

    -- ** CSEListSearchType
    , CSEListSearchType (..)

    -- ** CSEListImgSize
    , CSEListImgSize (..)
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Search.CSE.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the CustomSearch API service.
type CustomSearchAPI = CSEListResource
