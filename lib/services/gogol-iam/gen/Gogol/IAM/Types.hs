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
-- Module      : Gogol.IAM.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAM.Types
  ( -- * Configuration
    iAMService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdminAuditData
    AdminAuditData (..),
    newAdminAuditData,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditData
    AuditData (..),
    newAuditData,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AuditableService
    AuditableService (..),
    newAuditableService,

    -- ** Aws
    Aws (..),
    newAws,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BindingDelta
    BindingDelta (..),
    newBindingDelta,

    -- ** BindingDelta_Action
    BindingDelta_Action (..),

    -- ** CreateRoleRequest
    CreateRoleRequest (..),
    newCreateRoleRequest,

    -- ** CreateServiceAccountKeyRequest
    CreateServiceAccountKeyRequest (..),
    newCreateServiceAccountKeyRequest,

    -- ** CreateServiceAccountKeyRequest_KeyAlgorithm
    CreateServiceAccountKeyRequest_KeyAlgorithm (..),

    -- ** CreateServiceAccountKeyRequest_PrivateKeyType
    CreateServiceAccountKeyRequest_PrivateKeyType (..),

    -- ** CreateServiceAccountRequest
    CreateServiceAccountRequest (..),
    newCreateServiceAccountRequest,

    -- ** DisableServiceAccountKeyRequest
    DisableServiceAccountKeyRequest (..),
    newDisableServiceAccountKeyRequest,

    -- ** DisableServiceAccountRequest
    DisableServiceAccountRequest (..),
    newDisableServiceAccountRequest,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EnableServiceAccountKeyRequest
    EnableServiceAccountKeyRequest (..),
    newEnableServiceAccountKeyRequest,

    -- ** EnableServiceAccountRequest
    EnableServiceAccountRequest (..),
    newEnableServiceAccountRequest,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** LintPolicyRequest
    LintPolicyRequest (..),
    newLintPolicyRequest,

    -- ** LintPolicyResponse
    LintPolicyResponse (..),
    newLintPolicyResponse,

    -- ** LintResult
    LintResult (..),
    newLintResult,

    -- ** LintResult_Level
    LintResult_Level (..),

    -- ** LintResult_Severity
    LintResult_Severity (..),

    -- ** ListRolesResponse
    ListRolesResponse (..),
    newListRolesResponse,

    -- ** ListServiceAccountKeysResponse
    ListServiceAccountKeysResponse (..),
    newListServiceAccountKeysResponse,

    -- ** ListServiceAccountsResponse
    ListServiceAccountsResponse (..),
    newListServiceAccountsResponse,

    -- ** ListWorkloadIdentityPoolProvidersResponse
    ListWorkloadIdentityPoolProvidersResponse (..),
    newListWorkloadIdentityPoolProvidersResponse,

    -- ** ListWorkloadIdentityPoolsResponse
    ListWorkloadIdentityPoolsResponse (..),
    newListWorkloadIdentityPoolsResponse,

    -- ** Oidc
    Oidc (..),
    newOidc,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PatchServiceAccountRequest
    PatchServiceAccountRequest (..),
    newPatchServiceAccountRequest,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Permission_CustomRolesSupportLevel
    Permission_CustomRolesSupportLevel (..),

    -- ** Permission_Stage
    Permission_Stage (..),

    -- ** PermissionDelta
    PermissionDelta (..),
    newPermissionDelta,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PolicyDelta
    PolicyDelta (..),
    newPolicyDelta,

    -- ** QueryAuditableServicesRequest
    QueryAuditableServicesRequest (..),
    newQueryAuditableServicesRequest,

    -- ** QueryAuditableServicesResponse
    QueryAuditableServicesResponse (..),
    newQueryAuditableServicesResponse,

    -- ** QueryGrantableRolesRequest
    QueryGrantableRolesRequest (..),
    newQueryGrantableRolesRequest,

    -- ** QueryGrantableRolesRequest_View
    QueryGrantableRolesRequest_View (..),

    -- ** QueryGrantableRolesResponse
    QueryGrantableRolesResponse (..),
    newQueryGrantableRolesResponse,

    -- ** QueryTestablePermissionsRequest
    QueryTestablePermissionsRequest (..),
    newQueryTestablePermissionsRequest,

    -- ** QueryTestablePermissionsResponse
    QueryTestablePermissionsResponse (..),
    newQueryTestablePermissionsResponse,

    -- ** Role
    Role (..),
    newRole,

    -- ** Role_Stage
    Role_Stage (..),

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** ServiceAccountKey
    ServiceAccountKey (..),
    newServiceAccountKey,

    -- ** ServiceAccountKey_KeyAlgorithm
    ServiceAccountKey_KeyAlgorithm (..),

    -- ** ServiceAccountKey_KeyOrigin
    ServiceAccountKey_KeyOrigin (..),

    -- ** ServiceAccountKey_KeyType
    ServiceAccountKey_KeyType (..),

    -- ** ServiceAccountKey_PrivateKeyType
    ServiceAccountKey_PrivateKeyType (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SignBlobRequest
    SignBlobRequest (..),
    newSignBlobRequest,

    -- ** SignBlobResponse
    SignBlobResponse (..),
    newSignBlobResponse,

    -- ** SignJwtRequest
    SignJwtRequest (..),
    newSignJwtRequest,

    -- ** SignJwtResponse
    SignJwtResponse (..),
    newSignJwtResponse,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UndeleteRoleRequest
    UndeleteRoleRequest (..),
    newUndeleteRoleRequest,

    -- ** UndeleteServiceAccountRequest
    UndeleteServiceAccountRequest (..),
    newUndeleteServiceAccountRequest,

    -- ** UndeleteServiceAccountResponse
    UndeleteServiceAccountResponse (..),
    newUndeleteServiceAccountResponse,

    -- ** UndeleteWorkloadIdentityPoolProviderRequest
    UndeleteWorkloadIdentityPoolProviderRequest (..),
    newUndeleteWorkloadIdentityPoolProviderRequest,

    -- ** UndeleteWorkloadIdentityPoolRequest
    UndeleteWorkloadIdentityPoolRequest (..),
    newUndeleteWorkloadIdentityPoolRequest,

    -- ** UploadServiceAccountKeyRequest
    UploadServiceAccountKeyRequest (..),
    newUploadServiceAccountKeyRequest,

    -- ** WorkloadIdentityPool
    WorkloadIdentityPool (..),
    newWorkloadIdentityPool,

    -- ** WorkloadIdentityPool_State
    WorkloadIdentityPool_State (..),

    -- ** WorkloadIdentityPoolProvider
    WorkloadIdentityPoolProvider (..),
    newWorkloadIdentityPoolProvider,

    -- ** WorkloadIdentityPoolProvider_AttributeMapping
    WorkloadIdentityPoolProvider_AttributeMapping (..),
    newWorkloadIdentityPoolProvider_AttributeMapping,

    -- ** WorkloadIdentityPoolProvider_State
    WorkloadIdentityPoolProvider_State (..),

    -- ** OrganizationsRolesListView
    OrganizationsRolesListView (..),

    -- ** ProjectsRolesListView
    ProjectsRolesListView (..),

    -- ** ProjectsServiceAccountsKeysGetPublicKeyType
    ProjectsServiceAccountsKeysGetPublicKeyType (..),

    -- ** ProjectsServiceAccountsKeysListKeyTypes
    ProjectsServiceAccountsKeysListKeyTypes (..),

    -- ** RolesListView
    RolesListView (..),
  )
where

import Gogol.IAM.Internal.Product
import Gogol.IAM.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Identity and Access Management (IAM) API. This contains the host and root path used as a starting point for constructing service requests.
iAMService :: Core.ServiceConfig
iAMService =
  Core.defaultService
    (Core.ServiceId "iam:v1")
    "iam.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
