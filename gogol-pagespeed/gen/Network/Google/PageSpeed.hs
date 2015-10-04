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
-- | Lets you analyze the performance of a web page and get tailored
-- suggestions to make that page faster.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v2/getting-started PageSpeed Insights API Reference>
module Network.Google.PageSpeed
    (
    -- * API
      PageSpeedAPI
    , pageSpeedAPI
    , pageSpeedURL

    -- * Service Methods

    -- * REST Resources

    -- ** PagespeedonlinePagespeedapiRunpagespeed
    , module Network.Google.Resource.Pagespeedonline.Pagespeedapi.Runpagespeed

    -- * Types

    -- ** PagespeedAPIImageV2
    , PagespeedAPIImageV2
    , pagespeedAPIImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- ** Strategy
    , Strategy (..)

    -- ** RectsItem
    , RectsItem
    , rectsItem
    , riHeight
    , riLeft
    , riWidth
    , riTop

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

    -- ** Page_rect
    , Page_rect
    , page_rect
    , pHeight
    , pLeft
    , pWidth
    , pTop

    -- ** RuleResults
    , RuleResults
    , ruleResults

    -- ** FormattedResults
    , FormattedResults
    , formattedResults
    , frLocale
    , frRuleResults

    -- ** Version
    , Version
    , version
    , vMinor
    , vMajor

    -- ** RuleGroups
    , RuleGroups
    , ruleGroups

    -- ** ArgsItem
    , ArgsItem
    , argsItem
    , aiValue
    , aiRects
    , aiKey
    , aiType
    , aiSecondaryRects

    -- ** PageStats
    , PageStats
    , pageStats
    , psHTMLResponseBytes
    , psTotalRequestBytes
    , psNumberResources
    , psNumberStaticResources
    , psNumberHosts
    , psNumberJsResources
    , psNumberCssResources
    , psTextResponseBytes
    , psFlashResponseBytes
    , psImageResponseBytes
    , psOtherResponseBytes
    , psJavascriptResponseBytes
    , psCssResponseBytes

    -- ** Secondary_rectsItem
    , Secondary_rectsItem
    , secondary_rectsItem
    , siHeight
    , siLeft
    , siWidth
    , siTop

    -- ** PagespeedAPIFormatStringV2
    , PagespeedAPIFormatStringV2
    , pagespeedAPIFormatStringV2
    , pafsvArgs
    , pafsvFormat
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Pagespeedonline.Pagespeedapi.Runpagespeed

{- $resources
TODO
-}

type PageSpeedAPI = PagespeedapiRunpagespeedResource

pageSpeedAPI :: Proxy PageSpeedAPI
pageSpeedAPI = Proxy
