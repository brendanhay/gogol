{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceControl
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Service Control provides control plane functionality to managed
-- services, such as logging, monitoring, and status checks.
--
-- /See:/ <https://cloud.google.com/service-control/ Google Service Control API Reference>
module Network.Google.ServiceControl
    (
    -- * Service Configuration
      serviceControlService

    -- * OAuth Scopes
    , serviceControlScope
    , cloudPlatformScope

    -- * API Declaration
    , ServiceControlAPI

    -- * Resources

    -- ** servicecontrol.services.check
    , module Network.Google.Resource.ServiceControl.Services.Check

    -- ** servicecontrol.services.report
    , module Network.Google.Resource.ServiceControl.Services.Report

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ReportRequest
    , ReportRequest
    , reportRequest
    , rrOperations

    -- ** CheckRequest
    , CheckRequest
    , checkRequest
    , crOperation

    -- ** MetricValueLabels
    , MetricValueLabels
    , metricValueLabels
    , mvlAddtional

    -- ** Distribution
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

    -- ** ExponentialBuckets
    , ExponentialBuckets
    , exponentialBuckets
    , ebGrowthFactor
    , ebScale
    , ebNumFiniteBuckets

    -- ** Operation
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

    -- ** MetricValueSet
    , MetricValueSet
    , metricValueSet
    , mvsMetricName
    , mvsMetricValues

    -- ** LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- ** LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- ** LinearBuckets
    , LinearBuckets
    , linearBuckets
    , lbOffSet
    , lbWidth
    , lbNumFiniteBuckets

    -- ** CheckErrorCode
    , CheckErrorCode (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** CheckError
    , CheckError
    , checkError
    , ceCode
    , ceDetail

    -- ** ReportError
    , ReportError
    , reportError
    , reStatus
    , reOperationId

    -- ** OperationImportance
    , OperationImportance (..)

    -- ** MetricValue
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** CheckResponse
    , CheckResponse
    , checkResponse
    , crCheckErrors
    , crServiceConfigId
    , crOperationId

    -- ** ReportResponse
    , ReportResponse
    , reportResponse
    , rrReportErrors
    , rrServiceConfigId

    -- ** LogEntry
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

    -- ** OperationLabels
    , OperationLabels
    , operationLabels
    , olAddtional

    -- ** LogEntrySeverity
    , LogEntrySeverity (..)

    -- ** ExplicitBuckets
    , ExplicitBuckets
    , explicitBuckets
    , ebBounds

    -- ** LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload
    , lespAddtional
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ServiceControl.Services.Check
import           Network.Google.Resource.ServiceControl.Services.Report
import           Network.Google.ServiceControl.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Service Control API service.
type ServiceControlAPI =
     ServicesReportResource :<|> ServicesCheckResource
