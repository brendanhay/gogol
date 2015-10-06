{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClickBids
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | API for viewing and managing your reports in DoubleClick Bid Manager.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Network.Google.DoubleClickBids
    (
    -- * API
      DoubleClickBidsAPI
    , doubleClickBidsAPI
    , doubleClickBidsRequest

    -- * Service Methods

    -- * REST Resources

    -- ** DoubleClickBidManagerLineitemsDownloadlineitems
    , module Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems

    -- ** DoubleClickBidManagerLineitemsUploadlineitems
    , module Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems

    -- ** DoubleClickBidManagerQueriesCreatequery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Createquery

    -- ** DoubleClickBidManagerQueriesDeletequery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Deletequery

    -- ** DoubleClickBidManagerQueriesGetquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Getquery

    -- ** DoubleClickBidManagerQueriesListqueries
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries

    -- ** DoubleClickBidManagerQueriesRunquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Runquery

    -- ** DoubleClickBidManagerReportsListreports
    , module Network.Google.Resource.DoubleClickBidManager.Reports.Listreports

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

    -- ** DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFilterIds

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
import           Network.Google.Resource.DoubleClickBidManager.Queries.Createquery
import           Network.Google.Resource.DoubleClickBidManager.Queries.Deletequery
import           Network.Google.Resource.DoubleClickBidManager.Queries.Getquery
import           Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
import           Network.Google.Resource.DoubleClickBidManager.Queries.Runquery
import           Network.Google.Resource.DoubleClickBidManager.Reports.Listreports

{- $resources
TODO
-}

type DoubleClickBidsAPI =
     QueriesGetqueryResource :<|> QueriesRunqueryResource
       :<|> QueriesDeletequeryResource
       :<|> QueriesCreatequeryResource
       :<|> QueriesListqueriesResource
       :<|> ReportsListreportsResource
       :<|> LineitemsUploadlineitemsResource
       :<|> LineitemsDownloadlineitemsResource

doubleClickBidsAPI :: Proxy DoubleClickBidsAPI
doubleClickBidsAPI = Proxy
