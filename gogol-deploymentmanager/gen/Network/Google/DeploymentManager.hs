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
-- Module      : Network.Google.DeploymentManager
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Deployment Manager v2 API provides services for configuring, deploying, and viewing Google Cloud services and APIs via templates which specify deployments of Cloud resources.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference>
module Network.Google.DeploymentManager
  ( -- * Configuration
    deploymentManagerService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    ndevCloudmanScope,
    ndevCloudmanReadOnlyScope,

    -- * Resources

    -- ** deploymentmanager.deployments.cancelPreview
    DeploymentManagerDeploymentsCancelPreviewResource,
    newDeploymentManagerDeploymentsCancelPreview,
    DeploymentManagerDeploymentsCancelPreview,

    -- ** deploymentmanager.deployments.delete
    DeploymentManagerDeploymentsDeleteResource,
    newDeploymentManagerDeploymentsDelete,
    DeploymentManagerDeploymentsDelete,

    -- ** deploymentmanager.deployments.get
    DeploymentManagerDeploymentsGetResource,
    newDeploymentManagerDeploymentsGet,
    DeploymentManagerDeploymentsGet,

    -- ** deploymentmanager.deployments.getIamPolicy
    DeploymentManagerDeploymentsGetIamPolicyResource,
    newDeploymentManagerDeploymentsGetIamPolicy,
    DeploymentManagerDeploymentsGetIamPolicy,

    -- ** deploymentmanager.deployments.insert
    DeploymentManagerDeploymentsInsertResource,
    newDeploymentManagerDeploymentsInsert,
    DeploymentManagerDeploymentsInsert,

    -- ** deploymentmanager.deployments.list
    DeploymentManagerDeploymentsListResource,
    newDeploymentManagerDeploymentsList,
    DeploymentManagerDeploymentsList,

    -- ** deploymentmanager.deployments.patch
    DeploymentManagerDeploymentsPatchResource,
    newDeploymentManagerDeploymentsPatch,
    DeploymentManagerDeploymentsPatch,

    -- ** deploymentmanager.deployments.setIamPolicy
    DeploymentManagerDeploymentsSetIamPolicyResource,
    newDeploymentManagerDeploymentsSetIamPolicy,
    DeploymentManagerDeploymentsSetIamPolicy,

    -- ** deploymentmanager.deployments.stop
    DeploymentManagerDeploymentsStopResource,
    newDeploymentManagerDeploymentsStop,
    DeploymentManagerDeploymentsStop,

    -- ** deploymentmanager.deployments.testIamPermissions
    DeploymentManagerDeploymentsTestIamPermissionsResource,
    newDeploymentManagerDeploymentsTestIamPermissions,
    DeploymentManagerDeploymentsTestIamPermissions,

    -- ** deploymentmanager.deployments.update
    DeploymentManagerDeploymentsUpdateResource,
    newDeploymentManagerDeploymentsUpdate,
    DeploymentManagerDeploymentsUpdate,

    -- ** deploymentmanager.manifests.get
    DeploymentManagerManifestsGetResource,
    newDeploymentManagerManifestsGet,
    DeploymentManagerManifestsGet,

    -- ** deploymentmanager.manifests.list
    DeploymentManagerManifestsListResource,
    newDeploymentManagerManifestsList,
    DeploymentManagerManifestsList,

    -- ** deploymentmanager.operations.get
    DeploymentManagerOperationsGetResource,
    newDeploymentManagerOperationsGet,
    DeploymentManagerOperationsGet,

    -- ** deploymentmanager.operations.list
    DeploymentManagerOperationsListResource,
    newDeploymentManagerOperationsList,
    DeploymentManagerOperationsList,

    -- ** deploymentmanager.resources.get
    DeploymentManagerResourcesGetResource,
    newDeploymentManagerResourcesGet,
    DeploymentManagerResourcesGet,

    -- ** deploymentmanager.resources.list
    DeploymentManagerResourcesListResource,
    newDeploymentManagerResourcesList,
    DeploymentManagerResourcesList,

    -- ** deploymentmanager.types.list
    DeploymentManagerTypesListResource,
    newDeploymentManagerTypesList,
    DeploymentManagerTypesList,

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

    -- ** ConfigFile
    ConfigFile (..),
    newConfigFile,

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

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GlobalSetPolicyRequest
    GlobalSetPolicyRequest (..),
    newGlobalSetPolicyRequest,

    -- ** ImportFile
    ImportFile (..),
    newImportFile,

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

import Network.Google.DeploymentManager.Deployments.CancelPreview
import Network.Google.DeploymentManager.Deployments.Delete
import Network.Google.DeploymentManager.Deployments.Get
import Network.Google.DeploymentManager.Deployments.GetIamPolicy
import Network.Google.DeploymentManager.Deployments.Insert
import Network.Google.DeploymentManager.Deployments.List
import Network.Google.DeploymentManager.Deployments.Patch
import Network.Google.DeploymentManager.Deployments.SetIamPolicy
import Network.Google.DeploymentManager.Deployments.Stop
import Network.Google.DeploymentManager.Deployments.TestIamPermissions
import Network.Google.DeploymentManager.Deployments.Update
import Network.Google.DeploymentManager.Manifests.Get
import Network.Google.DeploymentManager.Manifests.List
import Network.Google.DeploymentManager.Operations.Get
import Network.Google.DeploymentManager.Operations.List
import Network.Google.DeploymentManager.Resources.Get
import Network.Google.DeploymentManager.Resources.List
import Network.Google.DeploymentManager.Types
import Network.Google.DeploymentManager.Types.List
