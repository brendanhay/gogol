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
-- Module      : Gogol.IAM.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.IAM.Types
  ( -- * Configuration
    iAMService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import Gogol.IAM.Internal.Product
import Gogol.IAM.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Identity and Access Management (IAM) API. This contains the host and root path used as a starting point for constructing service requests.
iAMService :: Core.ServiceConfig
iAMService =
  Core.defaultService
    (Core.ServiceId "iam:v2")
    "iam.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
