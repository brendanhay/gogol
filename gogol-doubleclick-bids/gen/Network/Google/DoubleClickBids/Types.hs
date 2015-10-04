{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types
    (
    -- * Service URL
      doubleClickBidsURL

    -- * ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

    -- * Frequency
    , Frequency (..)

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

    -- * State
    , State (..)

    -- * GroupBysItem
    , GroupBysItem (..)

    -- * ParametersType
    , ParametersType (..)

    -- * UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- * FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- * ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- * DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFilterIds

    -- * UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- * FilterType
    , FilterType (..)

    -- * Format
    , Format (..)

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

    -- * RowStatus
    , RowStatus
    , rowStatus
    , rsEntityName
    , rsChanged
    , rsPersisted
    , rsRowNumber
    , rsErrors
    , rsEntityId

    -- * ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- * UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- * UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors

    -- * DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

    -- * DataRange
    , DataRange (..)

    -- * QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
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

    -- * MetricsItem
    , MetricsItem (..)

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
    , pType

    -- * RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- * ErrorCode
    , ErrorCode (..)

    -- * Type
    , Type (..)

    -- * ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- * DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- * ReportStatusFormat
    , ReportStatusFormat (..)
    ) where

import           Network.Google.DoubleClickBids.Types.Product
import           Network.Google.DoubleClickBids.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the DoubleClick Bid Manager API.
doubleClickBidsURL :: BaseUrl
doubleClickBidsURL
  = BaseUrl Https
      "https://www.googleapis.com/doubleclickbidmanager/v1/"
      443
