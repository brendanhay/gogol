{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.LatencyTest
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | A Test API to report latency data.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference>
module Network.Google.LatencyTest
    (
    -- * REST Resources

    -- ** Google Cloud Network Performance Monitoring API
      LatencyTest
    , latencyTest
    , latencyTestURL

    -- ** cloudlatencytest.statscollection.updateaggregatedstats
    , module Network.Google.API.Cloudlatencytest.Statscollection.Updateaggregatedstats

    -- ** cloudlatencytest.statscollection.updatestats
    , module Network.Google.API.Cloudlatencytest.Statscollection.Updatestats

    -- * Types

    -- ** AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- ** Alt
    , Alt (..)

    -- ** StatsReply
    , StatsReply
    , statsReply
    , srTestValue

    -- ** DoubleValue
    , DoubleValue
    , doubleValue
    , dvValue
    , dvLabel

    -- ** StringValue
    , StringValue
    , stringValue
    , svValue
    , svLabel

    -- ** AggregatedStatsReply
    , AggregatedStatsReply
    , aggregatedStatsReply
    , asrTestValue

    -- ** IntValue
    , IntValue
    , intValue
    , ivValue
    , ivLabel

    -- ** Stats
    , Stats
    , stats
    , sTime
    , sDoubleValues
    , sStringValues
    , sIntValues
    ) where

import           Network.Google.API.Cloudlatencytest.Statscollection.Updateaggregatedstats
import           Network.Google.API.Cloudlatencytest.Statscollection.Updatestats
import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type LatencyTest =
     StatscollectionUpdateaggregatedstatsAPI :<|>
       StatscollectionUpdatestatsAPI

latencyTest :: Proxy LatencyTest
latencyTest = Proxy
