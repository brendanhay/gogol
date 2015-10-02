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

    -- * PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- * SearchCseListSiteSearchFilter
    , SearchCseListSiteSearchFilter (..)

    -- * Context
    , Context
    , context
    , cFacets
    , cTitle

    -- * SearchCseListImgColorType
    , SearchCseListImgColorType (..)

    -- * SearchCseListImgType
    , SearchCseListImgType (..)

    -- * SearchQueries
    , SearchQueries
    , searchQueries

    -- * SearchURL
    , SearchURL
    , searchURL
    , suType
    , suTemplate

    -- * SearchCseListImgDominantColor
    , SearchCseListImgDominantColor (..)

    -- * SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHTMLCorrectedQuery

    -- * ResultPagemap
    , ResultPagemap
    , resultPagemap

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

    -- * ResultLabels
    , ResultLabels
    , resultLabels
    , rlName
    , rlDisplayName
    , rlLabelWithOp

    -- * SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- * SearchCseListSearchType
    , SearchCseListSearchType (..)

    -- * SearchCseListLr
    , SearchCseListLr (..)

    -- * SearchCseListImgSize
    , SearchCseListImgSize (..)

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

    -- * SearchCseListSafe
    , SearchCseListSafe (..)

    -- * Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHTMLTitle
    , pTitle

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

    -- * PromotionBodyLines
    , PromotionBodyLines
    , promotionBodyLines
    , pblLink
    , pblURL
    , pblHTMLTitle
    , pblTitle

    -- * SearchCseListFilter
    , SearchCseListFilter (..)

    -- * ContextFacets
    , ContextFacets
    , contextFacets
    , cfAnchor
    , cfLabelWithOp
    , cfLabel
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
