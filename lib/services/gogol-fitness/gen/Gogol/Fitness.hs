{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Fitness
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Fitness API for managing users\' fitness tracking data.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference>
module Gogol.Fitness
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

    -- * Resources

    -- ** fitness.users.dataSources.create
    FitnessUsersDataSourcesCreateResource,
    FitnessUsersDataSourcesCreate (..),
    newFitnessUsersDataSourcesCreate,

    -- ** fitness.users.dataSources.dataPointChanges.list
    FitnessUsersDataSourcesDataPointChangesListResource,
    FitnessUsersDataSourcesDataPointChangesList (..),
    newFitnessUsersDataSourcesDataPointChangesList,

    -- ** fitness.users.dataSources.datasets.delete
    FitnessUsersDataSourcesDatasetsDeleteResource,
    FitnessUsersDataSourcesDatasetsDelete (..),
    newFitnessUsersDataSourcesDatasetsDelete,

    -- ** fitness.users.dataSources.datasets.get
    FitnessUsersDataSourcesDatasetsGetResource,
    FitnessUsersDataSourcesDatasetsGet (..),
    newFitnessUsersDataSourcesDatasetsGet,

    -- ** fitness.users.dataSources.datasets.patch
    FitnessUsersDataSourcesDatasetsPatchResource,
    FitnessUsersDataSourcesDatasetsPatch (..),
    newFitnessUsersDataSourcesDatasetsPatch,

    -- ** fitness.users.dataSources.delete
    FitnessUsersDataSourcesDeleteResource,
    FitnessUsersDataSourcesDelete (..),
    newFitnessUsersDataSourcesDelete,

    -- ** fitness.users.dataSources.get
    FitnessUsersDataSourcesGetResource,
    FitnessUsersDataSourcesGet (..),
    newFitnessUsersDataSourcesGet,

    -- ** fitness.users.dataSources.list
    FitnessUsersDataSourcesListResource,
    FitnessUsersDataSourcesList (..),
    newFitnessUsersDataSourcesList,

    -- ** fitness.users.dataSources.update
    FitnessUsersDataSourcesUpdateResource,
    FitnessUsersDataSourcesUpdate (..),
    newFitnessUsersDataSourcesUpdate,

    -- ** fitness.users.dataset.aggregate
    FitnessUsersDatasetAggregateResource,
    FitnessUsersDatasetAggregate (..),
    newFitnessUsersDatasetAggregate,

    -- ** fitness.users.sessions.delete
    FitnessUsersSessionsDeleteResource,
    FitnessUsersSessionsDelete (..),
    newFitnessUsersSessionsDelete,

    -- ** fitness.users.sessions.list
    FitnessUsersSessionsListResource,
    FitnessUsersSessionsList (..),
    newFitnessUsersSessionsList,

    -- ** fitness.users.sessions.update
    FitnessUsersSessionsUpdateResource,
    FitnessUsersSessionsUpdate (..),
    newFitnessUsersSessionsUpdate,

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
