{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The analysis strategy (desktop or mobile) to use, and desktop is the
-- default
data PagespeedAPIRunPagespeedStrategy
    = StrategyUnspecified
      -- ^ @STRATEGY_UNSPECIFIED@
      -- UNDEFINED.
    | Desktop
      -- ^ @DESKTOP@
      -- Fetch and analyze the URL for desktop browsers.
    | Mobile
      -- ^ @MOBILE@
      -- Fetch and analyze the URL for mobile devices.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagespeedAPIRunPagespeedStrategy

instance FromHttpApiData PagespeedAPIRunPagespeedStrategy where
    parseQueryParam = \case
        "STRATEGY_UNSPECIFIED" -> Right StrategyUnspecified
        "DESKTOP" -> Right Desktop
        "MOBILE" -> Right Mobile
        x -> Left ("Unable to parse PagespeedAPIRunPagespeedStrategy from: " <> x)

instance ToHttpApiData PagespeedAPIRunPagespeedStrategy where
    toQueryParam = \case
        StrategyUnspecified -> "STRATEGY_UNSPECIFIED"
        Desktop -> "DESKTOP"
        Mobile -> "MOBILE"

instance FromJSON PagespeedAPIRunPagespeedStrategy where
    parseJSON = parseJSONText "PagespeedAPIRunPagespeedStrategy"

instance ToJSON PagespeedAPIRunPagespeedStrategy where
    toJSON = toJSONText

-- | A Lighthouse category to run; if none are given, only Performance
-- category will be run
data PagespeedAPIRunPagespeedCategory
    = CategoryUnspecified
      -- ^ @CATEGORY_UNSPECIFIED@
      -- Default UNDEFINED category.
    | Accessibility
      -- ^ @ACCESSIBILITY@
      -- Accessibility (a11y), category pertaining to a website\'s capacity to be
      -- accessible to all users.
    | BestPractices
      -- ^ @BEST_PRACTICES@
      -- Best Practices, category pertaining to a website\'s conformance to web
      -- best practice.
    | Performance
      -- ^ @PERFORMANCE@
      -- Performance, category pertaining to a website\'s performance.
    | Pwa
      -- ^ @PWA@
      -- Progressive Web App (PWA), category pertaining to a website\'s ability
      -- to be run as a PWA.
    | Seo
      -- ^ @SEO@
      -- Search Engine Optimization (SEO), category pertaining to a website\'s
      -- ability to be indexed by search engines.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagespeedAPIRunPagespeedCategory

instance FromHttpApiData PagespeedAPIRunPagespeedCategory where
    parseQueryParam = \case
        "CATEGORY_UNSPECIFIED" -> Right CategoryUnspecified
        "ACCESSIBILITY" -> Right Accessibility
        "BEST_PRACTICES" -> Right BestPractices
        "PERFORMANCE" -> Right Performance
        "PWA" -> Right Pwa
        "SEO" -> Right Seo
        x -> Left ("Unable to parse PagespeedAPIRunPagespeedCategory from: " <> x)

instance ToHttpApiData PagespeedAPIRunPagespeedCategory where
    toQueryParam = \case
        CategoryUnspecified -> "CATEGORY_UNSPECIFIED"
        Accessibility -> "ACCESSIBILITY"
        BestPractices -> "BEST_PRACTICES"
        Performance -> "PERFORMANCE"
        Pwa -> "PWA"
        Seo -> "SEO"

instance FromJSON PagespeedAPIRunPagespeedCategory where
    parseJSON = parseJSONText "PagespeedAPIRunPagespeedCategory"

instance ToJSON PagespeedAPIRunPagespeedCategory where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
