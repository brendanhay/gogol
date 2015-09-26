{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Fitness.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fitness.Types.Sum where

import           Network.Google.Prelude

-- | The type of a bucket signifies how the data aggregation is performed in
-- the bucket.
data AggregateBucketType
    = ABTActivitySegment
      -- ^ @activitySegment@
    | ABTActivityType
      -- ^ @activityType@
    | ABTSession
      -- ^ @session@
    | ABTTime
      -- ^ @time@
    | ABTUnknown
      -- ^ @unknown@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AggregateBucketType

-- | A constant describing the type of this data source. Indicates whether
-- this data source produces raw or derived data.
data DataSourceType
    = DSTDerived
      -- ^ @derived@
    | DSTRaw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataSourceType

-- | The different supported formats for each field in a data type.
data DataTypeFieldFormat
    = DTFFFloatList
      -- ^ @floatList@
    | DTFFFloatPoint
      -- ^ @floatPoint@
    | DTFFInteger
      -- ^ @integer@
    | DTFFIntegerList
      -- ^ @integerList@
    | DTFFMap
      -- ^ @map@
    | DTFFString
      -- ^ @string@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataTypeFieldFormat

-- | A constant representing the type of the device.
data DeviceType
    = DTChestStrap
      -- ^ @chestStrap@
    | DTPhone
      -- ^ @phone@
    | DTScale
      -- ^ @scale@
    | DTTablet
      -- ^ @tablet@
    | DTUnknown
      -- ^ @unknown@
    | DTWatch
      -- ^ @watch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeviceType
