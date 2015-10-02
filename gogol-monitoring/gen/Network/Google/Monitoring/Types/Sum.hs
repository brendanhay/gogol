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
data CloudMonitoringTimeseriesDescriptorsListAggregator
    = CMTDLAMax
      -- ^ @max@
    | CMTDLAMean
      -- ^ @mean@
    | CMTDLAMin
      -- ^ @min@
    | CMTDLASum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CloudMonitoringTimeseriesDescriptorsListAggregator

instance FromText CloudMonitoringTimeseriesDescriptorsListAggregator where
    fromText = \case
        "max" -> Just CMTDLAMax
        "mean" -> Just CMTDLAMean
        "min" -> Just CMTDLAMin
        "sum" -> Just CMTDLASum
        _ -> Nothing

instance ToText CloudMonitoringTimeseriesDescriptorsListAggregator where
    toText = \case
        CMTDLAMax -> "max"
        CMTDLAMean -> "mean"
        CMTDLAMin -> "min"
        CMTDLASum -> "sum"

instance FromJSON CloudMonitoringTimeseriesDescriptorsListAggregator where
    parseJSON = parseJSONText "CloudMonitoringTimeseriesDescriptorsListAggregator"

instance ToJSON CloudMonitoringTimeseriesDescriptorsListAggregator where
    toJSON = toJSONText
