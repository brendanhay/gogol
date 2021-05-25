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

import Network.Google.Prelude hiding (Bytes)

-- | The type of a bucket signifies how the data aggregation is performed in
-- the bucket.
data AggregateBucketType
    = ABTUnknown
      -- ^ @unknown@
    | ABTTime
      -- ^ @time@
      -- Denotes that bucketing by time is requested. When this is specified, the
      -- timeBucketDurationMillis field is used to determine how many buckets
      -- will be returned.
    | ABTSession
      -- ^ @session@
      -- Denotes that bucketing by session is requested. When this is specified,
      -- only data that occurs within sessions that begin and end within the
      -- dataset time frame, is included in the results.
    | ABTActivityType
      -- ^ @activityType@
      -- Denotes that bucketing by activity type is requested. When this is
      -- specified, there will be one bucket for each unique activity type that a
      -- user participated in, during the dataset time frame of interest.
    | ABTActivitySegment
      -- ^ @activitySegment@
      -- Denotes that bucketing by individual activity segment is requested. This
      -- will aggregate data by the time boundaries specified by each activity
      -- segment occurring within the dataset time frame of interest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregateBucketType

instance FromHttpApiData AggregateBucketType where
    parseQueryParam = \case
        "unknown" -> Right ABTUnknown
        "time" -> Right ABTTime
        "session" -> Right ABTSession
        "activityType" -> Right ABTActivityType
        "activitySegment" -> Right ABTActivitySegment
        x -> Left ("Unable to parse AggregateBucketType from: " <> x)

instance ToHttpApiData AggregateBucketType where
    toQueryParam = \case
        ABTUnknown -> "unknown"
        ABTTime -> "time"
        ABTSession -> "session"
        ABTActivityType -> "activityType"
        ABTActivitySegment -> "activitySegment"

instance FromJSON AggregateBucketType where
    parseJSON = parseJSONText "AggregateBucketType"

instance ToJSON AggregateBucketType where
    toJSON = toJSONText

-- | A constant describing the type of this data source. Indicates whether
-- this data source produces raw or derived data.
data DataSourceType
    = Raw
      -- ^ @raw@
    | Derived
      -- ^ @derived@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceType

instance FromHttpApiData DataSourceType where
    parseQueryParam = \case
        "raw" -> Right Raw
        "derived" -> Right Derived
        x -> Left ("Unable to parse DataSourceType from: " <> x)

instance ToHttpApiData DataSourceType where
    toQueryParam = \case
        Raw -> "raw"
        Derived -> "derived"

instance FromJSON DataSourceType where
    parseJSON = parseJSONText "DataSourceType"

instance ToJSON DataSourceType where
    toJSON = toJSONText

data BucketByTimePeriodType
    = Day
      -- ^ @day@
    | Week
      -- ^ @week@
    | Month
      -- ^ @month@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BucketByTimePeriodType

instance FromHttpApiData BucketByTimePeriodType where
    parseQueryParam = \case
        "day" -> Right Day
        "week" -> Right Week
        "month" -> Right Month
        x -> Left ("Unable to parse BucketByTimePeriodType from: " <> x)

instance ToHttpApiData BucketByTimePeriodType where
    toQueryParam = \case
        Day -> "day"
        Week -> "week"
        Month -> "month"

instance FromJSON BucketByTimePeriodType where
    parseJSON = parseJSONText "BucketByTimePeriodType"

instance ToJSON BucketByTimePeriodType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

data AggregateRequestFilteredDataQualityStandardItem
    = DataQualityUnknown
      -- ^ @dataQualityUnknown@
    | DATAQUALITYBLOODPRESSUREESH2002
      -- ^ @dataQualityBloodPressureEsh2002@
    | DATAQUALITYBLOODPRESSUREESH2010
      -- ^ @dataQualityBloodPressureEsh2010@
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
    | DATAQUALITYBLOODGLUCOSEISO151972003
      -- ^ @dataQualityBloodGlucoseIso151972003@
    | DATAQUALITYBLOODGLUCOSEISO151972013
      -- ^ @dataQualityBloodGlucoseIso151972013@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AggregateRequestFilteredDataQualityStandardItem

