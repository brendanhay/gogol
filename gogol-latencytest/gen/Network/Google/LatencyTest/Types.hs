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

    -- * AggregatedStats
      AggregatedStats
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

import           Network.Google.LatencyTest.Types.Product
import           Network.Google.LatencyTest.Types.Sum
import           Network.Google.Prelude
