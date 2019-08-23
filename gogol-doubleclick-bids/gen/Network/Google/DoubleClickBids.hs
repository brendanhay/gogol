{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClickBids
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for viewing and managing your reports in DoubleClick Bid Manager.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Network.Google.DoubleClickBids
    (
    -- * Service Configuration
      doubleClickBidsService

    -- * OAuth Scopes
    , doubleClickBidManagerScope

    -- * API Declaration
    , DoubleClickBidsAPI

    -- * Resources

    -- ** doubleclickbidmanager.lineitems.downloadlineitems
    , module Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems

    -- ** doubleclickbidmanager.lineitems.uploadlineitems
    , module Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems

    -- ** doubleclickbidmanager.queries.createquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery

    -- ** doubleclickbidmanager.queries.deletequery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery

    -- ** doubleclickbidmanager.queries.getquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery

    -- ** doubleclickbidmanager.queries.listqueries
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries

    -- ** doubleclickbidmanager.queries.runquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery

    -- ** doubleclickbidmanager.reports.listreports
    , module Network.Google.Resource.DoubleClickBidManager.Reports.Listreports

    -- ** doubleclickbidmanager.sdf.download
    , module Network.Google.Resource.DoubleClickBidManager.Sdf.Download

    -- * Types

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

    -- ** QueryMetadataFormat
    , QueryMetadataFormat (..)

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

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- ** FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- ** UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- ** ParametersType
    , ParametersType (..)

    -- ** DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- ** DownloadRequestFilterType
    , DownloadRequestFilterType (..)

    -- ** DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFileSpec
    , dlirFilterIds

    -- ** DownloadRequestFileTypesItem
    , DownloadRequestFileTypesItem (..)

    -- ** DownloadRequest
    , DownloadRequest
    , downloadRequest
    , drFileTypes
    , drFilterType
    , drVersion
    , drFilterIds

    -- ** ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- ** UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- ** QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- ** ParametersMetricsItem
    , ParametersMetricsItem (..)

    -- ** QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- ** ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- ** Report
    , Report
    , report
    , rParams
    , rKey
    , rMetadata

    -- ** RowStatus
    , RowStatus
    , rowStatus
    , rsEntityName
    , rsChanged
    , rsPersisted
    , rsRowNumber
    , rsErrors
    , rsEntityId

    -- ** DownloadLineItemsRequestFileSpec
    , DownloadLineItemsRequestFileSpec (..)

    -- ** ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- ** UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- ** UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors

    -- ** QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

    -- ** DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

    -- ** DownloadResponse
    , DownloadResponse
    , downloadResponse
    , drInventorySources
    , drInsertionOrders
    , drCampaigns
    , drLineItems
    , drAdGroups
    , drAds

    -- ** ReportStatus
    , ReportStatus
    , reportStatus
    , rsState
    , rsFinishTimeMs
    , rsFormat
    , rsFailure

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

    -- ** Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pType

    -- ** FilterPairType
    , FilterPairType (..)

    -- ** RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- ** ReportStatusState
    , ReportStatusState (..)

    -- ** ParametersGroupBysItem
    , ParametersGroupBysItem (..)

    -- ** ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- ** DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- ** ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- ** ReportStatusFormat
    , ReportStatusFormat (..)
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems
import           Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems
import           Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
import           Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery
import           Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery
import           Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
import           Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery
import           Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
import           Network.Google.Resource.DoubleClickBidManager.Sdf.Download

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the DoubleClick Bid Manager API service.
type DoubleClickBidsAPI =
     QueriesGetQueryResource :<|> QueriesRunQueryResource
       :<|> QueriesDeleteQueryResource
       :<|> QueriesCreateQueryResource
       :<|> QueriesListqueriesResource
       :<|> ReportsListreportsResource
       :<|> LineitemsUploadlineitemsResource
       :<|> LineitemsDownloadlineitemsResource
       :<|> SdfDownloadResource
