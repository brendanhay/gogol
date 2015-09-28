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

    -- * PagespeedApiFormatStringV2ItemArgs
    , PagespeedApiFormatStringV2ItemArgs
    , pagespeedApiFormatStringV2ItemArgs
    , pafsviaValue
    , pafsviaRects
    , pafsviaKey
    , pafsviaType
    , pafsviaSecondaryRects

    -- * ResultRuleResultsFormattedResults
    , ResultRuleResultsFormattedResults
    , resultRuleResultsFormattedResults

    -- * Alt
    , Alt (..)

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

    -- * ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor

    -- * ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups

    -- * ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

    -- * PagespeedApiFormatStringV2ItemSecondary_rectsItemArgs
    , PagespeedApiFormatStringV2ItemSecondary_rectsItemArgs
    , pagespeedApiFormatStringV2ItemSecondary_rectsItemArgs
    , pafsvisiaHeight
    , pafsvisiaLeft
    , pafsvisiaWidth
    , pafsvisiaTop

    -- * PagespeedApiImageV2
    , PagespeedApiImageV2
    , pagespeedApiImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- * PagespeedApiImageV2Page_rect
    , PagespeedApiImageV2Page_rect
    , pagespeedApiImageV2Page_rect
    , paivpHeight
    , paivpLeft
    , paivpWidth
    , paivpTop

    -- * PagespeedApiFormatStringV2
    , PagespeedApiFormatStringV2
    , pagespeedApiFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- * PagespeedapiRunpagespeed'Strategy
    , PagespeedapiRunpagespeed'Strategy (..)

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

    -- * PagespeedApiFormatStringV2ItemRectsItemArgs
    , PagespeedApiFormatStringV2ItemRectsItemArgs
    , pagespeedApiFormatStringV2ItemRectsItemArgs
    , pafsviriaHeight
    , pafsviriaLeft
    , pafsviriaWidth
    , pafsviriaTop
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
