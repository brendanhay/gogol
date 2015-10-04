{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Monitoring.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Monitoring.Types.Sum where

import           Network.Google.Prelude

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data CloudMonitoringTimeseriesListAggregator
    = Max
      -- ^ @max@
    | Mean
      -- ^ @mean@
    | Min
      -- ^ @min@
    | Sum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CloudMonitoringTimeseriesListAggregator

instance FromText CloudMonitoringTimeseriesListAggregator where
    fromText = \case
        "max" -> Just Max
        "mean" -> Just Mean
        "min" -> Just Min
        "sum" -> Just Sum
        _ -> Nothing

instance ToText CloudMonitoringTimeseriesListAggregator where
    toText = \case
        Max -> "max"
        Mean -> "mean"
        Min -> "min"
        Sum -> "sum"

instance FromJSON CloudMonitoringTimeseriesListAggregator where
    parseJSON = parseJSONText "CloudMonitoringTimeseriesListAggregator"

instance ToJSON CloudMonitoringTimeseriesListAggregator where
    toJSON = toJSONText

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data Aggregator
    = AMax
      -- ^ @max@
    | AMean
      -- ^ @mean@
    | AMin
      -- ^ @min@
    | ASum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Aggregator

instance FromText Aggregator where
    fromText = \case
        "max" -> Just AMax
        "mean" -> Just AMean
        "min" -> Just AMin
        "sum" -> Just ASum
        _ -> Nothing

instance ToText Aggregator where
    toText = \case
        AMax -> "max"
        AMean -> "mean"
        AMin -> "min"
        ASum -> "sum"

instance FromJSON Aggregator where
    parseJSON = parseJSONText "Aggregator"

instance ToJSON Aggregator where
    toJSON = toJSONText
