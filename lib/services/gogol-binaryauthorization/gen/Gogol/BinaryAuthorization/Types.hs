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
-- Module      : Gogol.BinaryAuthorization.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BinaryAuthorization.Types
    (
    -- * Configuration
      binaryAuthorizationService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdmissionRule
    , AdmissionRule (..)
    , newAdmissionRule

    -- ** AdmissionRule_EnforcementMode
    , AdmissionRule_EnforcementMode (..)

    -- ** AdmissionRule_EvaluationMode
    , AdmissionRule_EvaluationMode (..)

    -- ** AdmissionWhitelistPattern
    , AdmissionWhitelistPattern (..)
    , newAdmissionWhitelistPattern

    -- ** AllowlistResult
    , AllowlistResult (..)
    , newAllowlistResult

    -- ** AttestationAuthenticator
    , AttestationAuthenticator (..)
    , newAttestationAuthenticator

    -- ** AttestationOccurrence
    , AttestationOccurrence (..)
    , newAttestationOccurrence

    -- ** AttestationSource
    , AttestationSource (..)
    , newAttestationSource

    -- ** Attestor
    , Attestor (..)
    , newAttestor

    -- ** AttestorPublicKey
    , AttestorPublicKey (..)
    , newAttestorPublicKey

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** Check
    , Check (..)
    , newCheck

    -- ** CheckResult
    , CheckResult (..)
    , newCheckResult

    -- ** CheckResults
    , CheckResults (..)
    , newCheckResults

    -- ** CheckSet
    , CheckSet (..)
    , newCheckSet

    -- ** CheckSetResult
    , CheckSetResult (..)
    , newCheckSetResult

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EvaluateGkePolicyRequest
    , EvaluateGkePolicyRequest (..)
    , newEvaluateGkePolicyRequest

    -- ** EvaluateGkePolicyRequest_Resource
    , EvaluateGkePolicyRequest_Resource (..)
    , newEvaluateGkePolicyRequest_Resource

    -- ** EvaluateGkePolicyResponse
    , EvaluateGkePolicyResponse (..)
    , newEvaluateGkePolicyResponse

    -- ** EvaluateGkePolicyResponse_Verdict
    , EvaluateGkePolicyResponse_Verdict (..)

    -- ** EvaluationResult
    , EvaluationResult (..)
    , newEvaluationResult

    -- ** EvaluationResult_Verdict
    , EvaluationResult_Verdict (..)

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** GkePolicy
    , GkePolicy (..)
    , newGkePolicy

    -- ** IamPolicy
    , IamPolicy (..)
    , newIamPolicy

    -- ** ImageAllowlist
    , ImageAllowlist (..)
    , newImageAllowlist

    -- ** ImageFreshnessCheck
    , ImageFreshnessCheck (..)
    , newImageFreshnessCheck

    -- ** ImageResult
    , ImageResult (..)
    , newImageResult

    -- ** ImageResult_Verdict
    , ImageResult_Verdict (..)

    -- ** Jwt
    , Jwt (..)
    , newJwt

    -- ** ListAttestorsResponse
    , ListAttestorsResponse (..)
    , newListAttestorsResponse

    -- ** ListPlatformPoliciesResponse
    , ListPlatformPoliciesResponse (..)
    , newListPlatformPoliciesResponse

    -- ** PkixPublicKey
    , PkixPublicKey (..)
    , newPkixPublicKey

    -- ** PkixPublicKey_SignatureAlgorithm
    , PkixPublicKey_SignatureAlgorithm (..)

    -- ** PkixPublicKeySet
    , PkixPublicKeySet (..)
    , newPkixPublicKeySet

    -- ** PlatformPolicy
    , PlatformPolicy (..)
    , newPlatformPolicy

    -- ** PodResult
    , PodResult (..)
    , newPodResult

    -- ** PodResult_Verdict
    , PodResult_Verdict (..)

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** Policy_ClusterAdmissionRules
    , Policy_ClusterAdmissionRules (..)
    , newPolicy_ClusterAdmissionRules

    -- ** Policy_GlobalPolicyEvaluationMode
    , Policy_GlobalPolicyEvaluationMode (..)

    -- ** Policy_IstioServiceIdentityAdmissionRules
    , Policy_IstioServiceIdentityAdmissionRules (..)
    , newPolicy_IstioServiceIdentityAdmissionRules

    -- ** Policy_KubernetesNamespaceAdmissionRules
    , Policy_KubernetesNamespaceAdmissionRules (..)
    , newPolicy_KubernetesNamespaceAdmissionRules

    -- ** Policy_KubernetesServiceAccountAdmissionRules
    , Policy_KubernetesServiceAccountAdmissionRules (..)
    , newPolicy_KubernetesServiceAccountAdmissionRules

    -- ** Scope
    , Scope (..)
    , newScope

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Signature
    , Signature (..)
    , newSignature

    -- ** SigstoreAuthority
    , SigstoreAuthority (..)
    , newSigstoreAuthority

    -- ** SigstorePublicKey
    , SigstorePublicKey (..)
    , newSigstorePublicKey

    -- ** SigstorePublicKeySet
    , SigstorePublicKeySet (..)
    , newSigstorePublicKeySet

    -- ** SigstoreSignatureCheck
    , SigstoreSignatureCheck (..)
    , newSigstoreSignatureCheck

    -- ** SimpleSigningAttestationCheck
    , SimpleSigningAttestationCheck (..)
    , newSimpleSigningAttestationCheck

    -- ** SlsaCheck
    , SlsaCheck (..)
    , newSlsaCheck

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** TrustedDirectoryCheck
    , TrustedDirectoryCheck (..)
    , newTrustedDirectoryCheck

    -- ** UserOwnedGrafeasNote
    , UserOwnedGrafeasNote (..)
    , newUserOwnedGrafeasNote

    -- ** ValidateAttestationOccurrenceRequest
    , ValidateAttestationOccurrenceRequest (..)
    , newValidateAttestationOccurrenceRequest

    -- ** ValidateAttestationOccurrenceResponse
    , ValidateAttestationOccurrenceResponse (..)
    , newValidateAttestationOccurrenceResponse

    -- ** ValidateAttestationOccurrenceResponse_Result
    , ValidateAttestationOccurrenceResponse_Result (..)

    -- ** VerificationRule
    , VerificationRule (..)
    , newVerificationRule

    -- ** VerificationRule_TrustedBuilder
    , VerificationRule_TrustedBuilder (..)

    -- ** VulnerabilityCheck
    , VulnerabilityCheck (..)
    , newVulnerabilityCheck

    -- ** VulnerabilityCheck_MaximumFixableSeverity
    , VulnerabilityCheck_MaximumFixableSeverity (..)

    -- ** VulnerabilityCheck_MaximumUnfixableSeverity
    , VulnerabilityCheck_MaximumUnfixableSeverity (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Internal.Product
import Gogol.BinaryAuthorization.Internal.Sum

-- | Default request referring to version @v1@ of the Binary Authorization API. This contains the host and root path used as a starting point for constructing service requests.
binaryAuthorizationService :: Core.ServiceConfig
binaryAuthorizationService
  = Core.defaultService
      (Core.ServiceId "binaryauthorization:v1")
      "binaryauthorization.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
