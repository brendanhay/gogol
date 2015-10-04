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
data URLshortenerURLGetProjection
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

instance Hashable URLshortenerURLGetProjection

instance FromText URLshortenerURLGetProjection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just AnalyticsClicks
        "ANALYTICS_TOP_STRINGS" -> Just AnalyticsTopStrings
        "FULL" -> Just Full
        _ -> Nothing

instance ToText URLshortenerURLGetProjection where
    toText = \case
        AnalyticsClicks -> "ANALYTICS_CLICKS"
        AnalyticsTopStrings -> "ANALYTICS_TOP_STRINGS"
        Full -> "FULL"

instance FromJSON URLshortenerURLGetProjection where
    parseJSON = parseJSONText "URLshortenerURLGetProjection"

instance ToJSON URLshortenerURLGetProjection where
    toJSON = toJSONText

-- | Additional information to return.
data Projection
    = PAnalyticsClicks
      -- ^ @ANALYTICS_CLICKS@
      -- Returns short URL click counts.
    | PFull
      -- ^ @FULL@
      -- Returns short URL click counts.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Projection

instance FromText Projection where
    fromText = \case
        "ANALYTICS_CLICKS" -> Just PAnalyticsClicks
        "FULL" -> Just PFull
        _ -> Nothing

instance ToText Projection where
    toText = \case
        PAnalyticsClicks -> "ANALYTICS_CLICKS"
        PFull -> "FULL"

instance FromJSON Projection where
    parseJSON = parseJSONText "Projection"

instance ToJSON Projection where
    toJSON = toJSONText
