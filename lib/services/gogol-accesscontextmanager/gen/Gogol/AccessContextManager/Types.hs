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
-- Module      : Gogol.AccessContextManager.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AccessContextManager.Types
  ( -- * Configuration
    accessContextManagerService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessContextManagerOperationMetadata
    AccessContextManagerOperationMetadata (..),
    newAccessContextManagerOperationMetadata,

    -- ** AccessLevel
    AccessLevel (..),
    newAccessLevel,

    -- ** AccessPolicy
    AccessPolicy (..),
    newAccessPolicy,

    -- ** ApiOperation
    ApiOperation (..),
    newApiOperation,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** BasicLevel
    BasicLevel (..),
    newBasicLevel,

    -- ** BasicLevel_CombiningFunction
    BasicLevel_CombiningFunction (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CommitServicePerimetersRequest
    CommitServicePerimetersRequest (..),
    newCommitServicePerimetersRequest,

    -- ** CommitServicePerimetersResponse
    CommitServicePerimetersResponse (..),
    newCommitServicePerimetersResponse,

    -- ** Condition
    Condition (..),
    newCondition,

    -- ** CustomLevel
    CustomLevel (..),
    newCustomLevel,

    -- ** DevicePolicy
    DevicePolicy (..),
    newDevicePolicy,

    -- ** DevicePolicy_AllowedDeviceManagementLevelsItem
    DevicePolicy_AllowedDeviceManagementLevelsItem (..),

    -- ** DevicePolicy_AllowedEncryptionStatusesItem
    DevicePolicy_AllowedEncryptionStatusesItem (..),

    -- ** EgressFrom
    EgressFrom (..),
    newEgressFrom,

    -- ** EgressFrom_IdentityType
    EgressFrom_IdentityType (..),

    -- ** EgressPolicy
    EgressPolicy (..),
    newEgressPolicy,

    -- ** EgressTo
    EgressTo (..),
    newEgressTo,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GcpUserAccessBinding
    GcpUserAccessBinding (..),
    newGcpUserAccessBinding,

    -- ** GcpUserAccessBindingOperationMetadata
    GcpUserAccessBindingOperationMetadata (..),
    newGcpUserAccessBindingOperationMetadata,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** IngressFrom
    IngressFrom (..),
    newIngressFrom,

    -- ** IngressFrom_IdentityType
    IngressFrom_IdentityType (..),

    -- ** IngressPolicy
    IngressPolicy (..),
    newIngressPolicy,

    -- ** IngressSource
    IngressSource (..),
    newIngressSource,

    -- ** IngressTo
    IngressTo (..),
    newIngressTo,

    -- ** ListAccessLevelsResponse
    ListAccessLevelsResponse (..),
    newListAccessLevelsResponse,

    -- ** ListAccessPoliciesResponse
    ListAccessPoliciesResponse (..),
    newListAccessPoliciesResponse,

    -- ** ListGcpUserAccessBindingsResponse
    ListGcpUserAccessBindingsResponse (..),
    newListGcpUserAccessBindingsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListServicePerimetersResponse
    ListServicePerimetersResponse (..),
    newListServicePerimetersResponse,

    -- ** MethodSelector
    MethodSelector (..),
    newMethodSelector,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OsConstraint
    OsConstraint (..),
    newOsConstraint,

    -- ** OsConstraint_OsType
    OsConstraint_OsType (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** ReplaceAccessLevelsRequest
    ReplaceAccessLevelsRequest (..),
    newReplaceAccessLevelsRequest,

    -- ** ReplaceAccessLevelsResponse
    ReplaceAccessLevelsResponse (..),
    newReplaceAccessLevelsResponse,

    -- ** ReplaceServicePerimetersRequest
    ReplaceServicePerimetersRequest (..),
    newReplaceServicePerimetersRequest,

    -- ** ReplaceServicePerimetersResponse
    ReplaceServicePerimetersResponse (..),
    newReplaceServicePerimetersResponse,

    -- ** ServicePerimeter
    ServicePerimeter (..),
    newServicePerimeter,

    -- ** ServicePerimeter_PerimeterType
    ServicePerimeter_PerimeterType (..),

    -- ** ServicePerimeterConfig
    ServicePerimeterConfig (..),
    newServicePerimeterConfig,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

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

    -- ** VpcAccessibleServices
    VpcAccessibleServices (..),
    newVpcAccessibleServices,

    -- ** AccessPoliciesAccessLevelsGetAccessLevelFormat
    AccessPoliciesAccessLevelsGetAccessLevelFormat (..),

    -- ** AccessPoliciesAccessLevelsListAccessLevelFormat
    AccessPoliciesAccessLevelsListAccessLevelFormat (..),
  )
where

import Gogol.AccessContextManager.Internal.Product
import Gogol.AccessContextManager.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Access Context Manager API. This contains the host and root path used as a starting point for constructing service requests.
accessContextManagerService :: Core.ServiceConfig
accessContextManagerService =
  Core.defaultService
    (Core.ServiceId "accesscontextmanager:v1")
    "accesscontextmanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
