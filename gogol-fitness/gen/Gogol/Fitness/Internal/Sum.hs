{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Fitness.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Fitness.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AggregateBucket_Type
    AggregateBucket_Type
      ( AggregateBucket_Type_Unknown,
        AggregateBucket_Type_Time,
        AggregateBucket_Type_Session,
        AggregateBucket_Type_ActivityType,
        AggregateBucket_Type_ActivitySegment,
        ..
      ),

    -- * AggregateRequest_FilteredDataQualityStandardItem
    AggregateRequest_FilteredDataQualityStandardItem
      ( AggregateRequest_FilteredDataQualityStandardItem_DataQualityUnknown,
        AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002,
        AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010,
        AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureAami,
        AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAA,
        AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAB,
        AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBA,
        AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBB,
        AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003,
        AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013,
        ..
      ),

    -- * BucketByTimePeriod_Type
    BucketByTimePeriod_Type
      ( BucketByTimePeriod_Type_Day,
        BucketByTimePeriod_Type_Week,
        BucketByTimePeriod_Type_Month,
        ..
      ),

    -- * DataSource_DataQualityStandardItem
    DataSource_DataQualityStandardItem
      ( DataSource_DataQualityStandardItem_DataQualityUnknown,
        DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002,
        DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010,
        DataSource_DataQualityStandardItem_DataQualityBloodPressureAami,
        DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAA,
        DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAB,
        DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBA,
        DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBB,
        DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003,
        DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013,
        ..
      ),

    -- * DataSource_Type
    DataSource_Type
      ( DataSource_Type_Raw,
        DataSource_Type_Derived,
        ..
      ),

    -- * DataTypeField_Format
    DataTypeField_Format
      ( DataTypeField_Format_Integer,
        DataTypeField_Format_FloatPoint,
        DataTypeField_Format_String,
        DataTypeField_Format_Map,
        DataTypeField_Format_IntegerList,
        DataTypeField_Format_FloatList,
        DataTypeField_Format_Blob,
        ..
      ),

    -- * Device_Type
    Device_Type
      ( Device_Type_Unknown,
        Device_Type_Phone,
        Device_Type_Tablet,
        Device_Type_Watch,
        Device_Type_ChestStrap,
        Device_Type_Scale,
        Device_Type_HeadMounted,
        Device_Type_SmartDisplay,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The type of a bucket signifies how the data aggregation is performed in the bucket.
newtype AggregateBucket_Type = AggregateBucket_Type {fromAggregateBucket_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AggregateBucket_Type_Unknown :: AggregateBucket_Type
pattern AggregateBucket_Type_Unknown = AggregateBucket_Type "unknown"

-- | Denotes that bucketing by time is requested. When this is specified, the timeBucketDurationMillis field is used to determine how many buckets will be returned.
pattern AggregateBucket_Type_Time :: AggregateBucket_Type
pattern AggregateBucket_Type_Time = AggregateBucket_Type "time"

-- | Denotes that bucketing by session is requested. When this is specified, only data that occurs within sessions that begin and end within the dataset time frame, is included in the results.
pattern AggregateBucket_Type_Session :: AggregateBucket_Type
pattern AggregateBucket_Type_Session = AggregateBucket_Type "session"

-- | Denotes that bucketing by activity type is requested. When this is specified, there will be one bucket for each unique activity type that a user participated in, during the dataset time frame of interest.
pattern AggregateBucket_Type_ActivityType :: AggregateBucket_Type
pattern AggregateBucket_Type_ActivityType = AggregateBucket_Type "activityType"

-- | Denotes that bucketing by individual activity segment is requested. This will aggregate data by the time boundaries specified by each activity segment occurring within the dataset time frame of interest.
pattern AggregateBucket_Type_ActivitySegment :: AggregateBucket_Type
pattern AggregateBucket_Type_ActivitySegment = AggregateBucket_Type "activitySegment"

{-# COMPLETE
  AggregateBucket_Type_Unknown,
  AggregateBucket_Type_Time,
  AggregateBucket_Type_Session,
  AggregateBucket_Type_ActivityType,
  AggregateBucket_Type_ActivitySegment,
  AggregateBucket_Type
  #-}

newtype AggregateRequest_FilteredDataQualityStandardItem = AggregateRequest_FilteredDataQualityStandardItem {fromAggregateRequest_FilteredDataQualityStandardItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityUnknown :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityUnknown = AggregateRequest_FilteredDataQualityStandardItem "dataQualityUnknown"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002 :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002 = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureEsh2002"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010 :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010 = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureEsh2010"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureAami :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureAami = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureAami"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAA :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAA = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureBhsAA"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAB :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAB = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureBhsAB"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBA :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBA = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureBhsBA"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBB :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBB = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodPressureBhsBB"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003 :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003 = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodGlucoseIso151972003"

-- |
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013 :: AggregateRequest_FilteredDataQualityStandardItem
pattern AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013 = AggregateRequest_FilteredDataQualityStandardItem "dataQualityBloodGlucoseIso151972013"

{-# COMPLETE
  AggregateRequest_FilteredDataQualityStandardItem_DataQualityUnknown,
  AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002,
  AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010,
  AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureAami,
  AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAA,
  AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsAB,
  AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBA,
  AggregateRequest_FilteredDataQualityStandardItem_DataQualityBloodPressureBhsBB,
  AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003,
  AggregateRequest_FilteredDataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013,
  AggregateRequest_FilteredDataQualityStandardItem
  #-}

newtype BucketByTimePeriod_Type = BucketByTimePeriod_Type {fromBucketByTimePeriod_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BucketByTimePeriod_Type_Day :: BucketByTimePeriod_Type
pattern BucketByTimePeriod_Type_Day = BucketByTimePeriod_Type "day"

-- |
pattern BucketByTimePeriod_Type_Week :: BucketByTimePeriod_Type
pattern BucketByTimePeriod_Type_Week = BucketByTimePeriod_Type "week"

-- |
pattern BucketByTimePeriod_Type_Month :: BucketByTimePeriod_Type
pattern BucketByTimePeriod_Type_Month = BucketByTimePeriod_Type "month"

{-# COMPLETE
  BucketByTimePeriod_Type_Day,
  BucketByTimePeriod_Type_Week,
  BucketByTimePeriod_Type_Month,
  BucketByTimePeriod_Type
  #-}

newtype DataSource_DataQualityStandardItem = DataSource_DataQualityStandardItem {fromDataSource_DataQualityStandardItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DataSource_DataQualityStandardItem_DataQualityUnknown :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DataQualityUnknown = DataSource_DataQualityStandardItem "dataQualityUnknown"

-- |
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002 :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002 = DataSource_DataQualityStandardItem "dataQualityBloodPressureEsh2002"

-- |
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010 :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010 = DataSource_DataQualityStandardItem "dataQualityBloodPressureEsh2010"

-- |
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureAami :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureAami = DataSource_DataQualityStandardItem "dataQualityBloodPressureAami"

-- |
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAA :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAA = DataSource_DataQualityStandardItem "dataQualityBloodPressureBhsAA"

-- |
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAB :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAB = DataSource_DataQualityStandardItem "dataQualityBloodPressureBhsAB"

-- |
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBA :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBA = DataSource_DataQualityStandardItem "dataQualityBloodPressureBhsBA"

-- |
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBB :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBB = DataSource_DataQualityStandardItem "dataQualityBloodPressureBhsBB"

-- |
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003 :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003 = DataSource_DataQualityStandardItem "dataQualityBloodGlucoseIso151972003"

-- |
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013 :: DataSource_DataQualityStandardItem
pattern DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013 = DataSource_DataQualityStandardItem "dataQualityBloodGlucoseIso151972013"

{-# COMPLETE
  DataSource_DataQualityStandardItem_DataQualityUnknown,
  DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2002,
  DataSource_DataQualityStandardItem_DATAQUALITYBLOODPRESSUREESH2010,
  DataSource_DataQualityStandardItem_DataQualityBloodPressureAami,
  DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAA,
  DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsAB,
  DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBA,
  DataSource_DataQualityStandardItem_DataQualityBloodPressureBhsBB,
  DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972003,
  DataSource_DataQualityStandardItem_DATAQUALITYBLOODGLUCOSEISO151972013,
  DataSource_DataQualityStandardItem
  #-}

-- | A constant describing the type of this data source. Indicates whether this data source produces raw or derived data.
newtype DataSource_Type = DataSource_Type {fromDataSource_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DataSource_Type_Raw :: DataSource_Type
pattern DataSource_Type_Raw = DataSource_Type "raw"

-- |
pattern DataSource_Type_Derived :: DataSource_Type
pattern DataSource_Type_Derived = DataSource_Type "derived"

{-# COMPLETE
  DataSource_Type_Raw,
  DataSource_Type_Derived,
  DataSource_Type
  #-}

-- | The different supported formats for each field in a data type.
newtype DataTypeField_Format = DataTypeField_Format {fromDataTypeField_Format :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern DataTypeField_Format_Integer :: DataTypeField_Format
pattern DataTypeField_Format_Integer = DataTypeField_Format "integer"

-- |
pattern DataTypeField_Format_FloatPoint :: DataTypeField_Format
pattern DataTypeField_Format_FloatPoint = DataTypeField_Format "floatPoint"

-- |
pattern DataTypeField_Format_String :: DataTypeField_Format
pattern DataTypeField_Format_String = DataTypeField_Format "string"

-- |
pattern DataTypeField_Format_Map :: DataTypeField_Format
pattern DataTypeField_Format_Map = DataTypeField_Format "map"

-- |
pattern DataTypeField_Format_IntegerList :: DataTypeField_Format
pattern DataTypeField_Format_IntegerList = DataTypeField_Format "integerList"

-- |
pattern DataTypeField_Format_FloatList :: DataTypeField_Format
pattern DataTypeField_Format_FloatList = DataTypeField_Format "floatList"

-- |
pattern DataTypeField_Format_Blob :: DataTypeField_Format
pattern DataTypeField_Format_Blob = DataTypeField_Format "blob"

{-# COMPLETE
  DataTypeField_Format_Integer,
  DataTypeField_Format_FloatPoint,
  DataTypeField_Format_String,
  DataTypeField_Format_Map,
  DataTypeField_Format_IntegerList,
  DataTypeField_Format_FloatList,
  DataTypeField_Format_Blob,
  DataTypeField_Format
  #-}

-- | A constant representing the type of the device.
newtype Device_Type = Device_Type {fromDevice_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Device type is not known.
pattern Device_Type_Unknown :: Device_Type
pattern Device_Type_Unknown = Device_Type "unknown"

-- | An Android phone.
pattern Device_Type_Phone :: Device_Type
pattern Device_Type_Phone = Device_Type "phone"

-- | An Android tablet.
pattern Device_Type_Tablet :: Device_Type
pattern Device_Type_Tablet = Device_Type "tablet"

-- | A watch or other wrist-mounted band.
pattern Device_Type_Watch :: Device_Type
pattern Device_Type_Watch = Device_Type "watch"

-- | A chest strap.
pattern Device_Type_ChestStrap :: Device_Type
pattern Device_Type_ChestStrap = Device_Type "chestStrap"

-- | A scale.
pattern Device_Type_Scale :: Device_Type
pattern Device_Type_Scale = Device_Type "scale"

-- | Glass or other head-mounted device.
pattern Device_Type_HeadMounted :: Device_Type
pattern Device_Type_HeadMounted = Device_Type "headMounted"

-- | A smart display e.g. Nest device.
pattern Device_Type_SmartDisplay :: Device_Type
pattern Device_Type_SmartDisplay = Device_Type "smartDisplay"

{-# COMPLETE
  Device_Type_Unknown,
  Device_Type_Phone,
  Device_Type_Tablet,
  Device_Type_Watch,
  Device_Type_ChestStrap,
  Device_Type_Scale,
  Device_Type_HeadMounted,
  Device_Type_SmartDisplay,
  Device_Type
  #-}
