{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types
    (
    -- * Service Configuration
      doubleClickBidsService

    -- * OAuth Scopes
    , doubleClickBidManagerScope

    -- * ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrNextPageToken
    , lrrReports
    , lrrKind

    -- * DisjunctiveMatchStatement
    , DisjunctiveMatchStatement
    , disjunctiveMatchStatement
    , dmsEventFilters

    -- * QueryMetadataFormat
    , QueryMetadataFormat (..)

    -- * PathQueryOptionsFilterFilter
    , PathQueryOptionsFilterFilter (..)

    -- * QueryMetadata
    , QueryMetadata
    , queryMetadata
    , qmGoogleCloudStoragePathForLatestReport
    , qmLocale
    , qmFormat
    , qmGoogleDrivePathForLatestReport
    , qmShareEmailAddress
    , qmRunning
    , qmDataRange
    , qmLatestReportRunTimeMs
    , qmReportCount
    , qmTitle
    , qmSendNotification

    -- * PathQueryOptions
    , PathQueryOptions
    , pathQueryOptions
    , pqoPathFilters
    , pqoChannelGrouping

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- * FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- * ParametersType
    , ParametersType (..)

    -- * ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrNextPageToken
    , lqrKind

    -- * QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- * ParametersMetricsItem
    , ParametersMetricsItem (..)

    -- * QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- * ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- * Report
    , Report
    , report
    , rParams
    , rKey
    , rMetadata

    -- * Rule
    , Rule
    , rule
    , rName
    , rDisjunctiveMatchStatements

    -- * ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- * EventFilter
    , EventFilter
    , eventFilter
    , efDimensionFilter

    -- * ChannelGrouping
    , ChannelGrouping
    , channelGrouping
    , cgRules
    , cgFallbackName
    , cgName

    -- * PathQueryOptionsFilterMatch
    , PathQueryOptionsFilterMatch (..)

    -- * PathQueryOptionsFilter
    , PathQueryOptionsFilter
    , pathQueryOptionsFilter
    , pqofValues
    , pqofFilter
    , pqofMatch

    -- * QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsStartTimeMs
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

    -- * ReportStatus
    , ReportStatus
    , reportStatus
    , rsState
    , rsFinishTimeMs
    , rsFormat
    , rsFailure

    -- * Query
    , Query
    , query
    , qQueryId
    , qReportDataEndTimeMs
    , qSchedule
    , qKind
    , qParams
    , qMetadata
    , qReportDataStartTimeMs
    , qTimezoneCode

    -- * Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pOptions
    , pType

    -- * Xgafv
    , Xgafv (..)

    -- * PathFilterPathMatchPosition
    , PathFilterPathMatchPosition (..)

    -- * FilterPairType
    , FilterPairType (..)

    -- * RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- * ReportStatusState
    , ReportStatusState (..)

    -- * PathFilter
    , PathFilter
    , pathFilter
    , pfEventFilters
    , pfPathMatchPosition

    -- * Options
    , Options
    , options
    , oPathQueryOptions
    , oIncludeOnlyTargetedUserLists

    -- * ParametersGroupBysItem
    , ParametersGroupBysItem (..)

    -- * ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- * ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- * ReportStatusFormat
    , ReportStatusFormat (..)
    ) where

import Network.Google.DoubleClickBids.Types.Product
import Network.Google.DoubleClickBids.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1.1' of the DoubleClick Bid Manager API. This contains the host and root path used as a starting point for constructing service requests.
doubleClickBidsService :: ServiceConfig
doubleClickBidsService
  = defaultService
      (ServiceId "doubleclickbidmanager:v1.1")
      "doubleclickbidmanager.googleapis.com"

-- | View and manage your reports in DoubleClick Bid Manager
doubleClickBidManagerScope :: Proxy '["https://www.googleapis.com/auth/doubleclickbidmanager"]
doubleClickBidManagerScope = Proxy
