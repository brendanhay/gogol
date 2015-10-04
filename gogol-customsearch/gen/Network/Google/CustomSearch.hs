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
-- | Lets you search over a website or collection of websites
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

    -- ** SearchCSEList
    , module Network.Google.Resource.Search.CSE.List

    -- * Types

    -- ** ImgDominantColor
    , ImgDominantColor (..)

    -- ** PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- ** Queries
    , Queries
    , queries

    -- ** Context
    , Context
    , context
    , cFacets
    , cTitle

    -- ** Image
    , Image
    , image
    , iThumbnailLink
    , iHeight
    , iByteSize
    , iContextLink
    , iThumbnailHeight
    , iWidth
    , iThumbnailWidth

    -- ** Pagemap
    , Pagemap
    , pagemap

    -- ** SearchURL
    , SearchURL
    , searchURL
    , suType
    , suTemplate

    -- ** SiteSearchFilter
    , SiteSearchFilter (..)

    -- ** LabelsItem
    , LabelsItem
    , labelsItem
    , liName
    , liDisplayName
    , liLabelWithOp

    -- ** SearchType
    , SearchType (..)

    -- ** FacetsItemItem
    , FacetsItemItem
    , facetsItemItem
    , fiiAnchor
    , fiiLabelWithOp
    , fiiLabel

    -- ** Lr
    , Lr (..)

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

    -- ** SearchInformation
    , SearchInformation
    , searchInformation
    , siSearchTime
    , siFormattedSearchTime
    , siTotalResults
    , siFormattedTotalResults

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

    -- ** Filter
    , Filter (..)

    -- ** BodyLinesItem
    , BodyLinesItem
    , bodyLinesItem
    , bliLink
    , bliURL
    , bliHTMLTitle
    , bliTitle

    -- ** Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHTMLTitle
    , pTitle

    -- ** ImgType
    , ImgType (..)

    -- ** ImgColorType
    , ImgColorType (..)

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

    -- ** ImgSize
    , ImgSize (..)

    -- ** Spelling
    , Spelling
    , spelling
    , sCorrectedQuery
    , sHTMLCorrectedQuery

    -- ** Safe
    , Safe (..)
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Search.CSE.List

{- $resources
TODO
-}

type CustomSearchAPI = CSEListResource

customSearchAPI :: Proxy CustomSearchAPI
customSearchAPI = Proxy
