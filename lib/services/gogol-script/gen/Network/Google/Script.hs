{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Script
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages and executes Google Apps Script projects.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference>
module Network.Google.Script
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

    -- * API Declaration
    , ScriptAPI

    -- * Resources

    -- ** script.processes.list
    , module Network.Google.Resource.Script.Processes.List

    -- ** script.processes.listScriptProcesses
    , module Network.Google.Resource.Script.Processes.ListScriptProcesses

    -- ** script.projects.create
    , module Network.Google.Resource.Script.Projects.Create

    -- ** script.projects.deployments.create
    , module Network.Google.Resource.Script.Projects.Deployments.Create

    -- ** script.projects.deployments.delete
    , module Network.Google.Resource.Script.Projects.Deployments.Delete

    -- ** script.projects.deployments.get
    , module Network.Google.Resource.Script.Projects.Deployments.Get

    -- ** script.projects.deployments.list
    , module Network.Google.Resource.Script.Projects.Deployments.List

    -- ** script.projects.deployments.update
    , module Network.Google.Resource.Script.Projects.Deployments.Update

    -- ** script.projects.get
    , module Network.Google.Resource.Script.Projects.Get

    -- ** script.projects.getContent
    , module Network.Google.Resource.Script.Projects.GetContent

    -- ** script.projects.getMetrics
    , module Network.Google.Resource.Script.Projects.GetMetrics

    -- ** script.projects.updateContent
    , module Network.Google.Resource.Script.Projects.UpdateContent

    -- ** script.projects.versions.create
    , module Network.Google.Resource.Script.Projects.Versions.Create

    -- ** script.projects.versions.get
    , module Network.Google.Resource.Script.Projects.Versions.Get

    -- ** script.projects.versions.list
    , module Network.Google.Resource.Script.Projects.Versions.List

    -- ** script.scripts.run
    , module Network.Google.Resource.Script.Scripts.Run

    -- * Types

    -- ** GoogleAppsScriptTypeFunctionSet
    , GoogleAppsScriptTypeFunctionSet
    , googleAppsScriptTypeFunctionSet
    , gastfsValues

    -- ** GoogleAppsScriptTypeExecutionAPIConfig
    , GoogleAppsScriptTypeExecutionAPIConfig
    , googleAppsScriptTypeExecutionAPIConfig
    , gasteacAccess

    -- ** GoogleAppsScriptTypeProcessProcessType
    , GoogleAppsScriptTypeProcessProcessType (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** GoogleAppsScriptTypeProcessUserAccessLevel
    , GoogleAppsScriptTypeProcessUserAccessLevel (..)

    -- ** ScriptExecutionResult
    , ScriptExecutionResult
    , scriptExecutionResult
    , serReturnValue

    -- ** Metrics
    , Metrics
    , metrics
    , mActiveUsers
    , mFailedExecutions
    , mTotalExecutions

    -- ** GoogleAppsScriptTypeProcess
    , GoogleAppsScriptTypeProcess
    , googleAppsScriptTypeProcess
    , gastpProcessStatus
    , gastpStartTime
    , gastpProjectName
    , gastpFunctionName
    , gastpUserAccessLevel
    , gastpProcessType
    , gastpDuration

    -- ** Struct
    , Struct
    , struct
    , sFields

    -- ** ProcessesListScriptProcessesScriptProcessFilterTypes
    , ProcessesListScriptProcessesScriptProcessFilterTypes (..)

    -- ** GoogleAppsScriptTypeWebAppConfigExecuteAs
    , GoogleAppsScriptTypeWebAppConfigExecuteAs (..)

    -- ** Project
    , Project
    , project
    , pCreator
    , pLastModifyUser
    , pUpdateTime
    , pScriptId
    , pTitle
    , pParentId
    , pCreateTime

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse

    -- ** ListUserProcessesResponse
    , ListUserProcessesResponse
    , listUserProcessesResponse
    , luprNextPageToken
    , luprProcesses

    -- ** Empty
    , Empty
    , empty

    -- ** GoogleAppsScriptTypeUser
    , GoogleAppsScriptTypeUser
    , googleAppsScriptTypeUser
    , gastuEmail
    , gastuPhotoURL
    , gastuDomain
    , gastuName

    -- ** ExecuteStreamResponse
    , ExecuteStreamResponse
    , executeStreamResponse
    , esrResult

    -- ** EntryPoint
    , EntryPoint
    , entryPoint
    , epExecutionAPI
    , epAddOn
    , epEntryPointType
    , epWebApp

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** GoogleAppsScriptTypeExecutionAPIConfigAccess
    , GoogleAppsScriptTypeExecutionAPIConfigAccess (..)

    -- ** ProcessesListScriptProcessesScriptProcessFilterStatuses
    , ProcessesListScriptProcessesScriptProcessFilterStatuses (..)

    -- ** ExecutionRequest
    , ExecutionRequest
    , executionRequest
    , erFunction
    , erSessionState
    , erDevMode
    , erParameters

    -- ** ListScriptProcessesResponse
    , ListScriptProcessesResponse
    , listScriptProcessesResponse
    , lsprNextPageToken
    , lsprProcesses

    -- ** Value
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

    -- ** ValueNullValue
    , ValueNullValue (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** FileType
    , FileType (..)

    -- ** ScriptStackTraceElement
    , ScriptStackTraceElement
    , scriptStackTraceElement
    , ssteFunction
    , ssteLineNumber

    -- ** StructFields
    , StructFields
    , structFields
    , sfAddtional

    -- ** ProcessesListUserProcessFilterTypes
    , ProcessesListUserProcessFilterTypes (..)

    -- ** ListValue
    , ListValue
    , listValue
    , lvValues

    -- ** ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels
    , ProcessesListScriptProcessesScriptProcessFilterUserAccessLevels (..)

    -- ** Content
    , Content
    , content
    , cScriptId
    , cFiles

    -- ** ProjectsGetMetricsMetricsGranularity
    , ProjectsGetMetricsMetricsGranularity (..)

    -- ** GoogleAppsScriptTypeAddOnEntryPointAddOnType
    , GoogleAppsScriptTypeAddOnEntryPointAddOnType (..)

    -- ** MetricsValue
    , MetricsValue
    , metricsValue
    , mvStartTime
    , mvValue
    , mvEndTime

    -- ** GoogleAppsScriptTypeAddOnEntryPoint
    , GoogleAppsScriptTypeAddOnEntryPoint
    , googleAppsScriptTypeAddOnEntryPoint
    , gastaoepPostInstallTipURL
    , gastaoepAddOnType
    , gastaoepReportIssueURL
    , gastaoepHelpURL
    , gastaoepTitle
    , gastaoepDescription

    -- ** ProcessesListUserProcessFilterStatuses
    , ProcessesListUserProcessFilterStatuses (..)

    -- ** GoogleAppsScriptTypeWebAppConfig
    , GoogleAppsScriptTypeWebAppConfig
    , googleAppsScriptTypeWebAppConfig
    , gastwacAccess
    , gastwacExecuteAs

    -- ** Version
    , Version
    , version
    , vVersionNumber
    , vScriptId
    , vDescription
    , vCreateTime

    -- ** Xgafv
    , Xgafv (..)

    -- ** ExecutionError
    , ExecutionError
    , executionError
    , eeScriptStackTraceElements
    , eeErrorType
    , eeErrorMessage

    -- ** GoogleAppsScriptTypeWebAppEntryPoint
    , GoogleAppsScriptTypeWebAppEntryPoint
    , googleAppsScriptTypeWebAppEntryPoint
    , gastwaepEntryPointConfig
    , gastwaepURL

    -- ** ProcessesListUserProcessFilterUserAccessLevels
    , ProcessesListUserProcessFilterUserAccessLevels (..)

    -- ** EntryPointEntryPointType
    , EntryPointEntryPointType (..)

    -- ** CreateProjectRequest
    , CreateProjectRequest
    , createProjectRequest
    , cprTitle
    , cprParentId

    -- ** GoogleAppsScriptTypeProcessProcessStatus
    , GoogleAppsScriptTypeProcessProcessStatus (..)

    -- ** DeploymentConfig
    , DeploymentConfig
    , deploymentConfig
    , dcVersionNumber
    , dcScriptId
    , dcManifestFileName
    , dcDescription

    -- ** GoogleAppsScriptTypeWebAppConfigAccess
    , GoogleAppsScriptTypeWebAppConfigAccess (..)

    -- ** ListDeploymentsResponse
    , ListDeploymentsResponse
    , listDeploymentsResponse
    , ldrNextPageToken
    , ldrDeployments

    -- ** GoogleAppsScriptTypeFunction
    , GoogleAppsScriptTypeFunction
    , googleAppsScriptTypeFunction
    , gastfName

    -- ** ValueProtoValue
    , ValueProtoValue
    , valueProtoValue
    , vpvAddtional

    -- ** File
    , File
    , file
    , fFunctionSet
    , fLastModifyUser
    , fUpdateTime
    , fName
    , fSource
    , fType
    , fCreateTime

    -- ** GoogleAppsScriptTypeExecutionAPIEntryPoint
    , GoogleAppsScriptTypeExecutionAPIEntryPoint
    , googleAppsScriptTypeExecutionAPIEntryPoint
    , gasteaepEntryPointConfig

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** ExecutionResponse
    , ExecutionResponse
    , executionResponse
    , erResult

    -- ** Deployment
    , Deployment
    , deployment
    , dDeploymentId
    , dUpdateTime
    , dEntryPoints
    , dDeploymentConfig

    -- ** UpdateDeploymentRequest
    , UpdateDeploymentRequest
    , updateDeploymentRequest
    , udrDeploymentConfig
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Script.Processes.List
import Network.Google.Resource.Script.Processes.ListScriptProcesses
import Network.Google.Resource.Script.Projects.Create
import Network.Google.Resource.Script.Projects.Deployments.Create
import Network.Google.Resource.Script.Projects.Deployments.Delete
import Network.Google.Resource.Script.Projects.Deployments.Get
import Network.Google.Resource.Script.Projects.Deployments.List
import Network.Google.Resource.Script.Projects.Deployments.Update
import Network.Google.Resource.Script.Projects.Get
import Network.Google.Resource.Script.Projects.GetContent
import Network.Google.Resource.Script.Projects.GetMetrics
import Network.Google.Resource.Script.Projects.UpdateContent
import Network.Google.Resource.Script.Projects.Versions.Create
import Network.Google.Resource.Script.Projects.Versions.Get
import Network.Google.Resource.Script.Projects.Versions.List
import Network.Google.Resource.Script.Scripts.Run
import Network.Google.Script.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Apps Script API service.
type ScriptAPI =
     ScriptsRunResource :<|> ProcessesListResource :<|>
       ProcessesListScriptProcessesResource
       :<|> ProjectsVersionsListResource
       :<|> ProjectsVersionsGetResource
       :<|> ProjectsVersionsCreateResource
       :<|> ProjectsDeploymentsListResource
       :<|> ProjectsDeploymentsGetResource
       :<|> ProjectsDeploymentsCreateResource
       :<|> ProjectsDeploymentsDeleteResource
       :<|> ProjectsDeploymentsUpdateResource
       :<|> ProjectsUpdateContentResource
       :<|> ProjectsGetResource
       :<|> ProjectsCreateResource
       :<|> ProjectsGetContentResource
       :<|> ProjectsGetMetricsResource
