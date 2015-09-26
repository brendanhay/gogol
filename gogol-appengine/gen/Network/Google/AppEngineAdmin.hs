{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngineAdmin
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google App Engine Admin API enables developers to provision and
-- manage their App Engine applications.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference>
module Network.Google.AppEngineAdmin
    (
    -- * Resources
      AppEngineAdmin
    , AppsAPI
    , ModulesAPI
    , VersionsAPI
    , VersionsList
    , VersionsGet
    , VersionsCreate
    , VersionsDelete
    , OperationsAPI
    , OperationsList
    , OperationsGet

    -- * Types

    -- ** ApiConfigHandler
    , ApiConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achUrl
    , achAuthFailAction
    , achLogin

    -- ** ApiEndpointHandler
    , ApiEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- ** Application
    , Application
    , application
    , aLocation
    , aCodeBucket
    , aName
    , aDispatchRules
    , aId

    -- ** AutomaticScaling
    , AutomaticScaling
    , automaticScaling
    , asMaxTotalInstances
    , asMinIdleInstances
    , asMinPendingLatency
    , asCpuUtilization
    , asMaxIdleInstances
    , asMinTotalInstances
    , asMaxConcurrentRequests
    , asCoolDownPeriod
    , asMaxPendingLatency

    -- ** BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- ** ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- ** CpuUtilization
    , CpuUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- ** Deployment
    , Deployment
    , deployment
    , dContainer
    , dFiles
    , dSourceReferences

    -- ** DeploymentFiles
    , DeploymentFiles
    , deploymentFiles

    -- ** ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- ** FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceUrl

    -- ** HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcDisableHealthCheck
    , hcCheckInterval
    , hcRestartThreshold
    , hcHost
    , hcTimeout
    , hcUnhealthyThreshold

    -- ** Library
    , Library
    , library
    , lName
    , lVersion

    -- ** ListModulesResponse
    , ListModulesResponse
    , listModulesResponse
    , lmrNextPageToken
    , lmrModules

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- ** Module
    , Module
    , module'
    , mSplit
    , mName
    , mId

    -- ** Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- ** OperationResponse
    , OperationResponse
    , operationResponse

    -- ** Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCpu

    -- ** ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** StaticDirectoryHandler
    , StaticDirectoryHandler
    , staticDirectoryHandler
    , sdhHttpHeaders
    , sdhRequireMatchingFile
    , sdhExpiration
    , sdhMimeType
    , sdhApplicationReadable
    , sdhDirectory

    -- ** StaticDirectoryHandlerHttpHeaders
    , StaticDirectoryHandlerHttpHeaders
    , staticDirectoryHandlerHttpHeaders

    -- ** StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHttpHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- ** StaticFilesHandlerHttpHeaders
    , StaticFilesHandlerHttpHeaders
    , staticFilesHandlerHttpHeaders

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- ** TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- ** TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations

    -- ** UrlDispatchRule
    , UrlDispatchRule
    , urlDispatchRule
    , udrPath
    , udrDomain
    , udrModule

    -- ** UrlMap
    , UrlMap
    , urlMap
    , umScript
    , umSecurityLevel
    , umApiEndpoint
    , umUrlRegex
    , umRedirectHttpResponseCode
    , umAuthFailAction
    , umStaticFiles
    , umLogin
    , umStaticDirectory

    -- ** Version
    , Version
    , version
    , vCreationTime
    , vRuntime
    , vDeployer
    , vNobuildFilesRegex
    , vInstanceClass
    , vHealthCheck
    , vEnv
    , vDefaultExpiration
    , vAutomaticScaling
    , vErrorHandlers
    , vVm
    , vHandlers
    , vInboundServices
    , vNetwork
    , vResources
    , vName
    , vThreadsafe
    , vBetaSettings
    , vBasicScaling
    , vManualScaling
    , vApiConfig
    , vId
    , vEnvVariables
    , vServingStatus
    , vLibraries
    , vDeployment

    -- ** VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings

    -- ** VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    ) where

import           Network.Google.AppEngineAdmin.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppEngineAdmin = AppsAPI

type AppsAPI = OperationsAPI :<|> ModulesAPI

type ModulesAPI = VersionsAPI

type VersionsAPI =
     VersionsGet :<|>
       VersionsCreate :<|> VersionsDelete :<|> VersionsList

-- | Lists the versions of a module.
type VersionsList =
     "v1beta4" :> "apps" :> Capture "appsId" Text :>
       "modules"
       :> Capture "modulesId" Text
       :> "versions"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets application deployment information.
type VersionsGet =
     "v1beta4" :> "apps" :> Capture "appsId" Text :>
       "modules"
       :> Capture "modulesId" Text
       :> "versions"
       :> Capture "versionsId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "view" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deploys new code and resource files to a version.
type VersionsCreate =
     "v1beta4" :> "apps" :> Capture "appsId" Text :>
       "modules"
       :> Capture "modulesId" Text
       :> "versions"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deletes an existing version.
type VersionsDelete =
     "v1beta4" :> "apps" :> Capture "appsId" Text :>
       "modules"
       :> Capture "modulesId" Text
       :> "versions"
       :> Capture "versionsId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type OperationsAPI =
     OperationsGet :<|> OperationsList

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
type OperationsList =
     "v1beta4" :> "apps" :> Capture "appsId" Text :>
       "operations"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
type OperationsGet =
     "v1beta4" :> "apps" :> Capture "appsId" Text :>
       "operations"
       :> Capture "operationsId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
