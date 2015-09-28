{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.URLShortener.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.URLShortener.Types.Sum where

import           Network.Google.Prelude

-- | Additional information to return.
data URLGet'Projection
    = AnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns only click counts.
    | AnalyticsTopStrings
      -- ^ @ANALYTICS_TOP_STRINGS@
      -- Returns only top string counts.
    | Full
      -- ^ @FULL@
      -- Returns the creation timestamp and all available analytics.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLGet'Projection

instance FromText URLGet'Projection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just AnalyticsClicks
        "ANALYTICS_TOP_STRINGS" -> Just AnalyticsTopStrings
        "FULL" -> Just Full
        _ -> Nothing

instance ToText URLGet'Projection where
    toText = \case
        AnalyticsClicks -> "ANALYTICS_CLICKS"
        AnalyticsTopStrings -> "ANALYTICS_TOP_STRINGS"
        Full -> "FULL"

instance FromJSON URLGet'Projection where
    parseJSON = parseJSONText "URLGet'Projection"

instance ToJSON URLGet'Projection where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Additional information to return.
data URLList'Projection
    = ULPAnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns short URL click counts.
    | ULPFull
      -- ^ @FULL@
      -- Returns short URL click counts.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLList'Projection

instance FromText URLList'Projection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just ULPAnalyticsClicks
        "FULL" -> Just ULPFull
        _ -> Nothing

instance ToText URLList'Projection where
    toText = \case
        ULPAnalyticsClicks -> "ANALYTICS_CLICKS"
        ULPFull -> "FULL"

instance FromJSON URLList'Projection where
    parseJSON = parseJSONText "URLList'Projection"

instance ToJSON URLList'Projection where
    toJSON = toJSONText
