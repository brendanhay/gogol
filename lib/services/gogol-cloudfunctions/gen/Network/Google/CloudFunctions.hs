{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudFunctions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages lightweight user-provided functions executed in response to
-- events.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference>
module Network.Google.CloudFunctions
    (
    -- * Service Configuration
      cloudFunctionsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudFunctionsAPI

    -- * Resources

    -- ** cloudfunctions.operations.get
    , module Network.Google.Resource.CloudFunctions.Operations.Get

    -- ** cloudfunctions.operations.list
    , module Network.Google.Resource.CloudFunctions.Operations.List

    -- ** cloudfunctions.projects.locations.functions.call
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Call

    -- ** cloudfunctions.projects.locations.functions.create
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Create

    -- ** cloudfunctions.projects.locations.functions.delete
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Delete

    -- ** cloudfunctions.projects.locations.functions.generateDownloadUrl
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateDownloadURL

    -- ** cloudfunctions.projects.locations.functions.generateUploadUrl
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateUploadURL

    -- ** cloudfunctions.projects.locations.functions.get
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Get

    -- ** cloudfunctions.projects.locations.functions.getIamPolicy
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GetIAMPolicy

    -- ** cloudfunctions.projects.locations.functions.list
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.List

    -- ** cloudfunctions.projects.locations.functions.patch
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Patch

    -- ** cloudfunctions.projects.locations.functions.setIamPolicy
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.SetIAMPolicy

    -- ** cloudfunctions.projects.locations.functions.testIamPermissions
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.TestIAMPermissions

    -- ** cloudfunctions.projects.locations.list
    , module Network.Google.Resource.CloudFunctions.Projects.Locations.List

    -- * Types

    -- ** SecretVersion
    , SecretVersion
    , secretVersion
    , svPath
    , svVersion

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** OperationMetadataV1Type
    , OperationMetadataV1Type (..)

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** GenerateUploadURLRequest
    , GenerateUploadURLRequest
    , generateUploadURLRequest

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** GenerateDownloadURLRequest
    , GenerateDownloadURLRequest
    , generateDownloadURLRequest
    , gdurVersionId

    -- ** CloudFunctionBuildEnvironmentVariables
    , CloudFunctionBuildEnvironmentVariables
    , cloudFunctionBuildEnvironmentVariables
    , cfbevAddtional

    -- ** CloudFunctionVPCConnectorEgressSettings
    , CloudFunctionVPCConnectorEgressSettings (..)

    -- ** Retry
    , Retry
    , retry

    -- ** GenerateUploadURLResponse
    , GenerateUploadURLResponse
    , generateUploadURLResponse
    , guurUploadURL

    -- ** FailurePolicy
    , FailurePolicy
    , failurePolicy
    , fpRetry

    -- ** CallFunctionResponse
    , CallFunctionResponse
    , callFunctionResponse
    , cfrExecutionId
    , cfrError
    , cfrResult

    -- ** HTTPSTrigger
    , HTTPSTrigger
    , httpsTrigger
    , htSecurityLevel
    , htURL

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** CloudFunctionEnvironmentVariables
    , CloudFunctionEnvironmentVariables
    , cloudFunctionEnvironmentVariables
    , cfevAddtional

    -- ** OperationMetadataV1Request
    , OperationMetadataV1Request
    , operationMetadataV1Request
    , omvrAddtional

    -- ** SecretVolume
    , SecretVolume
    , secretVolume
    , svSecret
    , svVersions
    , svProjectId
    , svMountPath

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** EventTrigger
    , EventTrigger
    , eventTrigger
    , etService
    , etFailurePolicy
    , etEventType
    , etResource

    -- ** SourceRepository
    , SourceRepository
    , sourceRepository
    , srURL
    , srDeployedURL

    -- ** OperationMetadataV1
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

    -- ** CloudFunctionStatus
    , CloudFunctionStatus (..)

    -- ** GenerateDownloadURLResponse
    , GenerateDownloadURLResponse
    , generateDownloadURLResponse
    , gdurDownloadURL

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** ListFunctionsResponse
    , ListFunctionsResponse
    , listFunctionsResponse
    , lfrNextPageToken
    , lfrUnreachable
    , lfrFunctions

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** HTTPSTriggerSecurityLevel
    , HTTPSTriggerSecurityLevel (..)

    -- ** CloudFunction
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

    -- ** CloudFunctionLabels
    , CloudFunctionLabels
    , cloudFunctionLabels
    , cflAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** SecretEnvVar
    , SecretEnvVar
    , secretEnvVar
    , sevSecret
    , sevKey
    , sevVersion
    , sevProjectId

    -- ** CallFunctionRequest
    , CallFunctionRequest
    , callFunctionRequest
    , cfrData

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** CloudFunctionIngressSettings
    , CloudFunctionIngressSettings (..)
    ) where

import Network.Google.Prelude
import Network.Google.CloudFunctions.Types
import Network.Google.Resource.CloudFunctions.Operations.Get
import Network.Google.Resource.CloudFunctions.Operations.List
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Call
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Create
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Delete
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateDownloadURL
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GenerateUploadURL
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Get
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.GetIAMPolicy
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.List
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.Patch
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.SetIAMPolicy
import Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.TestIAMPermissions
import Network.Google.Resource.CloudFunctions.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Functions API service.
type CloudFunctionsAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> ProjectsLocationsFunctionsListResource
       :<|> ProjectsLocationsFunctionsCallResource
       :<|>
       ProjectsLocationsFunctionsGenerateUploadURLResource
       :<|> ProjectsLocationsFunctionsGetIAMPolicyResource
       :<|> ProjectsLocationsFunctionsPatchResource
       :<|> ProjectsLocationsFunctionsGetResource
       :<|> ProjectsLocationsFunctionsCreateResource
       :<|>
       ProjectsLocationsFunctionsGenerateDownloadURLResource
       :<|> ProjectsLocationsFunctionsSetIAMPolicyResource
       :<|>
       ProjectsLocationsFunctionsTestIAMPermissionsResource
       :<|> ProjectsLocationsFunctionsDeleteResource
       :<|> ProjectsLocationsListResource
