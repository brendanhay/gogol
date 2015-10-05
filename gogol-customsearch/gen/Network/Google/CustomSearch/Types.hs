{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

    -- * CSEListImgType
    , CSEListImgType (..)

    -- * PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- * Context
    , Context
    , context
    , cFacets
    , cTitle

    -- * CSEListSiteSearchFilter
    , CSEListSiteSearchFilter (..)

    -- * SearchQueries
    , SearchQueries
    , searchQueries

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

    -- * ResultPagemap
    , ResultPagemap
    , resultPagemap

    -- * CSEListImgColorType
    , CSEListImgColorType (..)

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

    -- * SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- * CSEListFilter
    , CSEListFilter (..)

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

    -- * CSEListLr
    , CSEListLr (..)

    -- * ContextFacetsItemItem
    , ContextFacetsItemItem
    , contextFacetsItemItem
    , cfiiAnchor
    , cfiiLabelWithOp
    , cfiiLabel

    -- * CSEListSearchType
    , CSEListSearchType (..)

    -- * CSEListImgSize
    , CSEListImgSize (..)
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
