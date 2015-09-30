{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | API for viewing and managing your reports in DoubleClick Bid Manager.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Network.Google.DoubleClickBids
    (
    -- * API
      DoubleClickBidsAPI
    , doubleClickBidsAPI
    , doubleClickBidsURL

    -- * Service Methods

    -- * REST Resources

    -- ** DoubleclickbidmanagerLineitemsDownloadlineitems
    , module Doubleclickbidmanager.Lineitems.Downloadlineitems

    -- ** DoubleclickbidmanagerLineitemsUploadlineitems
    , module Doubleclickbidmanager.Lineitems.Uploadlineitems

    -- ** DoubleclickbidmanagerQueriesCreatequery
    , module Doubleclickbidmanager.Queries.Createquery

    -- ** DoubleclickbidmanagerQueriesDeletequery
    , module Doubleclickbidmanager.Queries.Deletequery

    -- ** DoubleclickbidmanagerQueriesGetquery
    , module Doubleclickbidmanager.Queries.Getquery

    -- ** DoubleclickbidmanagerQueriesListqueries
    , module Doubleclickbidmanager.Queries.Listqueries

    -- ** DoubleclickbidmanagerQueriesRunquery
    , module Doubleclickbidmanager.Queries.Runquery

    -- ** DoubleclickbidmanagerReportsListreports
    , module Doubleclickbidmanager.Reports.Listreports

    -- * Types

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

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- ** ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrKind

    -- ** DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFilterIds

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

    -- ** UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors

    -- ** DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

    -- ** QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

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

    -- ** ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Doubleclickbidmanager.Lineitems.Downloadlineitems
import           Network.Google.Resource.Doubleclickbidmanager.Lineitems.Uploadlineitems
import           Network.Google.Resource.Doubleclickbidmanager.Queries.Createquery
import           Network.Google.Resource.Doubleclickbidmanager.Queries.Deletequery
import           Network.Google.Resource.Doubleclickbidmanager.Queries.Getquery
import           Network.Google.Resource.Doubleclickbidmanager.Queries.Listqueries
import           Network.Google.Resource.Doubleclickbidmanager.Queries.Runquery
import           Network.Google.Resource.Doubleclickbidmanager.Reports.Listreports

{- $resources
TODO
-}

type DoubleClickBidsAPI =
     Queries :<|> Reports :<|> Lineitems

doubleClickBidsAPI :: Proxy DoubleClickBidsAPI
doubleClickBidsAPI = Proxy
