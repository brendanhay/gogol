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
-- Module      : Gogol.Fitness
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Fitness API for managing users\' fitness tracking data.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference>
module Gogol.Fitness
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

    -- * Resources

    -- ** fitness.users.dataSources.create
    , FitnessUsersDataSourcesCreateResource
    , newFitnessUsersDataSourcesCreate
    , FitnessUsersDataSourcesCreate

    -- ** fitness.users.dataSources.dataPointChanges.list
    , FitnessUsersDataSourcesDataPointChangesListResource
    , newFitnessUsersDataSourcesDataPointChangesList
    , FitnessUsersDataSourcesDataPointChangesList

    -- ** fitness.users.dataSources.datasets.delete
    , FitnessUsersDataSourcesDatasetsDeleteResource
    , newFitnessUsersDataSourcesDatasetsDelete
    , FitnessUsersDataSourcesDatasetsDelete

    -- ** fitness.users.dataSources.datasets.get
    , FitnessUsersDataSourcesDatasetsGetResource
    , newFitnessUsersDataSourcesDatasetsGet
    , FitnessUsersDataSourcesDatasetsGet

    -- ** fitness.users.dataSources.datasets.patch
    , FitnessUsersDataSourcesDatasetsPatchResource
    , newFitnessUsersDataSourcesDatasetsPatch
    , FitnessUsersDataSourcesDatasetsPatch

    -- ** fitness.users.dataSources.delete
    , FitnessUsersDataSourcesDeleteResource
    , newFitnessUsersDataSourcesDelete
    , FitnessUsersDataSourcesDelete

    -- ** fitness.users.dataSources.get
    , FitnessUsersDataSourcesGetResource
    , newFitnessUsersDataSourcesGet
    , FitnessUsersDataSourcesGet

    -- ** fitness.users.dataSources.list
    , FitnessUsersDataSourcesListResource
    , newFitnessUsersDataSourcesList
    , FitnessUsersDataSourcesList

    -- ** fitness.users.dataSources.update
    , FitnessUsersDataSourcesUpdateResource
    , newFitnessUsersDataSourcesUpdate
    , FitnessUsersDataSourcesUpdate

    -- ** fitness.users.dataset.aggregate
    , FitnessUsersDatasetAggregateResource
    , newFitnessUsersDatasetAggregate
    , FitnessUsersDatasetAggregate

    -- ** fitness.users.sessions.delete
    , FitnessUsersSessionsDeleteResource
    , newFitnessUsersSessionsDelete
    , FitnessUsersSessionsDelete

    -- ** fitness.users.sessions.list
    , FitnessUsersSessionsListResource
    , newFitnessUsersSessionsList
    , FitnessUsersSessionsList

    -- ** fitness.users.sessions.update
    , FitnessUsersSessionsUpdateResource
    , newFitnessUsersSessionsUpdate
    , FitnessUsersSessionsUpdate

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

import Gogol.Fitness.Types
import Gogol.Fitness.Users.DataSources.Create
import Gogol.Fitness.Users.DataSources.DataPointChanges.List
import Gogol.Fitness.Users.DataSources.Datasets.Delete
import Gogol.Fitness.Users.DataSources.Datasets.Get
import Gogol.Fitness.Users.DataSources.Datasets.Patch
import Gogol.Fitness.Users.DataSources.Delete
import Gogol.Fitness.Users.DataSources.Get
import Gogol.Fitness.Users.DataSources.List
import Gogol.Fitness.Users.DataSources.Update
import Gogol.Fitness.Users.Dataset.Aggregate
import Gogol.Fitness.Users.Sessions.Delete
import Gogol.Fitness.Users.Sessions.List
import Gogol.Fitness.Users.Sessions.Update
