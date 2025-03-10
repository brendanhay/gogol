{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Fitness.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Fitness.Types
  ( -- * Configuration
    fitnessService,

    -- * OAuth Scopes
    Fitness'Activity'Read,
    Fitness'Activity'Write,
    Fitness'BloodGlucose'Read,
    Fitness'BloodGlucose'Write,
    Fitness'BloodPressure'Read,
    Fitness'BloodPressure'Write,
    Fitness'Body'Read,
    Fitness'Body'Write,
    Fitness'BodyTemperature'Read,
    Fitness'BodyTemperature'Write,
    Fitness'HeartRate'Read,
    Fitness'HeartRate'Write,
    Fitness'Location'Read,
    Fitness'Location'Write,
    Fitness'Nutrition'Read,
    Fitness'Nutrition'Write,
    Fitness'OxygenSaturation'Read,
    Fitness'OxygenSaturation'Write,
    Fitness'ReproductiveHealth'Read,
    Fitness'ReproductiveHealth'Write,
    Fitness'Sleep'Read,
    Fitness'Sleep'Write,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AggregateBucket
    AggregateBucket (..),
    newAggregateBucket,

    -- ** AggregateBucket_Type
    AggregateBucket_Type (..),

    -- ** AggregateBy
    AggregateBy (..),
    newAggregateBy,

    -- ** AggregateRequest
    AggregateRequest (..),
    newAggregateRequest,

    -- ** AggregateRequest_FilteredDataQualityStandardItem
    AggregateRequest_FilteredDataQualityStandardItem (..),

    -- ** AggregateResponse
    AggregateResponse (..),
    newAggregateResponse,

    -- ** Application
    Application (..),
    newApplication,

    -- ** BucketByActivity
    BucketByActivity (..),
    newBucketByActivity,

    -- ** BucketBySession
    BucketBySession (..),
    newBucketBySession,

    -- ** BucketByTime
    BucketByTime (..),
    newBucketByTime,

    -- ** BucketByTimePeriod
    BucketByTimePeriod (..),
    newBucketByTimePeriod,

    -- ** BucketByTimePeriod_Type
    BucketByTimePeriod_Type (..),

    -- ** DataPoint
    DataPoint (..),
    newDataPoint,

    -- ** DataSource
    DataSource (..),
    newDataSource,

    -- ** DataSource_DataQualityStandardItem
    DataSource_DataQualityStandardItem (..),

    -- ** DataSource_Type
    DataSource_Type (..),

    -- ** DataType
    DataType (..),
    newDataType,

    -- ** DataTypeField
    DataTypeField (..),
    newDataTypeField,

    -- ** DataTypeField_Format
    DataTypeField_Format (..),

    -- ** Dataset
    Dataset (..),
    newDataset,

    -- ** Device
    Device (..),
    newDevice,

    -- ** Device_Type
    Device_Type (..),

    -- ** ListDataPointChangesResponse
    ListDataPointChangesResponse (..),
    newListDataPointChangesResponse,

    -- ** ListDataSourcesResponse
    ListDataSourcesResponse (..),
    newListDataSourcesResponse,

    -- ** ListSessionsResponse
    ListSessionsResponse (..),
    newListSessionsResponse,

    -- ** MapValue
    MapValue (..),
    newMapValue,

    -- ** Session
    Session (..),
    newSession,

    -- ** Value
    Value (..),
    newValue,

    -- ** ValueMapValEntry
    ValueMapValEntry (..),
    newValueMapValEntry,
  )
where

import Gogol.Fitness.Internal.Product
import Gogol.Fitness.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Fitness API. This contains the host and root path used as a starting point for constructing service requests.
fitnessService :: Core.ServiceConfig
fitnessService =
  Core.defaultService
    (Core.ServiceId "fitness:v1")
    "fitness.googleapis.com"

-- | Use Google Fit to see and store your physical activity data
type Fitness'Activity'Read =
  "https://www.googleapis.com/auth/fitness.activity.read"

-- | Add to your Google Fit physical activity data
type Fitness'Activity'Write =
  "https://www.googleapis.com/auth/fitness.activity.write"

-- | See info about your blood glucose in Google Fit. I consent to Google sharing my blood glucose information with this app.
type Fitness'BloodGlucose'Read =
  "https://www.googleapis.com/auth/fitness.blood_glucose.read"

-- | Add info about your blood glucose to Google Fit. I consent to Google using my blood glucose information with this app.
type Fitness'BloodGlucose'Write =
  "https://www.googleapis.com/auth/fitness.blood_glucose.write"

-- | See info about your blood pressure in Google Fit. I consent to Google sharing my blood pressure information with this app.
type Fitness'BloodPressure'Read =
  "https://www.googleapis.com/auth/fitness.blood_pressure.read"

-- | Add info about your blood pressure in Google Fit. I consent to Google using my blood pressure information with this app.
type Fitness'BloodPressure'Write =
  "https://www.googleapis.com/auth/fitness.blood_pressure.write"

-- | See info about your body measurements in Google Fit
type Fitness'Body'Read =
  "https://www.googleapis.com/auth/fitness.body.read"

-- | Add info about your body measurements to Google Fit
type Fitness'Body'Write =
  "https://www.googleapis.com/auth/fitness.body.write"

-- | See info about your body temperature in Google Fit. I consent to Google sharing my body temperature information with this app.
type Fitness'BodyTemperature'Read =
  "https://www.googleapis.com/auth/fitness.body_temperature.read"

-- | Add to info about your body temperature in Google Fit. I consent to Google using my body temperature information with this app.
type Fitness'BodyTemperature'Write =
  "https://www.googleapis.com/auth/fitness.body_temperature.write"

-- | See your heart rate data in Google Fit. I consent to Google sharing my heart rate information with this app.
type Fitness'HeartRate'Read =
  "https://www.googleapis.com/auth/fitness.heart_rate.read"

-- | Add to your heart rate data in Google Fit. I consent to Google using my heart rate information with this app.
type Fitness'HeartRate'Write =
  "https://www.googleapis.com/auth/fitness.heart_rate.write"

-- | See your Google Fit speed and distance data
type Fitness'Location'Read =
  "https://www.googleapis.com/auth/fitness.location.read"

-- | Add to your Google Fit location data
type Fitness'Location'Write =
  "https://www.googleapis.com/auth/fitness.location.write"

-- | See info about your nutrition in Google Fit
type Fitness'Nutrition'Read =
  "https://www.googleapis.com/auth/fitness.nutrition.read"

-- | Add to info about your nutrition in Google Fit
type Fitness'Nutrition'Write =
  "https://www.googleapis.com/auth/fitness.nutrition.write"

-- | See info about your oxygen saturation in Google Fit. I consent to Google sharing my oxygen saturation information with this app.
type Fitness'OxygenSaturation'Read =
  "https://www.googleapis.com/auth/fitness.oxygen_saturation.read"

-- | Add info about your oxygen saturation in Google Fit. I consent to Google using my oxygen saturation information with this app.
type Fitness'OxygenSaturation'Write =
  "https://www.googleapis.com/auth/fitness.oxygen_saturation.write"

-- | See info about your reproductive health in Google Fit. I consent to Google sharing my reproductive health information with this app.
type Fitness'ReproductiveHealth'Read =
  "https://www.googleapis.com/auth/fitness.reproductive_health.read"

-- | Add info about your reproductive health in Google Fit. I consent to Google using my reproductive health information with this app.
type Fitness'ReproductiveHealth'Write =
  "https://www.googleapis.com/auth/fitness.reproductive_health.write"

-- | See your sleep data in Google Fit. I consent to Google sharing my sleep information with this app.
type Fitness'Sleep'Read =
  "https://www.googleapis.com/auth/fitness.sleep.read"

-- | Add to your sleep data in Google Fit. I consent to Google using my sleep information with this app.
type Fitness'Sleep'Write =
  "https://www.googleapis.com/auth/fitness.sleep.write"
