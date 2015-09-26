{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PageSpeedInsights
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you analyze the performance of a web page and get tailored
-- suggestions to make that page faster.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v2/getting-started PageSpeed Insights API Reference>
module Network.Google.PageSpeedInsights
    (
    -- * Resources
      PageSpeedInsights
    , PagespeedapiAPI
    , PagespeedapiRunpagespeed

    -- * Types

    -- ** PagespeedApiFormatStringV2
    , PagespeedApiFormatStringV2
    , pagespeedApiFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- ** PagespeedApiFormatStringV2ItemArgs
    , PagespeedApiFormatStringV2ItemArgs
    , pagespeedApiFormatStringV2ItemArgs
    , pafsviaValue
    , pafsviaRects
    , pafsviaKey
    , pafsviaType
    , pafsviaSecondaryRects

    -- ** PagespeedApiFormatStringV2ItemRectsItemArgs
    , PagespeedApiFormatStringV2ItemRectsItemArgs
    , pagespeedApiFormatStringV2ItemRectsItemArgs
    , pafsviriaHeight
    , pafsviriaLeft
    , pafsviriaWidth
    , pafsviriaTop

    -- ** PagespeedApiFormatStringV2ItemSecondary_rectsItemArgs
    , PagespeedApiFormatStringV2ItemSecondary_rectsItemArgs
    , pagespeedApiFormatStringV2ItemSecondary_rectsItemArgs
    , pafsvisiaHeight
    , pafsvisiaLeft
    , pafsvisiaWidth
    , pafsvisiaTop

    -- ** PagespeedApiImageV2
    , PagespeedApiImageV2
    , pagespeedApiImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- ** PagespeedApiImageV2Page_rect
    , PagespeedApiImageV2Page_rect
    , pagespeedApiImageV2Page_rect
    , paivpHeight
    , paivpLeft
    , paivpWidth
    , paivpTop

    -- ** Result
    , Result
    , result
    , rScreenshot
    , rKind
    , rResponseCode
    , rInvalidRules
    , rFormattedResults
    , rVersion
    , rRuleGroups
    , rPageStats
    , rId
    , rTitle

    -- ** ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

    -- ** ResultPageStats
    , ResultPageStats
    , resultPageStats
    , rpsHtmlResponseBytes
    , rpsTotalRequestBytes
    , rpsNumberResources
    , rpsNumberStaticResources
    , rpsNumberHosts
    , rpsNumberJsResources
    , rpsNumberCssResources
    , rpsTextResponseBytes
    , rpsFlashResponseBytes
    , rpsImageResponseBytes
    , rpsOtherResponseBytes
    , rpsJavascriptResponseBytes
    , rpsCssResponseBytes

    -- ** ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups

    -- ** ResultRuleResultsFormattedResults
    , ResultRuleResultsFormattedResults
    , resultRuleResultsFormattedResults

    -- ** ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor
    ) where

import           Network.Google.PageSpeedInsights.Types

{- $resources
TODO
-}

type PageSpeedInsights = PagespeedapiAPI

type PagespeedapiAPI = PagespeedapiRunpagespeed

-- | Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
type PagespeedapiRunpagespeed =
     "pagespeedonline" :> "v2" :> "runPagespeed" :>
       QueryParam "screenshot" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "locale" Text
       :> QueryParam "url" Text
       :> QueryParam "filter_third_party_resources" Bool
       :> QueryParam "strategy" Text
       :> QueryParam "rule" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
