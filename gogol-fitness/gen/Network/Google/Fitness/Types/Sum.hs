{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    = Derived
      -- ^ @derived@
    | Raw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataSourceType

instance FromText DataSourceType where
    fromText = \case
        "derived" -> Just Derived
        "raw" -> Just Raw
        _ -> Nothing

instance ToText DataSourceType where
    toText = \case
        Derived -> "derived"
        Raw -> "raw"

instance FromJSON DataSourceType where
    parseJSON = parseJSONText "DataSourceType"

instance ToJSON DataSourceType where
    toJSON = toJSONText

-- | A constant representing the type of the device.
data DeviceType
    = ChestStrap
      -- ^ @chestStrap@
    | Phone
      -- ^ @phone@
    | Scale
      -- ^ @scale@
    | Tablet
      -- ^ @tablet@
    | Unknown
      -- ^ @unknown@
    | Watch
      -- ^ @watch@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeviceType

instance FromText DeviceType where
    fromText = \case
        "chestStrap" -> Just ChestStrap
        "phone" -> Just Phone
        "scale" -> Just Scale
        "tablet" -> Just Tablet
        "unknown" -> Just Unknown
        "watch" -> Just Watch
        _ -> Nothing

instance ToText DeviceType where
    toText = \case
        ChestStrap -> "chestStrap"
        Phone -> "phone"
        Scale -> "scale"
        Tablet -> "tablet"
        Unknown -> "unknown"
        Watch -> "watch"

instance FromJSON DeviceType where
    parseJSON = parseJSONText "DeviceType"

instance ToJSON DeviceType where
    toJSON = toJSONText

-- | The different supported formats for each field in a data type.
data DataTypeFieldFormat
    = Blob
      -- ^ @blob@
    | FloatList
      -- ^ @floatList@
    | FloatPoint
      -- ^ @floatPoint@
    | Integer
      -- ^ @integer@
    | IntegerList
      -- ^ @integerList@
    | Map
      -- ^ @map@
    | String
      -- ^ @string@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DataTypeFieldFormat

instance FromText DataTypeFieldFormat where
    fromText = \case
        "blob" -> Just Blob
        "floatList" -> Just FloatList
        "floatPoint" -> Just FloatPoint
        "integer" -> Just Integer
        "integerList" -> Just IntegerList
        "map" -> Just Map
        "string" -> Just String
        _ -> Nothing

instance ToText DataTypeFieldFormat where
    toText = \case
        Blob -> "blob"
        FloatList -> "floatList"
        FloatPoint -> "floatPoint"
        Integer -> "integer"
        IntegerList -> "integerList"
        Map -> "map"
        String -> "string"

instance FromJSON DataTypeFieldFormat where
    parseJSON = parseJSONText "DataTypeFieldFormat"

instance ToJSON DataTypeFieldFormat where
    toJSON = toJSONText
