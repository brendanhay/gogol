{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQueryDataTransfer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    newBigQueryDataTransferProjectsDataSourcesCheckValidCreds,
    BigQueryDataTransferProjectsDataSourcesCheckValidCreds,

    -- ** bigquerydatatransfer.projects.dataSources.get
    BigQueryDataTransferProjectsDataSourcesGetResource,
    newBigQueryDataTransferProjectsDataSourcesGet,
    BigQueryDataTransferProjectsDataSourcesGet,

    -- ** bigquerydatatransfer.projects.dataSources.list
    BigQueryDataTransferProjectsDataSourcesListResource,
    newBigQueryDataTransferProjectsDataSourcesList,
    BigQueryDataTransferProjectsDataSourcesList,

    -- ** bigquerydatatransfer.projects.enrollDataSources
    BigQueryDataTransferProjectsEnrollDataSourcesResource,
    newBigQueryDataTransferProjectsEnrollDataSources,
    BigQueryDataTransferProjectsEnrollDataSources,

    -- ** bigquerydatatransfer.projects.locations.dataSources.checkValidCreds
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCredsResource,
    newBigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds,
    BigQueryDataTransferProjectsLocationsDataSourcesCheckValidCreds,

    -- ** bigquerydatatransfer.projects.locations.dataSources.get
    BigQueryDataTransferProjectsLocationsDataSourcesGetResource,
    newBigQueryDataTransferProjectsLocationsDataSourcesGet,
    BigQueryDataTransferProjectsLocationsDataSourcesGet,

    -- ** bigquerydatatransfer.projects.locations.dataSources.list
    BigQueryDataTransferProjectsLocationsDataSourcesListResource,
    newBigQueryDataTransferProjectsLocationsDataSourcesList,
    BigQueryDataTransferProjectsLocationsDataSourcesList,

    -- ** bigquerydatatransfer.projects.locations.enrollDataSources
    BigQueryDataTransferProjectsLocationsEnrollDataSourcesResource,
    newBigQueryDataTransferProjectsLocationsEnrollDataSources,
    BigQueryDataTransferProjectsLocationsEnrollDataSources,

    -- ** bigquerydatatransfer.projects.locations.get
    BigQueryDataTransferProjectsLocationsGetResource,
    newBigQueryDataTransferProjectsLocationsGet,
    BigQueryDataTransferProjectsLocationsGet,

    -- ** bigquerydatatransfer.projects.locations.list
    BigQueryDataTransferProjectsLocationsListResource,
    newBigQueryDataTransferProjectsLocationsList,
    BigQueryDataTransferProjectsLocationsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.create
    BigQueryDataTransferProjectsLocationsTransferConfigsCreateResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsCreate,
    BigQueryDataTransferProjectsLocationsTransferConfigsCreate,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.delete
    BigQueryDataTransferProjectsLocationsTransferConfigsDeleteResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsDelete,
    BigQueryDataTransferProjectsLocationsTransferConfigsDelete,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.get
    BigQueryDataTransferProjectsLocationsTransferConfigsGetResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsGet,
    BigQueryDataTransferProjectsLocationsTransferConfigsGet,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.list
    BigQueryDataTransferProjectsLocationsTransferConfigsListResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsList,
    BigQueryDataTransferProjectsLocationsTransferConfigsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.patch
    BigQueryDataTransferProjectsLocationsTransferConfigsPatchResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsPatch,
    BigQueryDataTransferProjectsLocationsTransferConfigsPatch,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.delete
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDeleteResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsDelete,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.get
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsGetResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsGet,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsGet,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.list
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsListResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsList,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsListResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList,
    BigQueryDataTransferProjectsLocationsTransferConfigsRunsTransferLogsList,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns
    BigQueryDataTransferProjectsLocationsTransferConfigsScheduleRunsResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsScheduleRuns,
    BigQueryDataTransferProjectsLocationsTransferConfigsScheduleRuns,

    -- ** bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns
    BigQueryDataTransferProjectsLocationsTransferConfigsStartManualRunsResource,
    newBigQueryDataTransferProjectsLocationsTransferConfigsStartManualRuns,
    BigQueryDataTransferProjectsLocationsTransferConfigsStartManualRuns,

    -- ** bigquerydatatransfer.projects.transferConfigs.create
    BigQueryDataTransferProjectsTransferConfigsCreateResource,
    newBigQueryDataTransferProjectsTransferConfigsCreate,
    BigQueryDataTransferProjectsTransferConfigsCreate,

    -- ** bigquerydatatransfer.projects.transferConfigs.delete
    BigQueryDataTransferProjectsTransferConfigsDeleteResource,
    newBigQueryDataTransferProjectsTransferConfigsDelete,
    BigQueryDataTransferProjectsTransferConfigsDelete,

    -- ** bigquerydatatransfer.projects.transferConfigs.get
    BigQueryDataTransferProjectsTransferConfigsGetResource,
    newBigQueryDataTransferProjectsTransferConfigsGet,
    BigQueryDataTransferProjectsTransferConfigsGet,

    -- ** bigquerydatatransfer.projects.transferConfigs.list
    BigQueryDataTransferProjectsTransferConfigsListResource,
    newBigQueryDataTransferProjectsTransferConfigsList,
    BigQueryDataTransferProjectsTransferConfigsList,

    -- ** bigquerydatatransfer.projects.transferConfigs.patch
    BigQueryDataTransferProjectsTransferConfigsPatchResource,
    newBigQueryDataTransferProjectsTransferConfigsPatch,
    BigQueryDataTransferProjectsTransferConfigsPatch,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.delete
    BigQueryDataTransferProjectsTransferConfigsRunsDeleteResource,
    newBigQueryDataTransferProjectsTransferConfigsRunsDelete,
    BigQueryDataTransferProjectsTransferConfigsRunsDelete,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.get
    BigQueryDataTransferProjectsTransferConfigsRunsGetResource,
    newBigQueryDataTransferProjectsTransferConfigsRunsGet,
    BigQueryDataTransferProjectsTransferConfigsRunsGet,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.list
    BigQueryDataTransferProjectsTransferConfigsRunsListResource,
    newBigQueryDataTransferProjectsTransferConfigsRunsList,
    BigQueryDataTransferProjectsTransferConfigsRunsList,

    -- ** bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list
    BigQueryDataTransferProjectsTransferConfigsRunsTransferLogsListResource,
    newBigQueryDataTransferProjectsTransferConfigsRunsTransferLogsList,
    BigQueryDataTransferProjectsTransferConfigsRunsTransferLogsList,

    -- ** bigquerydatatransfer.projects.transferConfigs.scheduleRuns
    BigQueryDataTransferProjectsTransferConfigsScheduleRunsResource,
    newBigQueryDataTransferProjectsTransferConfigsScheduleRuns,
    BigQueryDataTransferProjectsTransferConfigsScheduleRuns,

    -- ** bigquerydatatransfer.projects.transferConfigs.startManualRuns
    BigQueryDataTransferProjectsTransferConfigsStartManualRunsResource,
    newBigQueryDataTransferProjectsTransferConfigsStartManualRuns,
    BigQueryDataTransferProjectsTransferConfigsStartManualRuns,

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

    -- ** EnrollDataSourcesRequest
    EnrollDataSourcesRequest (..),
    newEnrollDataSourcesRequest,

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

    -- ** ScheduleOptions
    ScheduleOptions (..),
    newScheduleOptions,

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