instance FromHttpApiData AggregateRequestFilteredDataQualityStandardItem where
    parseQueryParam = \case
        "dataQualityUnknown" -> Right DataQualityUnknown
        "dataQualityBloodPressureEsh2002" -> Right DATAQUALITYBLOODPRESSUREESH2002
        "dataQualityBloodPressureEsh2010" -> Right DATAQUALITYBLOODPRESSUREESH2010
        "dataQualityBloodPressureAami" -> Right DataQualityBloodPressureAami
        "dataQualityBloodPressureBhsAA" -> Right DataQualityBloodPressureBhsAA
        "dataQualityBloodPressureBhsAB" -> Right DataQualityBloodPressureBhsAB
        "dataQualityBloodPressureBhsBA" -> Right DataQualityBloodPressureBhsBA
        "dataQualityBloodPressureBhsBB" -> Right DataQualityBloodPressureBhsBB
        "dataQualityBloodGlucoseIso151972003" -> Right DATAQUALITYBLOODGLUCOSEISO151972003
        "dataQualityBloodGlucoseIso151972013" -> Right DATAQUALITYBLOODGLUCOSEISO151972013
        x -> Left ("Unable to parse AggregateRequestFilteredDataQualityStandardItem from: " <> x)

instance ToHttpApiData AggregateRequestFilteredDataQualityStandardItem where
    toQueryParam = \case
        DataQualityUnknown -> "dataQualityUnknown"
        DATAQUALITYBLOODPRESSUREESH2002 -> "dataQualityBloodPressureEsh2002"
        DATAQUALITYBLOODPRESSUREESH2010 -> "dataQualityBloodPressureEsh2010"
        DataQualityBloodPressureAami -> "dataQualityBloodPressureAami"
        DataQualityBloodPressureBhsAA -> "dataQualityBloodPressureBhsAA"
        DataQualityBloodPressureBhsAB -> "dataQualityBloodPressureBhsAB"
        DataQualityBloodPressureBhsBA -> "dataQualityBloodPressureBhsBA"
        DataQualityBloodPressureBhsBB -> "dataQualityBloodPressureBhsBB"
        DATAQUALITYBLOODGLUCOSEISO151972003 -> "dataQualityBloodGlucoseIso151972003"
        DATAQUALITYBLOODGLUCOSEISO151972013 -> "dataQualityBloodGlucoseIso151972013"

instance FromJSON AggregateRequestFilteredDataQualityStandardItem where
    parseJSON = parseJSONText "AggregateRequestFilteredDataQualityStandardItem"

instance ToJSON AggregateRequestFilteredDataQualityStandardItem where
    toJSON = toJSONText

-- | A constant representing the type of the device.
data DeviceType
    = Unknown
      -- ^ @unknown@
      -- Device type is not known.
    | Phone
      -- ^ @phone@
      -- An Android phone.
    | Tablet
      -- ^ @tablet@
      -- An Android tablet.
    | Watch
      -- ^ @watch@
      -- A watch or other wrist-mounted band.
    | ChestStrap
      -- ^ @chestStrap@
      -- A chest strap.
    | Scale
      -- ^ @scale@
      -- A scale.
    | HeadMounted
      -- ^ @headMounted@
      -- Glass or other head-mounted device.
    | SmartDisplay
      -- ^ @smartDisplay@
      -- A smart display e.g. Nest device.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceType

instance FromHttpApiData DeviceType where
    parseQueryParam = \case
        "unknown" -> Right Unknown
        "phone" -> Right Phone
        "tablet" -> Right Tablet
        "watch" -> Right Watch
        "chestStrap" -> Right ChestStrap
        "scale" -> Right Scale
        "headMounted" -> Right HeadMounted
        "smartDisplay" -> Right SmartDisplay
        x -> Left ("Unable to parse DeviceType from: " <> x)

instance ToHttpApiData DeviceType where
    toQueryParam = \case
        Unknown -> "unknown"
        Phone -> "phone"
        Tablet -> "tablet"
        Watch -> "watch"
        ChestStrap -> "chestStrap"
        Scale -> "scale"
        HeadMounted -> "headMounted"
        SmartDisplay -> "smartDisplay"

instance FromJSON DeviceType where
    parseJSON = parseJSONText "DeviceType"

instance ToJSON DeviceType where
    toJSON = toJSONText

data DataSourceDataQualityStandardItem
    = DSDQSIDataQualityUnknown
      -- ^ @dataQualityUnknown@
    | DSDQSIDATAQUALITYBLOODPRESSUREESH2002
      -- ^ @dataQualityBloodPressureEsh2002@
    | DSDQSIDATAQUALITYBLOODPRESSUREESH2010
      -- ^ @dataQualityBloodPressureEsh2010@
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
    | DSDQSIDATAQUALITYBLOODGLUCOSEISO151972003
      -- ^ @dataQualityBloodGlucoseIso151972003@
    | DSDQSIDATAQUALITYBLOODGLUCOSEISO151972013
      -- ^ @dataQualityBloodGlucoseIso151972013@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceDataQualityStandardItem

