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

    -- * ImgDominantColor
    , ImgDominantColor (..)

    -- * PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- * Queries
    , Queries
    , queries

    -- * Context
    , Context
    , context
    , cFacets
    , cTitle

    -- * Image
    , Image
    , image
    , iThumbnailLink
    , iHeight
    , iByteSize
    , iContextLink
    , iThumbnailHeight
    , iWidth
    , iThumbnailWidth

    -- * Pagemap
    , Pagemap
    , pagemap

    -- * SearchURL
    , SearchURL
    , searchURL
    , suType
    , suTemplate

    -- * SiteSearchFilter
    , SiteSearchFilter (..)

    -- * LabelsItem
    , LabelsItem
    , labelsItem
    , liName
    , liDisplayName
    , liLabelWithOp

    -- * SearchType
    , SearchType (..)

    -- * FacetsItemItem
    , FacetsItemItem
    , facetsItemItem
    , fiiAnchor
    , fiiLabelWithOp
    , fiiLabel

    -- * Lr
    , Lr (..)

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

    -- * SearchInformation
    , SearchInformation
    , searchInformation
    , siSearchTime
    , siFormattedSearchTime
    , siTotalResults
    , siFormattedTotalResults

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

    -- * Filter
    , Filter (..)

    -- * BodyLinesItem
    , BodyLinesItem
    , bodyLinesItem
    , bliLink
    , bliURL
    , bliHTMLTitle
    , bliTitle

    -- * Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHTMLTitle
    , pTitle

    -- * ImgType
    , ImgType (..)

    -- * ImgColorType
    , ImgColorType (..)

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

    -- * ImgSize
    , ImgSize (..)

    -- * Spelling
    , Spelling
    , spelling
    , sCorrectedQuery
    , sHTMLCorrectedQuery

    -- * Safe
    , Safe (..)
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
