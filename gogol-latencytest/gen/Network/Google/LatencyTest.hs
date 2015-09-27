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
    -- * Resources
      LatencyTest
    , StatscollectionAPI
    , StatscollectionUpdatestats
    , StatscollectionUpdateaggregatedstats

    -- * Types

    -- ** AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- ** AggregatedStatsReply
    , AggregatedStatsReply
    , aggregatedStatsReply
    , asrTestValue

    -- ** DoubleValue
    , DoubleValue
    , doubleValue
    , dvValue
    , dvLabel

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

    -- ** StatsReply
    , StatsReply
    , statsReply
    , srTestValue

    -- ** StringValue
    , StringValue
    , stringValue
    , svValue
    , svLabel
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type LatencyTest = StatscollectionAPI

type StatscollectionAPI =
     StatscollectionUpdatestats :<|>
       StatscollectionUpdateaggregatedstats

-- | RPC to update the new TCP stats.
type StatscollectionUpdatestats =
     "v2" :>
       "statscollection" :>
         "updatestats" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Post '[JSON] StatsReply

-- | RPC to update the new TCP stats.
type StatscollectionUpdateaggregatedstats =
     "v2" :>
       "statscollection" :>
         "updateaggregatedstats" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :>
                         Post '[JSON] AggregatedStatsReply
