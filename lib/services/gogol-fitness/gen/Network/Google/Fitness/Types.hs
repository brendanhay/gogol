{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fitness.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , fitnessHeartRateWriteScope
    , fitnessSleepWriteScope
    , fitnessNutritionReadScope
    , fitnessReProductiveHealthReadScope
    , fitnessActivityReadScope
    , fitnessReProductiveHealthWriteScope
    , fitnessActivityWriteScope
    , fitnessBloodPressureWriteScope
    , fitnessSleepReadScope
    , fitnessHeartRateReadScope
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

    -- * Xgafv
    , Xgafv (..)

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

import Network.Google.Fitness.Types.Product
import Network.Google.Fitness.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Fitness API. This contains the host and root path used as a starting point for constructing service requests.
fitnessService :: ServiceConfig
fitnessService
  = defaultService (ServiceId "fitness:v1")
      "fitness.googleapis.com"

-- | See info about your body temperature in Google Fit. I consent to Google
-- sharing my body temperature information with this app.
fitnessBodyTemperatureReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.body_temperature.read"]
fitnessBodyTemperatureReadScope = Proxy

-- | See info about your body measurements and heart rate in Google Fit
fitnessBodyReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.body.read"]
fitnessBodyReadScope = Proxy

-- | Add to your heart rate data in Google Fit. I consent to Google using my
-- heart rate information with this app.
fitnessHeartRateWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.heart_rate.write"]
fitnessHeartRateWriteScope = Proxy

-- | Add to your sleep data in Google Fit. I consent to Google using my sleep
-- information with this app.
fitnessSleepWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.sleep.write"]
fitnessSleepWriteScope = Proxy

-- | See info about your nutrition in Google Fit
fitnessNutritionReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.nutrition.read"]
fitnessNutritionReadScope = Proxy

-- | See info about your reproductive health in Google Fit. I consent to
-- Google sharing my reproductive health information with this app.
fitnessReProductiveHealthReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.reproductive_health.read"]
fitnessReProductiveHealthReadScope = Proxy

-- | Use Google Fit to see and store your physical activity data
fitnessActivityReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.activity.read"]
fitnessActivityReadScope = Proxy

-- | Add info about your reproductive health in Google Fit. I consent to
-- Google using my reproductive health information with this app.
fitnessReProductiveHealthWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.reproductive_health.write"]
fitnessReProductiveHealthWriteScope = Proxy

-- | Add to your Google Fit physical activity data
fitnessActivityWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.activity.write"]
fitnessActivityWriteScope = Proxy

-- | Add info about your blood pressure in Google Fit. I consent to Google
-- using my blood pressure information with this app.
fitnessBloodPressureWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_pressure.write"]
fitnessBloodPressureWriteScope = Proxy

-- | See your sleep data in Google Fit. I consent to Google sharing my sleep
-- information with this app.
fitnessSleepReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.sleep.read"]
fitnessSleepReadScope = Proxy

-- | See your heart rate data in Google Fit. I consent to Google sharing my
-- heart rate information with this app.
fitnessHeartRateReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.heart_rate.read"]
fitnessHeartRateReadScope = Proxy

-- | Add to info about your body temperature in Google Fit. I consent to
-- Google using my body temperature information with this app.
fitnessBodyTemperatureWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.body_temperature.write"]
fitnessBodyTemperatureWriteScope = Proxy

-- | See info about your oxygen saturation in Google Fit. I consent to Google
-- sharing my oxygen saturation information with this app.
fitnessOxygenSaturationReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.oxygen_saturation.read"]
fitnessOxygenSaturationReadScope = Proxy

-- | Add info about your blood glucose to Google Fit. I consent to Google
-- using my blood glucose information with this app.
fitnessBloodGlucoseWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_glucose.write"]
fitnessBloodGlucoseWriteScope = Proxy

-- | See info about your blood pressure in Google Fit. I consent to Google
-- sharing my blood pressure information with this app.
fitnessBloodPressureReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_pressure.read"]
fitnessBloodPressureReadScope = Proxy

-- | See your Google Fit speed and distance data
fitnessLocationReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.location.read"]
fitnessLocationReadScope = Proxy

-- | Add to your Google Fit location data
fitnessLocationWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.location.write"]
fitnessLocationWriteScope = Proxy

-- | Add to info about your nutrition in Google Fit
fitnessNutritionWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.nutrition.write"]
fitnessNutritionWriteScope = Proxy

-- | Add info about your body measurements and heart rate to Google Fit
fitnessBodyWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.body.write"]
fitnessBodyWriteScope = Proxy

-- | See info about your blood glucose in Google Fit. I consent to Google
-- sharing my blood glucose information with this app.
fitnessBloodGlucoseReadScope :: Proxy '["https://www.googleapis.com/auth/fitness.blood_glucose.read"]
fitnessBloodGlucoseReadScope = Proxy

-- | Add info about your oxygen saturation in Google Fit. I consent to Google
-- using my oxygen saturation information with this app.
fitnessOxygenSaturationWriteScope :: Proxy '["https://www.googleapis.com/auth/fitness.oxygen_saturation.write"]
fitnessOxygenSaturationWriteScope = Proxy
