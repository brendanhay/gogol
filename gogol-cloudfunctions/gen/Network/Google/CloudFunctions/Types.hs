{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudFunctions.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudFunctions.Types
    (
    -- * Service Configuration
      cloudFunctionsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * SecretVersion
    , SecretVersion
    , secretVersion
    , svPath
    , svVersion

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * OperationMetadataV1Type
    , OperationMetadataV1Type (..)

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * GenerateUploadURLRequest
    , GenerateUploadURLRequest
    , generateUploadURLRequest

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * GenerateDownloadURLRequest
    , GenerateDownloadURLRequest
    , generateDownloadURLRequest
    , gdurVersionId

    -- * CloudFunctionBuildEnvironmentVariables
    , CloudFunctionBuildEnvironmentVariables
    , cloudFunctionBuildEnvironmentVariables
    , cfbevAddtional

    -- * CloudFunctionVPCConnectorEgressSettings
    , CloudFunctionVPCConnectorEgressSettings (..)

    -- * Retry
    , Retry
    , retry

    -- * GenerateUploadURLResponse
    , GenerateUploadURLResponse
    , generateUploadURLResponse
    , guurUploadURL

    -- * FailurePolicy
    , FailurePolicy
    , failurePolicy
    , fpRetry

    -- * CallFunctionResponse
    , CallFunctionResponse
    , callFunctionResponse
    , cfrExecutionId
    , cfrError
    , cfrResult

    -- * HTTPSTrigger
    , HTTPSTrigger
    , httpsTrigger
    , htSecurityLevel
    , htURL

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * CloudFunctionEnvironmentVariables
    , CloudFunctionEnvironmentVariables
    , cloudFunctionEnvironmentVariables
    , cfevAddtional

    -- * OperationMetadataV1Request
    , OperationMetadataV1Request
    , operationMetadataV1Request
    , omvrAddtional

    -- * SecretVolume
    , SecretVolume
    , secretVolume
    , svSecret
    , svVersions
    , svProjectId
    , svMountPath

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * EventTrigger
    , EventTrigger
    , eventTrigger
    , etService
    , etFailurePolicy
    , etEventType
    , etResource

    -- * SourceRepository
    , SourceRepository
    , sourceRepository
    , srURL
    , srDeployedURL

    -- * OperationMetadataV1
    , OperationMetadataV1
    , operationMetadataV1
    , omvVersionId
    , omvBuildId
    , omvBuildName
    , omvUpdateTime
    , omvType
    , omvSourceToken
    , omvTarget
    , omvRequest

    -- * CloudFunctionStatus
    , CloudFunctionStatus (..)

    -- * GenerateDownloadURLResponse
    , GenerateDownloadURLResponse
    , generateDownloadURLResponse
    , gdurDownloadURL

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * ListFunctionsResponse
    , ListFunctionsResponse
    , listFunctionsResponse
    , lfrNextPageToken
    , lfrUnreachable
    , lfrFunctions

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * HTTPSTriggerSecurityLevel
    , HTTPSTriggerSecurityLevel (..)

    -- * CloudFunction
    , CloudFunction
    , cloudFunction
    , cfRuntime
    , cfBuildWorkerPool
    , cfStatus
    , cfSourceArchiveURL
    , cfVersionId
    , cfSecretVolumes
    , cfSourceUploadURL
    , cfEntryPoint
    , cfBuildId
    , cfHTTPSTrigger
    , cfNetwork
    , cfMaxInstances
    , cfVPCConnectorEgressSettings
    , cfEventTrigger
    , cfUpdateTime
    , cfName
    , cfSourceRepository
    , cfAvailableMemoryMb
    , cfIngressSettings
    , cfLabels
    , cfServiceAccountEmail
    , cfEnvironmentVariables
    , cfTimeout
    , cfSourceToken
    , cfBuildEnvironmentVariables
    , cfVPCConnector
    , cfSecretEnvironmentVariables
    , cfDescription

    -- * CloudFunctionLabels
    , CloudFunctionLabels
    , cloudFunctionLabels
    , cflAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * SecretEnvVar
    , SecretEnvVar
    , secretEnvVar
    , sevSecret
    , sevKey
    , sevVersion
    , sevProjectId

    -- * CallFunctionRequest
    , CallFunctionRequest
    , callFunctionRequest
    , cfrData

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * CloudFunctionIngressSettings
    , CloudFunctionIngressSettings (..)
    ) where

import Network.Google.CloudFunctions.Types.Product
import Network.Google.CloudFunctions.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Functions API. This contains the host and root path used as a starting point for constructing service requests.
cloudFunctionsService :: ServiceConfig
cloudFunctionsService
  = defaultService (ServiceId "cloudfunctions:v1")
      "cloudfunctions.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
