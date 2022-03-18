{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Script
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages and executes Google Apps Script projects.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference>
module Gogol.Script
    (
    -- * Configuration
      scriptService

    -- * OAuth Scopes
    , mailGoogleComScope
    , calendarFeedsScope
    , m8FeedsScope
    , adminDirectoryGroupScope
    , adminDirectoryUserScope
    , documentsScope
    , driveScope
    , formsScope
    , formsCurrentOnlyScope
    , groupsScope
    , scriptDeploymentsScope
    , scriptDeploymentsReadOnlyScope
    , scriptMetricsScope
    , scriptProcessesScope
    , scriptProjectsScope
    , scriptProjectsReadOnlyScope
    , spreadsheetsScope
    , userinfoEmailScope

    -- * Resources

    -- ** script.processes.list
    , ScriptProcessesListResource
    , newScriptProcessesList
    , ScriptProcessesList

    -- ** script.processes.listScriptProcesses
    , ScriptProcessesListScriptProcessesResource
    , newScriptProcessesListScriptProcesses
    , ScriptProcessesListScriptProcesses

    -- ** script.projects.create
    , ScriptProjectsCreateResource
    , newScriptProjectsCreate
    , ScriptProjectsCreate

    -- ** script.projects.deployments.create
    , ScriptProjectsDeploymentsCreateResource
    , newScriptProjectsDeploymentsCreate
    , ScriptProjectsDeploymentsCreate

    -- ** script.projects.deployments.delete
    , ScriptProjectsDeploymentsDeleteResource
    , newScriptProjectsDeploymentsDelete
    , ScriptProjectsDeploymentsDelete

    -- ** script.projects.deployments.get
    , ScriptProjectsDeploymentsGetResource
    , newScriptProjectsDeploymentsGet
    , ScriptProjectsDeploymentsGet

    -- ** script.projects.deployments.list
    , ScriptProjectsDeploymentsListResource
    , newScriptProjectsDeploymentsList
    , ScriptProjectsDeploymentsList

    -- ** script.projects.deployments.update
    , ScriptProjectsDeploymentsUpdateResource
    , newScriptProjectsDeploymentsUpdate
    , ScriptProjectsDeploymentsUpdate

    -- ** script.projects.get
    , ScriptProjectsGetResource
    , newScriptProjectsGet
    , ScriptProjectsGet

    -- ** script.projects.getContent
    , ScriptProjectsGetContentResource
    , newScriptProjectsGetContent
    , ScriptProjectsGetContent

    -- ** script.projects.getMetrics
    , ScriptProjectsGetMetricsResource
    , newScriptProjectsGetMetrics
    , ScriptProjectsGetMetrics

    -- ** script.projects.updateContent
    , ScriptProjectsUpdateContentResource
    , newScriptProjectsUpdateContent
    , ScriptProjectsUpdateContent

    -- ** script.projects.versions.create
    , ScriptProjectsVersionsCreateResource
    , newScriptProjectsVersionsCreate
    , ScriptProjectsVersionsCreate

    -- ** script.projects.versions.get
    , ScriptProjectsVersionsGetResource
    , newScriptProjectsVersionsGet
    , ScriptProjectsVersionsGet

    -- ** script.projects.versions.list
    , ScriptProjectsVersionsListResource
    , newScriptProjectsVersionsList
    , ScriptProjectsVersionsList

    -- ** script.scripts.run
    , ScriptScriptsRunResource
    , newScriptScriptsRun
    , ScriptScriptsRun

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Content
    , Content (..)
    , newContent

    -- ** CreateProjectRequest
    , CreateProjectRequest (..)
    , newCreateProjectRequest

    -- ** Deployment
    , Deployment (..)
    , newDeployment

    -- ** DeploymentConfig
    , DeploymentConfig (..)
    , newDeploymentConfig

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EntryPoint
    , EntryPoint (..)
    , newEntryPoint

    -- ** EntryPoint_EntryPointType
    , EntryPoint_EntryPointType (..)

    -- ** ExecuteStreamResponse
    , ExecuteStreamResponse (..)
    , newExecuteStreamResponse

    -- ** ExecutionError
    , ExecutionError (..)
    , newExecutionError

    -- ** ExecutionRequest
    , ExecutionRequest (..)
    , newExecutionRequest

    -- ** ExecutionResponse
    , ExecutionResponse (..)
    , newExecutionResponse

    -- ** File
    , File (..)
    , newFile

    -- ** File_Type
    , File_Type (..)

    -- ** GoogleAppsScriptTypeAddOnEntryPoint
    , GoogleAppsScriptTypeAddOnEntryPoint (..)
    , newGoogleAppsScriptTypeAddOnEntryPoint

    -- ** GoogleAppsScriptTypeAddOnEntryPoint_AddOnType
    , GoogleAppsScriptTypeAddOnEntryPoint_AddOnType (..)

    -- ** GoogleAppsScriptTypeExecutionApiConfig
    , GoogleAppsScriptTypeExecutionApiConfig (..)
    , newGoogleAppsScriptTypeExecutionApiConfig

    -- ** GoogleAppsScriptTypeExecutionApiConfig_Access
    , GoogleAppsScriptTypeExecutionApiConfig_Access (..)

    -- ** GoogleAppsScriptTypeExecutionApiEntryPoint
    , GoogleAppsScriptTypeExecutionApiEntryPoint (..)
    , newGoogleAppsScriptTypeExecutionApiEntryPoint

    -- ** GoogleAppsScriptTypeFunction
    , GoogleAppsScriptTypeFunction (..)
    , newGoogleAppsScriptTypeFunction

    -- ** GoogleAppsScriptTypeFunctionSet
    , GoogleAppsScriptTypeFunctionSet (..)
    , newGoogleAppsScriptTypeFunctionSet

    -- ** GoogleAppsScriptTypeProcess
    , GoogleAppsScriptTypeProcess (..)
    , newGoogleAppsScriptTypeProcess

    -- ** GoogleAppsScriptTypeProcess_ProcessStatus
    , GoogleAppsScriptTypeProcess_ProcessStatus (..)

    -- ** GoogleAppsScriptTypeProcess_ProcessType
    , GoogleAppsScriptTypeProcess_ProcessType (..)

    -- ** GoogleAppsScriptTypeProcess_UserAccessLevel
    , GoogleAppsScriptTypeProcess_UserAccessLevel (..)

    -- ** GoogleAppsScriptTypeUser
    , GoogleAppsScriptTypeUser (..)
    , newGoogleAppsScriptTypeUser

    -- ** GoogleAppsScriptTypeWebAppConfig
    , GoogleAppsScriptTypeWebAppConfig (..)
    , newGoogleAppsScriptTypeWebAppConfig

    -- ** GoogleAppsScriptTypeWebAppConfig_Access
    , GoogleAppsScriptTypeWebAppConfig_Access (..)

    -- ** GoogleAppsScriptTypeWebAppConfig_ExecuteAs
    , GoogleAppsScriptTypeWebAppConfig_ExecuteAs (..)

    -- ** GoogleAppsScriptTypeWebAppEntryPoint
    , GoogleAppsScriptTypeWebAppEntryPoint (..)
    , newGoogleAppsScriptTypeWebAppEntryPoint

    -- ** ListDeploymentsResponse
    , ListDeploymentsResponse (..)
    , newListDeploymentsResponse

    -- ** ListScriptProcessesResponse
    , ListScriptProcessesResponse (..)
    , newListScriptProcessesResponse

    -- ** ListUserProcessesResponse
    , ListUserProcessesResponse (..)
    , newListUserProcessesResponse

    -- ** ListValue
    , ListValue (..)
    , newListValue

    -- ** ListVersionsResponse
    , ListVersionsResponse (..)
    , newListVersionsResponse

    -- ** Metrics
    , Metrics (..)
    , newMetrics

    -- ** MetricsValue
    , MetricsValue (..)
    , newMetricsValue

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Project
    , Project (..)
    , newProject

    -- ** ScriptExecutionResult
    , ScriptExecutionResult (..)
    , newScriptExecutionResult

    -- ** ScriptStackTraceElement
    , ScriptStackTraceElement (..)
    , newScriptStackTraceElement

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** Struct
    , Struct (..)
    , newStruct

    -- ** Struct_Fields
    , Struct_Fields (..)
    , newStruct_Fields

    -- ** UpdateDeploymentRequest
    , UpdateDeploymentRequest (..)
    , newUpdateDeploymentRequest

    -- ** Value
    , Value (..)
    , newValue

    -- ** Value_NullValue
    , Value_NullValue (..)

    -- ** Value_ProtoValue
    , Value_ProtoValue (..)
    , newValue_ProtoValue

    -- ** Version
    , Version (..)
    , newVersion

    -- ** ProcessesListUserProcessFilterStatuses
    , ProcessesListUserProcessFilterStatuses (..)

    -- ** ProcessesListUserProcessFilterTypes
    , ProcessesListUserProcessFilterTypes (..)

    -- ** ProcessesListUserProcessFilterUserAccessLevels
    , ProcessesListUserProcessFilterUserAccessLevels (..)

    -- ** ProcessesListScriptProcessesScriptProcessFilterStatuses
    , ProcessesListScriptProcessesScriptProcessFilterStatuses (..)

    -- ** ProcessesListScriptProcessesScriptProcessFilterTypes
    , ProcessesListScriptProcessesScriptProcessFilterTypes (..)

    -- ** ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
    , ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels (..)

    -- ** ProjectsGetMetricsMetricsGranularity
    , ProjectsGetMetricsMetricsGranularity (..)
    ) where

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
