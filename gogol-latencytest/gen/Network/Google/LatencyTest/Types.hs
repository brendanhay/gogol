{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Request
      latencyTestRequest

    -- * IntValue
    , IntValue
    , intValue
    , ivValue
    , ivLabel

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

    -- * Stats
    , Stats
    , stats
    , sTime
    , sDoubleValues
    , sStringValues
    , sIntValues

    -- * AggregatedStats
    , AggregatedStats
    , aggregatedStats
    , asStats

    -- * StatsReply
    , StatsReply
    , statsReply
    , srTestValue
    ) where

import           Network.Google.LatencyTest.Types.Product
import           Network.Google.LatencyTest.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Google Cloud Network Performance Monitoring API. This contains the host and root path used as a starting point for constructing service requests.
latencyTestRequest :: RequestBuilder
latencyTestRequest
  = defaultRequest
      "https://cloudlatencytest-pa.googleapis.com/"
      "v2/statscollection/"
