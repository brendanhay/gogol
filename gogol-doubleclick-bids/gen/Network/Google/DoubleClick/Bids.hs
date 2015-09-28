{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClick.Bids
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for viewing and managing your reports in DoubleClick Bid Manager.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Network.Google.DoubleClick.Bids
    (
    -- * REST Resources

    -- ** DoubleClick Bid Manager API
      DoubleClickBids
    , doubleClickBids
    , doubleClickBidsURL

    -- ** doubleclickbidmanager.lineitems.downloadlineitems
    , module Network.Google.API.Doubleclickbidmanager.Lineitems.Downloadlineitems

    -- ** doubleclickbidmanager.lineitems.uploadlineitems
    , module Network.Google.API.Doubleclickbidmanager.Lineitems.Uploadlineitems

    -- ** doubleclickbidmanager.queries.createquery
    , module Network.Google.API.Doubleclickbidmanager.Queries.Createquery

    -- ** doubleclickbidmanager.queries.deletequery
    , module Network.Google.API.Doubleclickbidmanager.Queries.Deletequery

    -- ** doubleclickbidmanager.queries.getquery
    , module Network.Google.API.Doubleclickbidmanager.Queries.Getquery

    -- ** doubleclickbidmanager.queries.listqueries
    , module Network.Google.API.Doubleclickbidmanager.Queries.Listqueries

    -- ** doubleclickbidmanager.queries.runquery
    , module Network.Google.API.Doubleclickbidmanager.Queries.Runquery

    -- ** doubleclickbidmanager.reports.listreports
    , module Network.Google.API.Doubleclickbidmanager.Reports.Listreports

    -- * Types

    -- ** QueryMetadataFormat
    , QueryMetadataFormat (..)

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

    -- ** UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- ** UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- ** FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- ** UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- ** Alt
    , Alt (..)

    -- ** ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- ** ParametersItemGroupBys
    , ParametersItemGroupBys (..)

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

    -- ** RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- ** FilterPairType
    , FilterPairType (..)

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrReports
    , lrrKind

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

    -- ** Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pType

    -- ** ReportStatusFormat
    , ReportStatusFormat (..)

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

    -- ** DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- ** QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- ** UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- ** ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- ** ParametersItemMetrics
    , ParametersItemMetrics (..)

    -- ** QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- ** ReportStatusState
    , ReportStatusState (..)

    -- ** DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- ** ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- ** ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- ** ParametersType
    , ParametersType (..)
    ) where

import           Network.Google.API.Doubleclickbidmanager.Lineitems.Downloadlineitems
import           Network.Google.API.Doubleclickbidmanager.Lineitems.Uploadlineitems
import           Network.Google.API.Doubleclickbidmanager.Queries.Createquery
import           Network.Google.API.Doubleclickbidmanager.Queries.Deletequery
import           Network.Google.API.Doubleclickbidmanager.Queries.Getquery
import           Network.Google.API.Doubleclickbidmanager.Queries.Listqueries
import           Network.Google.API.Doubleclickbidmanager.Queries.Runquery
import           Network.Google.API.Doubleclickbidmanager.Reports.Listreports
import           Network.Google.DoubleClick.Bids.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DoubleClickBids =
     QueriesListqueriesAPI :<|>
       LineitemsDownloadlineitemsAPI
       :<|> QueriesGetqueryAPI
       :<|> ReportsListreportsAPI
       :<|> QueriesRunqueryAPI
       :<|> QueriesCreatequeryAPI
       :<|> QueriesDeletequeryAPI
       :<|> LineitemsUploadlineitemsAPI

doubleClickBids :: Proxy DoubleClickBids
doubleClickBids = Proxy
