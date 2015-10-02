{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CustomSearch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you search over a website or collection of websites
--
-- /See:/ <https://developers.google.com/custom-search/v1/using_rest CustomSearch API Reference>
module Network.Google.CustomSearch
    (
    -- * API
      CustomSearchAPI
    , customSearchAPI
    , customSearchURL

    -- * Service Methods

    -- * REST Resources

    -- ** SearchCseList
    , module Network.Google.Resource.Search.Cse.List

    -- * Types

    -- ** PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- ** SearchCseListSiteSearchFilter
    , SearchCseListSiteSearchFilter (..)

    -- ** Context
    , Context
    , context
    , cFacets
    , cTitle

    -- ** SearchCseListImgColorType
    , SearchCseListImgColorType (..)

    -- ** SearchCseListImgType
    , SearchCseListImgType (..)

    -- ** SearchQueries
    , SearchQueries
    , searchQueries

    -- ** SearchURL
    , SearchURL
    , searchURL
    , suType
    , suTemplate

    -- ** SearchCseListImgDominantColor
    , SearchCseListImgDominantColor (..)

    -- ** SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHTMLCorrectedQuery

    -- ** ResultPagemap
    , ResultPagemap
    , resultPagemap

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

    -- ** ResultLabels
    , ResultLabels
    , resultLabels
    , rlName
    , rlDisplayName
    , rlLabelWithOp

    -- ** SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- ** SearchCseListSearchType
    , SearchCseListSearchType (..)

    -- ** SearchCseListLr
    , SearchCseListLr (..)

    -- ** SearchCseListImgSize
    , SearchCseListImgSize (..)

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

    -- ** SearchCseListSafe
    , SearchCseListSafe (..)

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

    -- ** PromotionBodyLines
    , PromotionBodyLines
    , promotionBodyLines
    , pblLink
    , pblURL
    , pblHTMLTitle
    , pblTitle

    -- ** SearchCseListFilter
    , SearchCseListFilter (..)

    -- ** ContextFacets
    , ContextFacets
    , contextFacets
    , cfAnchor
    , cfLabelWithOp
    , cfLabel
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Search.Cse.List

{- $resources
TODO
-}

type CustomSearchAPI = CseListResource

customSearchAPI :: Proxy CustomSearchAPI
customSearchAPI = Proxy
