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

    -- * Strategy
    , Strategy (..)

    -- * RectsItem
    , RectsItem
    , rectsItem
    , riHeight
    , riLeft
    , riWidth
    , riTop

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

    -- * Page_rect
    , Page_rect
    , page_rect
    , pHeight
    , pLeft
    , pWidth
    , pTop

    -- * RuleResults
    , RuleResults
    , ruleResults

    -- * FormattedResults
    , FormattedResults
    , formattedResults
    , frLocale
    , frRuleResults

    -- * Version
    , Version
    , version
    , vMinor
    , vMajor

    -- * RuleGroups
    , RuleGroups
    , ruleGroups

    -- * ArgsItem
    , ArgsItem
    , argsItem
    , aiValue
    , aiRects
    , aiKey
    , aiType
    , aiSecondaryRects

    -- * PageStats
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

    -- * Secondary_rectsItem
    , Secondary_rectsItem
    , secondary_rectsItem
    , siHeight
    , siLeft
    , siWidth
    , siTop

    -- * PagespeedAPIFormatStringV2
    , PagespeedAPIFormatStringV2
    , pagespeedAPIFormatStringV2
    , pafsvArgs
    , pafsvFormat
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
