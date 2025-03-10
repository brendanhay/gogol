{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.DeploymentManager.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DeploymentManager.Types
  ( -- * Configuration
    deploymentManagerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Ndev'Cloudman,
    Ndev'Cloudman'Readonly,

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

    -- ** BulkInsertOperationStatus
    BulkInsertOperationStatus (..),
    newBulkInsertOperationStatus,

    -- ** BulkInsertOperationStatus_Status
    BulkInsertOperationStatus_Status (..),

    -- ** ConfigFile
    ConfigFile (..),
    newConfigFile,

    -- ** DebugInfo
    DebugInfo (..),
    newDebugInfo,

    -- ** Deployment
    Deployment (..),
    newDeployment,

    -- ** DeploymentLabelEntry
    DeploymentLabelEntry (..),
    newDeploymentLabelEntry,

    -- ** DeploymentUpdate
    DeploymentUpdate (..),
    newDeploymentUpdate,

    -- ** DeploymentUpdateLabelEntry
    DeploymentUpdateLabelEntry (..),
    newDeploymentUpdateLabelEntry,

    -- ** DeploymentsCancelPreviewRequest
    DeploymentsCancelPreviewRequest (..),
    newDeploymentsCancelPreviewRequest,

    -- ** DeploymentsListResponse
    DeploymentsListResponse (..),
    newDeploymentsListResponse,

    -- ** DeploymentsStopRequest
    DeploymentsStopRequest (..),
    newDeploymentsStopRequest,

    -- ** ErrorInfo
    ErrorInfo (..),
    newErrorInfo,

    -- ** ErrorInfo_Metadatas
    ErrorInfo_Metadatas (..),
    newErrorInfo_Metadatas,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GlobalSetPolicyRequest
    GlobalSetPolicyRequest (..),
    newGlobalSetPolicyRequest,

    -- ** Help
    Help (..),
    newHelp,

    -- ** HelpLink
    HelpLink (..),
    newHelpLink,

    -- ** ImportFile
    ImportFile (..),
    newImportFile,

    -- ** InstancesBulkInsertOperationMetadata
    InstancesBulkInsertOperationMetadata (..),
    newInstancesBulkInsertOperationMetadata,

    -- ** InstancesBulkInsertOperationMetadata_PerLocationStatus
    InstancesBulkInsertOperationMetadata_PerLocationStatus (..),
    newInstancesBulkInsertOperationMetadata_PerLocationStatus,

    -- ** LocalizedMessage
    LocalizedMessage (..),
    newLocalizedMessage,

    -- ** Manifest
    Manifest (..),
    newManifest,

    -- ** ManifestsListResponse
    ManifestsListResponse (..),
    newManifestsListResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- ** Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- ** Operation_Error_ErrorsItem_ErrorDetailsItem
    Operation_Error_ErrorsItem_ErrorDetailsItem (..),
    newOperation_Error_ErrorsItem_ErrorDetailsItem,

    -- ** Operation_Status
    Operation_Status (..),

    -- ** Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- ** Operation_WarningsItem_Code
    Operation_WarningsItem_Code (..),

    -- ** Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- ** OperationsListResponse
    OperationsListResponse (..),
    newOperationsListResponse,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** QuotaExceededInfo
    QuotaExceededInfo (..),
    newQuotaExceededInfo,

    -- ** QuotaExceededInfo_Dimensions
    QuotaExceededInfo_Dimensions (..),
    newQuotaExceededInfo_Dimensions,

    -- ** QuotaExceededInfo_RolloutStatus
    QuotaExceededInfo_RolloutStatus (..),

    -- ** Resource
    Resource (..),
    newResource,

    -- ** Resource_WarningsItem
    Resource_WarningsItem (..),
    newResource_WarningsItem,

    -- ** Resource_WarningsItem_Code
    Resource_WarningsItem_Code (..),

    -- ** Resource_WarningsItem_DataItem
    Resource_WarningsItem_DataItem (..),
    newResource_WarningsItem_DataItem,

    -- ** ResourceAccessControl
    ResourceAccessControl (..),
    newResourceAccessControl,

    -- ** ResourceUpdate
    ResourceUpdate (..),
    newResourceUpdate,

    -- ** ResourceUpdate_Error
    ResourceUpdate_Error (..),
    newResourceUpdate_Error,

    -- ** ResourceUpdate_Error_ErrorsItem
    ResourceUpdate_Error_ErrorsItem (..),
    newResourceUpdate_Error_ErrorsItem,

    -- ** ResourceUpdate_Error_ErrorsItem_ErrorDetailsItem
    ResourceUpdate_Error_ErrorsItem_ErrorDetailsItem (..),
    newResourceUpdate_Error_ErrorsItem_ErrorDetailsItem,

    -- ** ResourceUpdate_Intent
    ResourceUpdate_Intent (..),

    -- ** ResourceUpdate_State
    ResourceUpdate_State (..),

    -- ** ResourceUpdate_WarningsItem
    ResourceUpdate_WarningsItem (..),
    newResourceUpdate_WarningsItem,

    -- ** ResourceUpdate_WarningsItem_Code
    ResourceUpdate_WarningsItem_Code (..),

    -- ** ResourceUpdate_WarningsItem_DataItem
    ResourceUpdate_WarningsItem_DataItem (..),
    newResourceUpdate_WarningsItem_DataItem,

    -- ** ResourcesListResponse
    ResourcesListResponse (..),
    newResourcesListResponse,

    -- ** SetCommonInstanceMetadataOperationMetadata
    SetCommonInstanceMetadataOperationMetadata (..),
    newSetCommonInstanceMetadataOperationMetadata,

    -- ** SetCommonInstanceMetadataOperationMetadata_PerLocationOperations
    SetCommonInstanceMetadataOperationMetadata_PerLocationOperations (..),
    newSetCommonInstanceMetadataOperationMetadata_PerLocationOperations,

    -- ** SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
    SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo (..),
    newSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo,

    -- ** SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo_State
    SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo_State (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TargetConfiguration
    TargetConfiguration (..),
    newTargetConfiguration,

    -- ** TestPermissionsRequest
    TestPermissionsRequest (..),
    newTestPermissionsRequest,

    -- ** TestPermissionsResponse
    TestPermissionsResponse (..),
    newTestPermissionsResponse,

    -- ** Type
    Type (..),
    newType,

    -- ** TypesListResponse
    TypesListResponse (..),
    newTypesListResponse,

    -- ** DeploymentsDeleteDeletePolicy
    DeploymentsDeleteDeletePolicy (..),

    -- ** DeploymentsInsertCreatePolicy
    DeploymentsInsertCreatePolicy (..),

    -- ** DeploymentsPatchCreatePolicy
    DeploymentsPatchCreatePolicy (..),

    -- ** DeploymentsPatchDeletePolicy
    DeploymentsPatchDeletePolicy (..),

    -- ** DeploymentsUpdateCreatePolicy
    DeploymentsUpdateCreatePolicy (..),

    -- ** DeploymentsUpdateDeletePolicy
    DeploymentsUpdateDeletePolicy (..),
  )
where

import Gogol.DeploymentManager.Internal.Product
import Gogol.DeploymentManager.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Cloud Deployment Manager V2 API. This contains the host and root path used as a starting point for constructing service requests.
deploymentManagerService :: Core.ServiceConfig
deploymentManagerService =
  Core.defaultService
    (Core.ServiceId "deploymentmanager:v2")
    "deploymentmanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly =
  "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | View and manage your Google Cloud Platform management resources and deployment status information
type Ndev'Cloudman =
  "https://www.googleapis.com/auth/ndev.cloudman"

-- | View your Google Cloud Platform management resources and deployment status information
type Ndev'Cloudman'Readonly =
  "https://www.googleapis.com/auth/ndev.cloudman.readonly"
