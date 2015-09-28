{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PageSpeed
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
module Network.Google.PageSpeed
    (
    -- * REST Resources

    -- ** PageSpeed Insights API
      PageSpeed
    , pageSpeed
    , pageSpeedURL

    -- ** pagespeedonline.pagespeedapi.runpagespeed
    , module Network.Google.API.Pagespeedonline.Pagespeedapi.Runpagespeed

    -- * Types

    -- ** PagespeedApiFormatStringV2ItemArgs
    , PagespeedApiFormatStringV2ItemArgs
    , pagespeedApiFormatStringV2ItemArgs
    , pafsviaValue
    , pafsviaRects
    , pafsviaKey
    , pafsviaType
    , pafsviaSecondaryRects

    -- ** ResultRuleResultsFormattedResults
    , ResultRuleResultsFormattedResults
    , resultRuleResultsFormattedResults

    -- ** Alt
    , Alt (..)

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

    -- ** ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor

    -- ** ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups

    -- ** ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

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

    -- ** PagespeedApiFormatStringV2
    , PagespeedApiFormatStringV2
    , pagespeedApiFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- ** PagespeedapiRunpagespeed'Strategy
    , PagespeedapiRunpagespeed'Strategy (..)

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

    -- ** PagespeedApiFormatStringV2ItemRectsItemArgs
    , PagespeedApiFormatStringV2ItemRectsItemArgs
    , pagespeedApiFormatStringV2ItemRectsItemArgs
    , pafsviriaHeight
    , pafsviriaLeft
    , pafsviriaWidth
    , pafsviriaTop
    ) where

import           Network.Google.API.Pagespeedonline.Pagespeedapi.Runpagespeed
import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PageSpeed = PagespeedapiRunpagespeedAPI

pageSpeed :: Proxy PageSpeed
pageSpeed = Proxy
