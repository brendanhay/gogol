{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fitness.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fitness.Types
    (
    -- * Service URL
      fitnessURL

    -- * AggregateBucketType
    , AggregateBucketType (..)

    -- * Application
    , Application
    , application
    , aPackageName
    , aName
    , aVersion
    , aDetailsUrl

    -- * AggregateBy
    , AggregateBy
    , aggregateBy
    , abDataTypeName
    , abDataSourceId

    -- * AggregateResponse
    , AggregateResponse
    , aggregateResponse
    , arBucket

    -- * Dataset
    , Dataset
    , dataset
    , dNextPageToken
    , dDataSourceId
    , dPoint
    , dMinStartTimeNs
    , dMaxEndTimeNs

    -- * DataSourceType
    , DataSourceType (..)

    -- * AggregateRequest
    , AggregateRequest
    , aggregateRequest
    , arEndTimeMillis
    , arAggregateBy
    , arBucketBySession
    , arBucketByActivityType
    , arBucketByTime
    , arStartTimeMillis
    , arBucketByActivitySegment

    -- * BucketByActivity
    , BucketByActivity
    , bucketByActivity
    , bbaMinDurationMillis
    , bbaActivityDataSourceId

    -- * Device
    , Device
    , device
    , dManufacturer
    , dUid
    , dModel
    , dVersion
    , dType

    -- * BucketBySession
    , BucketBySession
    , bucketBySession
    , bbsMinDurationMillis

    -- * Value
    , Value
    , value
    , vMapVal
    , vFpVal
    , vIntVal
    , vStringVal

    -- * ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrDeletedSession
    , lsrSession

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

    -- * AggregateBucket
    , AggregateBucket
    , aggregateBucket
    , abEndTimeMillis
    , abDataset
    , abActivity
    , abType
    , abStartTimeMillis
    , abSession

    -- * ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrDataSource

    -- * MapValue
    , MapValue
    , mapValue
    , mvFpVal

    -- * DataTypeField
    , DataTypeField
    , dataTypeField
    , dtfFormat
    , dtfName
    , dtfOptional

    -- * DataSource
    , DataSource
    , dataSource
    , dsApplication
    , dsDevice
    , dsName
    , dsDataType
    , dsType
    , dsDataStreamName
    , dsDataStreamId

    -- * ValueMapValEntry
    , ValueMapValEntry
    , valueMapValEntry
    , vmveValue
    , vmveKey

    -- * DataType
    , DataType
    , dataType
    , dtField
    , dtName

    -- * DeviceType
    , DeviceType (..)

    -- * BucketByTime
    , BucketByTime
    , bucketByTime
    , bbtDurationMillis

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

    -- * DataTypeFieldFormat
    , DataTypeFieldFormat (..)

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.Fitness.Types.Product
import           Network.Google.Fitness.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Fitness.
fitnessURL :: BaseUrl
fitnessURL
  = BaseUrl Https
      "https://www.googleapis.com/fitness/v1/users/"
      443
