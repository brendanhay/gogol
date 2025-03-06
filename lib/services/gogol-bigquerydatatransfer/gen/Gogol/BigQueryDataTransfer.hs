{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQueryDataTransfer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedule queries or transfer external data from SaaS applications to Google BigQuery on a regular basis.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference>
module Gogol.BigQueryDataTransfer
  ( -- * Configuration
    bigQueryDataTransferService,

    -- * OAuth Scopes
    Bigquery'FullControl,
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Resources

    -- ** bigquerydatatransfer.projects.dataSources.checkValidCreds
    BigQueryDataTransferProjectsDataSourcesCheckValidCredsResource,
    BigQueryDataTransferProjectsDataSourcesCheckValidCreds (..),
    newBigQueryDataTransferProjectsDataSourcesCheckValidCreds,

    -- ** bigquerydatatransfer.projects.dataSources.get
    BigQueryDataTransferProjectsDataSourcesGetResource,
    BigQueryDataTransferProjectsDataSourcesGet (..),
    newBigQueryDataTransferProjectsDataSourcesGet,

    -- ** bigquerydatatransfer.projects.dataSources.list
    BigQueryDataTransferProjectsDataSourcesListResource,
    BigQueryDataTransferProjectsDataSourcesList (..),
    newBigQueryDataTransferProjectsDataSourcesList,

    -- ** bigquerydatatransfer.projects.enrollDataSources
    BigQueryDataTransferProjectsEnrollDataSourcesResource,
    BigQueryDataTransferProjectsEnrollDataSources (..),
    newBigQueryDataTransferProjectsEnrollDataSources,

    -- ** bigquerydatatransfer.projects.locations.dataSources.checkValidCreds
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCredsResource,
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds (..),
    newBigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds,

    -- ** bigquerydatatransfer.projects.locations.dataSources.get
    BigQueryDataTransferProjectsLocationsDataSourcesGetResource,
    BigQueryDataTransferProjectsLocationsDataSourcesGet (..),
    newBigQueryDataTransferProjectsLocationsDataSourcesGet,

    -- ** bigquerydatatransfer.projects.locations.dataSources.list
    BigQueryDataTransferProjectsLocationsDataSourcesListResource,
    BigQueryDataTransferProjectsLocationsDataSourcesList (..),
    newBigQueryDataTransferProjectsLocationsDataSourcesList,

    -- ** bigquerydatatransfer.projects.locations.enrollDataSources
    BigQueryDataTransferProjectsLocationsEnrollDataSourcesResource,
    BigQueryDataTransferProjectsLocationsEnrollDataSources (..),
    newBigQueryDataTransferProjectsLocationsEnrollDataSources,

    -- ** bigquerydatatransfer.projects.locations.get
    BigQueryDataTransferProjectsLocationsGetResource,
    BigQueryDataTransferProjectsLocationsGet (..),
    newBigQueryDataTransferProjectsLocationsGet,

    -- ** bigquerydatatransfer.projects.locations.list
    BigQueryDataTransferProjectsLocationsListResource,
    BigQueryDataTransferProjectsLocationsList (..),
    newBigQueryDataTransferProjectsLocationsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.create
    BigQueryDataTransferProjectsLocationsTransferConfigsCreateResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsCreate (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsCreate,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.delete
    BigQueryDataTransferProjectsLocationsTransferConfigsDeleteResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsDelete (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsDelete,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.get
    BigQueryDataTransferProjectsLocationsTransferConfigsGetResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsGet (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsGet,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.list
    BigQueryDataTransferProjectsLocationsTransferConfigsListResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsList (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.patch
    BigQueryDataTransferProjectsLocationsTransferConfigsPatchResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsPatch (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsPatch,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.delete
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDeleteResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.get
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsGetResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsGet (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsGet,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.list
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsListResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsList (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsListResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns
    BigQueryDataTransferProjectsLocationsTransferConfigsScheduleRunsResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsScheduleRuns (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsScheduleRuns,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns
    BigQueryDataTransferProjectsLocationsTransferConfigsStartManualRunsResource,
    BigQueryDataTransferProjectsLocationsTransferConfigsStartManualRuns (..),
    newBigQueryDataTransferProjectsLocationsTransferConfigsStartManualRuns,

    -- ** bigquerydatatransfer.projects.locations.unenrollDataSources
    BigQueryDataTransferProjectsLocationsUnenrollDataSourcesResource,
    BigQueryDataTransferProjectsLocationsUnenrollDataSources (..),
    newBigQueryDataTransferProjectsLocationsUnenrollDataSources,

    -- ** bigquerydatatransfer.projects.transferConfigs.create
    BigQueryDataTransferProjectsTransferConfigsCreateResource,
    BigQueryDataTransferProjectsTransferConfigsCreate (..),
    newBigQueryDataTransferProjectsTransferConfigsCreate,

    -- ** bigquerydatatransfer.projects.transferConfigs.delete
    BigQueryDataTransferProjectsTransferConfigsDeleteResource,
    BigQueryDataTransferProjectsTransferConfigsDelete (..),
    newBigQueryDataTransferProjectsTransferConfigsDelete,

    -- ** bigquerydatatransfer.projects.transferConfigs.get
    BigQueryDataTransferProjectsTransferConfigsGetResource,
    BigQueryDataTransferProjectsTransferConfigsGet (..),
    newBigQueryDataTransferProjectsTransferConfigsGet,

    -- ** bigquerydatatransfer.projects.transferConfigs.list
    BigQueryDataTransferProjectsTransferConfigsListResource,
    BigQueryDataTransferProjectsTransferConfigsList (..),
    newBigQueryDataTransferProjectsTransferConfigsList,

    -- ** bigquerydatatransfer.projects.transferConfigs.patch
    BigQueryDataTransferProjectsTransferConfigsPatchResource,
    BigQueryDataTransferProjectsTransferConfigsPatch (..),
    newBigQueryDataTransferProjectsTransferConfigsPatch,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.delete
    BigQueryDataTransferProjectsTransferConfigsRunsDeleteResource,
    BigQueryDataTransferProjectsTransferConfigsRunsDelete (..),
    newBigQueryDataTransferProjectsTransferConfigsRunsDelete,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.get
    BigQueryDataTransferProjectsTransferConfigsRunsGetResource,
    BigQueryDataTransferProjectsTransferConfigsRunsGet (..),
    newBigQueryDataTransferProjectsTransferConfigsRunsGet,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.list
    BigQueryDataTransferProjectsTransferConfigsRunsListResource,
    BigQueryDataTransferProjectsTransferConfigsRunsList (..),
    newBigQueryDataTransferProjectsTransferConfigsRunsList,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list
    BigQueryDataTransferProjectsTransferConfigsRunsTransferLogsListResource,
    BigQueryDataTransferProjectsTransferConfigsRunsTransferLogsList (..),
    newBigQueryDataTransferProjectsTransferConfigsRunsTransferLogsList,

    -- ** bigquerydatatransfer.projects.transferConfigs.scheduleRuns
    BigQueryDataTransferProjectsTransferConfigsScheduleRunsResource,
    BigQueryDataTransferProjectsTransferConfigsScheduleRuns (..),
    newBigQueryDataTransferProjectsTransferConfigsScheduleRuns,

    -- ** bigquerydatatransfer.projects.transferConfigs.startManualRuns
    BigQueryDataTransferProjectsTransferConfigsStartManualRunsResource,
    BigQueryDataTransferProjectsTransferConfigsStartManualRuns (..),
    newBigQueryDataTransferProjectsTransferConfigsStartManualRuns,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CheckValidCredsRequest
    CheckValidCredsRequest (..),
    newCheckValidCredsRequest,

    -- ** CheckValidCredsResponse
    CheckValidCredsResponse (..),
    newCheckValidCredsResponse,

    -- ** DataSource
    DataSource (..),
    newDataSource,

    -- ** DataSource_AuthorizationType
    DataSource_AuthorizationType (..),

    -- ** DataSource_DataRefreshType
    DataSource_DataRefreshType (..),

    -- ** DataSource_TransferType
    DataSource_TransferType (..),

    -- ** DataSourceParameter
    DataSourceParameter (..),
    newDataSourceParameter,

    -- ** DataSourceParameter_Type
    DataSourceParameter_Type (..),

    -- ** EmailPreferences
    EmailPreferences (..),
    newEmailPreferences,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,

    -- ** EnrollDataSourcesRequest
    EnrollDataSourcesRequest (..),
    newEnrollDataSourcesRequest,

    -- ** EventDrivenSchedule
    EventDrivenSchedule (..),
    newEventDrivenSchedule,

    -- ** ListDataSourcesResponse
    ListDataSourcesResponse (..),
    newListDataSourcesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListTransferConfigsResponse
    ListTransferConfigsResponse (..),
    newListTransferConfigsResponse,

    -- ** ListTransferLogsResponse
    ListTransferLogsResponse (..),
    newListTransferLogsResponse,

    -- ** ListTransferRunsResponse
    ListTransferRunsResponse (..),
    newListTransferRunsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** ManualSchedule
    ManualSchedule (..),
    newManualSchedule,

    -- ** ScheduleOptions
    ScheduleOptions (..),
    newScheduleOptions,

    -- ** ScheduleOptionsV2
    ScheduleOptionsV2 (..),
    newScheduleOptionsV2,

    -- ** ScheduleTransferRunsRequest
    ScheduleTransferRunsRequest (..),
    newScheduleTransferRunsRequest,

    -- ** ScheduleTransferRunsResponse
    ScheduleTransferRunsResponse (..),
    newScheduleTransferRunsResponse,

    -- ** StartManualTransferRunsRequest
    StartManualTransferRunsRequest (..),
    newStartManualTransferRunsRequest,

    -- ** StartManualTransferRunsResponse
    StartManualTransferRunsResponse (..),
    newStartManualTransferRunsResponse,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TimeBasedSchedule
    TimeBasedSchedule (..),
    newTimeBasedSchedule,

    -- ** TimeRange
    TimeRange (..),
    newTimeRange,

    -- ** TransferConfig
    TransferConfig (..),
    newTransferConfig,

    -- ** TransferConfig_Params
    TransferConfig_Params (..),
    newTransferConfig_Params,

    -- ** TransferConfig_State
    TransferConfig_State (..),

    -- ** TransferMessage
    TransferMessage (..),
    newTransferMessage,

    -- ** TransferMessage_Severity
    TransferMessage_Severity (..),

    -- ** TransferRun
    TransferRun (..),
    newTransferRun,

    -- ** TransferRun_Params
    TransferRun_Params (..),
    newTransferRun_Params,

    -- ** TransferRun_State
    TransferRun_State (..),

    -- ** UnenrollDataSourcesRequest
    UnenrollDataSourcesRequest (..),
    newUnenrollDataSourcesRequest,

    -- ** UserInfo
    UserInfo (..),
    newUserInfo,

    -- ** ProjectsLocationsTransferConfigsRunsListRunAttempt
    ProjectsLocationsTransferConfigsRunsListRunAttempt (..),

    -- ** ProjectsLocationsTransferConfigsRunsListStates
    ProjectsLocationsTransferConfigsRunsListStates (..),

    -- ** ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
    ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes (..),

    -- ** ProjectsTransferConfigsRunsListRunAttempt
    ProjectsTransferConfigsRunsListRunAttempt (..),

    -- ** ProjectsTransferConfigsRunsListStates
    ProjectsTransferConfigsRunsListStates (..),

    -- ** ProjectsTransferConfigsRunsTransferLogsListMessageTypes
    ProjectsTransferConfigsRunsTransferLogsListMessageTypes (..),
  )
where

import Gogol.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds
import Gogol.BigQueryDataTransfer.Projects.DataSources.Get
import Gogol.BigQueryDataTransfer.Projects.DataSources.List
import Gogol.BigQueryDataTransfer.Projects.EnrollDataSources
import Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds
import Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.Get
import Gogol.BigQueryDataTransfer.Projects.Locations.DataSources.List
import Gogol.BigQueryDataTransfer.Projects.Locations.EnrollDataSources
import Gogol.BigQueryDataTransfer.Projects.Locations.Get
import Gogol.BigQueryDataTransfer.Projects.Locations.List
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Create
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Delete
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Get
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.List
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Patch
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Get
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.List
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.ScheduleRuns
import Gogol.BigQueryDataTransfer.Projects.Locations.TransferConfigs.StartManualRuns
import Gogol.BigQueryDataTransfer.Projects.Locations.UnenrollDataSources
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Create
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Delete
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Get
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.List
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Patch
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Delete
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Runs.List
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.Runs.TransferLogs.List
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns
import Gogol.BigQueryDataTransfer.Projects.TransferConfigs.StartManualRuns
import Gogol.BigQueryDataTransfer.Types
