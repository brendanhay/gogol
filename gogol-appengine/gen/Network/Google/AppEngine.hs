{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngine
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions and manages App Engine applications.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference>
module Network.Google.AppEngine
    (
    -- * Service Configuration
      appEngineService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , AppEngineAPI

    -- * Resources

    -- ** appengine.apps.get
    , module Network.Google.Resource.AppEngine.Apps.Get

    -- ** appengine.apps.operations.get
    , module Network.Google.Resource.AppEngine.Apps.Operations.Get

    -- ** appengine.apps.operations.list
    , module Network.Google.Resource.AppEngine.Apps.Operations.List

    -- ** appengine.apps.services.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Delete

    -- ** appengine.apps.services.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Get

    -- ** appengine.apps.services.list
    , module Network.Google.Resource.AppEngine.Apps.Services.List

    -- ** appengine.apps.services.patch
    , module Network.Google.Resource.AppEngine.Apps.Services.Patch

    -- ** appengine.apps.services.versions.create
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Create

    -- ** appengine.apps.services.versions.delete
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete

    -- ** appengine.apps.services.versions.get
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Get

    -- ** appengine.apps.services.versions.list
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.List

    -- ** appengine.apps.services.versions.patch
    , module Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch

    -- * Types

    -- ** NetworkUtilization
    , NetworkUtilization
    , networkUtilization
    , nuTargetReceivedBytesPerSec
    , nuTargetSentPacketsPerSec
    , nuTargetReceivedPacketsPerSec
    , nuTargetSentBytesPerSec

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- ** ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- ** URLMap
    , URLMap
    , urlMap
    , umScript
    , umSecurityLevel
    , umAPIEndpoint
    , umURLRegex
    , umRedirectHTTPResponseCode
    , umAuthFailAction
    , umStaticFiles
    , umLogin

    -- ** Library
    , Library
    , library
    , lName
    , lVersion

    -- ** DiskUtilization
    , DiskUtilization
    , diskUtilization
    , duTargetWriteOpsPerSec
    , duTargetReadOpsPerSec
    , duTargetWriteBytesPerSec
    , duTargetReadBytesPerSec

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

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

    -- ** APIConfigHandler
    , APIConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achURL
    , achAuthFailAction
    , achLogin

    -- ** VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    , vevAddtional

    -- ** Application
    , Application
    , application
    , aDefaultHostname
    , aDefaultCookieExpiration
    , aLocation
    , aAuthDomain
    , aCodeBucket
    , aName
    , aDispatchRules
    , aDefaultBucket
    , aId

    -- ** VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings
    , vbsAddtional

    -- ** Service
    , Service
    , service
    , sSplit
    , sName
    , sId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** URLDispatchRule
    , URLDispatchRule
    , urlDispatchRule
    , udrPath
    , udrService
    , udrDomain

    -- ** ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- ** FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceURL

    -- ** AutomaticScaling
    , AutomaticScaling
    , automaticScaling
    , asNetworkUtilization
    , asMaxTotalInstances
    , asMinIdleInstances
    , asDiskUtilization
    , asMinPendingLatency
    , asCPUUtilization
    , asMaxIdleInstances
    , asMinTotalInstances
    , asMaxConcurrentRequests
    , asCoolDownPeriod
    , asRequestUtilization
    , asMaxPendingLatency

    -- ** OperationMetadataV1Beta5
    , OperationMetadataV1Beta5
    , operationMetadataV1Beta5
    , omvbInsertTime
    , omvbUser
    , omvbMethod
    , omvbEndTime
    , omvbTarget

    -- ** APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- ** StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders
    , sfhhttphAddtional

    -- ** Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCPU

    -- ** DeploymentFiles
    , DeploymentFiles
    , deploymentFiles
    , dfAddtional

    -- ** CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- ** TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations
    , tsaAddtional

    -- ** ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- ** BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

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
    , vVM
    , vHandlers
    , vInboundServices
    , vNetwork
    , vResources
    , vName
    , vThreadsafe
    , vBetaSettings
    , vBasicScaling
    , vManualScaling
    , vAPIConfig
    , vId
    , vEnvVariables
    , vServingStatus
    , vDiskUsageBytes
    , vLibraries
    , vDeployment

    -- ** StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHTTPHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- ** ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- ** RequestUtilization
    , RequestUtilization
    , requestUtilization
    , ruTargetConcurrentRequests
    , ruTargetRequestCountPerSec

    -- ** SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- ** Deployment
    , Deployment
    , deployment
    , dContainer
    , dFiles
    , dSourceReferences
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppEngine.Apps.Get
import           Network.Google.Resource.AppEngine.Apps.Operations.Get
import           Network.Google.Resource.AppEngine.Apps.Operations.List
import           Network.Google.Resource.AppEngine.Apps.Services.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Get
import           Network.Google.Resource.AppEngine.Apps.Services.List
import           Network.Google.Resource.AppEngine.Apps.Services.Patch
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Create
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Get
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.List
import           Network.Google.Resource.AppEngine.Apps.Services.Versions.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google App Engine Admin API service.
type AppEngineAPI =
     AppsOperationsListResource :<|>
       AppsOperationsGetResource
       :<|> AppsServicesVersionsListResource
       :<|> AppsServicesVersionsPatchResource
       :<|> AppsServicesVersionsGetResource
       :<|> AppsServicesVersionsCreateResource
       :<|> AppsServicesVersionsDeleteResource
       :<|> AppsServicesListResource
       :<|> AppsServicesPatchResource
       :<|> AppsServicesGetResource
       :<|> AppsServicesDeleteResource
       :<|> AppsGetResource
