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
data CloudmonitoringTimeseriesListAggregator
    = Max
      -- ^ @max@
    | Mean
      -- ^ @mean@
    | Min
      -- ^ @min@
    | Sum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CloudmonitoringTimeseriesListAggregator

instance FromText CloudmonitoringTimeseriesListAggregator where
    fromText = \case
        "max" -> Just Max
        "mean" -> Just Mean
        "min" -> Just Min
        "sum" -> Just Sum
        _ -> Nothing

instance ToText CloudmonitoringTimeseriesListAggregator where
    toText = \case
        Max -> "max"
        Mean -> "mean"
        Min -> "min"
        Sum -> "sum"

instance FromJSON CloudmonitoringTimeseriesListAggregator where
    parseJSON = parseJSONText "CloudmonitoringTimeseriesListAggregator"

instance ToJSON CloudmonitoringTimeseriesListAggregator where
    toJSON = toJSONText

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data CloudmonitoringTimeseriesDescriptorsListAggregator
    = CTDLAMax
      -- ^ @max@
    | CTDLAMean
      -- ^ @mean@
    | CTDLAMin
      -- ^ @min@
    | CTDLASum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CloudmonitoringTimeseriesDescriptorsListAggregator

instance FromText CloudmonitoringTimeseriesDescriptorsListAggregator where
    fromText = \case
        "max" -> Just CTDLAMax
        "mean" -> Just CTDLAMean
        "min" -> Just CTDLAMin
        "sum" -> Just CTDLASum
        _ -> Nothing

instance ToText CloudmonitoringTimeseriesDescriptorsListAggregator where
    toText = \case
        CTDLAMax -> "max"
        CTDLAMean -> "mean"
        CTDLAMin -> "min"
        CTDLASum -> "sum"

instance FromJSON CloudmonitoringTimeseriesDescriptorsListAggregator where
    parseJSON = parseJSONText "CloudmonitoringTimeseriesDescriptorsListAggregator"

instance ToJSON CloudmonitoringTimeseriesDescriptorsListAggregator where
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
