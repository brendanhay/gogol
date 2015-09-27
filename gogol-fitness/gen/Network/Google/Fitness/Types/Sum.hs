{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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

instance FromText AggregateBucketType where
    fromText = \case
        "activitySegment" -> Just ABTActivitySegment
        "activityType" -> Just ABTActivityType
        "session" -> Just ABTSession
        "time" -> Just ABTTime
        "unknown" -> Just ABTUnknown
        _ -> Nothing

instance ToText AggregateBucketType where
    toText = \case
        ABTActivitySegment -> "activitySegment"
        ABTActivityType -> "activityType"
        ABTSession -> "session"
        ABTTime -> "time"
        ABTUnknown -> "unknown"

instance FromJSON AggregateBucketType where
    parseJSON = parseJSONText "AggregateBucketType"

instance ToJSON AggregateBucketType where
    toJSON = toJSONText

-- | A constant describing the type of this data source. Indicates whether
-- this data source produces raw or derived data.
data DataSourceType
    = DSTDerived
      -- ^ @derived@
    | DSTRaw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataSourceType

instance FromText DataSourceType where
    fromText = \case
        "derived" -> Just DSTDerived
        "raw" -> Just DSTRaw
        _ -> Nothing

instance ToText DataSourceType where
    toText = \case
        DSTDerived -> "derived"
        DSTRaw -> "raw"

instance FromJSON DataSourceType where
    parseJSON = parseJSONText "DataSourceType"

instance ToJSON DataSourceType where
    toJSON = toJSONText

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

instance FromText DataTypeFieldFormat where
    fromText = \case
        "floatList" -> Just DTFFFloatList
        "floatPoint" -> Just DTFFFloatPoint
        "integer" -> Just DTFFInteger
        "integerList" -> Just DTFFIntegerList
        "map" -> Just DTFFMap
        "string" -> Just DTFFString
        _ -> Nothing

instance ToText DataTypeFieldFormat where
    toText = \case
        DTFFFloatList -> "floatList"
        DTFFFloatPoint -> "floatPoint"
        DTFFInteger -> "integer"
        DTFFIntegerList -> "integerList"
        DTFFMap -> "map"
        DTFFString -> "string"

instance FromJSON DataTypeFieldFormat where
    parseJSON = parseJSONText "DataTypeFieldFormat"

instance ToJSON DataTypeFieldFormat where
    toJSON = toJSONText

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

instance FromText DeviceType where
    fromText = \case
        "chestStrap" -> Just DTChestStrap
        "phone" -> Just DTPhone
        "scale" -> Just DTScale
        "tablet" -> Just DTTablet
        "unknown" -> Just DTUnknown
        "watch" -> Just DTWatch
        _ -> Nothing

instance ToText DeviceType where
    toText = \case
        DTChestStrap -> "chestStrap"
        DTPhone -> "phone"
        DTScale -> "scale"
        DTTablet -> "tablet"
        DTUnknown -> "unknown"
        DTWatch -> "watch"

instance FromJSON DeviceType where
    parseJSON = parseJSONText "DeviceType"

instance ToJSON DeviceType where
    toJSON = toJSONText
