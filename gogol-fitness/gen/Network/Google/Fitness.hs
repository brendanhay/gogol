{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Fitness
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Google Fit API
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference>
module Network.Google.Fitness
    (
    -- * Resources
      Fitness
    , UsersAPI
    , DatasetAPI
    , DatasetAggregate
    , DataSourcesAPI
    , DatasetsAPI
    , DatasetsPatch
    , DatasetsGet
    , DatasetsDelete
    , SessionsAPI
    , SessionsList
    , SessionsDelete
    , SessionsUpdate

    -- * Types

    -- ** AggregateBucket
    , AggregateBucket
    , aggregateBucket
    , abEndTimeMillis
    , abDataset
    , abActivity
    , abType
    , abStartTimeMillis
    , abSession

    -- ** AggregateBucketType
    , AggregateBucketType (..)

    -- ** AggregateBy
    , AggregateBy
    , aggregateBy
    , abDataTypeName
    , abDataSourceId

    -- ** AggregateRequest
    , AggregateRequest
    , aggregateRequest
    , arEndTimeMillis
    , arAggregateBy
    , arBucketBySession
    , arBucketByActivityType
    , arBucketByTime
    , arStartTimeMillis
    , arBucketByActivitySegment

    -- ** AggregateResponse
    , AggregateResponse
    , aggregateResponse
    , arBucket

    -- ** Application
    , Application
    , application
    , aPackageName
    , aName
    , aVersion
    , aDetailsUrl

    -- ** BucketByActivity
    , BucketByActivity
    , bucketByActivity
    , bbaMinDurationMillis
    , bbaActivityDataSourceId

    -- ** BucketBySession
    , BucketBySession
    , bucketBySession
    , bbsMinDurationMillis

    -- ** BucketByTime
    , BucketByTime
    , bucketByTime
    , bbtDurationMillis

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

    -- ** DataSource
    , DataSource
    , dataSource
    , dsApplication
    , dsDevice
    , dsName
    , dsDataType
    , dsType
    , dsDataStreamName
    , dsDataStreamId

    -- ** DataSourceType
    , DataSourceType (..)

    -- ** DataType
    , DataType
    , dataType
    , dtField
    , dtName

    -- ** DataTypeField
    , DataTypeField
    , dataTypeField
    , dtfFormat
    , dtfName
    , dtfOptional

    -- ** DataTypeFieldFormat
    , DataTypeFieldFormat (..)

    -- ** Dataset
    , Dataset
    , dataset
    , dNextPageToken
    , dDataSourceId
    , dPoint
    , dMinStartTimeNs
    , dMaxEndTimeNs

    -- ** Device
    , Device
    , device
    , dManufacturer
    , dUid
    , dModel
    , dVersion
    , dType

    -- ** DeviceType
    , DeviceType (..)

    -- ** ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrDataSource

    -- ** ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrDeletedSession
    , lsrSession

    -- ** MapValue
    , MapValue
    , mapValue
    , mvFpVal

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

    -- ** Value
    , Value
    , value
    , vMapVal
    , vFpVal
    , vIntVal
    , vStringVal

    -- ** ValueMapValEntry
    , ValueMapValEntry
    , valueMapValEntry
    , vmveValue
    , vmveKey
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Fitness = UsersAPI

type UsersAPI =
     DataSourcesAPI :<|> SessionsAPI :<|> DatasetAPI

type DatasetAPI = DatasetAggregate

-- | Aggregates data of a certain type or stream into buckets divided by a
-- given type of boundary. Multiple data sets of multiple types and from
-- multiple sources can be aggreated into exactly one bucket type per
-- request.
type DatasetAggregate =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "dataset:aggregate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DataSourcesAPI = DatasetsAPI

type DatasetsAPI =
     DatasetsGet :<|> DatasetsDelete :<|> DatasetsPatch

-- | Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics.
type DatasetsPatch =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "dataSources"
       :> Capture "dataSourceId" Text
       :> "datasets"
       :> Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "currentTimeMillis" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
type DatasetsGet =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "dataSources"
       :> Capture "dataSourceId" Text
       :> "datasets"
       :> Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "limit" Int32
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
type DatasetsDelete =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "dataSources"
       :> Capture "dataSourceId" Text
       :> "datasets"
       :> Capture "datasetId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "modifiedTimeMillis" Int64
       :> QueryParam "currentTimeMillis" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SessionsAPI =
     SessionsDelete :<|> SessionsUpdate :<|> SessionsList

-- | Lists sessions previously created.
type SessionsList =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "sessions"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "startTime" Text
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "endTime" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "includeDeleted" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a session specified by the given session ID.
type SessionsDelete =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "sessions"
       :> Capture "sessionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "currentTimeMillis" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates or insert a given session.
type SessionsUpdate =
     "fitness" :> "v1" :> "users" :> Capture "userId" Text
       :> "sessions"
       :> Capture "sessionId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "currentTimeMillis" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
