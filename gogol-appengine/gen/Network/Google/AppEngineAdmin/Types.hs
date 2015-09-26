{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AppEngineAdmin.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngineAdmin.Types
    (
    -- * API Definition
      appengine


    -- * ApiConfigHandler
    , ApiConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achUrl
    , achAuthFailAction
    , achLogin

    -- * ApiEndpointHandler
    , ApiEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- * Application
    , Application
    , application
    , aLocation
    , aCodeBucket
    , aName
    , aDispatchRules
    , aId

    -- * AutomaticScaling
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

    -- * BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

    -- * ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- * CpuUtilization
    , CpuUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- * Deployment
    , Deployment
    , deployment
    , dContainer
    , dFiles
    , dSourceReferences

    -- * DeploymentFiles
    , DeploymentFiles
    , deploymentFiles

    -- * ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- * FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceUrl

    -- * HealthCheck
    , HealthCheck
    , healthCheck
    , hcHealthyThreshold
    , hcDisableHealthCheck
    , hcCheckInterval
    , hcRestartThreshold
    , hcHost
    , hcTimeout
    , hcUnhealthyThreshold

    -- * Library
    , Library
    , library
    , lName
    , lVersion

    -- * ListModulesResponse
    , ListModulesResponse
    , listModulesResponse
    , lmrNextPageToken
    , lmrModules

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- * ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- * Module
    , Module
    , module'
    , mSplit
    , mName
    , mId

    -- * Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- * OperationResponse
    , OperationResponse
    , operationResponse

    -- * Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCpu

    -- * ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * StaticDirectoryHandler
    , StaticDirectoryHandler
    , staticDirectoryHandler
    , sdhHttpHeaders
    , sdhRequireMatchingFile
    , sdhExpiration
    , sdhMimeType
    , sdhApplicationReadable
    , sdhDirectory

    -- * StaticDirectoryHandlerHttpHeaders
    , StaticDirectoryHandlerHttpHeaders
    , staticDirectoryHandlerHttpHeaders

    -- * StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHttpHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- * StaticFilesHandlerHttpHeaders
    , StaticFilesHandlerHttpHeaders
    , staticFilesHandlerHttpHeaders

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- * TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- * TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations

    -- * UrlDispatchRule
    , UrlDispatchRule
    , urlDispatchRule
    , udrPath
    , udrDomain
    , udrModule

    -- * UrlMap
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

    -- * Version
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

    -- * VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings

    -- * VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    ) where

import           Network.Google.AppEngineAdmin.Types.Product
import           Network.Google.AppEngineAdmin.Types.Sum
import           Network.Google.Prelude

appengine :: a
appengine = error "appengine"
