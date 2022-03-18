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
-- Module      : Gogol.BinaryAuthorization.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BinaryAuthorization.Types
  ( -- * Configuration
    binaryAuthorizationService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdmissionRule
    AdmissionRule (..),
    newAdmissionRule,

    -- ** AdmissionRule_EnforcementMode
    AdmissionRule_EnforcementMode (..),

    -- ** AdmissionRule_EvaluationMode
    AdmissionRule_EvaluationMode (..),

    -- ** AdmissionWhitelistPattern
    AdmissionWhitelistPattern (..),
    newAdmissionWhitelistPattern,

    -- ** AttestationOccurrence
    AttestationOccurrence (..),
    newAttestationOccurrence,

    -- ** Attestor
    Attestor (..),
    newAttestor,

    -- ** AttestorPublicKey
    AttestorPublicKey (..),
    newAttestorPublicKey,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** IamPolicy
    IamPolicy (..),
    newIamPolicy,

    -- ** Jwt
    Jwt (..),
    newJwt,

    -- ** ListAttestorsResponse
    ListAttestorsResponse (..),
    newListAttestorsResponse,

    -- ** PkixPublicKey
    PkixPublicKey (..),
    newPkixPublicKey,

    -- ** PkixPublicKey_SignatureAlgorithm
    PkixPublicKey_SignatureAlgorithm (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Policy_ClusterAdmissionRules
    Policy_ClusterAdmissionRules (..),
    newPolicy_ClusterAdmissionRules,

    -- ** Policy_GlobalPolicyEvaluationMode
    Policy_GlobalPolicyEvaluationMode (..),

    -- ** Policy_IstioServiceIdentityAdmissionRules
    Policy_IstioServiceIdentityAdmissionRules (..),
    newPolicy_IstioServiceIdentityAdmissionRules,

    -- ** Policy_KubernetesNamespaceAdmissionRules
    Policy_KubernetesNamespaceAdmissionRules (..),
    newPolicy_KubernetesNamespaceAdmissionRules,

    -- ** Policy_KubernetesServiceAccountAdmissionRules
    Policy_KubernetesServiceAccountAdmissionRules (..),
    newPolicy_KubernetesServiceAccountAdmissionRules,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Signature
    Signature (..),
    newSignature,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UserOwnedGrafeasNote
    UserOwnedGrafeasNote (..),
    newUserOwnedGrafeasNote,

    -- ** ValidateAttestationOccurrenceRequest
    ValidateAttestationOccurrenceRequest (..),
    newValidateAttestationOccurrenceRequest,

    -- ** ValidateAttestationOccurrenceResponse
    ValidateAttestationOccurrenceResponse (..),
    newValidateAttestationOccurrenceResponse,

    -- ** ValidateAttestationOccurrenceResponse_Result
    ValidateAttestationOccurrenceResponse_Result (..),
  )
where

import Gogol.BinaryAuthorization.Internal.Product
import Gogol.BinaryAuthorization.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Binary Authorization API. This contains the host and root path used as a starting point for constructing service requests.
binaryAuthorizationService :: Core.ServiceConfig
binaryAuthorizationService =
  Core.defaultService
    (Core.ServiceId "binaryauthorization:v1")
    "binaryauthorization.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
