{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudFunctions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages lightweight user-provided functions executed in response to events.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference>
module Gogol.CloudFunctions
  ( -- * Configuration
    cloudFunctionsService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudfunctions.projects.locations.functions.abortFunctionUpgrade
    CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgradeResource,
    CloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade (..),
    newCloudFunctionsProjectsLocationsFunctionsAbortFunctionUpgrade,

    -- ** cloudfunctions.projects.locations.functions.commitFunctionUpgrade
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgradeResource,
    CloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade (..),
    newCloudFunctionsProjectsLocationsFunctionsCommitFunctionUpgrade,

    -- ** cloudfunctions.projects.locations.functions.create
    CloudFunctionsProjectsLocationsFunctionsCreateResource,
    CloudFunctionsProjectsLocationsFunctionsCreate (..),
    newCloudFunctionsProjectsLocationsFunctionsCreate,

    -- ** cloudfunctions.projects.locations.functions.delete
    CloudFunctionsProjectsLocationsFunctionsDeleteResource,
    CloudFunctionsProjectsLocationsFunctionsDelete (..),
    newCloudFunctionsProjectsLocationsFunctionsDelete,

    -- ** cloudfunctions.projects.locations.functions.generateDownloadUrl
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrlResource,
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl (..),
    newCloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl,

    -- ** cloudfunctions.projects.locations.functions.generateUploadUrl
    CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrlResource,
    CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl (..),
    newCloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl,

    -- ** cloudfunctions.projects.locations.functions.get
    CloudFunctionsProjectsLocationsFunctionsGetResource,
    CloudFunctionsProjectsLocationsFunctionsGet (..),
    newCloudFunctionsProjectsLocationsFunctionsGet,

    -- ** cloudfunctions.projects.locations.functions.getIamPolicy
    CloudFunctionsProjectsLocationsFunctionsGetIamPolicyResource,
    CloudFunctionsProjectsLocationsFunctionsGetIamPolicy (..),
    newCloudFunctionsProjectsLocationsFunctionsGetIamPolicy,

    -- ** cloudfunctions.projects.locations.functions.list
    CloudFunctionsProjectsLocationsFunctionsListResource,
    CloudFunctionsProjectsLocationsFunctionsList (..),
    newCloudFunctionsProjectsLocationsFunctionsList,

    -- ** cloudfunctions.projects.locations.functions.patch
    CloudFunctionsProjectsLocationsFunctionsPatchResource,
    CloudFunctionsProjectsLocationsFunctionsPatch (..),
    newCloudFunctionsProjectsLocationsFunctionsPatch,

    -- ** cloudfunctions.projects.locations.functions.redirectFunctionUpgradeTraffic
    CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTrafficResource,
    CloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic (..),
    newCloudFunctionsProjectsLocationsFunctionsRedirectFunctionUpgradeTraffic,

    -- ** cloudfunctions.projects.locations.functions.rollbackFunctionUpgradeTraffic
    CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTrafficResource,
    CloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic (..),
    newCloudFunctionsProjectsLocationsFunctionsRollbackFunctionUpgradeTraffic,

    -- ** cloudfunctions.projects.locations.functions.setIamPolicy
    CloudFunctionsProjectsLocationsFunctionsSetIamPolicyResource,
    CloudFunctionsProjectsLocationsFunctionsSetIamPolicy (..),
    newCloudFunctionsProjectsLocationsFunctionsSetIamPolicy,

    -- ** cloudfunctions.projects.locations.functions.setupFunctionUpgradeConfig
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfigResource,
    CloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig (..),
    newCloudFunctionsProjectsLocationsFunctionsSetupFunctionUpgradeConfig,

    -- ** cloudfunctions.projects.locations.functions.testIamPermissions
    CloudFunctionsProjectsLocationsFunctionsTestIamPermissionsResource,
    CloudFunctionsProjectsLocationsFunctionsTestIamPermissions (..),
    newCloudFunctionsProjectsLocationsFunctionsTestIamPermissions,

    -- ** cloudfunctions.projects.locations.list
    CloudFunctionsProjectsLocationsListResource,
    CloudFunctionsProjectsLocationsList (..),
    newCloudFunctionsProjectsLocationsList,

    -- ** cloudfunctions.projects.locations.operations.get
    CloudFunctionsProjectsLocationsOperationsGetResource,
    CloudFunctionsProjectsLocationsOperationsGet (..),
    newCloudFunctionsProjectsLocationsOperationsGet,

    -- ** cloudfunctions.projects.locations.operations.list
    CloudFunctionsProjectsLocationsOperationsListResource,
    CloudFunctionsProjectsLocationsOperationsList (..),
    newCloudFunctionsProjectsLocationsOperationsList,

    -- ** cloudfunctions.projects.locations.runtimes.list
    CloudFunctionsProjectsLocationsRuntimesListResource,
    CloudFunctionsProjectsLocationsRuntimesList (..),
    newCloudFunctionsProjectsLocationsRuntimesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AbortFunctionUpgradeRequest
    AbortFunctionUpgradeRequest (..),
    newAbortFunctionUpgradeRequest,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AutomaticUpdatePolicy
    AutomaticUpdatePolicy (..),
    newAutomaticUpdatePolicy,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BuildConfig
    BuildConfig (..),
    newBuildConfig,

    -- ** BuildConfig_DockerRegistry
    BuildConfig_DockerRegistry (..),

    -- ** BuildConfig_EnvironmentVariables
    BuildConfig_EnvironmentVariables (..),
    newBuildConfig_EnvironmentVariables,

    -- ** CommitFunctionUpgradeRequest
    CommitFunctionUpgradeRequest (..),
    newCommitFunctionUpgradeRequest,

    -- ** Date
    Date (..),
    newDate,

    -- ** EventFilter
    EventFilter (..),
    newEventFilter,

    -- ** EventTrigger
    EventTrigger (..),
    newEventTrigger,

    -- ** EventTrigger_RetryPolicy
    EventTrigger_RetryPolicy (..),

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Function
    Function (..),
    newFunction,

    -- ** Function_Environment
    Function_Environment (..),

    -- ** Function_Labels
    Function_Labels (..),
    newFunction_Labels,

    -- ** Function_State
    Function_State (..),

    -- ** GenerateDownloadUrlRequest
    GenerateDownloadUrlRequest (..),
    newGenerateDownloadUrlRequest,

    -- ** GenerateDownloadUrlResponse
    GenerateDownloadUrlResponse (..),
    newGenerateDownloadUrlResponse,

    -- ** GenerateUploadUrlRequest
    GenerateUploadUrlRequest (..),
    newGenerateUploadUrlRequest,

    -- ** GenerateUploadUrlRequest_Environment
    GenerateUploadUrlRequest_Environment (..),

    -- ** GenerateUploadUrlResponse
    GenerateUploadUrlResponse (..),
    newGenerateUploadUrlResponse,

    -- ** GoogleCloudFunctionsV2LocationMetadata
    GoogleCloudFunctionsV2LocationMetadata (..),
    newGoogleCloudFunctionsV2LocationMetadata,

    -- ** GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
    GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem (..),

    -- ** GoogleCloudFunctionsV2OperationMetadata
    GoogleCloudFunctionsV2OperationMetadata (..),
    newGoogleCloudFunctionsV2OperationMetadata,

    -- ** GoogleCloudFunctionsV2OperationMetadata_OperationType
    GoogleCloudFunctionsV2OperationMetadata_OperationType (..),

    -- ** GoogleCloudFunctionsV2OperationMetadata_RequestResource
    GoogleCloudFunctionsV2OperationMetadata_RequestResource (..),
    newGoogleCloudFunctionsV2OperationMetadata_RequestResource,

    -- ** GoogleCloudFunctionsV2Stage
    GoogleCloudFunctionsV2Stage (..),
    newGoogleCloudFunctionsV2Stage,

    -- ** GoogleCloudFunctionsV2Stage_Name
    GoogleCloudFunctionsV2Stage_Name (..),

    -- ** GoogleCloudFunctionsV2Stage_State
    GoogleCloudFunctionsV2Stage_State (..),

    -- ** GoogleCloudFunctionsV2StateMessage
    GoogleCloudFunctionsV2StateMessage (..),
    newGoogleCloudFunctionsV2StateMessage,

    -- ** GoogleCloudFunctionsV2StateMessage_Severity
    GoogleCloudFunctionsV2StateMessage_Severity (..),

    -- ** ListFunctionsResponse
    ListFunctionsResponse (..),
    newListFunctionsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListRuntimesResponse
    ListRuntimesResponse (..),
    newListRuntimesResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** OnDeployUpdatePolicy
    OnDeployUpdatePolicy (..),
    newOnDeployUpdatePolicy,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadataV1
    OperationMetadataV1 (..),
    newOperationMetadataV1,

    -- ** OperationMetadataV1_Request
    OperationMetadataV1_Request (..),
    newOperationMetadataV1_Request,

    -- ** OperationMetadataV1_Type
    OperationMetadataV1_Type (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** RedirectFunctionUpgradeTrafficRequest
    RedirectFunctionUpgradeTrafficRequest (..),
    newRedirectFunctionUpgradeTrafficRequest,

    -- ** RepoSource
    RepoSource (..),
    newRepoSource,

    -- ** RollbackFunctionUpgradeTrafficRequest
    RollbackFunctionUpgradeTrafficRequest (..),
    newRollbackFunctionUpgradeTrafficRequest,

    -- ** Runtime
    Runtime (..),
    newRuntime,

    -- ** Runtime_Environment
    Runtime_Environment (..),

    -- ** Runtime_Stage
    Runtime_Stage (..),

    -- ** SecretEnvVar
    SecretEnvVar (..),
    newSecretEnvVar,

    -- ** SecretVersion
    SecretVersion (..),
    newSecretVersion,

    -- ** SecretVolume
    SecretVolume (..),
    newSecretVolume,

    -- ** ServiceConfig
    ServiceConfig (..),
    newServiceConfig,

    -- ** ServiceConfig_EnvironmentVariables
    ServiceConfig_EnvironmentVariables (..),
    newServiceConfig_EnvironmentVariables,

    -- ** ServiceConfig_IngressSettings
    ServiceConfig_IngressSettings (..),

    -- ** ServiceConfig_SecurityLevel
    ServiceConfig_SecurityLevel (..),

    -- ** ServiceConfig_VpcConnectorEgressSettings
    ServiceConfig_VpcConnectorEgressSettings (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SetupFunctionUpgradeConfigRequest
    SetupFunctionUpgradeConfigRequest (..),
    newSetupFunctionUpgradeConfigRequest,

    -- ** Source
    Source (..),
    newSource,

    -- ** SourceProvenance
    SourceProvenance (..),
    newSourceProvenance,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StorageSource
    StorageSource (..),
    newStorageSource,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UpgradeInfo
    UpgradeInfo (..),
    newUpgradeInfo,

    -- ** UpgradeInfo_UpgradeState
    UpgradeInfo_UpgradeState (..),
  )
where

import Gogol.CloudFunctions.Projects.Locations.Functions.AbortFunctionUpgrade
import Gogol.CloudFunctions.Projects.Locations.Functions.CommitFunctionUpgrade
import Gogol.CloudFunctions.Projects.Locations.Functions.Create
import Gogol.CloudFunctions.Projects.Locations.Functions.Delete
import Gogol.CloudFunctions.Projects.Locations.Functions.GenerateDownloadUrl
import Gogol.CloudFunctions.Projects.Locations.Functions.GenerateUploadUrl
import Gogol.CloudFunctions.Projects.Locations.Functions.Get
import Gogol.CloudFunctions.Projects.Locations.Functions.GetIamPolicy
import Gogol.CloudFunctions.Projects.Locations.Functions.List
import Gogol.CloudFunctions.Projects.Locations.Functions.Patch
import Gogol.CloudFunctions.Projects.Locations.Functions.RedirectFunctionUpgradeTraffic
import Gogol.CloudFunctions.Projects.Locations.Functions.RollbackFunctionUpgradeTraffic
import Gogol.CloudFunctions.Projects.Locations.Functions.SetIamPolicy
import Gogol.CloudFunctions.Projects.Locations.Functions.SetupFunctionUpgradeConfig
import Gogol.CloudFunctions.Projects.Locations.Functions.TestIamPermissions
import Gogol.CloudFunctions.Projects.Locations.List
import Gogol.CloudFunctions.Projects.Locations.Operations.Get
import Gogol.CloudFunctions.Projects.Locations.Operations.List
import Gogol.CloudFunctions.Projects.Locations.Runtimes.List
import Gogol.CloudFunctions.Types
