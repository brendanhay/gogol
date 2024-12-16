{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Script.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Script.Types
    (
    -- * Configuration
      scriptService

    -- * OAuth Scopes
    , Gmail'FullControl
    , Calendar'Feeds'FullControl
    , M8'Feeds'FullControl
    , Admin'Directory'Group
    , Admin'Directory'User
    , Documents'FullControl
    , Drive'FullControl
    , Forms'FullControl
    , Forms'Currentonly
    , Groups'FullControl
    , Script'Deployments
    , Script'Deployments'Readonly
    , Script'Metrics
    , Script'Processes
    , Script'Projects
    , Script'Projects'Readonly
    , Spreadsheets'FullControl
    , Userinfo'Email

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

    -- ** GoogleAppsScriptTypeProcess_RuntimeVersion
    , GoogleAppsScriptTypeProcess_RuntimeVersion (..)

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

import qualified Gogol.Prelude as Core
import Gogol.Script.Internal.Product
import Gogol.Script.Internal.Sum

-- | Default request referring to version @v1@ of the Apps Script API. This contains the host and root path used as a starting point for constructing service requests.
scriptService :: Core.ServiceConfig
scriptService
  = Core.defaultService (Core.ServiceId "script:v1")
      "script.googleapis.com"

-- | Read, compose, send, and permanently delete all your email from Gmail
type Gmail'FullControl = "https://mail.google.com/"

-- | See, edit, share, and permanently delete all the calendars you can access using Google Calendar
type Calendar'Feeds'FullControl = "https://www.google.com/calendar/feeds"

-- | See, edit, download, and permanently delete your contacts
type M8'Feeds'FullControl = "https://www.google.com/m8/feeds"

-- | View and manage the provisioning of groups on your domain
type Admin'Directory'Group = "https://www.googleapis.com/auth/admin.directory.group"

-- | View and manage the provisioning of users on your domain
type Admin'Directory'User = "https://www.googleapis.com/auth/admin.directory.user"

-- | See, edit, create, and delete all your Google Docs documents
type Documents'FullControl = "https://www.googleapis.com/auth/documents"

-- | See, edit, create, and delete all of your Google Drive files
type Drive'FullControl = "https://www.googleapis.com/auth/drive"

-- | View and manage your forms in Google Drive
type Forms'FullControl = "https://www.googleapis.com/auth/forms"

-- | View and manage forms that this application has been installed in
type Forms'Currentonly = "https://www.googleapis.com/auth/forms.currentonly"

-- | View and manage your Google Groups
type Groups'FullControl = "https://www.googleapis.com/auth/groups"

-- | Create and update Google Apps Script deployments
type Script'Deployments = "https://www.googleapis.com/auth/script.deployments"

-- | View Google Apps Script deployments
type Script'Deployments'Readonly = "https://www.googleapis.com/auth/script.deployments.readonly"

-- | View Google Apps Script project\'s metrics
type Script'Metrics = "https://www.googleapis.com/auth/script.metrics"

-- | View Google Apps Script processes
type Script'Processes = "https://www.googleapis.com/auth/script.processes"

-- | Create and update Google Apps Script projects
type Script'Projects = "https://www.googleapis.com/auth/script.projects"

-- | View Google Apps Script projects
type Script'Projects'Readonly = "https://www.googleapis.com/auth/script.projects.readonly"

-- | See, edit, create, and delete all your Google Sheets spreadsheets
type Spreadsheets'FullControl = "https://www.googleapis.com/auth/spreadsheets"

-- | See your primary Google Account email address
type Userinfo'Email = "https://www.googleapis.com/auth/userinfo.email"
