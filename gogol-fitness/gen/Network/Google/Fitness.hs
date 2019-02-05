{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Fitness
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores and accesses user data in the fitness store from apps on any
-- platform.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference>
module Network.Google.Fitness
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

    -- * API Declaration
    , FitnessAPI

    -- * Resources

    -- ** fitness.users.dataSources.create
    , module Network.Google.Resource.Fitness.Users.DataSources.Create

    -- ** fitness.users.dataSources.dataPointChanges.list
    , module Network.Google.Resource.Fitness.Users.DataSources.DataPointChanges.List

    -- ** fitness.users.dataSources.datasets.delete
    , module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Delete

    -- ** fitness.users.dataSources.datasets.get
    , module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Get

    -- ** fitness.users.dataSources.datasets.patch
    , module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Patch

    -- ** fitness.users.dataSources.delete
    , module Network.Google.Resource.Fitness.Users.DataSources.Delete

    -- ** fitness.users.dataSources.get
    , module Network.Google.Resource.Fitness.Users.DataSources.Get

    -- ** fitness.users.dataSources.list
    , module Network.Google.Resource.Fitness.Users.DataSources.List

    -- ** fitness.users.dataSources.patch
    , module Network.Google.Resource.Fitness.Users.DataSources.Patch

    -- ** fitness.users.dataSources.update
    , module Network.Google.Resource.Fitness.Users.DataSources.Update

    -- ** fitness.users.dataset.aggregate
    , module Network.Google.Resource.Fitness.Users.DataSet.Aggregate

    -- ** fitness.users.sessions.delete
    , module Network.Google.Resource.Fitness.Users.Sessions.Delete

    -- ** fitness.users.sessions.list
    , module Network.Google.Resource.Fitness.Users.Sessions.List

    -- ** fitness.users.sessions.update
    , module Network.Google.Resource.Fitness.Users.Sessions.Update

    -- * Types

    -- ** AggregateBucketType
    , AggregateBucketType (..)

    -- ** DataSet
    , DataSet
    , dataSet
    , dsNextPageToken
    , dsDataSourceId
    , dsPoint
    , dsMinStartTimeNs
    , dsMaxEndTimeNs

    -- ** Application
    , Application
    , application
    , aPackageName
    , aName
    , aVersion
    , aDetailsURL

    -- ** AggregateResponse
    , AggregateResponse
    , aggregateResponse
    , arBucket

    -- ** AggregateBy
    , AggregateBy
    , aggregateBy
    , abDataTypeName
    , abDataSourceId

    -- ** DataSourceType
    , DataSourceType (..)

    -- ** BucketByTimePeriodType
    , BucketByTimePeriodType (..)

    -- ** BucketByActivity
    , BucketByActivity
    , bucketByActivity
    , bbaMinDurationMillis
    , bbaActivityDataSourceId

    -- ** AggregateRequest
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

    -- ** Device
    , Device
    , device
    , dManufacturer
    , dUid
    , dModel
    , dVersion
    , dType

    -- ** Value
    , Value
    , value
    , vMapVal
    , vFpVal
    , vIntVal
    , vStringVal

    -- ** BucketBySession
    , BucketBySession
    , bucketBySession
    , bbsMinDurationMillis

    -- ** DataPoint
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

    -- ** ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrDeletedSession
    , lsrHasMoreData
    , lsrSession

    -- ** AggregateBucket
    , AggregateBucket
    , aggregateBucket
    , abEndTimeMillis
    , abDataSet
    , abActivity
    , abType
    , abStartTimeMillis
    , abSession

    -- ** MapValue
    , MapValue
    , mapValue
    , mvFpVal

    -- ** ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrDataSource

    -- ** DataTypeField
    , DataTypeField
    , dataTypeField
    , dtfFormat
    , dtfName
    , dtfOptional

    -- ** AggregateRequestFilteredDataQualityStandardItem
    , AggregateRequestFilteredDataQualityStandardItem (..)

    -- ** DataSource
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

    -- ** BucketByTimePeriod
    , BucketByTimePeriod
    , bucketByTimePeriod
    , bbtpValue
    , bbtpType
    , bbtpTimeZoneId

    -- ** DeviceType
    , DeviceType (..)

    -- ** ValueMapValEntry
    , ValueMapValEntry
    , valueMapValEntry
    , vmveValue
    , vmveKey

    -- ** BucketByTime
    , BucketByTime
    , bucketByTime
    , bbtPeriod
    , bbtDurationMillis

    -- ** DataType
    , DataType
    , dataType
    , dtField
    , dtName

    -- ** ListDataPointChangesResponse
    , ListDataPointChangesResponse
    , listDataPointChangesResponse
    , ldpcrNextPageToken
    , ldpcrInsertedDataPoint
    , ldpcrDataSourceId
    , ldpcrDeletedDataPoint

    -- ** Session
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

    -- ** DataSourceDataQualityStandardItem
    , DataSourceDataQualityStandardItem (..)

    -- ** DataTypeFieldFormat
    , DataTypeFieldFormat (..)
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Fitness.Users.DataSet.Aggregate
import           Network.Google.Resource.Fitness.Users.DataSources.Create
import           Network.Google.Resource.Fitness.Users.DataSources.DataPointChanges.List
import           Network.Google.Resource.Fitness.Users.DataSources.DataSets.Delete
import           Network.Google.Resource.Fitness.Users.DataSources.DataSets.Get
import           Network.Google.Resource.Fitness.Users.DataSources.DataSets.Patch
import           Network.Google.Resource.Fitness.Users.DataSources.Delete
import           Network.Google.Resource.Fitness.Users.DataSources.Get
import           Network.Google.Resource.Fitness.Users.DataSources.List
import           Network.Google.Resource.Fitness.Users.DataSources.Patch
import           Network.Google.Resource.Fitness.Users.DataSources.Update
import           Network.Google.Resource.Fitness.Users.Sessions.Delete
import           Network.Google.Resource.Fitness.Users.Sessions.List
import           Network.Google.Resource.Fitness.Users.Sessions.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Fitness service.
type FitnessAPI =
     UsersDataSetAggregateResource :<|>
       UsersDataSourcesDataSetsPatchResource
       :<|> UsersDataSourcesDataSetsGetResource
       :<|> UsersDataSourcesDataSetsDeleteResource
       :<|> UsersDataSourcesDataPointChangesListResource
       :<|> UsersDataSourcesListResource
       :<|> UsersDataSourcesPatchResource
       :<|> UsersDataSourcesGetResource
       :<|> UsersDataSourcesCreateResource
       :<|> UsersDataSourcesDeleteResource
       :<|> UsersDataSourcesUpdateResource
       :<|> UsersSessionsListResource
       :<|> UsersSessionsDeleteResource
       :<|> UsersSessionsUpdateResource
