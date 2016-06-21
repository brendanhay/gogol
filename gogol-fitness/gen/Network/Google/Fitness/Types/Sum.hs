{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fitness.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregateBucketType

instance FromHttpApiData AggregateBucketType where
    parseQueryParam = \case
        "activitySegment" -> Right ABTActivitySegment
        "activityType" -> Right ABTActivityType
        "session" -> Right ABTSession
        "time" -> Right ABTTime
        "unknown" -> Right ABTUnknown
        x -> Left ("Unable to parse AggregateBucketType from: " <> x)

instance ToHttpApiData AggregateBucketType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceType

instance FromHttpApiData DataSourceType where
    parseQueryParam = \case
        "derived" -> Right Derived
        "raw" -> Right Raw
        x -> Left ("Unable to parse DataSourceType from: " <> x)

instance ToHttpApiData DataSourceType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceType

instance FromHttpApiData DeviceType where
    parseQueryParam = \case
        "chestStrap" -> Right ChestStrap
        "phone" -> Right Phone
        "scale" -> Right Scale
        "tablet" -> Right Tablet
        "unknown" -> Right Unknown
        "watch" -> Right Watch
        x -> Left ("Unable to parse DeviceType from: " <> x)

instance ToHttpApiData DeviceType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataTypeFieldFormat

instance FromHttpApiData DataTypeFieldFormat where
    parseQueryParam = \case
        "blob" -> Right Blob
        "floatList" -> Right FloatList
        "floatPoint" -> Right FloatPoint
        "integer" -> Right Integer
        "integerList" -> Right IntegerList
        "map" -> Right Map
        "string" -> Right String
        x -> Left ("Unable to parse DataTypeFieldFormat from: " <> x)

instance ToHttpApiData DataTypeFieldFormat where
    toQueryParam = \case
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
