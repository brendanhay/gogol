{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- A Test API to report latency data.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference>
module Network.Google.LatencyTest
    (
    -- * Service Configuration
      latencyTestService

    -- * API Declaration
    , LatencyTestAPI

    -- * Resources

    -- ** CloudlatencytestStatscollectionUpdateaggregatedstats
    , module Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats

    -- ** CloudlatencytestStatscollectionUpdatestats
    , module Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats

    -- * Types

    -- ** IntValue
    , IntValue
    , intValue
    , ivValue
    , ivLabel

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

    -- ** Stats
    , Stats
    , stats
    , sTime
    , sDoubleValues
    , sStringValues
    , sIntValues

    -- ** AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- ** StatsReply
    , StatsReply
    , statsReply
    , srTestValue
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats
import           Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Network Performance Monitoring API service.
type LatencyTestAPI =
     StatscollectionUpdatestatsResource :<|>
       StatscollectionUpdateaggregatedstatsResource
