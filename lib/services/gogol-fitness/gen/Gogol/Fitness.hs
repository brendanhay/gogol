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
    newFitnessUsersDataSourcesCreate,
    FitnessUsersDataSourcesCreate,

    -- ** fitness.users.dataSources.dataPointChanges.list
    FitnessUsersDataSourcesDataPointChangesListResource,
    newFitnessUsersDataSourcesDataPointChangesList,
    FitnessUsersDataSourcesDataPointChangesList,

    -- ** fitness.users.dataSources.datasets.delete
    FitnessUsersDataSourcesDatasetsDeleteResource,
    newFitnessUsersDataSourcesDatasetsDelete,
    FitnessUsersDataSourcesDatasetsDelete,

    -- ** fitness.users.dataSources.datasets.get
    FitnessUsersDataSourcesDatasetsGetResource,
    newFitnessUsersDataSourcesDatasetsGet,
    FitnessUsersDataSourcesDatasetsGet,

    -- ** fitness.users.dataSources.datasets.patch
    FitnessUsersDataSourcesDatasetsPatchResource,
    newFitnessUsersDataSourcesDatasetsPatch,
    FitnessUsersDataSourcesDatasetsPatch,

    -- ** fitness.users.dataSources.delete
    FitnessUsersDataSourcesDeleteResource,
    newFitnessUsersDataSourcesDelete,
    FitnessUsersDataSourcesDelete,

    -- ** fitness.users.dataSources.get
    FitnessUsersDataSourcesGetResource,
    newFitnessUsersDataSourcesGet,
    FitnessUsersDataSourcesGet,

    -- ** fitness.users.dataSources.list
    FitnessUsersDataSourcesListResource,
    newFitnessUsersDataSourcesList,
    FitnessUsersDataSourcesList,

    -- ** fitness.users.dataSources.update
    FitnessUsersDataSourcesUpdateResource,
    newFitnessUsersDataSourcesUpdate,
    FitnessUsersDataSourcesUpdate,

    -- ** fitness.users.dataset.aggregate
    FitnessUsersDatasetAggregateResource,
    newFitnessUsersDatasetAggregate,
    FitnessUsersDatasetAggregate,

    -- ** fitness.users.sessions.delete
    FitnessUsersSessionsDeleteResource,
    newFitnessUsersSessionsDelete,
    FitnessUsersSessionsDelete,

    -- ** fitness.users.sessions.list
    FitnessUsersSessionsListResource,
    newFitnessUsersSessionsList,
    FitnessUsersSessionsList,

    -- ** fitness.users.sessions.update
    FitnessUsersSessionsUpdateResource,
    newFitnessUsersSessionsUpdate,
    FitnessUsersSessionsUpdate,

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
