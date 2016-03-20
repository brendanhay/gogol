{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fitness.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fitness.Types
    (
    -- * Service Configuration
      fitnessService

    -- * OAuth Scopes
    , authFitnessBodyReadScope
    , authFitnessActivityReadScope
    , authFitnessActivityWriteScope
    , authFitnessLocationReadScope
    , authFitnessLocationWriteScope
    , authFitnessBodyWriteScope

    -- * AggregateBucketType
    , AggregateBucketType (..)

    -- * DataSet
    , DataSet
    , dataSet
    , dsNextPageToken
    , dsDataSourceId
    , dsPoint
    , dsMinStartTimeNs
    , dsMaxEndTimeNs

    -- * Application
    , Application
    , application
    , aPackageName
    , aName
    , aVersion
    , aDetailsURL

    -- * AggregateResponse
    , AggregateResponse
    , aggregateResponse
    , arBucket

    -- * AggregateBy
    , AggregateBy
    , aggregateBy
    , abDataTypeName
    , abDataSourceId

    -- * DataSourceType
    , DataSourceType (..)

    -- * BucketByActivity
    , BucketByActivity
    , bucketByActivity
    , bbaMinDurationMillis
    , bbaActivityDataSourceId

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

    -- * Device
    , Device
    , device
    , dManufacturer
    , dUid
    , dModel
    , dVersion
    , dType

    -- * Value
    , Value
    , value
    , vMapVal
    , vFpVal
    , vIntVal
    , vStringVal

    -- * BucketBySession
    , BucketBySession
    , bucketBySession
    , bbsMinDurationMillis

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

    -- * ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrDeletedSession
    , lsrSession

    -- * AggregateBucket
    , AggregateBucket
    , aggregateBucket
    , abEndTimeMillis
    , abDataSet
    , abActivity
    , abType
    , abStartTimeMillis
    , abSession

    -- * MapValue
    , MapValue
    , mapValue
    , mvFpVal

    -- * ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrDataSource

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

    -- * DeviceType
    , DeviceType (..)

    -- * ValueMapValEntry
    , ValueMapValEntry
    , valueMapValEntry
    , vmveValue
    , vmveKey

    -- * BucketByTime
    , BucketByTime
    , bucketByTime
    , bbtDurationMillis

    -- * DataType
    , DataType
    , dataType
    , dtField
    , dtName

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
    ) where

import           Network.Google.Fitness.Types.Product
import           Network.Google.Fitness.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Fitness. This contains the host and root path used as a starting point for constructing service requests.
fitnessService :: ServiceConfig
fitnessService
  = defaultService (ServiceId "fitness:v1")
      "www.googleapis.com"

-- | View body sensor information in Google Fit
authFitnessBodyReadScope :: OAuthScope
authFitnessBodyReadScope = "https://www.googleapis.com/auth/fitness.body.read";

-- | View your activity information in Google Fit
authFitnessActivityReadScope :: OAuthScope
authFitnessActivityReadScope = "https://www.googleapis.com/auth/fitness.activity.read";

-- | View and store your activity information in Google Fit
authFitnessActivityWriteScope :: OAuthScope
authFitnessActivityWriteScope = "https://www.googleapis.com/auth/fitness.activity.write";

-- | View your stored location data in Google Fit
authFitnessLocationReadScope :: OAuthScope
authFitnessLocationReadScope = "https://www.googleapis.com/auth/fitness.location.read";

-- | View and store your location data in Google Fit
authFitnessLocationWriteScope :: OAuthScope
authFitnessLocationWriteScope = "https://www.googleapis.com/auth/fitness.location.write";

-- | View and store body sensor data in Google Fit
authFitnessBodyWriteScope :: OAuthScope
authFitnessBodyWriteScope = "https://www.googleapis.com/auth/fitness.body.write";
