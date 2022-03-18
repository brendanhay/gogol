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
-- Module      : Gogol.DeploymentManager.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DeploymentManager.Types
  ( -- * Configuration
    deploymentManagerService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    ndevCloudmanScope,
    ndevCloudmanReadOnlyScope,

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

import Gogol.DeploymentManager.Internal.Product
import Gogol.DeploymentManager.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v2@ of the Cloud Deployment Manager V2 API. This contains the host and root path used as a starting point for constructing service requests.
deploymentManagerService :: Core.ServiceConfig
deploymentManagerService =
  Core.defaultService
    (Core.ServiceId "deploymentmanager:v2")
    "deploymentmanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View your data across Google Cloud services and see the email address of your Google Account
cloudPlatformReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Core.Proxy

-- | View and manage your Google Cloud Platform management resources and deployment status information
ndevCloudmanScope :: Core.Proxy '["https://www.googleapis.com/auth/ndev.cloudman"]
ndevCloudmanScope = Core.Proxy

-- | View your Google Cloud Platform management resources and deployment status information
ndevCloudmanReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/ndev.cloudman.readonly"]
ndevCloudmanReadOnlyScope = Core.Proxy
