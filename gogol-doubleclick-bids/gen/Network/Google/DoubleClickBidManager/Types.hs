{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.DoubleClickBidManager.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBidManager.Types
    (
    -- * API Definition
      doubleclickbidmanager


    -- * DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFilterIds

    -- * DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- * DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- * DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

    -- * FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- * FilterPairType
    , FilterPairType (..)

    -- * ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- * ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

    -- * Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pType

    -- * ParametersItemGroupBys
    , ParametersItemGroupBys (..)

    -- * ParametersItemMetrics
    , ParametersItemMetrics (..)

    -- * ParametersType
    , ParametersType (..)

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

    -- * QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- * QueryMetadataFormat
    , QueryMetadataFormat (..)

    -- * QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

    -- * QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- * Report
    , Report
    , report
    , rParams
    , rKey
    , rMetadata

    -- * ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- * ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- * ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- * ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- * ReportStatus
    , ReportStatus
    , reportStatus
    , rsState
    , rsFinishTimeMs
    , rsFormat
    , rsFailure

    -- * ReportStatusFormat
    , ReportStatusFormat (..)

    -- * ReportStatusState
    , ReportStatusState (..)

    -- * RowStatus
    , RowStatus
    , rowStatus
    , rsEntityName
    , rsChanged
    , rsPersisted
    , rsRowNumber
    , rsErrors
    , rsEntityId

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- * RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- * UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- * UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- * UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- * UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors
    ) where

import           Network.Google.DoubleClickBidManager.Types.Product
import           Network.Google.DoubleClickBidManager.Types.Sum
import           Network.Google.Prelude

doubleclickbidmanager :: a
doubleclickbidmanager = error "doubleclickbidmanager"
