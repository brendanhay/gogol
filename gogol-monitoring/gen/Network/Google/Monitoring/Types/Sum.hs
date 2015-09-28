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

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data TimeseriesList'Aggregator
    = Max
      -- ^ @max@
    | Mean
      -- ^ @mean@
    | Min
      -- ^ @min@
    | Sum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TimeseriesList'Aggregator

instance FromText TimeseriesList'Aggregator where
    fromText = \case
        "max" -> Just Max
        "mean" -> Just Mean
        "min" -> Just Min
        "sum" -> Just Sum
        _ -> Nothing

instance ToText TimeseriesList'Aggregator where
    toText = \case
        Max -> "max"
        Mean -> "mean"
        Min -> "min"
        Sum -> "sum"

instance FromJSON TimeseriesList'Aggregator where
    parseJSON = parseJSONText "TimeseriesList'Aggregator"

instance ToJSON TimeseriesList'Aggregator where
    toJSON = toJSONText

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data TimeseriesDescriptorsList'Aggregator
    = TDLAMax
      -- ^ @max@
    | TDLAMean
      -- ^ @mean@
    | TDLAMin
      -- ^ @min@
    | TDLASum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TimeseriesDescriptorsList'Aggregator

instance FromText TimeseriesDescriptorsList'Aggregator where
    fromText = \case
        "max" -> Just TDLAMax
        "mean" -> Just TDLAMean
        "min" -> Just TDLAMin
        "sum" -> Just TDLASum
        _ -> Nothing

instance ToText TimeseriesDescriptorsList'Aggregator where
    toText = \case
        TDLAMax -> "max"
        TDLAMean -> "mean"
        TDLAMin -> "min"
        TDLASum -> "sum"

instance FromJSON TimeseriesDescriptorsList'Aggregator where
    parseJSON = parseJSONText "TimeseriesDescriptorsList'Aggregator"

instance ToJSON TimeseriesDescriptorsList'Aggregator where
    toJSON = toJSONText