instance FromHttpApiData DataSourceDataQualityStandardItem where
    parseQueryParam = \case
        "dataQualityUnknown" -> Right DSDQSIDataQualityUnknown
        "dataQualityBloodPressureEsh2002" -> Right DSDQSIDATAQUALITYBLOODPRESSUREESH2002
        "dataQualityBloodPressureEsh2010" -> Right DSDQSIDATAQUALITYBLOODPRESSUREESH2010
        "dataQualityBloodPressureAami" -> Right DSDQSIDataQualityBloodPressureAami
        "dataQualityBloodPressureBhsAA" -> Right DSDQSIDataQualityBloodPressureBhsAA
        "dataQualityBloodPressureBhsAB" -> Right DSDQSIDataQualityBloodPressureBhsAB
        "dataQualityBloodPressureBhsBA" -> Right DSDQSIDataQualityBloodPressureBhsBA
        "dataQualityBloodPressureBhsBB" -> Right DSDQSIDataQualityBloodPressureBhsBB
        "dataQualityBloodGlucoseIso151972003" -> Right DSDQSIDATAQUALITYBLOODGLUCOSEISO151972003
        "dataQualityBloodGlucoseIso151972013" -> Right DSDQSIDATAQUALITYBLOODGLUCOSEISO151972013
        x -> Left ("Unable to parse DataSourceDataQualityStandardItem from: " <> x)

instance ToHttpApiData DataSourceDataQualityStandardItem where
    toQueryParam = \case
        DSDQSIDataQualityUnknown -> "dataQualityUnknown"
        DSDQSIDATAQUALITYBLOODPRESSUREESH2002 -> "dataQualityBloodPressureEsh2002"
        DSDQSIDATAQUALITYBLOODPRESSUREESH2010 -> "dataQualityBloodPressureEsh2010"
        DSDQSIDataQualityBloodPressureAami -> "dataQualityBloodPressureAami"
        DSDQSIDataQualityBloodPressureBhsAA -> "dataQualityBloodPressureBhsAA"
        DSDQSIDataQualityBloodPressureBhsAB -> "dataQualityBloodPressureBhsAB"
        DSDQSIDataQualityBloodPressureBhsBA -> "dataQualityBloodPressureBhsBA"
        DSDQSIDataQualityBloodPressureBhsBB -> "dataQualityBloodPressureBhsBB"
        DSDQSIDATAQUALITYBLOODGLUCOSEISO151972003 -> "dataQualityBloodGlucoseIso151972003"
        DSDQSIDATAQUALITYBLOODGLUCOSEISO151972013 -> "dataQualityBloodGlucoseIso151972013"

instance FromJSON DataSourceDataQualityStandardItem where
    parseJSON = parseJSONText "DataSourceDataQualityStandardItem"

instance ToJSON DataSourceDataQualityStandardItem where
    toJSON = toJSONText

-- | The different supported formats for each field in a data type.
data DataTypeFieldFormat
    = Integer
      -- ^ @integer@
    | FloatPoint
      -- ^ @floatPoint@
    | String
      -- ^ @string@
    | Map
      -- ^ @map@
    | IntegerList
      -- ^ @integerList@
    | FloatList
      -- ^ @floatList@
    | Blob
      -- ^ @blob@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataTypeFieldFormat

instance FromHttpApiData DataTypeFieldFormat where
    parseQueryParam = \case
        "integer" -> Right Integer
        "floatPoint" -> Right FloatPoint
        "string" -> Right String
        "map" -> Right Map
        "integerList" -> Right IntegerList
        "floatList" -> Right FloatList
        "blob" -> Right Blob
        x -> Left ("Unable to parse DataTypeFieldFormat from: " <> x)

instance ToHttpApiData DataTypeFieldFormat where
    toQueryParam = \case
        Integer -> "integer"
        FloatPoint -> "floatPoint"
        String -> "string"
        Map -> "map"
        IntegerList -> "integerList"
        FloatList -> "floatList"
        Blob -> "blob"

instance FromJSON DataTypeFieldFormat where
    parseJSON = parseJSONText "DataTypeFieldFormat"

instance ToJSON DataTypeFieldFormat where
    toJSON = toJSONText
