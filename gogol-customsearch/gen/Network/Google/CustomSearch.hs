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
    -- * Resources
      CustomSearch
    , CseAPI
    , CseList

    -- * Types

    -- ** Context
    , Context
    , context
    , cFacets
    , cTitle

    -- ** ContextItemItemFacets
    , ContextItemItemFacets
    , contextItemItemFacets
    , ciifAnchor
    , ciifLabelWithOp
    , ciifLabel

    -- ** Promotion
    , Promotion
    , promotion
    , pImage
    , pDisplayLink
    , pBodyLines
    , pLink
    , pHtmlTitle
    , pTitle

    -- ** PromotionImage
    , PromotionImage
    , promotionImage
    , piHeight
    , piWidth
    , piSource

    -- ** PromotionItemBodyLines
    , PromotionItemBodyLines
    , promotionItemBodyLines
    , piblLink
    , piblUrl
    , piblHtmlTitle
    , piblTitle

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
    , rHtmlSnippet
    , rHtmlFormattedUrl
    , rCacheId
    , rFormattedUrl
    , rHtmlTitle
    , rLabels
    , rTitle

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

    -- ** ResultItemLabels
    , ResultItemLabels
    , resultItemLabels
    , rilName
    , rilDisplayName
    , rilLabelWithOp

    -- ** ResultPagemap
    , ResultPagemap
    , resultPagemap

    -- ** Search
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

    -- ** SearchQueries
    , SearchQueries
    , searchQueries

    -- ** SearchSearchInformation
    , SearchSearchInformation
    , searchSearchInformation
    , ssiSearchTime
    , ssiFormattedSearchTime
    , ssiTotalResults
    , ssiFormattedTotalResults

    -- ** SearchSpelling
    , SearchSpelling
    , searchSpelling
    , ssCorrectedQuery
    , ssHtmlCorrectedQuery

    -- ** SearchUrl
    , SearchUrl
    , searchUrl
    , suType
    , suTemplate
    ) where

import           Network.Google.CustomSearch.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type CustomSearch = CseAPI

type CseAPI = CseList

-- | Returns metadata about the search performed, metadata about the custom
-- search engine used for the search, and the search results.
type CseList =
     "customsearch" :> "v1" :>
       QueryParam "imgDominantColor" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "siteSearchFilter" Text
       :> QueryParam "c2coff" Text
       :> QueryParam "orTerms" Text
       :> QueryParam "userIp" Text
       :> QueryParam "start" Word32
       :> QueryParam "rights" Text
       :> QueryParam "excludeTerms" Text
       :> QueryParam "num" Word32
       :> QueryParam "fileType" Text
       :> QueryParam "searchType" Text
       :> QueryParam "lr" Text
       :> QueryParam "q" Text
       :> QueryParam "googlehost" Text
       :> QueryParam "relatedSite" Text
       :> QueryParam "hl" Text
       :> QueryParam "key" Text
       :> QueryParam "cref" Text
       :> QueryParam "sort" Text
       :> QueryParam "siteSearch" Text
       :> QueryParam "filter" Text
       :> QueryParam "dateRestrict" Text
       :> QueryParam "linkSite" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "lowRange" Text
       :> QueryParam "imgType" Text
       :> QueryParam "gl" Text
       :> QueryParam "cx" Text
       :> QueryParam "imgColorType" Text
       :> QueryParam "imgSize" Text
       :> QueryParam "exactTerms" Text
       :> QueryParam "cr" Text
       :> QueryParam "safe" Text
       :> QueryParam "hq" Text
       :> QueryParam "fields" Text
       :> QueryParam "highRange" Text
       :> QueryParam "alt" Text
