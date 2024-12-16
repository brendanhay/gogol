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
-- Module      : Gogol.BinaryAuthorization
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The management interface for Binary Authorization, a service that provides policy-based deployment validation and control for images deployed to Google Kubernetes Engine (GKE), Anthos Service Mesh, Anthos Clusters, and Cloud Run.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference>
module Gogol.BinaryAuthorization
    (
    -- * Configuration
      binaryAuthorizationService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** binaryauthorization.projects.attestors.create
    , BinaryAuthorizationProjectsAttestorsCreateResource
    , BinaryAuthorizationProjectsAttestorsCreate (..)
    , newBinaryAuthorizationProjectsAttestorsCreate

    -- ** binaryauthorization.projects.attestors.delete
    , BinaryAuthorizationProjectsAttestorsDeleteResource
    , BinaryAuthorizationProjectsAttestorsDelete (..)
    , newBinaryAuthorizationProjectsAttestorsDelete

    -- ** binaryauthorization.projects.attestors.get
    , BinaryAuthorizationProjectsAttestorsGetResource
    , BinaryAuthorizationProjectsAttestorsGet (..)
    , newBinaryAuthorizationProjectsAttestorsGet

    -- ** binaryauthorization.projects.attestors.getIamPolicy
    , BinaryAuthorizationProjectsAttestorsGetIamPolicyResource
    , BinaryAuthorizationProjectsAttestorsGetIamPolicy (..)
    , newBinaryAuthorizationProjectsAttestorsGetIamPolicy

    -- ** binaryauthorization.projects.attestors.list
    , BinaryAuthorizationProjectsAttestorsListResource
    , BinaryAuthorizationProjectsAttestorsList (..)
    , newBinaryAuthorizationProjectsAttestorsList

    -- ** binaryauthorization.projects.attestors.setIamPolicy
    , BinaryAuthorizationProjectsAttestorsSetIamPolicyResource
    , BinaryAuthorizationProjectsAttestorsSetIamPolicy (..)
    , newBinaryAuthorizationProjectsAttestorsSetIamPolicy

    -- ** binaryauthorization.projects.attestors.testIamPermissions
    , BinaryAuthorizationProjectsAttestorsTestIamPermissionsResource
    , BinaryAuthorizationProjectsAttestorsTestIamPermissions (..)
    , newBinaryAuthorizationProjectsAttestorsTestIamPermissions

    -- ** binaryauthorization.projects.attestors.update
    , BinaryAuthorizationProjectsAttestorsUpdateResource
    , BinaryAuthorizationProjectsAttestorsUpdate (..)
    , newBinaryAuthorizationProjectsAttestorsUpdate

    -- ** binaryauthorization.projects.attestors.validateAttestationOccurrence
    , BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrenceResource
    , BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence (..)
    , newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence

    -- ** binaryauthorization.projects.getPolicy
    , BinaryAuthorizationProjectsGetPolicyResource
    , BinaryAuthorizationProjectsGetPolicy (..)
    , newBinaryAuthorizationProjectsGetPolicy

    -- ** binaryauthorization.projects.platforms.gke.policies.evaluate
    , BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluateResource
    , BinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate (..)
    , newBinaryAuthorizationProjectsPlatformsGkePoliciesEvaluate

    -- ** binaryauthorization.projects.platforms.policies.create
    , BinaryAuthorizationProjectsPlatformsPoliciesCreateResource
    , BinaryAuthorizationProjectsPlatformsPoliciesCreate (..)
    , newBinaryAuthorizationProjectsPlatformsPoliciesCreate

    -- ** binaryauthorization.projects.platforms.policies.delete
    , BinaryAuthorizationProjectsPlatformsPoliciesDeleteResource
    , BinaryAuthorizationProjectsPlatformsPoliciesDelete (..)
    , newBinaryAuthorizationProjectsPlatformsPoliciesDelete

    -- ** binaryauthorization.projects.platforms.policies.get
    , BinaryAuthorizationProjectsPlatformsPoliciesGetResource
    , BinaryAuthorizationProjectsPlatformsPoliciesGet (..)
    , newBinaryAuthorizationProjectsPlatformsPoliciesGet

    -- ** binaryauthorization.projects.platforms.policies.list
    , BinaryAuthorizationProjectsPlatformsPoliciesListResource
    , BinaryAuthorizationProjectsPlatformsPoliciesList (..)
    , newBinaryAuthorizationProjectsPlatformsPoliciesList

    -- ** binaryauthorization.projects.platforms.policies.replacePlatformPolicy
    , BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicyResource
    , BinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy (..)
    , newBinaryAuthorizationProjectsPlatformsPoliciesReplacePlatformPolicy

    -- ** binaryauthorization.projects.policy.getIamPolicy
    , BinaryAuthorizationProjectsPolicyGetIamPolicyResource
    , BinaryAuthorizationProjectsPolicyGetIamPolicy (..)
    , newBinaryAuthorizationProjectsPolicyGetIamPolicy

    -- ** binaryauthorization.projects.policy.setIamPolicy
    , BinaryAuthorizationProjectsPolicySetIamPolicyResource
    , BinaryAuthorizationProjectsPolicySetIamPolicy (..)
    , newBinaryAuthorizationProjectsPolicySetIamPolicy

    -- ** binaryauthorization.projects.policy.testIamPermissions
    , BinaryAuthorizationProjectsPolicyTestIamPermissionsResource
    , BinaryAuthorizationProjectsPolicyTestIamPermissions (..)
    , newBinaryAuthorizationProjectsPolicyTestIamPermissions

    -- ** binaryauthorization.projects.updatePolicy
    , BinaryAuthorizationProjectsUpdatePolicyResource
    , BinaryAuthorizationProjectsUpdatePolicy (..)
    , newBinaryAuthorizationProjectsUpdatePolicy

    -- ** binaryauthorization.systempolicy.getPolicy
    , BinaryAuthorizationSystempolicyGetPolicyResource
    , BinaryAuthorizationSystempolicyGetPolicy (..)
    , newBinaryAuthorizationSystempolicyGetPolicy

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

import Gogol.BinaryAuthorization.Projects.Attestors.Create
import Gogol.BinaryAuthorization.Projects.Attestors.Delete
import Gogol.BinaryAuthorization.Projects.Attestors.Get
import Gogol.BinaryAuthorization.Projects.Attestors.GetIamPolicy
import Gogol.BinaryAuthorization.Projects.Attestors.List
import Gogol.BinaryAuthorization.Projects.Attestors.SetIamPolicy
import Gogol.BinaryAuthorization.Projects.Attestors.TestIamPermissions
import Gogol.BinaryAuthorization.Projects.Attestors.Update
import Gogol.BinaryAuthorization.Projects.Attestors.ValidateAttestationOccurrence
import Gogol.BinaryAuthorization.Projects.GetPolicy
import Gogol.BinaryAuthorization.Projects.Platforms.Gke.Policies.Evaluate
import Gogol.BinaryAuthorization.Projects.Platforms.Policies.Create
import Gogol.BinaryAuthorization.Projects.Platforms.Policies.Delete
import Gogol.BinaryAuthorization.Projects.Platforms.Policies.Get
import Gogol.BinaryAuthorization.Projects.Platforms.Policies.List
import Gogol.BinaryAuthorization.Projects.Platforms.Policies.ReplacePlatformPolicy
import Gogol.BinaryAuthorization.Projects.Policy.GetIamPolicy
import Gogol.BinaryAuthorization.Projects.Policy.SetIamPolicy
import Gogol.BinaryAuthorization.Projects.Policy.TestIamPermissions
import Gogol.BinaryAuthorization.Projects.UpdatePolicy
import Gogol.BinaryAuthorization.Systempolicy.GetPolicy
import Gogol.BinaryAuthorization.Types
