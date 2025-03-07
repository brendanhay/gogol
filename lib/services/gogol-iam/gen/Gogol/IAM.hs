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
-- Module      : Gogol.IAM
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages identity and access control for Google Cloud resources, including the creation of service accounts, which you can use to authenticate to Google and make API calls. Enabling this API also enables the IAM Service Account Credentials API (iamcredentials.googleapis.com). However, disabling this API doesn\'t disable the IAM Service Account Credentials API.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference>
module Gogol.IAM
  ( -- * Configuration
    iAMService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** iam.policies.createPolicy
    IAMPoliciesCreatePolicyResource,
    IAMPoliciesCreatePolicy (..),
    newIAMPoliciesCreatePolicy,

    -- ** iam.policies.delete
    IAMPoliciesDeleteResource,
    IAMPoliciesDelete (..),
    newIAMPoliciesDelete,

    -- ** iam.policies.get
    IAMPoliciesGetResource,
    IAMPoliciesGet (..),
    newIAMPoliciesGet,

    -- ** iam.policies.listPolicies
    IAMPoliciesListPoliciesResource,
    IAMPoliciesListPolicies (..),
    newIAMPoliciesListPolicies,

    -- ** iam.policies.operations.get
    IAMPoliciesOperationsGetResource,
    IAMPoliciesOperationsGet (..),
    newIAMPoliciesOperationsGet,

    -- ** iam.policies.update
    IAMPoliciesUpdateResource,
    IAMPoliciesUpdate (..),
    newIAMPoliciesUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CloudControl2SharedOperationsReconciliationOperationMetadata
    CloudControl2SharedOperationsReconciliationOperationMetadata (..),
    newCloudControl2SharedOperationsReconciliationOperationMetadata,

    -- ** CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction
    CloudControl2SharedOperationsReconciliationOperationMetadata_ExclusiveAction (..),

    -- ** GoogleCloudCommonOperationMetadata
    GoogleCloudCommonOperationMetadata (..),
    newGoogleCloudCommonOperationMetadata,

    -- ** GoogleIamAdminV1AuditData
    GoogleIamAdminV1AuditData (..),
    newGoogleIamAdminV1AuditData,

    -- ** GoogleIamAdminV1AuditDataPermissionDelta
    GoogleIamAdminV1AuditDataPermissionDelta (..),
    newGoogleIamAdminV1AuditDataPermissionDelta,

    -- ** GoogleIamV1BindingDelta
    GoogleIamV1BindingDelta (..),
    newGoogleIamV1BindingDelta,

    -- ** GoogleIamV1BindingDelta_Action
    GoogleIamV1BindingDelta_Action (..),

    -- ** GoogleIamV1LoggingAuditData
    GoogleIamV1LoggingAuditData (..),
    newGoogleIamV1LoggingAuditData,

    -- ** GoogleIamV1PolicyDelta
    GoogleIamV1PolicyDelta (..),
    newGoogleIamV1PolicyDelta,

    -- ** GoogleIamV1betaWorkloadIdentityPoolOperationMetadata
    GoogleIamV1betaWorkloadIdentityPoolOperationMetadata (..),
    newGoogleIamV1betaWorkloadIdentityPoolOperationMetadata,

    -- ** GoogleIamV2DenyRule
    GoogleIamV2DenyRule (..),
    newGoogleIamV2DenyRule,

    -- ** GoogleIamV2ListPoliciesResponse
    GoogleIamV2ListPoliciesResponse (..),
    newGoogleIamV2ListPoliciesResponse,

    -- ** GoogleIamV2Policy
    GoogleIamV2Policy (..),
    newGoogleIamV2Policy,

    -- ** GoogleIamV2Policy_Annotations
    GoogleIamV2Policy_Annotations (..),
    newGoogleIamV2Policy_Annotations,

    -- ** GoogleIamV2PolicyOperationMetadata
    GoogleIamV2PolicyOperationMetadata (..),
    newGoogleIamV2PolicyOperationMetadata,

    -- ** GoogleIamV2PolicyRule
    GoogleIamV2PolicyRule (..),
    newGoogleIamV2PolicyRule,

    -- ** GoogleIamV3OperationMetadata
    GoogleIamV3OperationMetadata (..),
    newGoogleIamV3OperationMetadata,

    -- ** GoogleIamV3alphaOperationMetadata
    GoogleIamV3alphaOperationMetadata (..),
    newGoogleIamV3alphaOperationMetadata,

    -- ** GoogleIamV3betaOperationMetadata
    GoogleIamV3betaOperationMetadata (..),
    newGoogleIamV3betaOperationMetadata,

    -- ** GoogleIamV3mainOperationMetadata
    GoogleIamV3mainOperationMetadata (..),
    newGoogleIamV3mainOperationMetadata,

    -- ** GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- ** GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- ** GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- ** GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,
  )
where

import Gogol.IAM.Policies.CreatePolicy
import Gogol.IAM.Policies.Delete
import Gogol.IAM.Policies.Get
import Gogol.IAM.Policies.ListPolicies
import Gogol.IAM.Policies.Operations.Get
import Gogol.IAM.Policies.Update
import Gogol.IAM.Types
