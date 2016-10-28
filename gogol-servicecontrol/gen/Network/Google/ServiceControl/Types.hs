{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceControl.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceControl.Types
    (
    -- * Service Configuration
      serviceControlService

    -- * OAuth Scopes
    , serviceControlScope
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ReportRequest
    , ReportRequest
    , reportRequest
    , rrOperations

    -- * CheckRequest
    , CheckRequest
    , checkRequest
    , crOperation

    -- * MetricValueLabels
    , MetricValueLabels
    , metricValueLabels
    , mvlAddtional

    -- * Distribution
    , Distribution
    , distribution
    , dSumOfSquaredDeviation
    , dMean
    , dExponentialBuckets
    , dMaximum
    , dLinearBuckets
    , dCount
    , dMinimum
    , dBucketCounts
    , dExplicitBuckets

    -- * ExponentialBuckets
    , ExponentialBuckets
    , exponentialBuckets
    , ebGrowthFactor
    , ebScale
    , ebNumFiniteBuckets

    -- * Operation
    , Operation
    , operation
    , oImportance
    , oStartTime
    , oEndTime
    , oOperationName
    , oLabels
    , oOperationId
    , oConsumerId
    , oMetricValueSets
    , oLogEntries

    -- * MetricValueSet
    , MetricValueSet
    , metricValueSet
    , mvsMetricName
    , mvsMetricValues

    -- * LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- * LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- * LinearBuckets
    , LinearBuckets
    , linearBuckets
    , lbOffSet
    , lbWidth
    , lbNumFiniteBuckets

    -- * CheckErrorCode
    , CheckErrorCode (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * CheckError
    , CheckError
    , checkError
    , ceCode
    , ceDetail

    -- * ReportError
    , ReportError
    , reportError
    , reStatus
    , reOperationId

    -- * OperationImportance
    , OperationImportance (..)

    -- * MetricValue
    , MetricValue
    , metricValue
    , mvBoolValue
    , mvStartTime
    , mvDoubleValue
    , mvStringValue
    , mvDistributionValue
    , mvEndTime
    , mvInt64Value
    , mvLabels

    -- * Xgafv
    , Xgafv (..)

    -- * CheckResponse
    , CheckResponse
    , checkResponse
    , crCheckErrors
    , crServiceConfigId
    , crOperationId

    -- * ReportResponse
    , ReportResponse
    , reportResponse
    , rrReportErrors
    , rrServiceConfigId

    -- * LogEntry
    , LogEntry
    , logEntry
    , leSeverity
    , leTextPayload
    , leStructPayload
    , leName
    , leInsertId
    , leLabels
    , leProtoPayload
    , leTimestamp

    -- * OperationLabels
    , OperationLabels
    , operationLabels
    , olAddtional

    -- * LogEntrySeverity
    , LogEntrySeverity (..)

    -- * ExplicitBuckets
    , ExplicitBuckets
    , explicitBuckets
    , ebBounds

    -- * LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload
    , lespAddtional
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceControl.Types.Product
import           Network.Google.ServiceControl.Types.Sum

-- | Default request referring to version 'v1' of the Google Service Control API. This contains the host and root path used as a starting point for constructing service requests.
serviceControlService :: ServiceConfig
serviceControlService
  = defaultService (ServiceId "servicecontrol:v1")
      "servicecontrol.googleapis.com"

-- | Manage your Google Service Control data
serviceControlScope :: Proxy '["https://www.googleapis.com/auth/servicecontrol"]
serviceControlScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
