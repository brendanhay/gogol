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

data BucketByTimePeriodType
    = Day
      -- ^ @day@
    | Month
      -- ^ @month@
    | Week
      -- ^ @week@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BucketByTimePeriodType

instance FromHttpApiData BucketByTimePeriodType where
    parseQueryParam = \case
        "day" -> Right Day
        "month" -> Right Month
        "week" -> Right Week
        x -> Left ("Unable to parse BucketByTimePeriodType from: " <> x)

instance ToHttpApiData BucketByTimePeriodType where
    toQueryParam = \case
        Day -> "day"
        Month -> "month"
        Week -> "week"

instance FromJSON BucketByTimePeriodType where
    parseJSON = parseJSONText "BucketByTimePeriodType"

instance ToJSON BucketByTimePeriodType where
    toJSON = toJSONText

data AggregateRequestFilteredDataQualityStandardItem
    = DATAQUALITYBLOODGLUCOSEISO151972003
      -- ^ @dataQualityBloodGlucoseIso151972003@
    | DATAQUALITYBLOODGLUCOSEISO151972013
      -- ^ @dataQualityBloodGlucoseIso151972013@
    | DataQualityBloodPressureAami
      -- ^ @dataQualityBloodPressureAami@
    | DataQualityBloodPressureBhsAA
      -- ^ @dataQualityBloodPressureBhsAA@
    | DataQualityBloodPressureBhsAB
      -- ^ @dataQualityBloodPressureBhsAB@
    | DataQualityBloodPressureBhsBA
      -- ^ @dataQualityBloodPressureBhsBA@
    | DataQualityBloodPressureBhsBB
      -- ^ @dataQualityBloodPressureBhsBB@
    | DATAQUALITYBLOODPRESSUREESH2002
      -- ^ @dataQualityBloodPressureEsh2002@
    | DATAQUALITYBLOODPRESSUREESH2010
      -- ^ @dataQualityBloodPressureEsh2010@
    | DataQualityUnknown
      -- ^ @dataQualityUnknown@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregateRequestFilteredDataQualityStandardItem

instance FromHttpApiData AggregateRequestFilteredDataQualityStandardItem where
    parseQueryParam = \case
        "dataQualityBloodGlucoseIso151972003" -> Right DATAQUALITYBLOODGLUCOSEISO151972003
        "dataQualityBloodGlucoseIso151972013" -> Right DATAQUALITYBLOODGLUCOSEISO151972013
        "dataQualityBloodPressureAami" -> Right DataQualityBloodPressureAami
        "dataQualityBloodPressureBhsAA" -> Right DataQualityBloodPressureBhsAA
        "dataQualityBloodPressureBhsAB" -> Right DataQualityBloodPressureBhsAB
        "dataQualityBloodPressureBhsBA" -> Right DataQualityBloodPressureBhsBA
        "dataQualityBloodPressureBhsBB" -> Right DataQualityBloodPressureBhsBB
        "dataQualityBloodPressureEsh2002" -> Right DATAQUALITYBLOODPRESSUREESH2002
        "dataQualityBloodPressureEsh2010" -> Right DATAQUALITYBLOODPRESSUREESH2010
        "dataQualityUnknown" -> Right DataQualityUnknown
        x -> Left ("Unable to parse AggregateRequestFilteredDataQualityStandardItem from: " <> x)

instance ToHttpApiData AggregateRequestFilteredDataQualityStandardItem where
    toQueryParam = \case
        DATAQUALITYBLOODGLUCOSEISO151972003 -> "dataQualityBloodGlucoseIso151972003"
        DATAQUALITYBLOODGLUCOSEISO151972013 -> "dataQualityBloodGlucoseIso151972013"
        DataQualityBloodPressureAami -> "dataQualityBloodPressureAami"
        DataQualityBloodPressureBhsAA -> "dataQualityBloodPressureBhsAA"
        DataQualityBloodPressureBhsAB -> "dataQualityBloodPressureBhsAB"
        DataQualityBloodPressureBhsBA -> "dataQualityBloodPressureBhsBA"
        DataQualityBloodPressureBhsBB -> "dataQualityBloodPressureBhsBB"
        DATAQUALITYBLOODPRESSUREESH2002 -> "dataQualityBloodPressureEsh2002"
        DATAQUALITYBLOODPRESSUREESH2010 -> "dataQualityBloodPressureEsh2010"
        DataQualityUnknown -> "dataQualityUnknown"

instance FromJSON AggregateRequestFilteredDataQualityStandardItem where
    parseJSON = parseJSONText "AggregateRequestFilteredDataQualityStandardItem"

instance ToJSON AggregateRequestFilteredDataQualityStandardItem where
    toJSON = toJSONText

