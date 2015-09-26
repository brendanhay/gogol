{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeedInsights.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeedInsights.Types
    (

    -- * PagespeedApiFormatStringV2
      PagespeedApiFormatStringV2
    , pagespeedApiFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- * PagespeedApiFormatStringV2ItemArgs
    , PagespeedApiFormatStringV2ItemArgs
    , pagespeedApiFormatStringV2ItemArgs
    , pafsviaValue
    , pafsviaRects
    , pafsviaKey
    , pafsviaType
    , pafsviaSecondaryRects

    -- * PagespeedApiFormatStringV2ItemRectsItemArgs
    , PagespeedApiFormatStringV2ItemRectsItemArgs
    , pagespeedApiFormatStringV2ItemRectsItemArgs
    , pafsviriaHeight
    , pafsviriaLeft
    , pafsviriaWidth
    , pafsviriaTop

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

    -- * ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

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

    -- * ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups

    -- * ResultRuleResultsFormattedResults
    , ResultRuleResultsFormattedResults
    , resultRuleResultsFormattedResults

    -- * ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor
    ) where

import           Network.Google.PageSpeedInsights.Types.Product
import           Network.Google.PageSpeedInsights.Types.Sum
import           Network.Google.Prelude
