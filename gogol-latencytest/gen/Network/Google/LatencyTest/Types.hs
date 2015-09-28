{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.LatencyTest.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.LatencyTest.Types
    (
    -- * Service URL
      latencyTestURL

    -- * AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- * Alt
    , Alt (..)

    -- * StatsReply
    , StatsReply
    , statsReply
    , srTestValue

    -- * DoubleValue
    , DoubleValue
    , doubleValue
    , dvValue
    , dvLabel

    -- * StringValue
    , StringValue
    , stringValue
    , svValue
    , svLabel

    -- * AggregatedStatsReply
    , AggregatedStatsReply
    , aggregatedStatsReply
    , asrTestValue

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
    ) where

import           Network.Google.LatencyTest.Types.Product
import           Network.Google.LatencyTest.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google Cloud Network Performance Monitoring API.
latencyTestURL :: BaseUrl
latencyTestURL
  = BaseUrl Https
      "https://cloudlatencytest-pa.googleapis.com/v2/statscollection/"
      443
