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
-- Module      : Network.Google.Script.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Script.Types
  ( -- * Configuration
    scriptService,

    -- * OAuth Scopes
    mailGoogleComScope,
    calendarFeedsScope,
    m8FeedsScope,
    adminDirectoryGroupScope,
    adminDirectoryUserScope,
    documentsScope,
    driveScope,
    formsScope,
    formsCurrentOnlyScope,
    groupsScope,
    scriptDeploymentsScope,
    scriptDeploymentsReadOnlyScope,
    scriptMetricsScope,
    scriptProcessesScope,
    scriptProjectsScope,
    scriptProjectsReadOnlyScope,
    spreadsheetsScope,
    userinfoEmailScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.Script.Internal.Product
import Network.Google.Script.Internal.Sum

-- | Default request referring to version @v1@ of the Apps Script API. This contains the host and root path used as a starting point for constructing service requests.
scriptService :: Core.ServiceConfig
scriptService =
  Core.defaultService
    (Core.ServiceId "script:v1")
    "script.googleapis.com"

-- | Read, compose, send, and permanently delete all your email from Gmail
mailGoogleComScope :: Core.Proxy '["https://mail.google.com/"]
mailGoogleComScope = Core.Proxy

-- | See, edit, share, and permanently delete all the calendars you can access using Google Calendar
calendarFeedsScope :: Core.Proxy '["https://www.google.com/calendar/feeds"]
calendarFeedsScope = Core.Proxy

-- | See, edit, download, and permanently delete your contacts
m8FeedsScope :: Core.Proxy '["https://www.google.com/m8/feeds"]
m8FeedsScope = Core.Proxy

-- | View and manage the provisioning of groups on your domain
adminDirectoryGroupScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
adminDirectoryGroupScope = Core.Proxy

-- | View and manage the provisioning of users on your domain
adminDirectoryUserScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
adminDirectoryUserScope = Core.Proxy

-- | See, edit, create, and delete all your Google Docs documents
documentsScope :: Core.Proxy '["https://www.googleapis.com/auth/documents"]
documentsScope = Core.Proxy

-- | See, edit, create, and delete all of your Google Drive files
driveScope :: Core.Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Core.Proxy

-- | View and manage your forms in Google Drive
formsScope :: Core.Proxy '["https://www.googleapis.com/auth/forms"]
formsScope = Core.Proxy

-- | View and manage forms that this application has been installed in
formsCurrentOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/forms.currentonly"]
formsCurrentOnlyScope = Core.Proxy

-- | View and manage your Google Groups
groupsScope :: Core.Proxy '["https://www.googleapis.com/auth/groups"]
groupsScope = Core.Proxy

-- | Create and update Google Apps Script deployments
scriptDeploymentsScope :: Core.Proxy '["https://www.googleapis.com/auth/script.deployments"]
scriptDeploymentsScope = Core.Proxy

-- | View Google Apps Script deployments
scriptDeploymentsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/script.deployments.readonly"]
scriptDeploymentsReadOnlyScope = Core.Proxy

-- | View Google Apps Script project\'s metrics
scriptMetricsScope :: Core.Proxy '["https://www.googleapis.com/auth/script.metrics"]
scriptMetricsScope = Core.Proxy

-- | View Google Apps Script processes
scriptProcessesScope :: Core.Proxy '["https://www.googleapis.com/auth/script.processes"]
scriptProcessesScope = Core.Proxy

-- | Create and update Google Apps Script projects
scriptProjectsScope :: Core.Proxy '["https://www.googleapis.com/auth/script.projects"]
scriptProjectsScope = Core.Proxy

-- | View Google Apps Script projects
scriptProjectsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/script.projects.readonly"]
scriptProjectsReadOnlyScope = Core.Proxy

-- | See, edit, create, and delete all your Google Sheets spreadsheets
spreadsheetsScope :: Core.Proxy '["https://www.googleapis.com/auth/spreadsheets"]
spreadsheetsScope = Core.Proxy

-- | See your primary Google Account email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy
