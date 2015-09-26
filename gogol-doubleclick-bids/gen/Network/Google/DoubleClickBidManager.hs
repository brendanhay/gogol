{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClickBidManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for viewing and managing your reports in DoubleClick Bid Manager.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Network.Google.DoubleClickBidManager
    (
    -- * Resources
      DoubleClickBidManager
    , QueriesAPI
    , QueriesGetquery
    , QueriesRunquery
    , QueriesDeletequery
    , QueriesCreatequery
    , QueriesListqueries
    , ReportsAPI
    , ReportsListreports
    , LineitemsAPI
    , LineitemsUploadlineitems
    , LineitemsDownloadlineitems

    -- * Types

    -- ** DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFilterIds

    -- ** DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- ** DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- ** DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

    -- ** FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- ** FilterPairType
    , FilterPairType (..)

    -- ** ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

    -- ** Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pType

    -- ** ParametersItemGroupBys
    , ParametersItemGroupBys (..)

    -- ** ParametersItemMetrics
    , ParametersItemMetrics (..)

    -- ** ParametersType
    , ParametersType (..)

    -- ** Query
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

    -- ** QueryMetadata
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

    -- ** QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- ** QueryMetadataFormat
    , QueryMetadataFormat (..)

    -- ** QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

    -- ** QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- ** Report
    , Report
    , report
    , rParams
    , rKey
    , rMetadata

    -- ** ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- ** ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- ** ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- ** ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- ** ReportStatus
    , ReportStatus
    , reportStatus
    , rsState
    , rsFinishTimeMs
    , rsFormat
    , rsFailure

    -- ** ReportStatusFormat
    , ReportStatusFormat (..)

    -- ** ReportStatusState
    , ReportStatusState (..)

    -- ** RowStatus
    , RowStatus
    , rowStatus
    , rsEntityName
    , rsChanged
    , rsPersisted
    , rsRowNumber
    , rsErrors
    , rsEntityId

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- ** RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- ** UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- ** UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- ** UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- ** UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors
    ) where

import           Network.Google.DoubleClickBidManager.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DoubleClickBidManager =
     ReportsAPI :<|> LineitemsAPI :<|> QueriesAPI

type QueriesAPI =
     QueriesRunquery :<|>
       QueriesDeletequery :<|>
         QueriesCreatequery :<|>
           QueriesListqueries :<|> QueriesGetquery

-- | Retrieves a stored query.
type QueriesGetquery =
     "doubleclickbidmanager" :> "v1" :> "query" :>
       Capture "queryId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Runs a stored query to generate a report.
type QueriesRunquery =
     "doubleclickbidmanager" :> "v1" :> "query" :>
       Capture "queryId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a stored query as well as the associated stored reports.
type QueriesDeletequery =
     "doubleclickbidmanager" :> "v1" :> "query" :>
       Capture "queryId" Int64
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a query.
type QueriesCreatequery =
     "doubleclickbidmanager" :> "v1" :> "query" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves stored queries.
type QueriesListqueries =
     "doubleclickbidmanager" :> "v1" :> "queries" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ReportsAPI = ReportsListreports

-- | Retrieves stored reports.
type ReportsListreports =
     "doubleclickbidmanager" :> "v1" :> "queries" :>
       Capture "queryId" Int64
       :> "reports"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LineitemsAPI =
     LineitemsDownloadlineitems :<|>
       LineitemsUploadlineitems

-- | Uploads line items in CSV format.
type LineitemsUploadlineitems =
     "doubleclickbidmanager" :> "v1" :> "lineitems" :>
       "uploadlineitems"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves line items in CSV format.
type LineitemsDownloadlineitems =
     "doubleclickbidmanager" :> "v1" :> "lineitems" :>
       "downloadlineitems"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
