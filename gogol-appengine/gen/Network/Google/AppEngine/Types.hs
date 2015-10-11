{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.Types
    (
    -- * Service Request
      appEngineRequest

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osProperties

    -- * TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- * ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- * URLMap
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
    , umStaticDirectory

    -- * Library
    , Library
    , library
    , lName
    , lVersion

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

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

    -- * APIConfigHandler
    , APIConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achURL
    , achAuthFailAction
    , achLogin

    -- * VersionEnvVariables
    , VersionEnvVariables
    , versionEnvVariables
    , vevProperties

    -- * Application
    , Application
    , application
    , aLocation
    , aCodeBucket
    , aName
    , aDispatchRules
    , aId

    -- * VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings
    , vbsProperties

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * URLDispatchRule
    , URLDispatchRule
    , urlDispatchRule
    , udrPath
    , udrDomain
    , udrModule

    -- * StaticDirectoryHandlerHTTPHeaders
    , StaticDirectoryHandlerHTTPHeaders
    , staticDirectoryHandlerHTTPHeaders
    , sdhhttphProperties

    -- * ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- * FileInfo
    , FileInfo
    , fileInfo
    , fiSha1Sum
    , fiMimeType
    , fiSourceURL

    -- * AutomaticScaling
    , AutomaticScaling
    , automaticScaling
    , asMaxTotalInstances
    , asMinIdleInstances
    , asMinPendingLatency
    , asCPUUtilization
    , asMaxIdleInstances
    , asMinTotalInstances
    , asMaxConcurrentRequests
    , asCoolDownPeriod
    , asMaxPendingLatency

    -- * ListModulesResponse
    , ListModulesResponse
    , listModulesResponse
    , lmrNextPageToken
    , lmrModules

    -- * APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiProperties

    -- * Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- * StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders
    , sfhhttphProperties

    -- * Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCPU

    -- * DeploymentFiles
    , DeploymentFiles
    , deploymentFiles
    , dfProperties

    -- * CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- * TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations
    , tsaProperties

    -- * ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- * BasicScaling
    , BasicScaling
    , basicScaling
    , bsMaxInstances
    , bsIdleTimeout

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
    , vLibraries
    , vDeployment

    -- * Module
    , Module
    , module'
    , mSplit
    , mName
    , mId

    -- * StaticFilesHandler
    , StaticFilesHandler
    , staticFilesHandler
    , sfhHTTPHeaders
    , sfhPath
    , sfhRequireMatchingFile
    , sfhExpiration
    , sfhMimeType
    , sfhApplicationReadable
    , sfhUploadPathRegex

    -- * ErrorHandler
    , ErrorHandler
    , errorHandler
    , ehMimeType
    , ehErrorCode
    , ehStaticFile

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orProperties

    -- * ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- * Deployment
    , Deployment
    , deployment
    , dContainer
    , dFiles
    , dSourceReferences

    -- * StaticDirectoryHandler
    , StaticDirectoryHandler
    , staticDirectoryHandler
    , sdhHTTPHeaders
    , sdhRequireMatchingFile
    , sdhExpiration
    , sdhMimeType
    , sdhApplicationReadable
    , sdhDirectory
    ) where

import           Network.Google.AppEngine.Types.Product
import           Network.Google.AppEngine.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta4' of the Google App Engine Admin API. This contains the host and root path used as a starting point for constructing service requests.
appEngineRequest :: RequestBuilder
appEngineRequest
  = defaultRequest "https://appengine.googleapis.com/"
      ""
