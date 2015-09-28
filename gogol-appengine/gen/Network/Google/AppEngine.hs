{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngine
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
module Network.Google.AppEngine
    (
    -- * REST Resources

    -- ** Google App Engine Admin API
      AppEngine
    , appEngine
    , appEngineURL

    -- ** appengine.apps.modules.versions.create
    , module Network.Google.API.AppEngine.Apps.Modules.Versions.Create

    -- ** appengine.apps.modules.versions.delete
    , module Network.Google.API.AppEngine.Apps.Modules.Versions.Delete

    -- ** appengine.apps.modules.versions.get
    , module Network.Google.API.AppEngine.Apps.Modules.Versions.Get

    -- ** appengine.apps.modules.versions.list
    , module Network.Google.API.AppEngine.Apps.Modules.Versions.List

    -- ** appengine.apps.operations.get
    , module Network.Google.API.AppEngine.Apps.Operations.Get

    -- ** appengine.apps.operations.list
    , module Network.Google.API.AppEngine.Apps.Operations.List

    -- * Types

    -- ** CpuUtilization
    , CpuUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- ** ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- ** BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- ** Application
    , Application
    , application
    , aLocation
    , aCodeBucket
    , aName
    , aDispatchRules
    , aId

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

    -- ** ApiConfigHandler
    , ApiConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achUrl
    , achAuthFailAction
    , achLogin

    -- ** OperationResponse
    , OperationResponse
    , operationResponse

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

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- ** ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- ** VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings

    -- ** StaticDirectoryHandlerHttpHeaders
    , StaticDirectoryHandlerHttpHeaders
    , staticDirectoryHandlerHttpHeaders

    -- ** Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- ** StaticDirectoryHandler
    , StaticDirectoryHandler
    , staticDirectoryHandler
    , sdhHttpHeaders
    , sdhRequireMatchingFile
    , sdhExpiration
    , sdhMimeType
    , sdhApplicationReadable
    , sdhDirectory

    -- ** Deployment
    , Deployment
    , deployment
    , dContainer
    , dFiles
    , dSourceReferences

    -- ** VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables

    -- ** ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

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

    -- ** TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations

    -- ** ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- ** Library
    , Library
    , library
    , lName
    , lVersion

    -- ** DeploymentFiles
    , DeploymentFiles
    , deploymentFiles

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- ** StaticFilesHandlerHttpHeaders
    , StaticFilesHandlerHttpHeaders
    , staticFilesHandlerHttpHeaders

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

    -- ** Module
    , Module
    , module'
    , mSplit
    , mName
    , mId

    -- ** UrlDispatchRule
    , UrlDispatchRule
    , urlDispatchRule
    , udrPath
    , udrDomain
    , udrModule

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceUrl

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

    -- ** ListModulesResponse
    , ListModulesResponse
    , listModulesResponse
    , lmrNextPageToken
    , lmrModules

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- ** ApiEndpointHandler
    , ApiEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCpu
    ) where

import           Network.Google.API.AppEngine.Apps.Modules.Versions.Create
import           Network.Google.API.AppEngine.Apps.Modules.Versions.Delete
import           Network.Google.API.AppEngine.Apps.Modules.Versions.Get
import           Network.Google.API.AppEngine.Apps.Modules.Versions.List
import           Network.Google.API.AppEngine.Apps.Operations.Get
import           Network.Google.API.AppEngine.Apps.Operations.List
import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppEngine =
     AppsModulesVersionsGetAPI :<|>
       AppsModulesVersionsListAPI
       :<|> AppsModulesVersionsCreateAPI
       :<|> AppsOperationsGetAPI
       :<|> AppsOperationsListAPI
       :<|> AppsModulesVersionsDeleteAPI

appEngine :: Proxy AppEngine
appEngine = Proxy
