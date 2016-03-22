{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.Types
    (
    -- * Service Configuration
      appEngineService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * NetworkUtilization
    , NetworkUtilization
    , networkUtilization
    , nuTargetReceivedBytesPerSec
    , nuTargetSentPacketsPerSec
    , nuTargetReceivedPacketsPerSec
    , nuTargetSentBytesPerSec

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- * ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- * ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

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

    -- * Library
    , Library
    , library
    , lName
    , lVersion

    -- * DiskUtilization
    , DiskUtilization
    , diskUtilization
    , duTargetWriteOpsPerSec
    , duTargetReadOpsPerSec
    , duTargetWriteBytesPerSec
    , duTargetReadBytesPerSec

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
    , vevAddtional

    -- * Application
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

    -- * VersionBetaSettings
    , VersionBetaSettings
    , versionBetaSettings
    , vbsAddtional

    -- * Service
    , Service
    , service
    , sSplit
    , sName
    , sId

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
    , udrService
    , udrDomain

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

    -- * OperationMetadataV1Beta5
    , OperationMetadataV1Beta5
    , operationMetadataV1Beta5
    , omvbInsertTime
    , omvbUser
    , omvbMethod
    , omvbEndTime
    , omvbTarget

    -- * APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- * StaticFilesHandlerHTTPHeaders
    , StaticFilesHandlerHTTPHeaders
    , staticFilesHandlerHTTPHeaders
    , sfhhttphAddtional

    -- * Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCPU

    -- * DeploymentFiles
    , DeploymentFiles
    , deploymentFiles
    , dfAddtional

    -- * CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- * TrafficSplitAllocations
    , TrafficSplitAllocations
    , trafficSplitAllocations
    , tsaAddtional

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
    , vDiskUsageBytes
    , vLibraries
    , vDeployment

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

    -- * RequestUtilization
    , RequestUtilization
    , requestUtilization
    , ruTargetConcurrentRequests
    , ruTargetRequestCountPerSec

    -- * SourceReference
    , SourceReference
    , sourceReference
    , srRepository
    , srRevisionId

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

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
    ) where

import           Network.Google.AppEngine.Types.Product
import           Network.Google.AppEngine.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta5' of the Google App Engine Admin API. This contains the host and root path used as a starting point for constructing service requests.
appEngineService :: ServiceConfig
appEngineService
  = defaultService (ServiceId "appengine:v1beta5")
      "appengine.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
