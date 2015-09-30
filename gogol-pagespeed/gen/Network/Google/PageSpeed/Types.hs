{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types
    (
    -- * Service URL
      pageSpeedURL

    -- * PagespeedAPIImageV2
    , PagespeedAPIImageV2
    , pagespeedAPIImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- * ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor

    -- * ResultPageStats
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

    -- * PagespeedAPIImageV2Page_rect
    , PagespeedAPIImageV2Page_rect
    , pagespeedAPIImageV2Page_rect
    , paivpHeight
    , paivpLeft
    , paivpWidth
    , paivpTop

    -- * PagespeedonlinePagespeedapiRunpagespeedStrategy
    , PagespeedonlinePagespeedapiRunpagespeedStrategy (..)

    -- * PagespeedAPIFormatStringV2Args
    , PagespeedAPIFormatStringV2Args
    , pagespeedAPIFormatStringV2Args
    , pafsvaValue
    , pafsvaRects
    , pafsvaKey
    , pafsvaType
    , pafsvaSecondaryRects

    -- * Result
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

    -- * PagespeedAPIFormatStringV2ArgsSecondary_rects
    , PagespeedAPIFormatStringV2ArgsSecondary_rects
    , pagespeedAPIFormatStringV2ArgsSecondary_rects
    , pafsvasHeight
    , pafsvasLeft
    , pafsvasWidth
    , pafsvasTop

    -- * PagespeedAPIFormatStringV2ArgsRects
    , PagespeedAPIFormatStringV2ArgsRects
    , pagespeedAPIFormatStringV2ArgsRects
    , pafsvarHeight
    , pafsvarLeft
    , pafsvarWidth
    , pafsvarTop

    -- * ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

    -- * ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups

    -- * PagespeedAPIFormatStringV2
    , PagespeedAPIFormatStringV2
    , pagespeedAPIFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- * ResultFormattedResultsRuleResults
    , ResultFormattedResultsRuleResults
    , resultFormattedResultsRuleResults

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.PageSpeed.Types.Product
import           Network.Google.PageSpeed.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the PageSpeed Insights API.
pageSpeedURL :: BaseUrl
pageSpeedURL
  = BaseUrl Https
      "https://www.googleapis.com/pagespeedonline/v2/"
      443
