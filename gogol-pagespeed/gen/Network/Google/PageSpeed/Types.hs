{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Request
      pageSpeedRequest

    -- * PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    , PagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    , pagespeedAPIFormatStringV2ArgsItemSecondary_rectsItem
    , pafsvaisiHeight
    , pafsvaisiLeft
    , pafsvaisiWidth
    , pafsvaisiTop

    -- * PagespeedAPIImageV2
    , PagespeedAPIImageV2
    , pagespeedAPIImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- * PagespeedAPIFormatStringV2ArgsItemRectsItem
    , PagespeedAPIFormatStringV2ArgsItemRectsItem
    , pagespeedAPIFormatStringV2ArgsItemRectsItem
    , pafsvairiHeight
    , pafsvairiLeft
    , pafsvairiWidth
    , pafsvairiTop

    -- * PagespeedAPIRunPagespeedStrategy
    , PagespeedAPIRunPagespeedStrategy (..)

    -- * ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor

    -- * ResultPageStats
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

    -- * PagespeedAPIImageV2Page_rect
    , PagespeedAPIImageV2Page_rect
    , pagespeedAPIImageV2Page_rect
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

    -- * PagespeedAPIFormatStringV2ArgsItem
    , PagespeedAPIFormatStringV2ArgsItem
    , pagespeedAPIFormatStringV2ArgsItem
    , pafsvaiValue
    , pafsvaiRects
    , pafsvaiKey
    , pafsvaiType
    , pafsvaiSecondaryRects

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
    ) where

import           Network.Google.PageSpeed.Types.Product
import           Network.Google.PageSpeed.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the PageSpeed Insights API. This contains the host and root path used as a starting point for constructing service requests.
pageSpeedRequest :: RequestBuilder
pageSpeedRequest
  = defaultRequest "https://www.googleapis.com/"
      "pagespeedonline/v2/"
