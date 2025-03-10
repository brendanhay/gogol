{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Script
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages and executes Google Apps Script projects.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference>
module Gogol.Script
  ( -- * Configuration
    scriptService,

    -- * OAuth Scopes
    Gmail'FullControl,
    Calendar'Feeds'FullControl,
    M8'Feeds'FullControl,
    Admin'Directory'Group,
    Admin'Directory'User,
    Documents'FullControl,
    Drive'FullControl,
    Forms'FullControl,
    Forms'Currentonly,
    Groups'FullControl,
    Script'Deployments,
    Script'Deployments'Readonly,
    Script'Metrics,
    Script'Processes,
    Script'Projects,
    Script'Projects'Readonly,
    Spreadsheets'FullControl,
    Userinfo'Email,

    -- * Resources

    -- ** script.processes.list
    ScriptProcessesListResource,
    ScriptProcessesList (..),
    newScriptProcessesList,

    -- ** script.processes.listScriptProcesses
    ScriptProcessesListScriptProcessesResource,
    ScriptProcessesListScriptProcesses (..),
    newScriptProcessesListScriptProcesses,

    -- ** script.projects.create
    ScriptProjectsCreateResource,
    ScriptProjectsCreate (..),
    newScriptProjectsCreate,

    -- ** script.projects.deployments.create
    ScriptProjectsDeploymentsCreateResource,
    ScriptProjectsDeploymentsCreate (..),
    newScriptProjectsDeploymentsCreate,

    -- ** script.projects.deployments.delete
    ScriptProjectsDeploymentsDeleteResource,
    ScriptProjectsDeploymentsDelete (..),
    newScriptProjectsDeploymentsDelete,

    -- ** script.projects.deployments.get
    ScriptProjectsDeploymentsGetResource,
    ScriptProjectsDeploymentsGet (..),
    newScriptProjectsDeploymentsGet,

    -- ** script.projects.deployments.list
    ScriptProjectsDeploymentsListResource,
    ScriptProjectsDeploymentsList (..),
    newScriptProjectsDeploymentsList,

    -- ** script.projects.deployments.update
    ScriptProjectsDeploymentsUpdateResource,
    ScriptProjectsDeploymentsUpdate (..),
    newScriptProjectsDeploymentsUpdate,

    -- ** script.projects.get
    ScriptProjectsGetResource,
    ScriptProjectsGet (..),
    newScriptProjectsGet,

    -- ** script.projects.getContent
    ScriptProjectsGetContentResource,
    ScriptProjectsGetContent (..),
    newScriptProjectsGetContent,

    -- ** script.projects.getMetrics
    ScriptProjectsGetMetricsResource,
    ScriptProjectsGetMetrics (..),
    newScriptProjectsGetMetrics,

    -- ** script.projects.updateContent
    ScriptProjectsUpdateContentResource,
    ScriptProjectsUpdateContent (..),
    newScriptProjectsUpdateContent,

    -- ** script.projects.versions.create
    ScriptProjectsVersionsCreateResource,
    ScriptProjectsVersionsCreate (..),
    newScriptProjectsVersionsCreate,

    -- ** script.projects.versions.get
    ScriptProjectsVersionsGetResource,
    ScriptProjectsVersionsGet (..),
    newScriptProjectsVersionsGet,

    -- ** script.projects.versions.list
    ScriptProjectsVersionsListResource,
    ScriptProjectsVersionsList (..),
    newScriptProjectsVersionsList,

    -- ** script.scripts.run
    ScriptScriptsRunResource,
    ScriptScriptsRun (..),
    newScriptScriptsRun,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Content
    Content (..),
    newContent,

    -- ** CreateProjectRequest
    CreateProjectRequest (..),
    newCreateProjectRequest,

    -- ** Deployment
    Deployment (..),
    newDeployment,

    -- ** DeploymentConfig
    DeploymentConfig (..),
    newDeploymentConfig,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EntryPoint
    EntryPoint (..),
    newEntryPoint,

    -- ** EntryPoint_EntryPointType
    EntryPoint_EntryPointType (..),

    -- ** ExecuteStreamResponse
    ExecuteStreamResponse (..),
    newExecuteStreamResponse,

    -- ** ExecutionError
    ExecutionError (..),
    newExecutionError,

    -- ** ExecutionRequest
    ExecutionRequest (..),
    newExecutionRequest,

    -- ** ExecutionResponse
    ExecutionResponse (..),
    newExecutionResponse,

    -- ** File
    File (..),
    newFile,

    -- ** File_Type
    File_Type (..),

    -- ** GoogleAppsScriptTypeAddOnEntryPoint
    GoogleAppsScriptTypeAddOnEntryPoint (..),
    newGoogleAppsScriptTypeAddOnEntryPoint,

    -- ** GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
    GoogleAppsScriptTypeAddOnEntryPoint_AddOnType (..),

    -- ** GoogleAppsScriptTypeExecutionApiConfig
    GoogleAppsScriptTypeExecutionApiConfig (..),
    newGoogleAppsScriptTypeExecutionApiConfig,

    -- ** GoogleAppsScriptTypeExecutionApiConfig_Access
    GoogleAppsScriptTypeExecutionApiConfig_Access (..),

    -- ** GoogleAppsScriptTypeExecutionApiEntryPoint
    GoogleAppsScriptTypeExecutionApiEntryPoint (..),
    newGoogleAppsScriptTypeExecutionApiEntryPoint,

    -- ** GoogleAppsScriptTypeFunction
    GoogleAppsScriptTypeFunction (..),
    newGoogleAppsScriptTypeFunction,

    -- ** GoogleAppsScriptTypeFunctionSet
    GoogleAppsScriptTypeFunctionSet (..),
    newGoogleAppsScriptTypeFunctionSet,

    -- ** GoogleAppsScriptTypeProcess
    GoogleAppsScriptTypeProcess (..),
    newGoogleAppsScriptTypeProcess,

    -- ** GoogleAppsScriptTypeProcess_ProcessStatus
    GoogleAppsScriptTypeProcess_ProcessStatus (..),

    -- ** GoogleAppsScriptTypeProcess_ProcessType
    GoogleAppsScriptTypeProcess_ProcessType (..),

    -- ** GoogleAppsScriptTypeProcess_RuntimeVersion
    GoogleAppsScriptTypeProcess_RuntimeVersion (..),

    -- ** GoogleAppsScriptTypeProcess_UserAccessLevel
    GoogleAppsScriptTypeProcess_UserAccessLevel (..),

    -- ** GoogleAppsScriptTypeUser
    GoogleAppsScriptTypeUser (..),
    newGoogleAppsScriptTypeUser,

    -- ** GoogleAppsScriptTypeWebAppConfig
    GoogleAppsScriptTypeWebAppConfig (..),
    newGoogleAppsScriptTypeWebAppConfig,

    -- ** GoogleAppsScriptTypeWebAppConfig_Access
    GoogleAppsScriptTypeWebAppConfig_Access (..),

    -- ** GoogleAppsScriptTypeWebAppConfig_ExecuteAs
    GoogleAppsScriptTypeWebAppConfig_ExecuteAs (..),

    -- ** GoogleAppsScriptTypeWebAppEntryPoint
    GoogleAppsScriptTypeWebAppEntryPoint (..),
    newGoogleAppsScriptTypeWebAppEntryPoint,

    -- ** ListDeploymentsResponse
    ListDeploymentsResponse (..),
    newListDeploymentsResponse,

    -- ** ListScriptProcessesResponse
    ListScriptProcessesResponse (..),
    newListScriptProcessesResponse,

    -- ** ListUserProcessesResponse
    ListUserProcessesResponse (..),
    newListUserProcessesResponse,

    -- ** ListValue
    ListValue (..),
    newListValue,

    -- ** ListVersionsResponse
    ListVersionsResponse (..),
    newListVersionsResponse,

    -- ** Metrics
    Metrics (..),
    newMetrics,

    -- ** MetricsValue
    MetricsValue (..),
    newMetricsValue,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Project
    Project (..),
    newProject,

    -- ** ScriptExecutionResult
    ScriptExecutionResult (..),
    newScriptExecutionResult,

    -- ** ScriptStackTraceElement
    ScriptStackTraceElement (..),
    newScriptStackTraceElement,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Struct
    Struct (..),
    newStruct,

    -- ** Struct_Fields
    Struct_Fields (..),
    newStruct_Fields,

    -- ** UpdateDeploymentRequest
    UpdateDeploymentRequest (..),
    newUpdateDeploymentRequest,

    -- ** Value
    Value (..),
    newValue,

    -- ** Value_NullValue
    Value_NullValue (..),

    -- ** Value_ProtoValue
    Value_ProtoValue (..),
    newValue_ProtoValue,

    -- ** Version
    Version (..),
    newVersion,

    -- ** ProcessesListUserProcessFilterStatuses
    ProcessesListUserProcessFilterStatuses (..),

    -- ** ProcessesListUserProcessFilterTypes
    ProcessesListUserProcessFilterTypes (..),

    -- ** ProcessesListUserProcessFilterUserAccessLevels
    ProcessesListUserProcessFilterUserAccessLevels (..),

    -- ** ProcessesListScriptProcessesScriptProcessFilterStatuses
    ProcessesListScriptProcessesScriptProcessFilterStatuses (..),

    -- ** ProcessesListScriptProcessesScriptProcessFilterTypes
    ProcessesListScriptProcessesScriptProcessFilterTypes (..),

    -- ** ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
    ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels (..),

    -- ** ProjectsGetMetricsMetricsGranularity
    ProjectsGetMetricsMetricsGranularity (..),
  )
where

import Gogol.Script.Processes.List
import Gogol.Script.Processes.ListScriptProcesses
import Gogol.Script.Projects.Create
import Gogol.Script.Projects.Deployments.Create
import Gogol.Script.Projects.Deployments.Delete
import Gogol.Script.Projects.Deployments.Get
import Gogol.Script.Projects.Deployments.List
import Gogol.Script.Projects.Deployments.Update
import Gogol.Script.Projects.Get
import Gogol.Script.Projects.GetContent
import Gogol.Script.Projects.GetMetrics
import Gogol.Script.Projects.UpdateContent
import Gogol.Script.Projects.Versions.Create
import Gogol.Script.Projects.Versions.Get
import Gogol.Script.Projects.Versions.List
import Gogol.Script.Scripts.Run
import Gogol.Script.Types
