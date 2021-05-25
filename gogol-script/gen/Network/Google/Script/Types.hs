{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Script.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Script.Types
    (
    -- * Service Configuration
      scriptService

    -- * OAuth Scopes
    , mailGoogleComScope
    , m8FeedsScope
    , adminDirectoryUserScope
    , scriptProjectsScope
    , userInfoEmailScope
    , scriptMetricsScope
    , formsCurrentOnlyScope
    , scriptDeploymentsScope
    , driveScope
    , adminDirectoryGroupScope
    , scriptProjectsReadOnlyScope
    , calendarFeedsScope
    , formsScope
    , spreadsheetsScope
    , scriptDeploymentsReadOnlyScope
    , groupsScope
    , scriptProcessesScope
    , documentsScope

    -- * GoogleAppsScriptTypeFunctionSet
    , GoogleAppsScriptTypeFunctionSet
    , googleAppsScriptTypeFunctionSet
    , gastfsValues

    -- * GoogleAppsScriptTypeExecutionAPIConfig
    , GoogleAppsScriptTypeExecutionAPIConfig
    , googleAppsScriptTypeExecutionAPIConfig
    , gasteacAccess

    -- * GoogleAppsScriptTypeProcessProcessType
    , GoogleAppsScriptTypeProcessProcessType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * GoogleAppsScriptTypeProcessUserAccessLevel
    , GoogleAppsScriptTypeProcessUserAccessLevel (..)

    -- * ScriptExecutionResult
    , ScriptExecutionResult
    , scriptExecutionResult
    , serReturnValue

    -- * Metrics
    , Metrics
    , metrics
    , mActiveUsers
    , mFailedExecutions
    , mTotalExecutions

    -- * GoogleAppsScriptTypeProcess
    , GoogleAppsScriptTypeProcess
    , googleAppsScriptTypeProcess
    , gastpProcessStatus
    , gastpStartTime
    , gastpProjectName
    , gastpFunctionName
    , gastpUserAccessLevel
    , gastpProcessType
    , gastpDuration

    -- * Struct
    , Struct
    , struct
    , sFields

    -- * ProcessesListScriptProcessesScriptProcessFilterTypes
    , ProcessesListScriptProcessesScriptProcessFilterTypes (..)

    -- * GoogleAppsScriptTypeWebAppConfigExecuteAs
    , GoogleAppsScriptTypeWebAppConfigExecuteAs (..)

    -- * Project
    , Project
    , project
    , pCreator
    , pLastModifyUser
    , pUpdateTime
    , pScriptId
    , pTitle
    , pParentId
    , pCreateTime

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse

    -- * ListUserProcessesResponse
    , ListUserProcessesResponse
    , listUserProcessesResponse
    , luprNextPageToken
    , luprProcesses

    -- * Empty
    , Empty
    , empty

    -- * GoogleAppsScriptTypeUser
    , GoogleAppsScriptTypeUser
    , googleAppsScriptTypeUser
    , gastuEmail
    , gastuPhotoURL
    , gastuDomain
    , gastuName

    -- * ExecuteStreamResponse
    , ExecuteStreamResponse
    , executeStreamResponse
    , esrResult

    -- * EntryPoint
    , EntryPoint
    , entryPoint
    , epExecutionAPI
    , epAddOn
    , epEntryPointType
    , epWebApp

    -- * ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- * GoogleAppsScriptTypeExecutionAPIConfigAccess
    , GoogleAppsScriptTypeExecutionAPIConfigAccess (..)

    -- * ProcessesListScriptProcessesScriptProcessFilterStatuses
    , ProcessesListScriptProcessesScriptProcessFilterStatuses (..)

    -- * ExecutionRequest
    , ExecutionRequest
    , executionRequest
    , erFunction
    , erSessionState
    , erDevMode
    , erParameters

    -- * ListScriptProcessesResponse
    , ListScriptProcessesResponse
    , listScriptProcessesResponse
    , lsprNextPageToken
    , lsprProcesses

    -- * Value
    , Value
    , value
    , vBytesValue
    , vProtoValue
    , vBoolValue
    , vNumberValue
    , vStringValue
    , vListValue
    , vStructValue
    , vDateValue
    , vNullValue

    -- * ValueNullValue
    , ValueNullValue (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * FileType
    , FileType (..)

    -- * ScriptStackTraceElement
    , ScriptStackTraceElement
    , scriptStackTraceElement
    , ssteFunction
    , ssteLineNumber

    -- * StructFields
    , StructFields
    , structFields
    , sfAddtional

    -- * ProcessesListUserProcessFilterTypes
    , ProcessesListUserProcessFilterTypes (..)

    -- * ListValue
    , ListValue
    , listValue
    , lvValues

    -- * ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
    , ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels (..)

    -- * Content
    , Content
    , content
    , cScriptId
    , cFiles

    -- * ProjectsGetMetricsMetricsGranularity
    , ProjectsGetMetricsMetricsGranularity (..)

    -- * GoogleAppsScriptTypeAddOnEntryPointAddOnType
    , GoogleAppsScriptTypeAddOnEntryPointAddOnType (..)

    -- * MetricsValue
    , MetricsValue
    , metricsValue
    , mvStartTime
    , mvValue
    , mvEndTime

    -- * GoogleAppsScriptTypeAddOnEntryPoint
    , GoogleAppsScriptTypeAddOnEntryPoint
    , googleAppsScriptTypeAddOnEntryPoint
    , gastaoepPostInstallTipURL
    , gastaoepAddOnType
    , gastaoepReportIssueURL
    , gastaoepHelpURL
    , gastaoepTitle
    , gastaoepDescription

    -- * ProcessesListUserProcessFilterStatuses
    , ProcessesListUserProcessFilterStatuses (..)

    -- * GoogleAppsScriptTypeWebAppConfig
    , GoogleAppsScriptTypeWebAppConfig
    , googleAppsScriptTypeWebAppConfig
    , gastwacAccess
    , gastwacExecuteAs

    -- * Version
    , Version
    , version
    , vVersionNumber
    , vScriptId
    , vDescription
    , vCreateTime

    -- * Xgafv
    , Xgafv (..)

    -- * ExecutionError
    , ExecutionError
    , executionError
    , eeScriptStackTraceElements
    , eeErrorType
    , eeErrorMessage

    -- * GoogleAppsScriptTypeWebAppEntryPoint
    , GoogleAppsScriptTypeWebAppEntryPoint
    , googleAppsScriptTypeWebAppEntryPoint
    , gastwaepEntryPointConfig
    , gastwaepURL

    -- * ProcessesListUserProcessFilterUserAccessLevels
    , ProcessesListUserProcessFilterUserAccessLevels (..)

    -- * EntryPointEntryPointType
    , EntryPointEntryPointType (..)

    -- * CreateProjectRequest
    , CreateProjectRequest
    , createProjectRequest
    , cprTitle
    , cprParentId

    -- * GoogleAppsScriptTypeProcessProcessStatus
    , GoogleAppsScriptTypeProcessProcessStatus (..)

    -- * DeploymentConfig
    , DeploymentConfig
    , deploymentConfig
    , dcVersionNumber
    , dcScriptId
    , dcManifestFileName
    , dcDescription

    -- * GoogleAppsScriptTypeWebAppConfigAccess
    , GoogleAppsScriptTypeWebAppConfigAccess (..)

    -- * ListDeploymentsResponse
    , ListDeploymentsResponse
    , listDeploymentsResponse
    , ldrNextPageToken
    , ldrDeployments

    -- * GoogleAppsScriptTypeFunction
    , GoogleAppsScriptTypeFunction
    , googleAppsScriptTypeFunction
    , gastfName

    -- * ValueProtoValue
    , ValueProtoValue
    , valueProtoValue
    , vpvAddtional

    -- * File
    , File
    , file
    , fFunctionSet
    , fLastModifyUser
    , fUpdateTime
    , fName
    , fSource
    , fType
    , fCreateTime

    -- * GoogleAppsScriptTypeExecutionAPIEntryPoint
    , GoogleAppsScriptTypeExecutionAPIEntryPoint
    , googleAppsScriptTypeExecutionAPIEntryPoint
    , gasteaepEntryPointConfig

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * ExecutionResponse
    , ExecutionResponse
    , executionResponse
    , erResult

    -- * Deployment
    , Deployment
    , deployment
    , dDeploymentId
    , dUpdateTime
    , dEntryPoints
    , dDeploymentConfig

    -- * UpdateDeploymentRequest
    , UpdateDeploymentRequest
    , updateDeploymentRequest
    , udrDeploymentConfig
    ) where

import Network.Google.Prelude
import Network.Google.Script.Types.Product
import Network.Google.Script.Types.Sum

-- | Default request referring to version 'v1' of the Apps Script API. This contains the host and root path used as a starting point for constructing service requests.
scriptService :: ServiceConfig
scriptService
  = defaultService (ServiceId "script:v1")
      "script.googleapis.com"

-- | Read, compose, send, and permanently delete all your email from Gmail
mailGoogleComScope :: Proxy '["https://mail.google.com/"]
mailGoogleComScope = Proxy

-- | See, edit, download, and permanently delete your contacts
m8FeedsScope :: Proxy '["https://www.google.com/m8/feeds"]
m8FeedsScope = Proxy

-- | View and manage the provisioning of users on your domain
adminDirectoryUserScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
adminDirectoryUserScope = Proxy

-- | Create and update Google Apps Script projects
scriptProjectsScope :: Proxy '["https://www.googleapis.com/auth/script.projects"]
scriptProjectsScope = Proxy

-- | See your primary Google Account email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy

-- | View Google Apps Script project\'s metrics
scriptMetricsScope :: Proxy '["https://www.googleapis.com/auth/script.metrics"]
scriptMetricsScope = Proxy

-- | View and manage forms that this application has been installed in
formsCurrentOnlyScope :: Proxy '["https://www.googleapis.com/auth/forms.currentonly"]
formsCurrentOnlyScope = Proxy

-- | Create and update Google Apps Script deployments
scriptDeploymentsScope :: Proxy '["https://www.googleapis.com/auth/script.deployments"]
scriptDeploymentsScope = Proxy

-- | See, edit, create, and delete all of your Google Drive files
driveScope :: Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Proxy

-- | View and manage the provisioning of groups on your domain
adminDirectoryGroupScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
adminDirectoryGroupScope = Proxy

-- | View Google Apps Script projects
scriptProjectsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/script.projects.readonly"]
scriptProjectsReadOnlyScope = Proxy

-- | See, edit, share, and permanently delete all the calendars you can
-- access using Google Calendar
calendarFeedsScope :: Proxy '["https://www.google.com/calendar/feeds"]
calendarFeedsScope = Proxy

-- | View and manage your forms in Google Drive
formsScope :: Proxy '["https://www.googleapis.com/auth/forms"]
formsScope = Proxy

-- | See, edit, create, and delete all your Google Sheets spreadsheets
spreadsheetsScope :: Proxy '["https://www.googleapis.com/auth/spreadsheets"]
spreadsheetsScope = Proxy

-- | View Google Apps Script deployments
scriptDeploymentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/script.deployments.readonly"]
scriptDeploymentsReadOnlyScope = Proxy

-- | View and manage your Google Groups
groupsScope :: Proxy '["https://www.googleapis.com/auth/groups"]
groupsScope = Proxy

-- | View Google Apps Script processes
scriptProcessesScope :: Proxy '["https://www.googleapis.com/auth/script.processes"]
scriptProcessesScope = Proxy

-- | See, edit, create, and delete all your Google Docs documents
documentsScope :: Proxy '["https://www.googleapis.com/auth/documents"]
documentsScope = Proxy
