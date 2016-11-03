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
    , nuTargetReceivedBytesPerSecond
    , nuTargetSentPacketsPerSecond
    , nuTargetReceivedPacketsPerSecond
    , nuTargetSentBytesPerSecond

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

    -- * LocationSchema
    , LocationSchema
    , locationSchema
    , lsAddtional

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

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * DiskUtilization
    , DiskUtilization
    , diskUtilization
    , duTargetReadBytesPerSecond
    , duTargetReadOpsPerSecond
    , duTargetWriteOpsPerSecond
    , duTargetWriteBytesPerSecond

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
    , aAuthDomain
    , aCodeBucket
    , aName
    , aDispatchRules
    , aDefaultBucket
    , aId
    , aLocationId

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

    -- * Location
    , Location
    , location
    , locName
    , locMetadata
    , locLabels
    , locLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ZipInfo
    , ZipInfo
    , zipInfo
    , ziFilesCount
    , ziSourceURL

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

    -- * DebugInstanceRequest
    , DebugInstanceRequest
    , debugInstanceRequest

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

    -- * OperationMetadataV1
    , OperationMetadataV1
    , operationMetadataV1
    , omvInsertTime
    , omvUser
    , omvMethod
    , omvEndTime
    , omvTarget

    -- * Version
    , Version
    , version
    , vRuntime
    , vNobuildFilesRegex
    , vInstanceClass
    , vHealthCheck
    , vEnv
    , vDefaultExpiration
    , vAutomaticScaling
    , vErrorHandlers
    , vCreatedBy
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
    , vCreateTime
    , vLibraries
    , vVersionURL
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

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmStandardEnvironmentAvailable
    , lmFlexibleEnvironmentAvailable

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omInsertTime
    , omUser
    , omMethod
    , omEndTime
    , omOperationType
    , omTarget

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirInstances

    -- * RequestUtilization
    , RequestUtilization
    , requestUtilization
    , ruTargetConcurrentRequests
    , ruTargetRequestCountPerSecond

    -- * RepairApplicationRequest
    , RepairApplicationRequest
    , repairApplicationRequest

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * ContainerInfo
    , ContainerInfo
    , containerInfo
    , ciImage

    -- * Instance
    , Instance
    , instance'
    , iMemoryUsage
    , iVMStatus
    , iVMZoneName
    , iStartTime
    , iVMId
    , iAvailability
    , iVMName
    , iName
    , iVMDebugEnabled
    , iRequests
    , iQps
    , iId
    , iErrors
    , iAverageLatency
    , iAppEngineRelease

    -- * Deployment
    , Deployment
    , deployment
    , dZip
    , dContainer
    , dFiles
    ) where

import           Network.Google.AppEngine.Types.Product
import           Network.Google.AppEngine.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google App Engine Admin API. This contains the host and root path used as a starting point for constructing service requests.
appEngineService :: ServiceConfig
appEngineService
  = defaultService (ServiceId "appengine:v1")
      "appengine.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
