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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TimeseriesListAggregator

instance FromHttpApiData TimeseriesListAggregator where
    parseQueryParam = \case
        "max" -> Right Max
        "mean" -> Right Mean
        "min" -> Right Min
        "sum" -> Right Sum
        x -> Left ("Unable to parse TimeseriesListAggregator from: " <> x)

instance ToHttpApiData TimeseriesListAggregator where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TimeseriesDescriptorsListAggregator

instance FromHttpApiData TimeseriesDescriptorsListAggregator where
    parseQueryParam = \case
        "max" -> Right TDLAMax
        "mean" -> Right TDLAMean
        "min" -> Right TDLAMin
        "sum" -> Right TDLASum
        x -> Left ("Unable to parse TimeseriesDescriptorsListAggregator from: " <> x)

instance ToHttpApiData TimeseriesDescriptorsListAggregator where
    toQueryParam = \case
        TDLAMax -> "max"
        TDLAMean -> "mean"
        TDLAMin -> "min"
        TDLASum -> "sum"

instance FromJSON TimeseriesDescriptorsListAggregator where
    parseJSON = parseJSONText "TimeseriesDescriptorsListAggregator"

instance ToJSON TimeseriesDescriptorsListAggregator where
    toJSON = toJSONText
