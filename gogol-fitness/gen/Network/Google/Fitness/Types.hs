{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fitness.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fitness.Types
    (
    -- * Service Configuration
      fitnessService

    -- * OAuth Scopes
    , fitnessBodyTemperatureReadScope
    , fitnessBodyReadScope
    , fitnessNutritionReadScope
    , fitnessReProductiveHealthReadScope
    , fitnessActivityReadScope
    , fitnessReProductiveHealthWriteScope
    , fitnessActivityWriteScope
    , fitnessBloodPressureWriteScope
    , fitnessBodyTemperatureWriteScope
    , fitnessOxygenSaturationReadScope
    , fitnessBloodGlucoseWriteScope
    , fitnessBloodPressureReadScope
    , fitnessLocationReadScope
    , fitnessLocationWriteScope
    , fitnessNutritionWriteScope
    , fitnessBodyWriteScope
    , fitnessBloodGlucoseReadScope
    , fitnessOxygenSaturationWriteScope

    -- * AggregateBucketType
    , AggregateBucketType (..)

    -- * DataSet
    , DataSet
    , dataSet
    , dsNextPageToken
    , dsDataSourceId
    , dsPoint
    , dsMinStartTimeNs
    , dsMaxEndTimeNs

    -- * Application
    , Application
    , application
    , aPackageName
    , aName
    , aVersion
    , aDetailsURL

    -- * AggregateResponse
    , AggregateResponse
    , aggregateResponse
    , arBucket

    -- * AggregateBy
    , AggregateBy
    , aggregateBy
    , abDataTypeName
    , abDataSourceId

    -- * DataSourceType
    , DataSourceType (..)

    -- * BucketByTimePeriodType
    , BucketByTimePeriodType (..)

    -- * BucketByActivity
    , BucketByActivity
    , bucketByActivity
    , bbaMinDurationMillis
    , bbaActivityDataSourceId

    -- * AggregateRequest
    , AggregateRequest
    , aggregateRequest
    , arEndTimeMillis
    , arFilteredDataQualityStandard
    , arAggregateBy
    , arBucketBySession
    , arBucketByActivityType
    , arBucketByTime
    , arStartTimeMillis
    , arBucketByActivitySegment

    -- * Device
    , Device
    , device
    , dManufacturer
    , dUid
    , dModel
    , dVersion
    , dType

    -- * Value
    , Value
    , value
    , vMapVal
    , vFpVal
    , vIntVal
    , vStringVal

    -- * BucketBySession
    , BucketBySession
    , bucketBySession
    , bbsMinDurationMillis

    -- * DataPoint
    , DataPoint
    , dataPoint
    , dpOriginDataSourceId
    , dpRawTimestampNanos
    , dpDataTypeName
    , dpValue
    , dpComputationTimeMillis
    , dpEndTimeNanos
    , dpModifiedTimeMillis
    , dpStartTimeNanos

    -- * ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrDeletedSession
    , lsrHasMoreData
    , lsrSession

    -- * AggregateBucket
    , AggregateBucket
    , aggregateBucket
    , abEndTimeMillis
    , abDataSet
    , abActivity
    , abType
    , abStartTimeMillis
    , abSession

    -- * MapValue
    , MapValue
    , mapValue
    , mvFpVal

    -- * ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrDataSource

    -- * DataTypeField
    , DataTypeField
    , dataTypeField
    , dtfFormat
    , dtfName
    , dtfOptional

    -- * AggregateRequestFilteredDataQualityStandardItem
    , AggregateRequestFilteredDataQualityStandardItem (..)

    -- * DataSource
    , DataSource
    , dataSource
    , dsApplication
    , dsDevice
    , dsDataQualityStandard
    , dsName
    , dsDataType
    , dsType
    , dsDataStreamName
    , dsDataStreamId

    -- * BucketByTimePeriod
    , BucketByTimePeriod
    , bucketByTimePeriod
    , bbtpValue
    , bbtpType
    , bbtpTimeZoneId

    -- * DeviceType
    , DeviceType (..)

    -- * ValueMapValEntry
    , ValueMapValEntry
    , valueMapValEntry
    , vmveValue
    , vmveKey

    -- * BucketByTime
    , BucketByTime
    , bucketByTime
    , bbtPeriod
    , bbtDurationMillis

    -- * DataType
    , DataType
    , dataType
    , dtField
    , dtName

    -- * ListDataPointChangesResponse
    , ListDataPointChangesResponse
    , listDataPointChangesResponse
    , ldpcrNextPageToken
    , ldpcrInsertedDataPoint
    , ldpcrDataSourceId
    , ldpcrDeletedDataPoint

    -- * Session
    , Session
    , session
    , sEndTimeMillis
    , sActiveTimeMillis
    , sApplication
    , sActivityType
    , sName
    , sModifiedTimeMillis
    , sId
    , sStartTimeMillis
    , sDescription

    -- * DataSourceDataQualityStandardItem
    , DataSourceDataQualityStandardItem (..)

    -- * DataTypeFieldFormat
    , DataTypeFieldFormat (..)
    ) where

import           Network.Google.Fitness.Types.Product
import           Network.Google.Fitness.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Fitness. This contains the host and root path used as a starting point for constructing service requests.
fitnessService :: ServiceConfig
fitnessService
  = defaultService (ServiceId "fitness:v1")
      "www.googleapis.com"

-- | View body temperature data in Google Fit
fitnessBodyTemperatureReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.body_temperature.read"]
fitnessBodyTemperatureReadScope = Proxy;

-- | View body sensor information in Google Fit
fitnessBodyReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.body.read"]
fitnessBodyReadScope = Proxy;

-- | View nutrition information in Google Fit
fitnessNutritionReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.nutrition.read"]
fitnessNutritionReadScope = Proxy;

-- | View reproductive health data in Google Fit
fitnessReProductiveHealthReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.reproductive_health.read"]
fitnessReProductiveHealthReadScope = Proxy;

-- | View your activity information in Google Fit
fitnessActivityReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.activity.read"]
fitnessActivityReadScope = Proxy;

-- | View and store reproductive health data in Google Fit
fitnessReProductiveHealthWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.reproductive_health.write"]
fitnessReProductiveHealthWriteScope = Proxy;

-- | View and store your activity information in Google Fit
fitnessActivityWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.activity.write"]
fitnessActivityWriteScope = Proxy;

-- | View and store blood pressure data in Google Fit
fitnessBloodPressureWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_pressure.write"]
fitnessBloodPressureWriteScope = Proxy;

-- | View and store body temperature data in Google Fit
fitnessBodyTemperatureWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.body_temperature.write"]
fitnessBodyTemperatureWriteScope = Proxy;

-- | View oxygen saturation data in Google Fit
fitnessOxygenSaturationReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.oxygen_saturation.read"]
fitnessOxygenSaturationReadScope = Proxy;

-- | View and store blood glucose data in Google Fit
fitnessBloodGlucoseWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_glucose.write"]
fitnessBloodGlucoseWriteScope = Proxy;

-- | View blood pressure data in Google Fit
fitnessBloodPressureReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_pressure.read"]
fitnessBloodPressureReadScope = Proxy;

-- | View your stored location data in Google Fit
fitnessLocationReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.location.read"]
fitnessLocationReadScope = Proxy;

-- | View and store your location data in Google Fit
fitnessLocationWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.location.write"]
fitnessLocationWriteScope = Proxy;

-- | View and store nutrition information in Google Fit
fitnessNutritionWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.nutrition.write"]
fitnessNutritionWriteScope = Proxy;

-- | View and store body sensor data in Google Fit
fitnessBodyWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.body.write"]
fitnessBodyWriteScope = Proxy;

-- | View blood glucose data in Google Fit
fitnessBloodGlucoseReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_glucose.read"]
fitnessBloodGlucoseReadScope = Proxy;

-- | View and store oxygen saturation data in Google Fit
fitnessOxygenSaturationWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.oxygen_saturation.write"]
fitnessOxygenSaturationWriteScope = Proxy;
