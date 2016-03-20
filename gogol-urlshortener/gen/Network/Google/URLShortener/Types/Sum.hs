{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.URLShortener.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.URLShortener.Types.Sum where

import           Network.Google.Prelude

-- | Additional information to return.
data URLListProjection
    = AnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns short URL click counts.
    | Full
      -- ^ @FULL@
      -- Returns short URL click counts.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLListProjection

instance FromText URLListProjection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just AnalyticsClicks
        "FULL" -> Just Full
        _ -> Nothing

instance ToText URLListProjection where
    toText = \case
        AnalyticsClicks -> "ANALYTICS_CLICKS"
        Full -> "FULL"

instance FromJSON URLListProjection where
    parseJSON = parseJSONText "URLListProjection"

instance ToJSON URLListProjection where
    toJSON = toJSONText

-- | Additional information to return.
data URLGetProjection
    = UGPAnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns only click counts.
    | UGPAnalyticsTopStrings
      -- ^ @ANALYTICS_TOP_STRINGS@
      -- Returns only top string counts.
    | UGPFull
      -- ^ @FULL@
      -- Returns the creation timestamp and all available analytics.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLGetProjection

instance FromText URLGetProjection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just UGPAnalyticsClicks
        "ANALYTICS_TOP_STRINGS" -> Just UGPAnalyticsTopStrings
        "FULL" -> Just UGPFull
        _ -> Nothing

instance ToText URLGetProjection where
    toText = \case
        UGPAnalyticsClicks -> "ANALYTICS_CLICKS"
        UGPAnalyticsTopStrings -> "ANALYTICS_TOP_STRINGS"
        UGPFull -> "FULL"

instance FromJSON URLGetProjection where
    parseJSON = parseJSONText "URLGetProjection"

instance ToJSON URLGetProjection where
    toJSON = toJSONText
