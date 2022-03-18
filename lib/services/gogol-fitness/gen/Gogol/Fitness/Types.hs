{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Fitness.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Fitness.Types
    (
    -- * Configuration
      fitnessService

    -- * OAuth Scopes
    , fitnessActivityReadScope
    , fitnessActivityWriteScope
    , fitnessBlood_glucoseReadScope
    , fitnessBlood_glucoseWriteScope
    , fitnessBlood_pressureReadScope
    , fitnessBlood_pressureWriteScope
    , fitnessBodyReadScope
    , fitnessBodyWriteScope
    , fitnessBody_temperatureReadScope
    , fitnessBody_temperatureWriteScope
    , fitnessHeart_rateReadScope
    , fitnessHeart_rateWriteScope
    , fitnessLocationReadScope
    , fitnessLocationWriteScope
    , fitnessNutritionReadScope
    , fitnessNutritionWriteScope
    , fitnessOxygen_saturationReadScope
    , fitnessOxygen_saturationWriteScope
    , fitnessReproductive_healthReadScope
    , fitnessReproductive_healthWriteScope
    , fitnessSleepReadScope
    , fitnessSleepWriteScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AggregateBucket
    , AggregateBucket (..)
    , newAggregateBucket

    -- ** AggregateBucket_Type
    , AggregateBucket_Type (..)

    -- ** AggregateBy
    , AggregateBy (..)
    , newAggregateBy

    -- ** AggregateRequest
    , AggregateRequest (..)
    , newAggregateRequest

    -- ** AggregateRequest_FilteredDataQualityStandardItem
    , AggregateRequest_FilteredDataQualityStandardItem (..)

    -- ** AggregateResponse
    , AggregateResponse (..)
    , newAggregateResponse

    -- ** Application
    , Application (..)
    , newApplication

    -- ** BucketByActivity
    , BucketByActivity (..)
    , newBucketByActivity

    -- ** BucketBySession
    , BucketBySession (..)
    , newBucketBySession

    -- ** BucketByTime
    , BucketByTime (..)
    , newBucketByTime

    -- ** BucketByTimePeriod
    , BucketByTimePeriod (..)
    , newBucketByTimePeriod

    -- ** BucketByTimePeriod_Type
    , BucketByTimePeriod_Type (..)

    -- ** DataPoint
    , DataPoint (..)
    , newDataPoint

    -- ** DataSource
    , DataSource (..)
    , newDataSource

    -- ** DataSource_DataQualityStandardItem
    , DataSource_DataQualityStandardItem (..)

    -- ** DataSource_Type
    , DataSource_Type (..)

    -- ** DataType
    , DataType (..)
    , newDataType

    -- ** DataTypeField
    , DataTypeField (..)
    , newDataTypeField

    -- ** DataTypeField_Format
    , DataTypeField_Format (..)

    -- ** Dataset
    , Dataset (..)
    , newDataset

    -- ** Device
    , Device (..)
    , newDevice

    -- ** Device_Type
    , Device_Type (..)

    -- ** ListDataPointChangesResponse
    , ListDataPointChangesResponse (..)
    , newListDataPointChangesResponse

    -- ** ListDataSourcesResponse
    , ListDataSourcesResponse (..)
    , newListDataSourcesResponse

    -- ** ListSessionsResponse
    , ListSessionsResponse (..)
    , newListSessionsResponse

    -- ** MapValue
    , MapValue (..)
    , newMapValue

    -- ** Session
    , Session (..)
    , newSession

    -- ** Value
    , Value (..)
    , newValue

    -- ** ValueMapValEntry
    , ValueMapValEntry (..)
    , newValueMapValEntry
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Fitness.Internal.Product
import Gogol.Fitness.Internal.Sum

-- | Default request referring to version @v1@ of the Fitness API. This contains the host and root path used as a starting point for constructing service requests.
fitnessService :: Core.ServiceConfig
fitnessService
  = Core.defaultService (Core.ServiceId "fitness:v1")
      "fitness.googleapis.com"

-- | Use Google Fit to see and store your physical activity data
fitnessActivityReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.activity.read"]
fitnessActivityReadScope = Core.Proxy

-- | Add to your Google Fit physical activity data
fitnessActivityWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.activity.write"]
fitnessActivityWriteScope = Core.Proxy

-- | See info about your blood glucose in Google Fit. I consent to Google sharing my blood glucose information with this app.
fitnessBlood_glucoseReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.blood_glucose.read"]
fitnessBlood_glucoseReadScope = Core.Proxy

-- | Add info about your blood glucose to Google Fit. I consent to Google using my blood glucose information with this app.
fitnessBlood_glucoseWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.blood_glucose.write"]
fitnessBlood_glucoseWriteScope = Core.Proxy

-- | See info about your blood pressure in Google Fit. I consent to Google sharing my blood pressure information with this app.
fitnessBlood_pressureReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.blood_pressure.read"]
fitnessBlood_pressureReadScope = Core.Proxy

-- | Add info about your blood pressure in Google Fit. I consent to Google using my blood pressure information with this app.
fitnessBlood_pressureWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.blood_pressure.write"]
fitnessBlood_pressureWriteScope = Core.Proxy

-- | See info about your body measurements in Google Fit
fitnessBodyReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.body.read"]
fitnessBodyReadScope = Core.Proxy

-- | Add info about your body measurements to Google Fit
fitnessBodyWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.body.write"]
fitnessBodyWriteScope = Core.Proxy

-- | See info about your body temperature in Google Fit. I consent to Google sharing my body temperature information with this app.
fitnessBody_temperatureReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.body_temperature.read"]
fitnessBody_temperatureReadScope = Core.Proxy

-- | Add to info about your body temperature in Google Fit. I consent to Google using my body temperature information with this app.
fitnessBody_temperatureWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.body_temperature.write"]
fitnessBody_temperatureWriteScope = Core.Proxy

-- | See your heart rate data in Google Fit. I consent to Google sharing my heart rate information with this app.
fitnessHeart_rateReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.heart_rate.read"]
fitnessHeart_rateReadScope = Core.Proxy

-- | Add to your heart rate data in Google Fit. I consent to Google using my heart rate information with this app.
fitnessHeart_rateWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.heart_rate.write"]
fitnessHeart_rateWriteScope = Core.Proxy

-- | See your Google Fit speed and distance data
fitnessLocationReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.location.read"]
fitnessLocationReadScope = Core.Proxy

-- | Add to your Google Fit location data
fitnessLocationWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.location.write"]
fitnessLocationWriteScope = Core.Proxy

-- | See info about your nutrition in Google Fit
fitnessNutritionReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.nutrition.read"]
fitnessNutritionReadScope = Core.Proxy

-- | Add to info about your nutrition in Google Fit
fitnessNutritionWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.nutrition.write"]
fitnessNutritionWriteScope = Core.Proxy

-- | See info about your oxygen saturation in Google Fit. I consent to Google sharing my oxygen saturation information with this app.
fitnessOxygen_saturationReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.oxygen_saturation.read"]
fitnessOxygen_saturationReadScope = Core.Proxy

-- | Add info about your oxygen saturation in Google Fit. I consent to Google using my oxygen saturation information with this app.
fitnessOxygen_saturationWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.oxygen_saturation.write"]
fitnessOxygen_saturationWriteScope = Core.Proxy

-- | See info about your reproductive health in Google Fit. I consent to Google sharing my reproductive health information with this app.
fitnessReproductive_healthReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.reproductive_health.read"]
fitnessReproductive_healthReadScope = Core.Proxy

-- | Add info about your reproductive health in Google Fit. I consent to Google using my reproductive health information with this app.
fitnessReproductive_healthWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.reproductive_health.write"]
fitnessReproductive_healthWriteScope = Core.Proxy

-- | See your sleep data in Google Fit. I consent to Google sharing my sleep information with this app.
fitnessSleepReadScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.sleep.read"]
fitnessSleepReadScope = Core.Proxy

-- | Add to your sleep data in Google Fit. I consent to Google using my sleep information with this app.
fitnessSleepWriteScope :: Core.Proxy '["https://www.googleapis.com/auth/fitness.sleep.write"]
fitnessSleepWriteScope = Core.Proxy
