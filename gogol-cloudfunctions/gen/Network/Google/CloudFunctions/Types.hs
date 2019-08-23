{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * OperationMetadataV1Beta2
    , OperationMetadataV1Beta2
    , operationMetadataV1Beta2
    , omvbVersionId
    , omvbUpdateTime
    , omvbType
    , omvbTarget
    , omvbRequest

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
    , omvUpdateTime
    , omvType
    , omvTarget
    , omvRequest

    -- * CloudFunctionStatus
    , CloudFunctionStatus (..)

    -- * OperationMetadataV1Beta2Type
    , OperationMetadataV1Beta2Type (..)

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

    -- * CloudFunction
    , CloudFunction
    , cloudFunction
    , cfRuntime
    , cfStatus
    , cfSourceArchiveURL
    , cfVersionId
    , cfSourceUploadURL
    , cfEntryPoint
    , cfHTTPSTrigger
    , cfNetwork
    , cfMaxInstances
    , cfEventTrigger
    , cfUpdateTime
    , cfName
    , cfSourceRepository
    , cfAvailableMemoryMb
    , cfLabels
    , cfServiceAccountEmail
    , cfEnvironmentVariables
    , cfTimeout
    , cfVPCConnector
    , cfDescription

    -- * OperationMetadataV1Beta2Request
    , OperationMetadataV1Beta2Request
    , operationMetadataV1Beta2Request
    , omvbrAddtional

    -- * CloudFunctionLabels
    , CloudFunctionLabels
    , cloudFunctionLabels
    , cflAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

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
    ) where

import           Network.Google.CloudFunctions.Types.Product
import           Network.Google.CloudFunctions.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Functions API. This contains the host and root path used as a starting point for constructing service requests.
cloudFunctionsService :: ServiceConfig
cloudFunctionsService
  = defaultService (ServiceId "cloudfunctions:v1")
      "cloudfunctions.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
