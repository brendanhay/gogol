{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
    -- * Service Configuration
      pageSpeedService

    -- * API Declaration
    , PageSpeedAPI

    -- * Resources

    -- ** PagespeedOnlinePagespeedAPIRunPagespeed
    , module Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed

    -- * Types

    -- ** ResultFormattedResultsRuleResultsAdditionalURLBlocksItem
    , ResultFormattedResultsRuleResultsAdditionalURLBlocksItem
    , resultFormattedResultsRuleResultsAdditionalURLBlocksItem
    , rfrrraubiURLs
    , rfrrraubiHeader

    -- ** PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    , PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    , pagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    , pafsvaisiHeight
    , pafsvaisiLeft
    , pafsvaisiWidth
    , pafsvaisiTop

    -- ** PagespeedAPIImageV2
    , PagespeedAPIImageV2
    , pagespeedAPIImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- ** PagespeedAPIFormatStringV2ArgsItemRectsItem
    , PagespeedAPIFormatStringV2ArgsItemRectsItem
    , pagespeedAPIFormatStringV2ArgsItemRectsItem
    , pafsvairiHeight
    , pafsvairiLeft
    , pafsvairiWidth
    , pafsvairiTop

    -- ** PagespeedAPIRunPagespeedStrategy
    , PagespeedAPIRunPagespeedStrategy (..)

    -- ** ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor

    -- ** ResultPageStats
    , ResultPageStats
    , resultPageStats
    , rpsHTMLResponseBytes
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

    -- ** PagespeedAPIImageV2Page_rect
    , PagespeedAPIImageV2Page_rect
    , pagespeedAPIImageV2Page_rect
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

    -- ** PagespeedAPIFormatStringV2ArgsItem
    , PagespeedAPIFormatStringV2ArgsItem
    , pagespeedAPIFormatStringV2ArgsItem
    , pafsvaiValue
    , pafsvaiRects
    , pafsvaiKey
    , pafsvaiType
    , pafsvaiSecondaryRects

    -- ** ResultRuleGroupsAdditional
    , ResultRuleGroupsAdditional
    , resultRuleGroupsAdditional
    , rrgaScore

    -- ** ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

    -- ** ResultFormattedResultsRuleResultsAdditional
    , ResultFormattedResultsRuleResultsAdditional
    , resultFormattedResultsRuleResultsAdditional
    , rfrrraSummary
    , rfrrraRuleImpact
    , rfrrraGroups
    , rfrrraLocalizedRuleName
    , rfrrraURLBlocks

    -- ** ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups
    , rrgAddtional

    -- ** PagespeedAPIFormatStringV2
    , PagespeedAPIFormatStringV2
    , pagespeedAPIFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- ** ResultFormattedResultsRuleResults
    , ResultFormattedResultsRuleResults
    , resultFormattedResultsRuleResults
    , rfrrrAddtional

    -- ** ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
    , ResultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
    , resultFormattedResultsRuleResultsAdditionalURLBlocksItemURLsItem
    , rfrrraubiuiResult
    , rfrrraubiuiDetails
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude
import           Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the PageSpeed Insights API service.
type PageSpeedAPI = PagespeedAPIRunPagespeedResource
