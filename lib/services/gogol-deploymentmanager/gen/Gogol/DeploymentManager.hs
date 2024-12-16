{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DeploymentManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Deployment Manager v2 API provides services for configuring, deploying, and viewing Google Cloud services and APIs via templates which specify deployments of Cloud resources.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference>
module Gogol.DeploymentManager
    (
    -- * Configuration
      deploymentManagerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , CloudPlatform'ReadOnly
    , Ndev'Cloudman
    , Ndev'Cloudman'Readonly

    -- * Resources

    -- ** deploymentmanager.deployments.cancelPreview
    , DeploymentManagerDeploymentsCancelPreviewResource
    , DeploymentManagerDeploymentsCancelPreview (..)
    , newDeploymentManagerDeploymentsCancelPreview

    -- ** deploymentmanager.deployments.delete
    , DeploymentManagerDeploymentsDeleteResource
    , DeploymentManagerDeploymentsDelete (..)
    , newDeploymentManagerDeploymentsDelete

    -- ** deploymentmanager.deployments.get
    , DeploymentManagerDeploymentsGetResource
    , DeploymentManagerDeploymentsGet (..)
    , newDeploymentManagerDeploymentsGet

    -- ** deploymentmanager.deployments.getIamPolicy
    , DeploymentManagerDeploymentsGetIamPolicyResource
    , DeploymentManagerDeploymentsGetIamPolicy (..)
    , newDeploymentManagerDeploymentsGetIamPolicy

    -- ** deploymentmanager.deployments.insert
    , DeploymentManagerDeploymentsInsertResource
    , DeploymentManagerDeploymentsInsert (..)
    , newDeploymentManagerDeploymentsInsert

    -- ** deploymentmanager.deployments.list
    , DeploymentManagerDeploymentsListResource
    , DeploymentManagerDeploymentsList (..)
    , newDeploymentManagerDeploymentsList

    -- ** deploymentmanager.deployments.patch
    , DeploymentManagerDeploymentsPatchResource
    , DeploymentManagerDeploymentsPatch (..)
    , newDeploymentManagerDeploymentsPatch

    -- ** deploymentmanager.deployments.setIamPolicy
    , DeploymentManagerDeploymentsSetIamPolicyResource
    , DeploymentManagerDeploymentsSetIamPolicy (..)
    , newDeploymentManagerDeploymentsSetIamPolicy

    -- ** deploymentmanager.deployments.stop
    , DeploymentManagerDeploymentsStopResource
    , DeploymentManagerDeploymentsStop (..)
    , newDeploymentManagerDeploymentsStop

    -- ** deploymentmanager.deployments.testIamPermissions
    , DeploymentManagerDeploymentsTestIamPermissionsResource
    , DeploymentManagerDeploymentsTestIamPermissions (..)
    , newDeploymentManagerDeploymentsTestIamPermissions

    -- ** deploymentmanager.deployments.update
    , DeploymentManagerDeploymentsUpdateResource
    , DeploymentManagerDeploymentsUpdate (..)
    , newDeploymentManagerDeploymentsUpdate

    -- ** deploymentmanager.manifests.get
    , DeploymentManagerManifestsGetResource
    , DeploymentManagerManifestsGet (..)
    , newDeploymentManagerManifestsGet

    -- ** deploymentmanager.manifests.list
    , DeploymentManagerManifestsListResource
    , DeploymentManagerManifestsList (..)
    , newDeploymentManagerManifestsList

    -- ** deploymentmanager.operations.get
    , DeploymentManagerOperationsGetResource
    , DeploymentManagerOperationsGet (..)
    , newDeploymentManagerOperationsGet

    -- ** deploymentmanager.operations.list
    , DeploymentManagerOperationsListResource
    , DeploymentManagerOperationsList (..)
    , newDeploymentManagerOperationsList

    -- ** deploymentmanager.resources.get
    , DeploymentManagerResourcesGetResource
    , DeploymentManagerResourcesGet (..)
    , newDeploymentManagerResourcesGet

    -- ** deploymentmanager.resources.list
    , DeploymentManagerResourcesListResource
    , DeploymentManagerResourcesList (..)
    , newDeploymentManagerResourcesList

    -- ** deploymentmanager.types.list
    , DeploymentManagerTypesListResource
    , DeploymentManagerTypesList (..)
    , newDeploymentManagerTypesList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** BulkInsertOperationStatus
    , BulkInsertOperationStatus (..)
    , newBulkInsertOperationStatus

    -- ** BulkInsertOperationStatus_Status
    , BulkInsertOperationStatus_Status (..)

    -- ** ConfigFile
    , ConfigFile (..)
    , newConfigFile

    -- ** DebugInfo
    , DebugInfo (..)
    , newDebugInfo

    -- ** Deployment
    , Deployment (..)
    , newDeployment

    -- ** DeploymentLabelEntry
    , DeploymentLabelEntry (..)
    , newDeploymentLabelEntry

    -- ** DeploymentUpdate
    , DeploymentUpdate (..)
    , newDeploymentUpdate

    -- ** DeploymentUpdateLabelEntry
    , DeploymentUpdateLabelEntry (..)
    , newDeploymentUpdateLabelEntry

    -- ** DeploymentsCancelPreviewRequest
    , DeploymentsCancelPreviewRequest (..)
    , newDeploymentsCancelPreviewRequest

    -- ** DeploymentsListResponse
    , DeploymentsListResponse (..)
    , newDeploymentsListResponse

    -- ** DeploymentsStopRequest
    , DeploymentsStopRequest (..)
    , newDeploymentsStopRequest

    -- ** ErrorInfo
    , ErrorInfo (..)
    , newErrorInfo

    -- ** ErrorInfo_Metadata
    , ErrorInfo_Metadata (..)
    , newErrorInfo_Metadata

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** GlobalSetPolicyRequest
    , GlobalSetPolicyRequest (..)
    , newGlobalSetPolicyRequest

    -- ** Help
    , Help (..)
    , newHelp

    -- ** HelpLink
    , HelpLink (..)
    , newHelpLink

    -- ** ImportFile
    , ImportFile (..)
    , newImportFile

    -- ** InstancesBulkInsertOperationMetadata
    , InstancesBulkInsertOperationMetadata (..)
    , newInstancesBulkInsertOperationMetadata

    -- ** InstancesBulkInsertOperationMetadata_PerLocationStatus
    , InstancesBulkInsertOperationMetadata_PerLocationStatus (..)
    , newInstancesBulkInsertOperationMetadata_PerLocationStatus

    -- ** LocalizedMessage
    , LocalizedMessage (..)
    , newLocalizedMessage

    -- ** Manifest
    , Manifest (..)
    , newManifest

    -- ** ManifestsListResponse
    , ManifestsListResponse (..)
    , newManifestsListResponse

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Error
    , Operation_Error (..)
    , newOperation_Error

    -- ** Operation_Error_ErrorsItem
    , Operation_Error_ErrorsItem (..)
    , newOperation_Error_ErrorsItem

    -- ** Operation_Error_ErrorsItem_ErrorDetailsItem
    , Operation_Error_ErrorsItem_ErrorDetailsItem (..)
    , newOperation_Error_ErrorsItem_ErrorDetailsItem

    -- ** Operation_Status
    , Operation_Status (..)

    -- ** Operation_WarningsItem
    , Operation_WarningsItem (..)
    , newOperation_WarningsItem

    -- ** Operation_WarningsItem_Code
    , Operation_WarningsItem_Code (..)

    -- ** Operation_WarningsItem_DataItem
    , Operation_WarningsItem_DataItem (..)
    , newOperation_WarningsItem_DataItem

    -- ** OperationsListResponse
    , OperationsListResponse (..)
    , newOperationsListResponse

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** QuotaExceededInfo
    , QuotaExceededInfo (..)
    , newQuotaExceededInfo

    -- ** QuotaExceededInfo_Dimensions
    , QuotaExceededInfo_Dimensions (..)
    , newQuotaExceededInfo_Dimensions

    -- ** QuotaExceededInfo_RolloutStatus
    , QuotaExceededInfo_RolloutStatus (..)

    -- ** Resource
    , Resource (..)
    , newResource

    -- ** Resource_WarningsItem
    , Resource_WarningsItem (..)
    , newResource_WarningsItem

    -- ** Resource_WarningsItem_Code
    , Resource_WarningsItem_Code (..)

    -- ** Resource_WarningsItem_DataItem
    , Resource_WarningsItem_DataItem (..)
    , newResource_WarningsItem_DataItem

    -- ** ResourceAccessControl
    , ResourceAccessControl (..)
    , newResourceAccessControl

    -- ** ResourceUpdate
    , ResourceUpdate (..)
    , newResourceUpdate

    -- ** ResourceUpdate_Error
    , ResourceUpdate_Error (..)
    , newResourceUpdate_Error

    -- ** ResourceUpdate_Error_ErrorsItem
    , ResourceUpdate_Error_ErrorsItem (..)
    , newResourceUpdate_Error_ErrorsItem

    -- ** ResourceUpdate_Error_ErrorsItem_ErrorDetailsItem
    , ResourceUpdate_Error_ErrorsItem_ErrorDetailsItem (..)
    , newResourceUpdate_Error_ErrorsItem_ErrorDetailsItem

    -- ** ResourceUpdate_Intent
    , ResourceUpdate_Intent (..)

    -- ** ResourceUpdate_State
    , ResourceUpdate_State (..)

    -- ** ResourceUpdate_WarningsItem
    , ResourceUpdate_WarningsItem (..)
    , newResourceUpdate_WarningsItem

    -- ** ResourceUpdate_WarningsItem_Code
    , ResourceUpdate_WarningsItem_Code (..)

    -- ** ResourceUpdate_WarningsItem_DataItem
    , ResourceUpdate_WarningsItem_DataItem (..)
    , newResourceUpdate_WarningsItem_DataItem

    -- ** ResourcesListResponse
    , ResourcesListResponse (..)
    , newResourcesListResponse

    -- ** SetCommonInstanceMetadataOperationMetadata
    , SetCommonInstanceMetadataOperationMetadata (..)
    , newSetCommonInstanceMetadataOperationMetadata

    -- ** SetCommonInstanceMetadataOperationMetadata_PerLocationOperations
    , SetCommonInstanceMetadataOperationMetadata_PerLocationOperations (..)
    , newSetCommonInstanceMetadataOperationMetadata_PerLocationOperations

    -- ** SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
    , SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo (..)
    , newSetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo

    -- ** SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo_State
    , SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo_State (..)

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TargetConfiguration
    , TargetConfiguration (..)
    , newTargetConfiguration

    -- ** TestPermissionsRequest
    , TestPermissionsRequest (..)
    , newTestPermissionsRequest

    -- ** TestPermissionsResponse
    , TestPermissionsResponse (..)
    , newTestPermissionsResponse

    -- ** Type
    , Type (..)
    , newType

    -- ** TypesListResponse
    , TypesListResponse (..)
    , newTypesListResponse

    -- ** DeploymentsDeleteDeletePolicy
    , DeploymentsDeleteDeletePolicy (..)

    -- ** DeploymentsInsertCreatePolicy
    , DeploymentsInsertCreatePolicy (..)

    -- ** DeploymentsPatchCreatePolicy
    , DeploymentsPatchCreatePolicy (..)

    -- ** DeploymentsPatchDeletePolicy
    , DeploymentsPatchDeletePolicy (..)

    -- ** DeploymentsUpdateCreatePolicy
    , DeploymentsUpdateCreatePolicy (..)

    -- ** DeploymentsUpdateDeletePolicy
    , DeploymentsUpdateDeletePolicy (..)
    ) where

import Gogol.DeploymentManager.Deployments.CancelPreview
import Gogol.DeploymentManager.Deployments.Delete
import Gogol.DeploymentManager.Deployments.Get
import Gogol.DeploymentManager.Deployments.GetIamPolicy
import Gogol.DeploymentManager.Deployments.Insert
import Gogol.DeploymentManager.Deployments.List
import Gogol.DeploymentManager.Deployments.Patch
import Gogol.DeploymentManager.Deployments.SetIamPolicy
import Gogol.DeploymentManager.Deployments.Stop
import Gogol.DeploymentManager.Deployments.TestIamPermissions
import Gogol.DeploymentManager.Deployments.Update
import Gogol.DeploymentManager.Manifests.Get
import Gogol.DeploymentManager.Manifests.List
import Gogol.DeploymentManager.Operations.Get
import Gogol.DeploymentManager.Operations.List
import Gogol.DeploymentManager.Resources.Get
import Gogol.DeploymentManager.Resources.List
import Gogol.DeploymentManager.Types
import Gogol.DeploymentManager.Types.List
