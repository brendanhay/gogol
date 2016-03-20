{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudMonitoring.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudMonitoring.Types.Sum where

import           Network.Google.Prelude

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data TimeseriesListAggregator
    = Max
      -- ^ @max@
    | Mean
      -- ^ @mean@
    | Min
      -- ^ @min@
    | Sum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TimeseriesListAggregator

instance FromText TimeseriesListAggregator where
    fromText = \case
        "max" -> Just Max
        "mean" -> Just Mean
        "min" -> Just Min
        "sum" -> Just Sum
        _ -> Nothing

instance ToText TimeseriesListAggregator where
    toText = \case
        Max -> "max"
        Mean -> "mean"
        Min -> "min"
        Sum -> "sum"

instance FromJSON TimeseriesListAggregator where
    parseJSON = parseJSONText "TimeseriesListAggregator"

instance ToJSON TimeseriesListAggregator where
    toJSON = toJSONText

-- | The aggregation function that will reduce the data points in each window
-- to a single point. This parameter is only valid for non-cumulative
-- metrics with a value type of INT64 or DOUBLE.
data TimeseriesDescriptorsListAggregator
    = TDLAMax
      -- ^ @max@
    | TDLAMean
      -- ^ @mean@
    | TDLAMin
      -- ^ @min@
    | TDLASum
      -- ^ @sum@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TimeseriesDescriptorsListAggregator

instance FromText TimeseriesDescriptorsListAggregator where
    fromText = \case
        "max" -> Just TDLAMax
        "mean" -> Just TDLAMean
        "min" -> Just TDLAMin
        "sum" -> Just TDLASum
        _ -> Nothing

instance ToText TimeseriesDescriptorsListAggregator where
    toText = \case
        TDLAMax -> "max"
        TDLAMean -> "mean"
        TDLAMin -> "min"
        TDLASum -> "sum"

instance FromJSON TimeseriesDescriptorsListAggregator where
    parseJSON = parseJSONText "TimeseriesDescriptorsListAggregator"

instance ToJSON TimeseriesDescriptorsListAggregator where
    toJSON = toJSONText
