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
    -- * REST Resources

    -- ** Fitness
      Fitness
    , fitness
    , fitnessURL

    -- ** fitness.users.dataSources.datasets.delete
    , module Network.Google.API.Fitness.Users.DataSources.Datasets.Delete

    -- ** fitness.users.dataSources.datasets.get
    , module Network.Google.API.Fitness.Users.DataSources.Datasets.Get

    -- ** fitness.users.dataSources.datasets.patch
    , module Network.Google.API.Fitness.Users.DataSources.Datasets.Patch

    -- ** fitness.users.dataset.aggregate
    , module Network.Google.API.Fitness.Users.Dataset.Aggregate

    -- ** fitness.users.sessions.delete
    , module Network.Google.API.Fitness.Users.Sessions.Delete

    -- ** fitness.users.sessions.list
    , module Network.Google.API.Fitness.Users.Sessions.List

    -- ** fitness.users.sessions.update
    , module Network.Google.API.Fitness.Users.Sessions.Update

    -- * Types

    -- ** ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrDeletedSession
    , lsrSession

    -- ** AggregateBucketType
    , AggregateBucketType (..)

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

    -- ** AggregateBucket
    , AggregateBucket
    , aggregateBucket
    , abEndTimeMillis
    , abDataset
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

    -- ** AggregateBy
    , AggregateBy
    , aggregateBy
    , abDataTypeName
    , abDataSourceId

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

    -- ** Application
    , Application
    , application
    , aPackageName
    , aName
    , aVersion
    , aDetailsUrl

    -- ** Alt
    , Alt (..)

    -- ** AggregateResponse
    , AggregateResponse
    , aggregateResponse
    , arBucket

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

    -- ** DataType
    , DataType
    , dataType
    , dtField
    , dtName

    -- ** BucketByTime
    , BucketByTime
    , bucketByTime
    , bbtDurationMillis

    -- ** ValueMapValEntry
    , ValueMapValEntry
    , valueMapValEntry
    , vmveValue
    , vmveKey

    -- ** DeviceType
    , DeviceType (..)

    -- ** DataTypeField
    , DataTypeField
    , dataTypeField
    , dtfFormat
    , dtfName
    , dtfOptional

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

    -- ** BucketByActivity
    , BucketByActivity
    , bucketByActivity
    , bbaMinDurationMillis
    , bbaActivityDataSourceId

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

    -- ** DataSourceType
    , DataSourceType (..)
    ) where

import           Network.Google.API.Fitness.Users.Dataset.Aggregate
import           Network.Google.API.Fitness.Users.DataSources.Datasets.Delete
import           Network.Google.API.Fitness.Users.DataSources.Datasets.Get
import           Network.Google.API.Fitness.Users.DataSources.Datasets.Patch
import           Network.Google.API.Fitness.Users.Sessions.Delete
import           Network.Google.API.Fitness.Users.Sessions.List
import           Network.Google.API.Fitness.Users.Sessions.Update
import           Network.Google.Fitness.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Fitness =
     UsersSessionsUpdateAPI :<|>
       UsersDataSourcesDatasetsGetAPI
       :<|> UsersDataSourcesDatasetsDeleteAPI
       :<|> UsersDataSourcesDatasetsPatchAPI
       :<|> UsersSessionsListAPI
       :<|> UsersSessionsDeleteAPI
       :<|> UsersDatasetAggregateAPI

fitness :: Proxy Fitness
fitness = Proxy
