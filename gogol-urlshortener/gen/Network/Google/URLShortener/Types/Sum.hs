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
data URLshortenerURLListProjection
    = AnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns short URL click counts.
    | Full
      -- ^ @FULL@
      -- Returns short URL click counts.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLshortenerURLListProjection

instance FromText URLshortenerURLListProjection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just AnalyticsClicks
        "FULL" -> Just Full
        _ -> Nothing

instance ToText URLshortenerURLListProjection where
    toText = \case
        AnalyticsClicks -> "ANALYTICS_CLICKS"
        Full -> "FULL"

instance FromJSON URLshortenerURLListProjection where
    parseJSON = parseJSONText "URLshortenerURLListProjection"

instance ToJSON URLshortenerURLListProjection where
    toJSON = toJSONText

-- | Additional information to return.
data URLshortenerURLGetProjection
    = UUGPAnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns only click counts.
    | UUGPAnalyticsTopStrings
      -- ^ @ANALYTICS_TOP_STRINGS@
      -- Returns only top string counts.
    | UUGPFull
      -- ^ @FULL@
      -- Returns the creation timestamp and all available analytics.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable URLshortenerURLGetProjection

instance FromText URLshortenerURLGetProjection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just UUGPAnalyticsClicks
        "ANALYTICS_TOP_STRINGS" -> Just UUGPAnalyticsTopStrings
        "FULL" -> Just UUGPFull
        _ -> Nothing

instance ToText URLshortenerURLGetProjection where
    toText = \case
        UUGPAnalyticsClicks -> "ANALYTICS_CLICKS"
        UUGPAnalyticsTopStrings -> "ANALYTICS_TOP_STRINGS"
        UUGPFull -> "FULL"

instance FromJSON URLshortenerURLGetProjection where
    parseJSON = parseJSONText "URLshortenerURLGetProjection"

instance ToJSON URLshortenerURLGetProjection where
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
