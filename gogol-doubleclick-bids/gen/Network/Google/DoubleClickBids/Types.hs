{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types
    (
    -- * Service Configuration
      doubleClickBidsService

    -- * ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

    -- * QueryMetadataFormat
    , QueryMetadataFormat (..)

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

    -- * UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- * ParametersType
    , ParametersType (..)

    -- * DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- * DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFileSpec
    , dlirFilterIds

    -- * ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- * UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- * Note
    , Note
    , note
    , nUsername
    , nSource
    , nId
    , nMessage
    , nTimestamp

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

    -- * RowStatus
    , RowStatus
    , rowStatus
    , rsEntityName
    , rsChanged
    , rsPersisted
    , rsRowNumber
    , rsErrors
    , rsEntityId

    -- * DownloadLineItemsRequestFileSpec
    , DownloadLineItemsRequestFileSpec (..)

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

    -- * QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

    -- * DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

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
    , pType

    -- * FilterPairType
    , FilterPairType (..)

    -- * RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- * ReportStatusState
    , ReportStatusState (..)

    -- * NotifyProposalChangeRequest
    , NotifyProposalChangeRequest
    , notifyProposalChangeRequest
    , npcrToken
    , npcrAction
    , npcrHref
    , npcrId
    , npcrNotes

    -- * ParametersGroupBysItem
    , ParametersGroupBysItem (..)

    -- * ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- * DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- * ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- * ReportStatusFormat
    , ReportStatusFormat (..)
    ) where

import           Network.Google.DoubleClickBids.Types.Product
import           Network.Google.DoubleClickBids.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the DoubleClick Bid Manager API. This contains the host and root path used as a starting point for constructing service requests.
doubleClickBidsService :: ServiceConfig
doubleClickBidsService
  = defaultService
      (ServiceId "doubleclickbidmanager:v1")
      "www.googleapis.com"
