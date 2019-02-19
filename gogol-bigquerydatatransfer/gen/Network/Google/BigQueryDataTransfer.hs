{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.BigQueryDataTransfer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transfers data from partner SaaS applications to Google BigQuery on a
-- scheduled, managed basis.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference>
module Network.Google.BigQueryDataTransfer
    (
    -- * Service Configuration
      bigQueryDataTransferService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , bigQueryScope

    -- * API Declaration
    , BigQueryDataTransferAPI

    -- * Resources

    -- ** bigquerydatatransfer.projects.dataSources.checkValidCreds
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds

    -- ** bigquerydatatransfer.projects.dataSources.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.Get

    -- ** bigquerydatatransfer.projects.dataSources.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.List

    -- ** bigquerydatatransfer.projects.locations.dataSources.checkValidCreds
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds

    -- ** bigquerydatatransfer.projects.locations.dataSources.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.Get

    -- ** bigquerydatatransfer.projects.locations.dataSources.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.List

    -- ** bigquerydatatransfer.projects.locations.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.Get

    -- ** bigquerydatatransfer.projects.locations.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.List

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.create
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Create

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.delete
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Delete

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Get

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.List

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.patch
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Patch

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.delete
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Get

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.ScheduleRuns

    -- ** bigquerydatatransfer.projects.transferConfigs.create
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Create

    -- ** bigquerydatatransfer.projects.transferConfigs.delete
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Delete

    -- ** bigquerydatatransfer.projects.transferConfigs.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Get

    -- ** bigquerydatatransfer.projects.transferConfigs.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.List

    -- ** bigquerydatatransfer.projects.transferConfigs.patch
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Patch

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.delete
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Delete

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.get
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.List

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.TransferLogs.List

    -- ** bigquerydatatransfer.projects.transferConfigs.scheduleRuns
    , module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns

    -- * Types

    -- ** DataSourceParameterType
    , DataSourceParameterType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** TransferRun
    , TransferRun
    , transferRun
    , trRunTime
    , trErrorStatus
    , trState
    , trSchedule
    , trStartTime
    , trScheduleTime
    , trDataSourceId
    , trParams
    , trUserId
    , trUpdateTime
    , trName
    , trEndTime
    , trDestinationDataSetId

    -- ** CheckValidCredsRequest
    , CheckValidCredsRequest
    , checkValidCredsRequest

    -- ** TransferConfigParams
    , TransferConfigParams
    , transferConfigParams
    , tcpAddtional

    -- ** ScheduleTransferRunsRequest
    , ScheduleTransferRunsRequest
    , scheduleTransferRunsRequest
    , strrStartTime
    , strrEndTime

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Empty
    , Empty
    , empty

    -- ** ScheduleOptions
    , ScheduleOptions
    , scheduleOptions
    , soStartTime
    , soDisableAutoScheduling
    , soEndTime

    -- ** TransferRunState
    , TransferRunState (..)

    -- ** ListTransferLogsResponse
    , ListTransferLogsResponse
    , listTransferLogsResponse
    , ltlrNextPageToken
    , ltlrTransferMessages

    -- ** CheckValidCredsResponse
    , CheckValidCredsResponse
    , checkValidCredsResponse
    , cvcrHasValidCreds

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** DataSourceTransferType
    , DataSourceTransferType (..)

    -- ** DataSourceAuthorizationType
    , DataSourceAuthorizationType (..)

    -- ** TransferRunParams
    , TransferRunParams
    , transferRunParams
    , trpAddtional

    -- ** DataSourceParameter
    , DataSourceParameter
    , dataSourceParameter
    , dspMaxValue
    , dspParamId
    , dspImmutable
    , dspRecurse
    , dspValidationDescription
    , dspRequired
    , dspDisplayName
    , dspType
    , dspAllowedValues
    , dspRepeated
    , dspDescription
    , dspValidationRegex
    , dspMinValue
    , dspValidationHelpURL
    , dspFields

    -- ** ScheduleTransferRunsResponse
    , ScheduleTransferRunsResponse
    , scheduleTransferRunsResponse
    , strrRuns

    -- ** ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrNextPageToken
    , ldsrDataSources

    -- ** Xgafv
    , Xgafv (..)

    -- ** DataSource
    , DataSource
    , dataSource
    , dsClientId
    , dsMinimumScheduleInterval
    , dsSupportsCustomSchedule
    , dsUpdateDeadlineSeconds
    , dsManualRunsDisabled
    , dsDataSourceId
    , dsTransferType
    , dsScopes
    , dsSupportsMultipleTransfers
    , dsName
    , dsParameters
    , dsHelpURL
    , dsDefaultDataRefreshWindowDays
    , dsDisplayName
    , dsDataRefreshType
    , dsAuthorizationType
    , dsDefaultSchedule
    , dsDescription

    -- ** DataSourceDataRefreshType
    , DataSourceDataRefreshType (..)

    -- ** ListTransferRunsResponse
    , ListTransferRunsResponse
    , listTransferRunsResponse
    , ltrrNextPageToken
    , ltrrTransferRuns

    -- ** TransferMessage
    , TransferMessage
    , transferMessage
    , tmSeverity
    , tmMessageTime
    , tmMessageText

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** TransferMessageSeverity
    , TransferMessageSeverity (..)

    -- ** ListTransferConfigsResponse
    , ListTransferConfigsResponse
    , listTransferConfigsResponse
    , ltcrNextPageToken
    , ltcrTransferConfigs

    -- ** TransferConfigState
    , TransferConfigState (..)

    -- ** TransferConfig
    , TransferConfig
    , transferConfig
    , tcState
    , tcSchedule
    , tcScheduleOptions
    , tcDisabled
    , tcDataSourceId
    , tcParams
    , tcUserId
    , tcUpdateTime
    , tcName
    , tcDataSetRegion
    , tcDisplayName
    , tcNextRunTime
    , tcDestinationDataSetId
    , tcDataRefreshWindowDays
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude
import           Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds
import           Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Create
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Delete
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Patch
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.ScheduleRuns
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Create
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Delete
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Patch
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Delete
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.TransferLogs.List
import           Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the BigQuery Data Transfer API service.
type BigQueryDataTransferAPI =
     ProjectsDataSourcesListResource :<|>
       ProjectsDataSourcesCheckValidCredsResource
       :<|> ProjectsDataSourcesGetResource
       :<|>
       ProjectsTransferConfigsRunsTransferLogsListResource
       :<|> ProjectsTransferConfigsRunsListResource
       :<|> ProjectsTransferConfigsRunsGetResource
       :<|> ProjectsTransferConfigsRunsDeleteResource
       :<|> ProjectsTransferConfigsScheduleRunsResource
       :<|> ProjectsTransferConfigsListResource
       :<|> ProjectsTransferConfigsPatchResource
       :<|> ProjectsTransferConfigsGetResource
       :<|> ProjectsTransferConfigsCreateResource
       :<|> ProjectsTransferConfigsDeleteResource
       :<|> ProjectsLocationsDataSourcesListResource
       :<|>
       ProjectsLocationsDataSourcesCheckValidCredsResource
       :<|> ProjectsLocationsDataSourcesGetResource
       :<|>
       ProjectsLocationsTransferConfigsRunsTransferLogsListResource
       :<|> ProjectsLocationsTransferConfigsRunsListResource
       :<|> ProjectsLocationsTransferConfigsRunsGetResource
       :<|>
       ProjectsLocationsTransferConfigsRunsDeleteResource
       :<|>
       ProjectsLocationsTransferConfigsScheduleRunsResource
       :<|> ProjectsLocationsTransferConfigsListResource
       :<|> ProjectsLocationsTransferConfigsPatchResource
       :<|> ProjectsLocationsTransferConfigsGetResource
       :<|> ProjectsLocationsTransferConfigsCreateResource
       :<|> ProjectsLocationsTransferConfigsDeleteResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
