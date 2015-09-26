-- |
-- Module      : Network.Google.Fitness
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Fit API
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference>
module Network.Google.Fitness
    (
    -- * API Definition
      Fitness



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

{- $resources
TODO
-}

type Fitness = ()

fitness :: Proxy Fitness
fitness = Proxy




