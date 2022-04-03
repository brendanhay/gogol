{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudFunctions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- ** cloudfunctions.projects.locations.functions.setIamPolicy
    CloudFunctionsProjectsLocationsFunctionsSetIamPolicyResource,
    CloudFunctionsProjectsLocationsFunctionsSetIamPolicy (..),
    newCloudFunctionsProjectsLocationsFunctionsSetIamPolicy,

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

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BuildConfig
    BuildConfig (..),
    newBuildConfig,

    -- ** BuildConfig_EnvironmentVariables
    BuildConfig_EnvironmentVariables (..),
    newBuildConfig_EnvironmentVariables,

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

    -- ** GenerateUploadUrlResponse
    GenerateUploadUrlResponse (..),
    newGenerateUploadUrlResponse,

    -- ** GoogleCloudFunctionsV2alphaOperationMetadata
    GoogleCloudFunctionsV2alphaOperationMetadata (..),
    newGoogleCloudFunctionsV2alphaOperationMetadata,

    -- ** GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
    GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource (..),
    newGoogleCloudFunctionsV2alphaOperationMetadata_RequestResource,

    -- ** GoogleCloudFunctionsV2alphaStage
    GoogleCloudFunctionsV2alphaStage (..),
    newGoogleCloudFunctionsV2alphaStage,

    -- ** GoogleCloudFunctionsV2alphaStage_Name
    GoogleCloudFunctionsV2alphaStage_Name (..),

    -- ** GoogleCloudFunctionsV2alphaStage_State
    GoogleCloudFunctionsV2alphaStage_State (..),

    -- ** GoogleCloudFunctionsV2alphaStateMessage
    GoogleCloudFunctionsV2alphaStateMessage (..),
    newGoogleCloudFunctionsV2alphaStateMessage,

    -- ** GoogleCloudFunctionsV2alphaStateMessage_Severity
    GoogleCloudFunctionsV2alphaStateMessage_Severity (..),

    -- ** GoogleCloudFunctionsV2betaOperationMetadata
    GoogleCloudFunctionsV2betaOperationMetadata (..),
    newGoogleCloudFunctionsV2betaOperationMetadata,

    -- ** GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
    GoogleCloudFunctionsV2betaOperationMetadata_RequestResource (..),
    newGoogleCloudFunctionsV2betaOperationMetadata_RequestResource,

    -- ** GoogleCloudFunctionsV2betaStage
    GoogleCloudFunctionsV2betaStage (..),
    newGoogleCloudFunctionsV2betaStage,

    -- ** GoogleCloudFunctionsV2betaStage_Name
    GoogleCloudFunctionsV2betaStage_Name (..),

    -- ** GoogleCloudFunctionsV2betaStage_State
    GoogleCloudFunctionsV2betaStage_State (..),

    -- ** GoogleCloudFunctionsV2betaStateMessage
    GoogleCloudFunctionsV2betaStateMessage (..),
    newGoogleCloudFunctionsV2betaStateMessage,

    -- ** GoogleCloudFunctionsV2betaStateMessage_Severity
    GoogleCloudFunctionsV2betaStateMessage_Severity (..),

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

    -- ** RepoSource
    RepoSource (..),
    newRepoSource,

    -- ** Runtime
    Runtime (..),
    newRuntime,

    -- ** Runtime_Environment
    Runtime_Environment (..),

    -- ** Runtime_Stage
    Runtime_Stage (..),

    -- ** ServiceConfig
    ServiceConfig (..),
    newServiceConfig,

    -- ** ServiceConfig_EnvironmentVariables
    ServiceConfig_EnvironmentVariables (..),
    newServiceConfig_EnvironmentVariables,

    -- ** ServiceConfig_IngressSettings
    ServiceConfig_IngressSettings (..),

    -- ** ServiceConfig_VpcConnectorEgressSettings
    ServiceConfig_VpcConnectorEgressSettings (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

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
  )
where

import Gogol.CloudFunctions.Projects.Locations.Functions.Create
import Gogol.CloudFunctions.Projects.Locations.Functions.Delete
import Gogol.CloudFunctions.Projects.Locations.Functions.GenerateDownloadUrl
import Gogol.CloudFunctions.Projects.Locations.Functions.GenerateUploadUrl
import Gogol.CloudFunctions.Projects.Locations.Functions.Get
import Gogol.CloudFunctions.Projects.Locations.Functions.GetIamPolicy
import Gogol.CloudFunctions.Projects.Locations.Functions.List
import Gogol.CloudFunctions.Projects.Locations.Functions.Patch
import Gogol.CloudFunctions.Projects.Locations.Functions.SetIamPolicy
import Gogol.CloudFunctions.Projects.Locations.Functions.TestIamPermissions
import Gogol.CloudFunctions.Projects.Locations.List
import Gogol.CloudFunctions.Projects.Locations.Operations.Get
import Gogol.CloudFunctions.Projects.Locations.Operations.List
import Gogol.CloudFunctions.Projects.Locations.Runtimes.List
import Gogol.CloudFunctions.Types
