{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudNetworkPerformanceMonitoring.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudNetworkPerformanceMonitoring.Types
    (
    -- * API Definition
      cloudlatencytest


    -- * AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- * AggregatedStatsReply
    , AggregatedStatsReply
    , aggregatedStatsReply
    , asrTestValue

    -- * DoubleValue
    , DoubleValue
    , doubleValue
    , dvValue
    , dvLabel

    -- * IntValue
    , IntValue
    , intValue
    , ivValue
    , ivLabel

    -- * Stats
    , Stats
    , stats
    , sTime
    , sDoubleValues
    , sStringValues
    , sIntValues

    -- * StatsReply
    , StatsReply
    , statsReply
    , srTestValue

    -- * StringValue
    , StringValue
    , stringValue
    , svValue
    , svLabel
    ) where

import           Network.Google.CloudNetworkPerformanceMonitoring.Types.Product
import           Network.Google.CloudNetworkPerformanceMonitoring.Types.Sum
import           Network.Google.Prelude

cloudlatencytest :: a
cloudlatencytest = error "cloudlatencytest"
