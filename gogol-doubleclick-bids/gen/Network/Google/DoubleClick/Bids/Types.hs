{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClick.Bids.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClick.Bids.Types
    (
    -- * Service URL
      doubleClickBidsURL

    -- * QueryMetadataFormat
    , QueryMetadataFormat (..)

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

    -- * UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

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

    -- * UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- * Alt
    , Alt (..)

    -- * ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- * ParametersItemGroupBys
    , ParametersItemGroupBys (..)

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

    -- * RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- * FilterPairType
    , FilterPairType (..)

    -- * ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

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

    -- * Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pType

    -- * ReportStatusFormat
    , ReportStatusFormat (..)

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

    -- * DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFilterIds

    -- * ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- * DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- * QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- * UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- * ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- * ParametersItemMetrics
    , ParametersItemMetrics (..)

    -- * QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- * ReportStatusState
    , ReportStatusState (..)

    -- * DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- * ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- * ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- * ParametersType
    , ParametersType (..)
    ) where

import           Network.Google.DoubleClick.Bids.Types.Product
import           Network.Google.DoubleClick.Bids.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the DoubleClick Bid Manager API.
doubleClickBidsURL :: BaseUrl
doubleClickBidsURL
  = BaseUrl Https
      "https://www.googleapis.com/doubleclickbidmanager/v1/"
      443
