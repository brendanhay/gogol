{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      appEngineURL

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * HTTPHeaders
    , HTTPHeaders
    , hTTPHeaders

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

    -- * TrafficSplit
    , TrafficSplit
    , trafficSplit
    , tsShardBy
    , tsAllocations

    -- * ScriptHandler
    , ScriptHandler
    , scriptHandler
    , shScriptPath

    -- * DetailsItem
    , DetailsItem
    , detailsItem

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

    -- * APIConfigHandler
    , APIConfigHandler
    , apiConfigHandler
    , achScript
    , achSecurityLevel
    , achURL
    , achAuthFailAction
    , achLogin

    -- * Application
    , Application
    , application
    , aLocation
    , aCodeBucket
    , aName
    , aDispatchRules
    , aId

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

    -- * URLDispatchRule
    , URLDispatchRule
    , urlDispatchRule
    , udrPath
    , udrDomain
    , udrModule

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * StaticDirectoryHandlerHTTPHeaders
    , StaticDirectoryHandlerHTTPHeaders
    , staticDirectoryHandlerHTTPHeaders

    -- * ListVersionsResponse
    , ListVersionsResponse
    , listVersionsResponse
    , lvrNextPageToken
    , lvrVersions

    -- * ListModulesResponse
    , ListModulesResponse
    , listModulesResponse
    , lmrNextPageToken
    , lmrModules

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

    -- * Response
    , Response
    , response

    -- * Allocations
    , Allocations
    , allocations

    -- * APIEndpointHandler
    , APIEndpointHandler
    , apiEndpointHandler
    , aehScriptPath

    -- * Network
    , Network
    , network
    , nForwardedPorts
    , nInstanceTag
    , nName

    -- * Resources
    , Resources
    , resources
    , rMemoryGb
    , rDiskGb
    , rCPU

    -- * CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuAggregationWindowLength
    , cuTargetUtilization

    -- * ManualScaling
    , ManualScaling
    , manualScaling
    , msInstances

    -- * BetaSettings
    , BetaSettings
    , betaSettings

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

    -- * Metadata
    , Metadata
    , metadata

    -- * Files
    , Files
    , files

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

    -- * EnvVariables
    , EnvVariables
    , envVariables

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

-- | URL referring to version 'v1beta4' of the Google App Engine Admin API.
appEngineURL :: BaseUrl
appEngineURL
  = BaseUrl Https "https://appengine.googleapis.com/"
      443