-- | A constant representing the type of the device.
data DeviceType
    = ChestStrap
      -- ^ @chestStrap@
    | HeadMounted
      -- ^ @headMounted@
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
        "headMounted" -> Right HeadMounted
        "phone" -> Right Phone
        "scale" -> Right Scale
        "tablet" -> Right Tablet
        "unknown" -> Right Unknown
        "watch" -> Right Watch
        x -> Left ("Unable to parse DeviceType from: " <> x)

instance ToHttpApiData DeviceType where
    toQueryParam = \case
        ChestStrap -> "chestStrap"
        HeadMounted -> "headMounted"
        Phone -> "phone"
        Scale -> "scale"
        Tablet -> "tablet"
        Unknown -> "unknown"
        Watch -> "watch"

instance FromJSON DeviceType where
    parseJSON = parseJSONText "DeviceType"

instance ToJSON DeviceType where
    toJSON = toJSONText

data DataSourceDataQualityStandardItem
    = DSDQSIDATAQUALITYBLOODGLUCOSEISO151972003
      -- ^ @dataQualityBloodGlucoseIso151972003@
    | DSDQSIDATAQUALITYBLOODGLUCOSEISO151972013
      -- ^ @dataQualityBloodGlucoseIso151972013@
    | DSDQSIDataQualityBloodPressureAami
      -- ^ @dataQualityBloodPressureAami@
    | DSDQSIDataQualityBloodPressureBhsAA
      -- ^ @dataQualityBloodPressureBhsAA@
    | DSDQSIDataQualityBloodPressureBhsAB
      -- ^ @dataQualityBloodPressureBhsAB@
    | DSDQSIDataQualityBloodPressureBhsBA
      -- ^ @dataQualityBloodPressureBhsBA@
    | DSDQSIDataQualityBloodPressureBhsBB
      -- ^ @dataQualityBloodPressureBhsBB@
    | DSDQSIDATAQUALITYBLOODPRESSUREESH2002
      -- ^ @dataQualityBloodPressureEsh2002@
    | DSDQSIDATAQUALITYBLOODPRESSUREESH2010
      -- ^ @dataQualityBloodPressureEsh2010@
    | DSDQSIDataQualityUnknown
      -- ^ @dataQualityUnknown@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceDataQualityStandardItem

instance FromHttpApiData DataSourceDataQualityStandardItem where
    parseQueryParam = \case
        "dataQualityBloodGlucoseIso151972003" -> Right DSDQSIDATAQUALITYBLOODGLUCOSEISO151972003
        "dataQualityBloodGlucoseIso151972013" -> Right DSDQSIDATAQUALITYBLOODGLUCOSEISO151972013
        "dataQualityBloodPressureAami" -> Right DSDQSIDataQualityBloodPressureAami
        "dataQualityBloodPressureBhsAA" -> Right DSDQSIDataQualityBloodPressureBhsAA
        "dataQualityBloodPressureBhsAB" -> Right DSDQSIDataQualityBloodPressureBhsAB
        "dataQualityBloodPressureBhsBA" -> Right DSDQSIDataQualityBloodPressureBhsBA
        "dataQualityBloodPressureBhsBB" -> Right DSDQSIDataQualityBloodPressureBhsBB
        "dataQualityBloodPressureEsh2002" -> Right DSDQSIDATAQUALITYBLOODPRESSUREESH2002
        "dataQualityBloodPressureEsh2010" -> Right DSDQSIDATAQUALITYBLOODPRESSUREESH2010
        "dataQualityUnknown" -> Right DSDQSIDataQualityUnknown
        x -> Left ("Unable to parse DataSourceDataQualityStandardItem from: " <> x)

instance ToHttpApiData DataSourceDataQualityStandardItem where
    toQueryParam = \case
        DSDQSIDATAQUALITYBLOODGLUCOSEISO151972003 -> "dataQualityBloodGlucoseIso151972003"
        DSDQSIDATAQUALITYBLOODGLUCOSEISO151972013 -> "dataQualityBloodGlucoseIso151972013"
        DSDQSIDataQualityBloodPressureAami -> "dataQualityBloodPressureAami"
        DSDQSIDataQualityBloodPressureBhsAA -> "dataQualityBloodPressureBhsAA"
        DSDQSIDataQualityBloodPressureBhsAB -> "dataQualityBloodPressureBhsAB"
        DSDQSIDataQualityBloodPressureBhsBA -> "dataQualityBloodPressureBhsBA"
        DSDQSIDataQualityBloodPressureBhsBB -> "dataQualityBloodPressureBhsBB"
        DSDQSIDATAQUALITYBLOODPRESSUREESH2002 -> "dataQualityBloodPressureEsh2002"
        DSDQSIDATAQUALITYBLOODPRESSUREESH2010 -> "dataQualityBloodPressureEsh2010"
        DSDQSIDataQualityUnknown -> "dataQualityUnknown"

instance FromJSON DataSourceDataQualityStandardItem where
    parseJSON = parseJSONText "DataSourceDataQualityStandardItem"

instance ToJSON DataSourceDataQualityStandardItem where
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
