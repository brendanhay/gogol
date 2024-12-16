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
-- Module      : Gogol.BinaryAuthorization.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BinaryAuthorization.Internal.Product
  (

    -- * AdmissionRule
    AdmissionRule (..),
    newAdmissionRule,

    -- * AdmissionWhitelistPattern
    AdmissionWhitelistPattern (..),
    newAdmissionWhitelistPattern,

    -- * AllowlistResult
    AllowlistResult (..),
    newAllowlistResult,

    -- * AttestationAuthenticator
    AttestationAuthenticator (..),
    newAttestationAuthenticator,

    -- * AttestationOccurrence
    AttestationOccurrence (..),
    newAttestationOccurrence,

    -- * AttestationSource
    AttestationSource (..),
    newAttestationSource,

    -- * Attestor
    Attestor (..),
    newAttestor,

    -- * AttestorPublicKey
    AttestorPublicKey (..),
    newAttestorPublicKey,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Check
    Check (..),
    newCheck,

    -- * CheckResult
    CheckResult (..),
    newCheckResult,

    -- * CheckResults
    CheckResults (..),
    newCheckResults,

    -- * CheckSet
    CheckSet (..),
    newCheckSet,

    -- * CheckSetResult
    CheckSetResult (..),
    newCheckSetResult,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EvaluateGkePolicyRequest
    EvaluateGkePolicyRequest (..),
    newEvaluateGkePolicyRequest,

    -- * EvaluateGkePolicyRequest_Resource
    EvaluateGkePolicyRequest_Resource (..),
    newEvaluateGkePolicyRequest_Resource,

    -- * EvaluateGkePolicyResponse
    EvaluateGkePolicyResponse (..),
    newEvaluateGkePolicyResponse,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,

    -- * Expr
    Expr (..),
    newExpr,

    -- * GkePolicy
    GkePolicy (..),
    newGkePolicy,

    -- * IamPolicy
    IamPolicy (..),
    newIamPolicy,

    -- * ImageAllowlist
    ImageAllowlist (..),
    newImageAllowlist,

    -- * ImageFreshnessCheck
    ImageFreshnessCheck (..),
    newImageFreshnessCheck,

    -- * ImageResult
    ImageResult (..),
    newImageResult,

    -- * Jwt
    Jwt (..),
    newJwt,

    -- * ListAttestorsResponse
    ListAttestorsResponse (..),
    newListAttestorsResponse,

    -- * ListPlatformPoliciesResponse
    ListPlatformPoliciesResponse (..),
    newListPlatformPoliciesResponse,

    -- * PkixPublicKey
    PkixPublicKey (..),
    newPkixPublicKey,

    -- * PkixPublicKeySet
    PkixPublicKeySet (..),
    newPkixPublicKeySet,

    -- * PlatformPolicy
    PlatformPolicy (..),
    newPlatformPolicy,

    -- * PodResult
    PodResult (..),
    newPodResult,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Policy_ClusterAdmissionRules
    Policy_ClusterAdmissionRules (..),
    newPolicy_ClusterAdmissionRules,

    -- * Policy_IstioServiceIdentityAdmissionRules
    Policy_IstioServiceIdentityAdmissionRules (..),
    newPolicy_IstioServiceIdentityAdmissionRules,

    -- * Policy_KubernetesNamespaceAdmissionRules
    Policy_KubernetesNamespaceAdmissionRules (..),
    newPolicy_KubernetesNamespaceAdmissionRules,

    -- * Policy_KubernetesServiceAccountAdmissionRules
    Policy_KubernetesServiceAccountAdmissionRules (..),
    newPolicy_KubernetesServiceAccountAdmissionRules,

    -- * Scope
    Scope (..),
    newScope,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Signature
    Signature (..),
    newSignature,

    -- * SigstoreAuthority
    SigstoreAuthority (..),
    newSigstoreAuthority,

    -- * SigstorePublicKey
    SigstorePublicKey (..),
    newSigstorePublicKey,

    -- * SigstorePublicKeySet
    SigstorePublicKeySet (..),
    newSigstorePublicKeySet,

    -- * SigstoreSignatureCheck
    SigstoreSignatureCheck (..),
    newSigstoreSignatureCheck,

    -- * SimpleSigningAttestationCheck
    SimpleSigningAttestationCheck (..),
    newSimpleSigningAttestationCheck,

    -- * SlsaCheck
    SlsaCheck (..),
    newSlsaCheck,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TrustedDirectoryCheck
    TrustedDirectoryCheck (..),
    newTrustedDirectoryCheck,

    -- * UserOwnedGrafeasNote
    UserOwnedGrafeasNote (..),
    newUserOwnedGrafeasNote,

    -- * ValidateAttestationOccurrenceRequest
    ValidateAttestationOccurrenceRequest (..),
    newValidateAttestationOccurrenceRequest,

    -- * ValidateAttestationOccurrenceResponse
    ValidateAttestationOccurrenceResponse (..),
    newValidateAttestationOccurrenceResponse,

    -- * VerificationRule
    VerificationRule (..),
    newVerificationRule,

    -- * VulnerabilityCheck
    VulnerabilityCheck (..),
    newVulnerabilityCheck,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.BinaryAuthorization.Internal.Sum

-- | An admission rule specifies either that all container images used in a pod creation request must be attested to by one or more attestors, that all pod creations will be allowed, or that all pod creations will be denied. Images matching an admission allowlist pattern are exempted from admission rules and will never block a pod creation.
--
-- /See:/ 'newAdmissionRule' smart constructor.
data AdmissionRule = AdmissionRule
    {
      -- | Required. The action when a pod creation is denied by the admission rule.
      enforcementMode :: (Core.Maybe AdmissionRule_EnforcementMode)
      -- | Required. How this admission rule will be evaluated.
    , evaluationMode :: (Core.Maybe AdmissionRule_EvaluationMode)
      -- | 
    , requireAttestationsBy :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdmissionRule' with the minimum fields required to make a request.
newAdmissionRule 
    ::  AdmissionRule
newAdmissionRule =
  AdmissionRule
    { enforcementMode = Core.Nothing
    , evaluationMode = Core.Nothing
    , requireAttestationsBy = Core.Nothing
    }

instance Core.FromJSON AdmissionRule where
        parseJSON
          = Core.withObject "AdmissionRule"
              (\ o ->
                 AdmissionRule Core.<$>
                   (o Core..:? "enforcementMode") Core.<*>
                     (o Core..:? "evaluationMode")
                     Core.<*> (o Core..:? "requireAttestationsBy"))

instance Core.ToJSON AdmissionRule where
        toJSON AdmissionRule{..}
          = Core.object
              (Core.catMaybes
                 [("enforcementMode" Core..=) Core.<$>
                    enforcementMode,
                  ("evaluationMode" Core..=) Core.<$> evaluationMode,
                  ("requireAttestationsBy" Core..=) Core.<$>
                    requireAttestationsBy])


-- | An admission allowlist pattern exempts images from checks by admission rules.
--
-- /See:/ 'newAdmissionWhitelistPattern' smart constructor.
newtype AdmissionWhitelistPattern = AdmissionWhitelistPattern
    {
      -- | An image name pattern to allowlist, in the form @registry\/path\/to\/image@. This supports a trailing @*@ wildcard, but this is allowed only in text after the @registry\/@ part. This also supports a trailing @**@ wildcard which matches subdirectories of a given entry.
      namePattern :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdmissionWhitelistPattern' with the minimum fields required to make a request.
newAdmissionWhitelistPattern 
    ::  AdmissionWhitelistPattern
newAdmissionWhitelistPattern =
  AdmissionWhitelistPattern {namePattern = Core.Nothing}

instance Core.FromJSON AdmissionWhitelistPattern
         where
        parseJSON
          = Core.withObject "AdmissionWhitelistPattern"
              (\ o ->
                 AdmissionWhitelistPattern Core.<$>
                   (o Core..:? "namePattern"))

instance Core.ToJSON AdmissionWhitelistPattern where
        toJSON AdmissionWhitelistPattern{..}
          = Core.object
              (Core.catMaybes
                 [("namePattern" Core..=) Core.<$> namePattern])


-- | Result of evaluating an image name allowlist.
--
-- /See:/ 'newAllowlistResult' smart constructor.
newtype AllowlistResult = AllowlistResult
    {
      -- | The allowlist pattern that the image matched.
      matchedPattern :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AllowlistResult' with the minimum fields required to make a request.
newAllowlistResult 
    ::  AllowlistResult
newAllowlistResult = AllowlistResult {matchedPattern = Core.Nothing}

instance Core.FromJSON AllowlistResult where
        parseJSON
          = Core.withObject "AllowlistResult"
              (\ o ->
                 AllowlistResult Core.<$>
                   (o Core..:? "matchedPattern"))

instance Core.ToJSON AllowlistResult where
        toJSON AllowlistResult{..}
          = Core.object
              (Core.catMaybes
                 [("matchedPattern" Core..=) Core.<$> matchedPattern])


-- | An attestation authenticator that will be used to verify attestations. Typically this is just a set of public keys. Conceptually, an authenticator can be treated as always returning either \"authenticated\" or \"not authenticated\" when presented with a signed attestation (almost always assumed to be a <https://github.com/secure-systems-lab/dsse DSSE> attestation). The details of how an authenticator makes this decision are specific to the type of \'authenticator\' that this message wraps.
--
-- /See:/ 'newAttestationAuthenticator' smart constructor.
data AttestationAuthenticator = AttestationAuthenticator
    {
      -- | Optional. A user-provided name for this @AttestationAuthenticator@. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
      displayName :: (Core.Maybe Core.Text)
      -- | Optional. A set of raw PKIX SubjectPublicKeyInfo format public keys. If any public key in the set validates the attestation signature, then the signature is considered authenticated (i.e. any one key is sufficient to authenticate).
    , pkixPublicKeySet :: (Core.Maybe PkixPublicKeySet)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestationAuthenticator' with the minimum fields required to make a request.
newAttestationAuthenticator 
    ::  AttestationAuthenticator
newAttestationAuthenticator =
  AttestationAuthenticator
    {displayName = Core.Nothing, pkixPublicKeySet = Core.Nothing}

instance Core.FromJSON AttestationAuthenticator where
        parseJSON
          = Core.withObject "AttestationAuthenticator"
              (\ o ->
                 AttestationAuthenticator Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "pkixPublicKeySet"))

instance Core.ToJSON AttestationAuthenticator where
        toJSON AttestationAuthenticator{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("pkixPublicKeySet" Core..=) Core.<$>
                    pkixPublicKeySet])


-- | Occurrence that represents a single \"attestation\". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.
--
-- /See:/ 'newAttestationOccurrence' smart constructor.
data AttestationOccurrence = AttestationOccurrence
    {
      -- | One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the @serialized_payload@ field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the @serialized_payload@ SHOULD be left empty. Each JWT SHOULD encode a claim specific to the @resource_uri@ of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
      jwts :: (Core.Maybe [Jwt])
      -- | Required. The serialized payload that is verified by one or more @signatures@.
    , serializedPayload :: (Core.Maybe Core.Base64)
      -- | One or more signatures over @serialized_payload@. Verifier implementations should consider this attestation message verified if at least one @signature@ verifies @serialized_payload@. See @Signature@ in common.proto for more details on signature structure and verification.
    , signatures :: (Core.Maybe [Signature])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestationOccurrence' with the minimum fields required to make a request.
newAttestationOccurrence 
    ::  AttestationOccurrence
newAttestationOccurrence =
  AttestationOccurrence
    { jwts = Core.Nothing
    , serializedPayload = Core.Nothing
    , signatures = Core.Nothing
    }

instance Core.FromJSON AttestationOccurrence where
        parseJSON
          = Core.withObject "AttestationOccurrence"
              (\ o ->
                 AttestationOccurrence Core.<$>
                   (o Core..:? "jwts") Core.<*>
                     (o Core..:? "serializedPayload")
                     Core.<*> (o Core..:? "signatures"))

instance Core.ToJSON AttestationOccurrence where
        toJSON AttestationOccurrence{..}
          = Core.object
              (Core.catMaybes
                 [("jwts" Core..=) Core.<$> jwts,
                  ("serializedPayload" Core..=) Core.<$>
                    serializedPayload,
                  ("signatures" Core..=) Core.<$> signatures])


-- | Specifies the locations for fetching the provenance attestations.
--
-- /See:/ 'newAttestationSource' smart constructor.
newtype AttestationSource = AttestationSource
    {
      -- | The IDs of the Google Cloud projects that store the SLSA attestations as Container Analysis Occurrences, in the format @projects\/[PROJECT_ID]@. Maximum number of @container_analysis_attestation_projects@ allowed in each @AttestationSource@ is 10.
      containerAnalysisAttestationProjects :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestationSource' with the minimum fields required to make a request.
newAttestationSource 
    ::  AttestationSource
newAttestationSource =
  AttestationSource {containerAnalysisAttestationProjects = Core.Nothing}

instance Core.FromJSON AttestationSource where
        parseJSON
          = Core.withObject "AttestationSource"
              (\ o ->
                 AttestationSource Core.<$>
                   (o Core..:? "containerAnalysisAttestationProjects"))

instance Core.ToJSON AttestationSource where
        toJSON AttestationSource{..}
          = Core.object
              (Core.catMaybes
                 [("containerAnalysisAttestationProjects" Core..=)
                    Core.<$> containerAnalysisAttestationProjects])


-- | An attestor that attests to container image artifacts. An existing attestor cannot be modified except where indicated.
--
-- /See:/ 'newAttestor' smart constructor.
data Attestor = Attestor
    {
      -- | Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
      description :: (Core.Maybe Core.Text)
      -- | Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https:\/\/google.aip.dev\/154.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The resource name, in the format: @projects\/*\/attestors\/*@. This field may not be updated.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Time when the attestor was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | This specifies how an attestation will be read, and how it will be used during policy enforcement.
    , userOwnedGrafeasNote :: (Core.Maybe UserOwnedGrafeasNote)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attestor' with the minimum fields required to make a request.
newAttestor 
    ::  Attestor
newAttestor =
  Attestor
    { description = Core.Nothing
    , etag = Core.Nothing
    , name = Core.Nothing
    , updateTime = Core.Nothing
    , userOwnedGrafeasNote = Core.Nothing
    }

instance Core.FromJSON Attestor where
        parseJSON
          = Core.withObject "Attestor"
              (\ o ->
                 Attestor Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "userOwnedGrafeasNote"))

instance Core.ToJSON Attestor where
        toJSON Attestor{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("name" Core..=) Core.<$> name,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("userOwnedGrafeasNote" Core..=) Core.<$>
                    userOwnedGrafeasNote])


-- | An attestor public key that will be used to verify attestations signed by this attestor.
--
-- /See:/ 'newAttestorPublicKey' smart constructor.
data AttestorPublicKey = AttestorPublicKey
    {
      -- | ASCII-armored representation of a PGP public key, as the entire output by the command @gpg --export --armor foo\@example.com@ (either LF or CRLF line endings). When using this field, @id@ should be left blank. The Binary Authorization API handlers will calculate the ID and fill it in automatically. Binary Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If @id@ is provided by the caller, it will be overwritten by the API-calculated ID.
      asciiArmoredPgpPublicKey :: (Core.Maybe Core.Text)
      -- | Optional. A descriptive comment. This field may be updated.
    , comment :: (Core.Maybe Core.Text)
      -- | The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on @public_key@ cases below for details.
    , id :: (Core.Maybe Core.Text)
      -- | A raw PKIX SubjectPublicKeyInfo format public key. NOTE: @id@ may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If @id@ is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
    , pkixPublicKey :: (Core.Maybe PkixPublicKey)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttestorPublicKey' with the minimum fields required to make a request.
newAttestorPublicKey 
    ::  AttestorPublicKey
newAttestorPublicKey =
  AttestorPublicKey
    { asciiArmoredPgpPublicKey = Core.Nothing
    , comment = Core.Nothing
    , id = Core.Nothing
    , pkixPublicKey = Core.Nothing
    }

instance Core.FromJSON AttestorPublicKey where
        parseJSON
          = Core.withObject "AttestorPublicKey"
              (\ o ->
                 AttestorPublicKey Core.<$>
                   (o Core..:? "asciiArmoredPgpPublicKey") Core.<*>
                     (o Core..:? "comment")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "pkixPublicKey"))

instance Core.ToJSON AttestorPublicKey where
        toJSON AttestorPublicKey{..}
          = Core.object
              (Core.catMaybes
                 [("asciiArmoredPgpPublicKey" Core..=) Core.<$>
                    asciiArmoredPgpPublicKey,
                  ("comment" Core..=) Core.<$> comment,
                  ("id" Core..=) Core.<$> id,
                  ("pkixPublicKey" Core..=) Core.<$> pkixPublicKey])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
      -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
      -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
      -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding 
    ::  Binding
newBinding =
  Binding
    {condition = Core.Nothing, members = Core.Nothing, role' = Core.Nothing}

instance Core.FromJSON Binding where
        parseJSON
          = Core.withObject "Binding"
              (\ o ->
                 Binding Core.<$>
                   (o Core..:? "condition") Core.<*>
                     (o Core..:? "members")
                     Core.<*> (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | A single check to perform against a Pod. Checks are grouped into @CheckSet@ objects, which are defined by the top-level policy.
--
-- /See:/ 'newCheck' smart constructor.
data Check = Check
    {
      -- | Optional. A special-case check that always denies. Note that this still only applies when the scope of the @CheckSet@ applies and the image isn\'t exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to \"deny\".
      alwaysDeny :: (Core.Maybe Core.Bool)
      -- | Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
    , displayName :: (Core.Maybe Core.Text)
      -- | Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
    , imageAllowlist :: (Core.Maybe ImageAllowlist)
      -- | Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
    , imageFreshnessCheck :: (Core.Maybe ImageFreshnessCheck)
      -- | Optional. Require that an image was signed by Cosign with a trusted key. This check requires that both the image and signature are stored in Artifact Registry.
    , sigstoreSignatureCheck :: (Core.Maybe SigstoreSignatureCheck)
      -- | Optional. Require a SimpleSigning-type attestation for every image in the deployment.
    , simpleSigningAttestationCheck :: (Core.Maybe SimpleSigningAttestationCheck)
      -- | Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
    , slsaCheck :: (Core.Maybe SlsaCheck)
      -- | Optional. Require that an image lives in a trusted directory.
    , trustedDirectoryCheck :: (Core.Maybe TrustedDirectoryCheck)
      -- | Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
    , vulnerabilityCheck :: (Core.Maybe VulnerabilityCheck)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Check' with the minimum fields required to make a request.
newCheck 
    ::  Check
newCheck =
  Check
    { alwaysDeny = Core.Nothing
    , displayName = Core.Nothing
    , imageAllowlist = Core.Nothing
    , imageFreshnessCheck = Core.Nothing
    , sigstoreSignatureCheck = Core.Nothing
    , simpleSigningAttestationCheck = Core.Nothing
    , slsaCheck = Core.Nothing
    , trustedDirectoryCheck = Core.Nothing
    , vulnerabilityCheck = Core.Nothing
    }

instance Core.FromJSON Check where
        parseJSON
          = Core.withObject "Check"
              (\ o ->
                 Check Core.<$>
                   (o Core..:? "alwaysDeny") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "imageAllowlist")
                     Core.<*> (o Core..:? "imageFreshnessCheck")
                     Core.<*> (o Core..:? "sigstoreSignatureCheck")
                     Core.<*> (o Core..:? "simpleSigningAttestationCheck")
                     Core.<*> (o Core..:? "slsaCheck")
                     Core.<*> (o Core..:? "trustedDirectoryCheck")
                     Core.<*> (o Core..:? "vulnerabilityCheck"))

instance Core.ToJSON Check where
        toJSON Check{..}
          = Core.object
              (Core.catMaybes
                 [("alwaysDeny" Core..=) Core.<$> alwaysDeny,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("imageAllowlist" Core..=) Core.<$> imageAllowlist,
                  ("imageFreshnessCheck" Core..=) Core.<$>
                    imageFreshnessCheck,
                  ("sigstoreSignatureCheck" Core..=) Core.<$>
                    sigstoreSignatureCheck,
                  ("simpleSigningAttestationCheck" Core..=) Core.<$>
                    simpleSigningAttestationCheck,
                  ("slsaCheck" Core..=) Core.<$> slsaCheck,
                  ("trustedDirectoryCheck" Core..=) Core.<$>
                    trustedDirectoryCheck,
                  ("vulnerabilityCheck" Core..=) Core.<$>
                    vulnerabilityCheck])


-- | Result of evaluating one check.
--
-- /See:/ 'newCheckResult' smart constructor.
data CheckResult = CheckResult
    {
      -- | If the image was exempted by an allow_pattern in the check, contains the pattern that the image name matched.
      allowlistResult :: (Core.Maybe AllowlistResult)
      -- | The name of the check.
    , displayName :: (Core.Maybe Core.Text)
      -- | If a check was evaluated, contains the result of the check.
    , evaluationResult :: (Core.Maybe EvaluationResult)
      -- | Explanation of this check result.
    , explanation :: (Core.Maybe Core.Text)
      -- | The index of the check.
    , index :: (Core.Maybe Core.Int64)
      -- | The type of the check.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckResult' with the minimum fields required to make a request.
newCheckResult 
    ::  CheckResult
newCheckResult =
  CheckResult
    { allowlistResult = Core.Nothing
    , displayName = Core.Nothing
    , evaluationResult = Core.Nothing
    , explanation = Core.Nothing
    , index = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON CheckResult where
        parseJSON
          = Core.withObject "CheckResult"
              (\ o ->
                 CheckResult Core.<$>
                   (o Core..:? "allowlistResult") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "evaluationResult")
                     Core.<*> (o Core..:? "explanation")
                     Core.<*>
                     (o Core..:? "index" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON CheckResult where
        toJSON CheckResult{..}
          = Core.object
              (Core.catMaybes
                 [("allowlistResult" Core..=) Core.<$>
                    allowlistResult,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("evaluationResult" Core..=) Core.<$>
                    evaluationResult,
                  ("explanation" Core..=) Core.<$> explanation,
                  ("index" Core..=) Core.. Core.AsText Core.<$> index,
                  ("type" Core..=) Core.<$> type'])


-- | Result of evaluating one or more checks.
--
-- /See:/ 'newCheckResults' smart constructor.
newtype CheckResults = CheckResults
    {
      -- | Per-check details.
      results :: (Core.Maybe [CheckResult])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckResults' with the minimum fields required to make a request.
newCheckResults 
    ::  CheckResults
newCheckResults = CheckResults {results = Core.Nothing}

instance Core.FromJSON CheckResults where
        parseJSON
          = Core.withObject "CheckResults"
              (\ o -> CheckResults Core.<$> (o Core..:? "results"))

instance Core.ToJSON CheckResults where
        toJSON CheckResults{..}
          = Core.object
              (Core.catMaybes
                 [("results" Core..=) Core.<$> results])


-- | A conjunction of policy checks, scoped to a particular namespace or Kubernetes service account. In order for evaluation of a @CheckSet@ to return \"allowed\" for a given image in a given Pod, one of the following conditions must be satisfied: * The image is explicitly exempted by an entry in @image_allowlist@, OR * ALL of the @checks@ evaluate to \"allowed\".
--
-- /See:/ 'newCheckSet' smart constructor.
data CheckSet = CheckSet
    {
      -- | Optional. The checks to apply. The ultimate result of evaluating the check set will be \"allow\" if and only if every check in @checks@ evaluates to \"allow\". If @checks@ is empty, the default behavior is \"always allow\".
      checks :: (Core.Maybe [Check])
      -- | Optional. A user-provided name for this @CheckSet@. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
    , displayName :: (Core.Maybe Core.Text)
      -- | Optional. Images exempted from this @CheckSet@. If any of the patterns match the image being evaluated, no checks in the @CheckSet@ will be evaluated.
    , imageAllowlist :: (Core.Maybe ImageAllowlist)
      -- | Optional. The scope to which this @CheckSet@ applies. If unset or an empty string (the default), applies to all namespaces and service accounts. See the @Scope@ message documentation for details on scoping rules.
    , scope :: (Core.Maybe Scope)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckSet' with the minimum fields required to make a request.
newCheckSet 
    ::  CheckSet
newCheckSet =
  CheckSet
    { checks = Core.Nothing
    , displayName = Core.Nothing
    , imageAllowlist = Core.Nothing
    , scope = Core.Nothing
    }

instance Core.FromJSON CheckSet where
        parseJSON
          = Core.withObject "CheckSet"
              (\ o ->
                 CheckSet Core.<$>
                   (o Core..:? "checks") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "imageAllowlist")
                     Core.<*> (o Core..:? "scope"))

instance Core.ToJSON CheckSet where
        toJSON CheckSet{..}
          = Core.object
              (Core.catMaybes
                 [("checks" Core..=) Core.<$> checks,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("imageAllowlist" Core..=) Core.<$> imageAllowlist,
                  ("scope" Core..=) Core.<$> scope])


-- | Result of evaluating one check set.
--
-- /See:/ 'newCheckSetResult' smart constructor.
data CheckSetResult = CheckSetResult
    {
      -- | If the image was exempted by an allow_pattern in the check set, contains the pattern that the image name matched.
      allowlistResult :: (Core.Maybe AllowlistResult)
      -- | If checks were evaluated, contains the results of evaluating each check.
    , checkResults :: (Core.Maybe CheckResults)
      -- | The name of the check set.
    , displayName :: (Core.Maybe Core.Text)
      -- | Explanation of this check set result. Only populated if no checks were evaluated.
    , explanation :: (Core.Maybe Core.Text)
      -- | The index of the check set.
    , index :: (Core.Maybe Core.Int64)
      -- | The scope of the check set.
    , scope :: (Core.Maybe Scope)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckSetResult' with the minimum fields required to make a request.
newCheckSetResult 
    ::  CheckSetResult
newCheckSetResult =
  CheckSetResult
    { allowlistResult = Core.Nothing
    , checkResults = Core.Nothing
    , displayName = Core.Nothing
    , explanation = Core.Nothing
    , index = Core.Nothing
    , scope = Core.Nothing
    }

instance Core.FromJSON CheckSetResult where
        parseJSON
          = Core.withObject "CheckSetResult"
              (\ o ->
                 CheckSetResult Core.<$>
                   (o Core..:? "allowlistResult") Core.<*>
                     (o Core..:? "checkResults")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "explanation")
                     Core.<*>
                     (o Core..:? "index" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "scope"))

instance Core.ToJSON CheckSetResult where
        toJSON CheckSetResult{..}
          = Core.object
              (Core.catMaybes
                 [("allowlistResult" Core..=) Core.<$>
                    allowlistResult,
                  ("checkResults" Core..=) Core.<$> checkResults,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("explanation" Core..=) Core.<$> explanation,
                  ("index" Core..=) Core.. Core.AsText Core.<$> index,
                  ("scope" Core..=) Core.<$> scope])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Request message for PlatformPolicyEvaluationService.EvaluateGkePolicy.
--
-- /See:/ 'newEvaluateGkePolicyRequest' smart constructor.
newtype EvaluateGkePolicyRequest = EvaluateGkePolicyRequest
    {
      -- | Required. JSON or YAML blob representing a Kubernetes resource.
      resource :: (Core.Maybe EvaluateGkePolicyRequest_Resource)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateGkePolicyRequest' with the minimum fields required to make a request.
newEvaluateGkePolicyRequest 
    ::  EvaluateGkePolicyRequest
newEvaluateGkePolicyRequest = EvaluateGkePolicyRequest {resource = Core.Nothing}

instance Core.FromJSON EvaluateGkePolicyRequest where
        parseJSON
          = Core.withObject "EvaluateGkePolicyRequest"
              (\ o ->
                 EvaluateGkePolicyRequest Core.<$>
                   (o Core..:? "resource"))

instance Core.ToJSON EvaluateGkePolicyRequest where
        toJSON EvaluateGkePolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("resource" Core..=) Core.<$> resource])


-- | Required. JSON or YAML blob representing a Kubernetes resource.
--
-- /See:/ 'newEvaluateGkePolicyRequest_Resource' smart constructor.
newtype EvaluateGkePolicyRequest_Resource = EvaluateGkePolicyRequest_Resource
    {
      -- | Properties of the object.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateGkePolicyRequest_Resource' with the minimum fields required to make a request.
newEvaluateGkePolicyRequest_Resource 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. See 'additional'.
    -> EvaluateGkePolicyRequest_Resource
newEvaluateGkePolicyRequest_Resource additional =
  EvaluateGkePolicyRequest_Resource {additional = additional}

instance Core.FromJSON
           EvaluateGkePolicyRequest_Resource
         where
        parseJSON
          = Core.withObject "EvaluateGkePolicyRequest_Resource"
              (\ o ->
                 EvaluateGkePolicyRequest_Resource Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           EvaluateGkePolicyRequest_Resource
         where
        toJSON EvaluateGkePolicyRequest_Resource{..}
          = Core.toJSON additional


-- | Response message for PlatformPolicyEvaluationService.EvaluateGkePolicy.
--
-- /See:/ 'newEvaluateGkePolicyResponse' smart constructor.
data EvaluateGkePolicyResponse = EvaluateGkePolicyResponse
    {
      -- | Evaluation result for each Pod contained in the request.
      results :: (Core.Maybe [PodResult])
      -- | The result of evaluating all Pods in the request.
    , verdict :: (Core.Maybe EvaluateGkePolicyResponse_Verdict)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluateGkePolicyResponse' with the minimum fields required to make a request.
newEvaluateGkePolicyResponse 
    ::  EvaluateGkePolicyResponse
newEvaluateGkePolicyResponse =
  EvaluateGkePolicyResponse {results = Core.Nothing, verdict = Core.Nothing}

instance Core.FromJSON EvaluateGkePolicyResponse
         where
        parseJSON
          = Core.withObject "EvaluateGkePolicyResponse"
              (\ o ->
                 EvaluateGkePolicyResponse Core.<$>
                   (o Core..:? "results") Core.<*>
                     (o Core..:? "verdict"))

instance Core.ToJSON EvaluateGkePolicyResponse where
        toJSON EvaluateGkePolicyResponse{..}
          = Core.object
              (Core.catMaybes
                 [("results" Core..=) Core.<$> results,
                  ("verdict" Core..=) Core.<$> verdict])


-- | Result of evaluating one check.
--
-- /See:/ 'newEvaluationResult' smart constructor.
newtype EvaluationResult = EvaluationResult
    {
      -- | The result of evaluating this check.
      verdict :: (Core.Maybe EvaluationResult_Verdict)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluationResult' with the minimum fields required to make a request.
newEvaluationResult 
    ::  EvaluationResult
newEvaluationResult = EvaluationResult {verdict = Core.Nothing}

instance Core.FromJSON EvaluationResult where
        parseJSON
          = Core.withObject "EvaluationResult"
              (\ o ->
                 EvaluationResult Core.<$> (o Core..:? "verdict"))

instance Core.ToJSON EvaluationResult where
        toJSON EvaluationResult{..}
          = Core.object
              (Core.catMaybes
                 [("verdict" Core..=) Core.<$> verdict])


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr 
    ::  Expr
newExpr =
  Expr
    { description = Core.Nothing
    , expression = Core.Nothing
    , location = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Expr where
        parseJSON
          = Core.withObject "Expr"
              (\ o ->
                 Expr Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Expr where
        toJSON Expr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | A Binary Authorization policy for a GKE cluster. This is one type of policy that can occur as a @PlatformPolicy@.
--
-- /See:/ 'newGkePolicy' smart constructor.
data GkePolicy = GkePolicy
    {
      -- | Optional. The @CheckSet@ objects to apply, scoped by namespace or namespace and service account. Exactly one @CheckSet@ will be evaluated for a given Pod (unless the list is empty, in which case the behavior is \"always allow\"). If multiple @CheckSet@ objects have scopes that match the namespace and service account of the Pod being evaluated, only the @CheckSet@ with the MOST SPECIFIC scope will match. @CheckSet@ objects must be listed in order of decreasing specificity, i.e. if a scope matches a given service account (which must include the namespace), it must come before a @CheckSet@ with a scope matching just that namespace. This property is enforced by server-side validation. The purpose of this restriction is to ensure that if more than one @CheckSet@ matches a given Pod, the @CheckSet@ that will be evaluated will always be the first in the list to match (because if any other matches, it must be less specific). If @check_sets@ is empty, the default behavior is to allow all images. If @check_sets@ is
      -- non-empty, the last @check_sets@ entry must always be a @CheckSet@ with no scope set, i.e. a catchall to handle any situation not caught by the preceding @CheckSet@ objects.
      checkSets :: (Core.Maybe [CheckSet])
      -- | Optional. Images exempted from this policy. If any of the patterns match the image being evaluated, the rest of the policy will not be evaluated.
    , imageAllowlist :: (Core.Maybe ImageAllowlist)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GkePolicy' with the minimum fields required to make a request.
newGkePolicy 
    ::  GkePolicy
newGkePolicy =
  GkePolicy {checkSets = Core.Nothing, imageAllowlist = Core.Nothing}

instance Core.FromJSON GkePolicy where
        parseJSON
          = Core.withObject "GkePolicy"
              (\ o ->
                 GkePolicy Core.<$>
                   (o Core..:? "checkSets") Core.<*>
                     (o Core..:? "imageAllowlist"))

instance Core.ToJSON GkePolicy where
        toJSON GkePolicy{..}
          = Core.object
              (Core.catMaybes
                 [("checkSets" Core..=) Core.<$> checkSets,
                  ("imageAllowlist" Core..=) Core.<$> imageAllowlist])


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newIamPolicy' smart constructor.
data IamPolicy = IamPolicy
    {
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
      bindings :: (Core.Maybe [Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IamPolicy' with the minimum fields required to make a request.
newIamPolicy 
    ::  IamPolicy
newIamPolicy =
  IamPolicy
    {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON IamPolicy where
        parseJSON
          = Core.withObject "IamPolicy"
              (\ o ->
                 IamPolicy Core.<$>
                   (o Core..:? "bindings") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON IamPolicy where
        toJSON IamPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Images that are exempted from normal checks based on name pattern only.
--
-- /See:/ 'newImageAllowlist' smart constructor.
newtype ImageAllowlist = ImageAllowlist
    {
      -- | Required. A disjunction of image patterns to allow. If any of these patterns match, then the image is considered exempted by this allowlist.
      allowPattern :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageAllowlist' with the minimum fields required to make a request.
newImageAllowlist 
    ::  ImageAllowlist
newImageAllowlist = ImageAllowlist {allowPattern = Core.Nothing}

instance Core.FromJSON ImageAllowlist where
        parseJSON
          = Core.withObject "ImageAllowlist"
              (\ o ->
                 ImageAllowlist Core.<$> (o Core..:? "allowPattern"))

instance Core.ToJSON ImageAllowlist where
        toJSON ImageAllowlist{..}
          = Core.object
              (Core.catMaybes
                 [("allowPattern" Core..=) Core.<$> allowPattern])


-- | An image freshness check, which rejects images that were uploaded before the set number of days ago to the supported repositories.
--
-- /See:/ 'newImageFreshnessCheck' smart constructor.
newtype ImageFreshnessCheck = ImageFreshnessCheck
    {
      -- | Required. The max number of days that is allowed since the image was uploaded. Must be greater than zero.
      maxUploadAgeDays :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageFreshnessCheck' with the minimum fields required to make a request.
newImageFreshnessCheck 
    ::  ImageFreshnessCheck
newImageFreshnessCheck = ImageFreshnessCheck {maxUploadAgeDays = Core.Nothing}

instance Core.FromJSON ImageFreshnessCheck where
        parseJSON
          = Core.withObject "ImageFreshnessCheck"
              (\ o ->
                 ImageFreshnessCheck Core.<$>
                   (o Core..:? "maxUploadAgeDays"))

instance Core.ToJSON ImageFreshnessCheck where
        toJSON ImageFreshnessCheck{..}
          = Core.object
              (Core.catMaybes
                 [("maxUploadAgeDays" Core..=) Core.<$>
                    maxUploadAgeDays])


-- | Result of evaluating one image.
--
-- /See:/ 'newImageResult' smart constructor.
data ImageResult = ImageResult
    {
      -- | If the image was exempted by a top-level allow_pattern, contains the allowlist pattern that the image name matched.
      allowlistResult :: (Core.Maybe AllowlistResult)
      -- | If a check set was evaluated, contains the result of the check set. Empty if there were no check sets.
    , checkSetResult :: (Core.Maybe CheckSetResult)
      -- | Explanation of this image result. Only populated if no check sets were evaluated.
    , explanation :: (Core.Maybe Core.Text)
      -- | Image URI from the request.
    , imageUri :: (Core.Maybe Core.Text)
      -- | The result of evaluating this image.
    , verdict :: (Core.Maybe ImageResult_Verdict)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageResult' with the minimum fields required to make a request.
newImageResult 
    ::  ImageResult
newImageResult =
  ImageResult
    { allowlistResult = Core.Nothing
    , checkSetResult = Core.Nothing
    , explanation = Core.Nothing
    , imageUri = Core.Nothing
    , verdict = Core.Nothing
    }

instance Core.FromJSON ImageResult where
        parseJSON
          = Core.withObject "ImageResult"
              (\ o ->
                 ImageResult Core.<$>
                   (o Core..:? "allowlistResult") Core.<*>
                     (o Core..:? "checkSetResult")
                     Core.<*> (o Core..:? "explanation")
                     Core.<*> (o Core..:? "imageUri")
                     Core.<*> (o Core..:? "verdict"))

instance Core.ToJSON ImageResult where
        toJSON ImageResult{..}
          = Core.object
              (Core.catMaybes
                 [("allowlistResult" Core..=) Core.<$>
                    allowlistResult,
                  ("checkSetResult" Core..=) Core.<$> checkSetResult,
                  ("explanation" Core..=) Core.<$> explanation,
                  ("imageUri" Core..=) Core.<$> imageUri,
                  ("verdict" Core..=) Core.<$> verdict])


--
-- /See:/ 'newJwt' smart constructor.
newtype Jwt = Jwt
    {
      -- | The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https:\/\/tools.ietf.org\/html\/rfc7515.html#section-3.1
      compactJwt :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Jwt' with the minimum fields required to make a request.
newJwt 
    ::  Jwt
newJwt = Jwt {compactJwt = Core.Nothing}

instance Core.FromJSON Jwt where
        parseJSON
          = Core.withObject "Jwt"
              (\ o -> Jwt Core.<$> (o Core..:? "compactJwt"))

instance Core.ToJSON Jwt where
        toJSON Jwt{..}
          = Core.object
              (Core.catMaybes
                 [("compactJwt" Core..=) Core.<$> compactJwt])


-- | Response message for BinauthzManagementServiceV1.ListAttestors.
--
-- /See:/ 'newListAttestorsResponse' smart constructor.
data ListAttestorsResponse = ListAttestorsResponse
    {
      -- | The list of attestors.
      attestors :: (Core.Maybe [Attestor])
      -- | A token to retrieve the next page of results. Pass this value in the ListAttestorsRequest.page_token field in the subsequent call to the @ListAttestors@ method to retrieve the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAttestorsResponse' with the minimum fields required to make a request.
newListAttestorsResponse 
    ::  ListAttestorsResponse
newListAttestorsResponse =
  ListAttestorsResponse {attestors = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAttestorsResponse where
        parseJSON
          = Core.withObject "ListAttestorsResponse"
              (\ o ->
                 ListAttestorsResponse Core.<$>
                   (o Core..:? "attestors") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAttestorsResponse where
        toJSON ListAttestorsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("attestors" Core..=) Core.<$> attestors,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for PlatformPolicyManagementService.ListPlatformPolicies.
--
-- /See:/ 'newListPlatformPoliciesResponse' smart constructor.
data ListPlatformPoliciesResponse = ListPlatformPoliciesResponse
    {
      -- | A token to retrieve the next page of results. Pass this value in the ListPlatformPoliciesRequest.page_token field in the subsequent call to the @ListPlatformPolicies@ method to retrieve the next page of results.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of platform policies.
    , platformPolicies :: (Core.Maybe [PlatformPolicy])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPlatformPoliciesResponse' with the minimum fields required to make a request.
newListPlatformPoliciesResponse 
    ::  ListPlatformPoliciesResponse
newListPlatformPoliciesResponse =
  ListPlatformPoliciesResponse
    {nextPageToken = Core.Nothing, platformPolicies = Core.Nothing}

instance Core.FromJSON ListPlatformPoliciesResponse
         where
        parseJSON
          = Core.withObject "ListPlatformPoliciesResponse"
              (\ o ->
                 ListPlatformPoliciesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "platformPolicies"))

instance Core.ToJSON ListPlatformPoliciesResponse
         where
        toJSON ListPlatformPoliciesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("platformPolicies" Core..=) Core.<$>
                    platformPolicies])


-- | A public key in the PkixPublicKey <https://tools.ietf.org/html/rfc5280#section-4.1.2.7 format>. Public keys of this type are typically textually encoded using the PEM format.
--
-- /See:/ 'newPkixPublicKey' smart constructor.
data PkixPublicKey = PkixPublicKey
    {
      -- | Optional. The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them. The ID must match exactly contents of the @key_id@ field exactly. The ID may be explicitly provided by the caller, but it MUST be a valid RFC3986 URI. If @key_id@ is left blank and this @PkixPublicKey@ is not used in the context of a wrapper (see next paragraph), a default key ID will be computed based on the digest of the DER encoding of the public key. If this @PkixPublicKey@ is used in the context of a wrapper that has its own notion of key ID (e.g. @AttestorPublicKey@), then this field can either match that value exactly, or be left blank, in which case it behaves exactly as though it is equal to that wrapper value.
      keyId :: (Core.Maybe Core.Text)
      -- | A PEM-encoded public key, as described in https:\/\/tools.ietf.org\/html\/rfc7468#section-13
    , publicKeyPem :: (Core.Maybe Core.Text)
      -- | The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in @public_key_pem@ (i.e. this algorithm must match that of the public key).
    , signatureAlgorithm :: (Core.Maybe PkixPublicKey_SignatureAlgorithm)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PkixPublicKey' with the minimum fields required to make a request.
newPkixPublicKey 
    ::  PkixPublicKey
newPkixPublicKey =
  PkixPublicKey
    { keyId = Core.Nothing
    , publicKeyPem = Core.Nothing
    , signatureAlgorithm = Core.Nothing
    }

instance Core.FromJSON PkixPublicKey where
        parseJSON
          = Core.withObject "PkixPublicKey"
              (\ o ->
                 PkixPublicKey Core.<$>
                   (o Core..:? "keyId") Core.<*>
                     (o Core..:? "publicKeyPem")
                     Core.<*> (o Core..:? "signatureAlgorithm"))

instance Core.ToJSON PkixPublicKey where
        toJSON PkixPublicKey{..}
          = Core.object
              (Core.catMaybes
                 [("keyId" Core..=) Core.<$> keyId,
                  ("publicKeyPem" Core..=) Core.<$> publicKeyPem,
                  ("signatureAlgorithm" Core..=) Core.<$>
                    signatureAlgorithm])


-- | A bundle of PKIX public keys, used to authenticate attestation signatures. Generally, a signature is considered to be authenticated by a @PkixPublicKeySet@ if any of the public keys verify it (i.e. it is an \"OR\" of the keys).
--
-- /See:/ 'newPkixPublicKeySet' smart constructor.
newtype PkixPublicKeySet = PkixPublicKeySet
    {
      -- | Required. @pkix_public_keys@ must have at least one entry.
      pkixPublicKeys :: (Core.Maybe [PkixPublicKey])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PkixPublicKeySet' with the minimum fields required to make a request.
newPkixPublicKeySet 
    ::  PkixPublicKeySet
newPkixPublicKeySet = PkixPublicKeySet {pkixPublicKeys = Core.Nothing}

instance Core.FromJSON PkixPublicKeySet where
        parseJSON
          = Core.withObject "PkixPublicKeySet"
              (\ o ->
                 PkixPublicKeySet Core.<$>
                   (o Core..:? "pkixPublicKeys"))

instance Core.ToJSON PkixPublicKeySet where
        toJSON PkixPublicKeySet{..}
          = Core.object
              (Core.catMaybes
                 [("pkixPublicKeys" Core..=) Core.<$> pkixPublicKeys])


-- | A Binary Authorization platform policy for deployments on various platforms.
--
-- /See:/ 'newPlatformPolicy' smart constructor.
data PlatformPolicy = PlatformPolicy
    {
      -- | Optional. A description comment about the policy.
      description :: (Core.Maybe Core.Text)
      -- | Optional. Used to prevent updating the policy when another request has updated it since it was retrieved.
    , etag :: (Core.Maybe Core.Text)
      -- | Optional. GKE platform-specific policy.
    , gkePolicy :: (Core.Maybe GkePolicy)
      -- | Output only. The relative resource name of the Binary Authorization platform policy, in the form of @projects\/*\/platforms\/*\/policies\/*@.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Time when the policy was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlatformPolicy' with the minimum fields required to make a request.
newPlatformPolicy 
    ::  PlatformPolicy
newPlatformPolicy =
  PlatformPolicy
    { description = Core.Nothing
    , etag = Core.Nothing
    , gkePolicy = Core.Nothing
    , name = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON PlatformPolicy where
        parseJSON
          = Core.withObject "PlatformPolicy"
              (\ o ->
                 PlatformPolicy Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "etag")
                     Core.<*> (o Core..:? "gkePolicy")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON PlatformPolicy where
        toJSON PlatformPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("gkePolicy" Core..=) Core.<$> gkePolicy,
                  ("name" Core..=) Core.<$> name,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Result of evaluating the whole GKE policy for one Pod.
--
-- /See:/ 'newPodResult' smart constructor.
data PodResult = PodResult
    {
      -- | Per-image details.
      imageResults :: (Core.Maybe [ImageResult])
      -- | The Kubernetes namespace of the Pod.
    , kubernetesNamespace :: (Core.Maybe Core.Text)
      -- | The Kubernetes service account of the Pod.
    , kubernetesServiceAccount :: (Core.Maybe Core.Text)
      -- | The name of the Pod.
    , podName :: (Core.Maybe Core.Text)
      -- | The result of evaluating this Pod.
    , verdict :: (Core.Maybe PodResult_Verdict)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PodResult' with the minimum fields required to make a request.
newPodResult 
    ::  PodResult
newPodResult =
  PodResult
    { imageResults = Core.Nothing
    , kubernetesNamespace = Core.Nothing
    , kubernetesServiceAccount = Core.Nothing
    , podName = Core.Nothing
    , verdict = Core.Nothing
    }

instance Core.FromJSON PodResult where
        parseJSON
          = Core.withObject "PodResult"
              (\ o ->
                 PodResult Core.<$>
                   (o Core..:? "imageResults") Core.<*>
                     (o Core..:? "kubernetesNamespace")
                     Core.<*> (o Core..:? "kubernetesServiceAccount")
                     Core.<*> (o Core..:? "podName")
                     Core.<*> (o Core..:? "verdict"))

instance Core.ToJSON PodResult where
        toJSON PodResult{..}
          = Core.object
              (Core.catMaybes
                 [("imageResults" Core..=) Core.<$> imageResults,
                  ("kubernetesNamespace" Core..=) Core.<$>
                    kubernetesNamespace,
                  ("kubernetesServiceAccount" Core..=) Core.<$>
                    kubernetesServiceAccount,
                  ("podName" Core..=) Core.<$> podName,
                  ("verdict" Core..=) Core.<$> verdict])


-- | A policy for container image binary authorization.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Optional. Admission policy allowlisting. A matching admission request will always be permitted. This feature is typically used to exclude Google or third-party infrastructure images from Binary Authorization policies.
      admissionWhitelistPatterns :: (Core.Maybe [AdmissionWhitelistPattern])
      -- | Optional. Per-cluster admission rules. Cluster spec format: @location.clusterId@. There can be at most one admission rule per cluster spec. A @location@ is either a compute zone (e.g. us-central1-a) or a region (e.g. us-central1). For @clusterId@ syntax restrictions see https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
    , clusterAdmissionRules :: (Core.Maybe Policy_ClusterAdmissionRules)
      -- | Required. Default admission rule for a cluster without a per-cluster, per- kubernetes-service-account, or per-istio-service-identity admission rule.
    , defaultAdmissionRule :: (Core.Maybe AdmissionRule)
      -- | Optional. A descriptive comment.
    , description :: (Core.Maybe Core.Text)
      -- | Optional. A checksum, returned by the server, that can be sent on update requests to ensure the policy has an up-to-date value before attempting to update it. See https:\/\/google.aip.dev\/154.
    , etag :: (Core.Maybe Core.Text)
      -- | Optional. Controls the evaluation of a Google-maintained global admission policy for common system-level images. Images not covered by the global policy will be subject to the project admission policy. This setting has no effect when specified inside a global admission policy.
    , globalPolicyEvaluationMode :: (Core.Maybe Policy_GlobalPolicyEvaluationMode)
      -- | Optional. Per-istio-service-identity admission rules. Istio service identity spec format: @spiffe:\/\/\/ns\/\/sa\/@ or @\/ns\/\/sa\/@ e.g. @spiffe:\/\/example.com\/ns\/test-ns\/sa\/default@
    , istioServiceIdentityAdmissionRules :: (Core.Maybe Policy_IstioServiceIdentityAdmissionRules)
      -- | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format: @[a-z.-]+@, e.g. @some-namespace@
    , kubernetesNamespaceAdmissionRules :: (Core.Maybe Policy_KubernetesNamespaceAdmissionRules)
      -- | Optional. Per-kubernetes-service-account admission rules. Service account spec format: @namespace:serviceaccount@. e.g. @test-ns:default@
    , kubernetesServiceAccountAdmissionRules :: (Core.Maybe Policy_KubernetesServiceAccountAdmissionRules)
      -- | Output only. The resource name, in the format @projects\/*\/policy@. There is at most one policy per project.
    , name :: (Core.Maybe Core.Text)
      -- | Output only. Time when the policy was last updated.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy =
  Policy
    { admissionWhitelistPatterns = Core.Nothing
    , clusterAdmissionRules = Core.Nothing
    , defaultAdmissionRule = Core.Nothing
    , description = Core.Nothing
    , etag = Core.Nothing
    , globalPolicyEvaluationMode = Core.Nothing
    , istioServiceIdentityAdmissionRules = Core.Nothing
    , kubernetesNamespaceAdmissionRules = Core.Nothing
    , kubernetesServiceAccountAdmissionRules = Core.Nothing
    , name = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "admissionWhitelistPatterns") Core.<*>
                     (o Core..:? "clusterAdmissionRules")
                     Core.<*> (o Core..:? "defaultAdmissionRule")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "globalPolicyEvaluationMode")
                     Core.<*>
                     (o Core..:? "istioServiceIdentityAdmissionRules")
                     Core.<*>
                     (o Core..:? "kubernetesNamespaceAdmissionRules")
                     Core.<*>
                     (o Core..:? "kubernetesServiceAccountAdmissionRules")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("admissionWhitelistPatterns" Core..=) Core.<$>
                    admissionWhitelistPatterns,
                  ("clusterAdmissionRules" Core..=) Core.<$>
                    clusterAdmissionRules,
                  ("defaultAdmissionRule" Core..=) Core.<$>
                    defaultAdmissionRule,
                  ("description" Core..=) Core.<$> description,
                  ("etag" Core..=) Core.<$> etag,
                  ("globalPolicyEvaluationMode" Core..=) Core.<$>
                    globalPolicyEvaluationMode,
                  ("istioServiceIdentityAdmissionRules" Core..=)
                    Core.<$> istioServiceIdentityAdmissionRules,
                  ("kubernetesNamespaceAdmissionRules" Core..=)
                    Core.<$> kubernetesNamespaceAdmissionRules,
                  ("kubernetesServiceAccountAdmissionRules" Core..=)
                    Core.<$> kubernetesServiceAccountAdmissionRules,
                  ("name" Core..=) Core.<$> name,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Optional. Per-cluster admission rules. Cluster spec format: @location.clusterId@. There can be at most one admission rule per cluster spec. A @location@ is either a compute zone (e.g. us-central1-a) or a region (e.g. us-central1). For @clusterId@ syntax restrictions see https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
--
-- /See:/ 'newPolicy_ClusterAdmissionRules' smart constructor.
newtype Policy_ClusterAdmissionRules = Policy_ClusterAdmissionRules
    {
      -- | 
      additional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_ClusterAdmissionRules' with the minimum fields required to make a request.
newPolicy_ClusterAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'additional'.
    -> Policy_ClusterAdmissionRules
newPolicy_ClusterAdmissionRules additional =
  Policy_ClusterAdmissionRules {additional = additional}

instance Core.FromJSON Policy_ClusterAdmissionRules
         where
        parseJSON
          = Core.withObject "Policy_ClusterAdmissionRules"
              (\ o ->
                 Policy_ClusterAdmissionRules Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Policy_ClusterAdmissionRules
         where
        toJSON Policy_ClusterAdmissionRules{..}
          = Core.toJSON additional


-- | Optional. Per-istio-service-identity admission rules. Istio service identity spec format: @spiffe:\/\/\/ns\/\/sa\/@ or @\/ns\/\/sa\/@ e.g. @spiffe:\/\/example.com\/ns\/test-ns\/sa\/default@
--
-- /See:/ 'newPolicy_IstioServiceIdentityAdmissionRules' smart constructor.
newtype Policy_IstioServiceIdentityAdmissionRules = Policy_IstioServiceIdentityAdmissionRules
    {
      -- | 
      additional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_IstioServiceIdentityAdmissionRules' with the minimum fields required to make a request.
newPolicy_IstioServiceIdentityAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'additional'.
    -> Policy_IstioServiceIdentityAdmissionRules
newPolicy_IstioServiceIdentityAdmissionRules additional =
  Policy_IstioServiceIdentityAdmissionRules {additional = additional}

instance Core.FromJSON
           Policy_IstioServiceIdentityAdmissionRules
         where
        parseJSON
          = Core.withObject
              "Policy_IstioServiceIdentityAdmissionRules"
              (\ o ->
                 Policy_IstioServiceIdentityAdmissionRules Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           Policy_IstioServiceIdentityAdmissionRules
         where
        toJSON Policy_IstioServiceIdentityAdmissionRules{..}
          = Core.toJSON additional


-- | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format: @[a-z.-]+@, e.g. @some-namespace@
--
-- /See:/ 'newPolicy_KubernetesNamespaceAdmissionRules' smart constructor.
newtype Policy_KubernetesNamespaceAdmissionRules = Policy_KubernetesNamespaceAdmissionRules
    {
      -- | 
      additional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_KubernetesNamespaceAdmissionRules' with the minimum fields required to make a request.
newPolicy_KubernetesNamespaceAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'additional'.
    -> Policy_KubernetesNamespaceAdmissionRules
newPolicy_KubernetesNamespaceAdmissionRules additional =
  Policy_KubernetesNamespaceAdmissionRules {additional = additional}

instance Core.FromJSON
           Policy_KubernetesNamespaceAdmissionRules
         where
        parseJSON
          = Core.withObject
              "Policy_KubernetesNamespaceAdmissionRules"
              (\ o ->
                 Policy_KubernetesNamespaceAdmissionRules Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           Policy_KubernetesNamespaceAdmissionRules
         where
        toJSON Policy_KubernetesNamespaceAdmissionRules{..}
          = Core.toJSON additional


-- | Optional. Per-kubernetes-service-account admission rules. Service account spec format: @namespace:serviceaccount@. e.g. @test-ns:default@
--
-- /See:/ 'newPolicy_KubernetesServiceAccountAdmissionRules' smart constructor.
newtype Policy_KubernetesServiceAccountAdmissionRules = Policy_KubernetesServiceAccountAdmissionRules
    {
      -- | 
      additional :: (Core.HashMap Core.Text AdmissionRule)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy_KubernetesServiceAccountAdmissionRules' with the minimum fields required to make a request.
newPolicy_KubernetesServiceAccountAdmissionRules 
    ::  Core.HashMap Core.Text AdmissionRule
       -- ^  See 'additional'.
    -> Policy_KubernetesServiceAccountAdmissionRules
newPolicy_KubernetesServiceAccountAdmissionRules additional =
  Policy_KubernetesServiceAccountAdmissionRules {additional = additional}

instance Core.FromJSON
           Policy_KubernetesServiceAccountAdmissionRules
         where
        parseJSON
          = Core.withObject
              "Policy_KubernetesServiceAccountAdmissionRules"
              (\ o ->
                 Policy_KubernetesServiceAccountAdmissionRules
                   Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON
           Policy_KubernetesServiceAccountAdmissionRules
         where
        toJSON
          Policy_KubernetesServiceAccountAdmissionRules{..}
          = Core.toJSON additional


-- | A scope specifier for @CheckSet@ objects.
--
-- /See:/ 'newScope' smart constructor.
data Scope = Scope
    {
      -- | Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specific @kubernetes_service_account@ scope already matched.
      kubernetesNamespace :: (Core.Maybe Core.Text)
      -- | Optional. Matches a single Kubernetes service account, e.g. @my-namespace:my-service-account@. @kubernetes_service_account@ scope is always more specific than @kubernetes_namespace@ scope for the same namespace.
    , kubernetesServiceAccount :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Scope' with the minimum fields required to make a request.
newScope 
    ::  Scope
newScope =
  Scope
    { kubernetesNamespace = Core.Nothing
    , kubernetesServiceAccount = Core.Nothing
    }

instance Core.FromJSON Scope where
        parseJSON
          = Core.withObject "Scope"
              (\ o ->
                 Scope Core.<$>
                   (o Core..:? "kubernetesNamespace") Core.<*>
                     (o Core..:? "kubernetesServiceAccount"))

instance Core.ToJSON Scope where
        toJSON Scope{..}
          = Core.object
              (Core.catMaybes
                 [("kubernetesNamespace" Core..=) Core.<$>
                    kubernetesNamespace,
                  ("kubernetesServiceAccount" Core..=) Core.<$>
                    kubernetesServiceAccount])


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe IamPolicy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest 
    ::  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
        parseJSON
          = Core.withObject "SetIamPolicyRequest"
              (\ o ->
                 SetIamPolicyRequest Core.<$> (o Core..:? "policy"))

instance Core.ToJSON SetIamPolicyRequest where
        toJSON SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes [("policy" Core..=) Core.<$> policy])


-- | Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from @public_key_id@ to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature @public_key_id@ as anything more than a key lookup hint. The @public_key_id@ DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The @public_key_id@ is not recognized by the verifier. * The public key that @public_key_id@ refers to does not verify the signature with respect to the payload. The @signature@ contents SHOULD NOT be \"attached\" (where the payload is included with the serialized @signature@ bytes). Verifiers MUST
-- ignore any \"attached\" payload and only verify signatures with respect to explicitly provided payload (e.g. a @payload@ field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).
--
-- /See:/ 'newSignature' smart constructor.
data Signature = Signature
    {
      -- | The identifier for the public key that verifies this signature. * The @public_key_id@ is required. * The @public_key_id@ SHOULD be an RFC3986 conformant URI. * When possible, the @public_key_id@ SHOULD be an immutable reference, such as a cryptographic digest. Examples of valid @public_key_id@s: OpenPGP V4 public key fingerprint: * \"openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA\" See https:\/\/www.iana.org\/assignments\/uri-schemes\/prov\/openpgp4fpr for more details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization): * \"ni:\/\/\/sha-256;cD9o9Cq6LG3jD0iKXqEi/vdjJGecm/iXkbqVoScViaU\" * \"nih:\/\/\/sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5\"
      publicKeyId :: (Core.Maybe Core.Text)
      -- | The content of the signature, an opaque bytestring. The payload that this signature verifies MUST be unambiguously provided with the Signature during verification. A wrapper message might provide the payload explicitly. Alternatively, a message might have a canonical serialization that can always be unambiguously computed to derive the payload.
    , signature :: (Core.Maybe Core.Base64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Signature' with the minimum fields required to make a request.
newSignature 
    ::  Signature
newSignature = Signature {publicKeyId = Core.Nothing, signature = Core.Nothing}

instance Core.FromJSON Signature where
        parseJSON
          = Core.withObject "Signature"
              (\ o ->
                 Signature Core.<$>
                   (o Core..:? "publicKeyId") Core.<*>
                     (o Core..:? "signature"))

instance Core.ToJSON Signature where
        toJSON Signature{..}
          = Core.object
              (Core.catMaybes
                 [("publicKeyId" Core..=) Core.<$> publicKeyId,
                  ("signature" Core..=) Core.<$> signature])


-- | A Sigstore authority, used to verify signatures that are created by Sigstore. An authority is analogous to an attestation authenticator, verifying that a signature is valid or invalid.
--
-- /See:/ 'newSigstoreAuthority' smart constructor.
data SigstoreAuthority = SigstoreAuthority
    {
      -- | Optional. A user-provided name for this @SigstoreAuthority@. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
      displayName :: (Core.Maybe Core.Text)
      -- | Required. A simple set of public keys. A signature is considered valid if any keys in the set validate the signature.
    , publicKeySet :: (Core.Maybe SigstorePublicKeySet)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SigstoreAuthority' with the minimum fields required to make a request.
newSigstoreAuthority 
    ::  SigstoreAuthority
newSigstoreAuthority =
  SigstoreAuthority {displayName = Core.Nothing, publicKeySet = Core.Nothing}

instance Core.FromJSON SigstoreAuthority where
        parseJSON
          = Core.withObject "SigstoreAuthority"
              (\ o ->
                 SigstoreAuthority Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "publicKeySet"))

instance Core.ToJSON SigstoreAuthority where
        toJSON SigstoreAuthority{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("publicKeySet" Core..=) Core.<$> publicKeySet])


-- | A Sigstore public key. @SigstorePublicKey@ is the public key material used to authenticate Sigstore signatures.
--
-- /See:/ 'newSigstorePublicKey' smart constructor.
newtype SigstorePublicKey = SigstorePublicKey
    {
      -- | The public key material in PEM format.
      publicKeyPem :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SigstorePublicKey' with the minimum fields required to make a request.
newSigstorePublicKey 
    ::  SigstorePublicKey
newSigstorePublicKey = SigstorePublicKey {publicKeyPem = Core.Nothing}

instance Core.FromJSON SigstorePublicKey where
        parseJSON
          = Core.withObject "SigstorePublicKey"
              (\ o ->
                 SigstorePublicKey Core.<$>
                   (o Core..:? "publicKeyPem"))

instance Core.ToJSON SigstorePublicKey where
        toJSON SigstorePublicKey{..}
          = Core.object
              (Core.catMaybes
                 [("publicKeyPem" Core..=) Core.<$> publicKeyPem])


-- | A bundle of Sigstore public keys, used to verify Sigstore signatures. A signature is authenticated by a @SigstorePublicKeySet@ if any of the keys verify it.
--
-- /See:/ 'newSigstorePublicKeySet' smart constructor.
newtype SigstorePublicKeySet = SigstorePublicKeySet
    {
      -- | Required. @public_keys@ must have at least one entry.
      publicKeys :: (Core.Maybe [SigstorePublicKey])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SigstorePublicKeySet' with the minimum fields required to make a request.
newSigstorePublicKeySet 
    ::  SigstorePublicKeySet
newSigstorePublicKeySet = SigstorePublicKeySet {publicKeys = Core.Nothing}

instance Core.FromJSON SigstorePublicKeySet where
        parseJSON
          = Core.withObject "SigstorePublicKeySet"
              (\ o ->
                 SigstorePublicKeySet Core.<$>
                   (o Core..:? "publicKeys"))

instance Core.ToJSON SigstorePublicKeySet where
        toJSON SigstorePublicKeySet{..}
          = Core.object
              (Core.catMaybes
                 [("publicKeys" Core..=) Core.<$> publicKeys])


-- | A Sigstore signature check, which verifies the Sigstore signature associated with an image.
--
-- /See:/ 'newSigstoreSignatureCheck' smart constructor.
newtype SigstoreSignatureCheck = SigstoreSignatureCheck
    {
      -- | Required. The authorities required by this check to verify the signature. A signature only needs to be verified by one authority to pass the check.
      sigstoreAuthorities :: (Core.Maybe [SigstoreAuthority])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SigstoreSignatureCheck' with the minimum fields required to make a request.
newSigstoreSignatureCheck 
    ::  SigstoreSignatureCheck
newSigstoreSignatureCheck =
  SigstoreSignatureCheck {sigstoreAuthorities = Core.Nothing}

instance Core.FromJSON SigstoreSignatureCheck where
        parseJSON
          = Core.withObject "SigstoreSignatureCheck"
              (\ o ->
                 SigstoreSignatureCheck Core.<$>
                   (o Core..:? "sigstoreAuthorities"))

instance Core.ToJSON SigstoreSignatureCheck where
        toJSON SigstoreSignatureCheck{..}
          = Core.object
              (Core.catMaybes
                 [("sigstoreAuthorities" Core..=) Core.<$>
                    sigstoreAuthorities])


-- | Require a signed <https://github.com/secure-systems-lab/dsse DSSE> attestation with type SimpleSigning.
--
-- /See:/ 'newSimpleSigningAttestationCheck' smart constructor.
data SimpleSigningAttestationCheck = SimpleSigningAttestationCheck
    {
      -- | Required. The authenticators required by this check to verify an attestation. Typically this is one or more PKIX public keys for signature verification. Only one authenticator needs to consider an attestation verified in order for an attestation to be considered fully authenticated. In otherwords, this list of authenticators is an \"OR\" of the authenticator results. At least one authenticator is required.
      attestationAuthenticators :: (Core.Maybe [AttestationAuthenticator])
      -- | Optional. The projects where attestations are stored as Container Analysis Occurrences, in the format @projects\/[PROJECT_ID]@. Only one attestation needs to successfully verify an image for this check to pass, so a single verified attestation found in any of @container_analysis_attestation_projects@ is sufficient for the check to pass. A project ID must be used, not a project number. When fetching Occurrences from Container Analysis, only @AttestationOccurrence@ kinds are considered. In the future, additional Occurrence kinds may be added to the query. Maximum number of @container_analysis_attestation_projects@ allowed in each @SimpleSigningAttestationCheck@ is 10.
    , containerAnalysisAttestationProjects :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SimpleSigningAttestationCheck' with the minimum fields required to make a request.
newSimpleSigningAttestationCheck 
    ::  SimpleSigningAttestationCheck
newSimpleSigningAttestationCheck =
  SimpleSigningAttestationCheck
    { attestationAuthenticators = Core.Nothing
    , containerAnalysisAttestationProjects = Core.Nothing
    }

instance Core.FromJSON SimpleSigningAttestationCheck
         where
        parseJSON
          = Core.withObject "SimpleSigningAttestationCheck"
              (\ o ->
                 SimpleSigningAttestationCheck Core.<$>
                   (o Core..:? "attestationAuthenticators") Core.<*>
                     (o Core..:? "containerAnalysisAttestationProjects"))

instance Core.ToJSON SimpleSigningAttestationCheck
         where
        toJSON SimpleSigningAttestationCheck{..}
          = Core.object
              (Core.catMaybes
                 [("attestationAuthenticators" Core..=) Core.<$>
                    attestationAuthenticators,
                  ("containerAnalysisAttestationProjects" Core..=)
                    Core.<$> containerAnalysisAttestationProjects])


-- | A SLSA provenance attestation check, which ensures that images are built by a trusted builder using source code from its trusted repositories only.
--
-- /See:/ 'newSlsaCheck' smart constructor.
newtype SlsaCheck = SlsaCheck
    {
      -- | Specifies a list of verification rules for the SLSA attestations. An image is considered compliant with the SlsaCheck if any of the rules are satisfied.
      rules :: (Core.Maybe [VerificationRule])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlsaCheck' with the minimum fields required to make a request.
newSlsaCheck 
    ::  SlsaCheck
newSlsaCheck = SlsaCheck {rules = Core.Nothing}

instance Core.FromJSON SlsaCheck where
        parseJSON
          = Core.withObject "SlsaCheck"
              (\ o -> SlsaCheck Core.<$> (o Core..:? "rules"))

instance Core.ToJSON SlsaCheck where
        toJSON SlsaCheck{..}
          = Core.object
              (Core.catMaybes [("rules" Core..=) Core.<$> rules])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest 
    ::  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest
         where
        parseJSON
          = Core.withObject "TestIamPermissionsRequest"
              (\ o ->
                 TestIamPermissionsRequest Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsRequest where
        toJSON TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse 
    ::  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse
         where
        parseJSON
          = Core.withObject "TestIamPermissionsResponse"
              (\ o ->
                 TestIamPermissionsResponse Core.<$>
                   (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("permissions" Core..=) Core.<$> permissions])


-- | A trusted directory check, which rejects images that do not come from the set of user-configured trusted directories.
--
-- /See:/ 'newTrustedDirectoryCheck' smart constructor.
newtype TrustedDirectoryCheck = TrustedDirectoryCheck
    {
      -- | Required. List of trusted directory patterns. A pattern is in the form \"registry\/path\/to\/directory\". The registry domain part is defined as two or more dot-separated words, e.g., @us.pkg.dev@, or @gcr.io@. Additionally, @*@ can be used in three ways as wildcards: 1. leading @*@ to match varying prefixes in registry subdomain (useful for location prefixes); 2. trailing @*@ after registry\/ to match varying endings; 3. trailing @**@ after registry\/ to match \"\/\" as well. For example: -- @gcr.io\/my-project\/my-repo@ is valid to match a single directory -- @*-docker.pkg.dev\/my-project\/my-repo@ or @*.gcr.io\/my-project@ are valid to match varying prefixes -- @gcr.io\/my-project\/*@ will match all direct directories in @my-project@ -- @gcr.io\/my-project\/**@ would match all directories in @my-project@ -- @gcr.i*@ is not allowed since the registry is not completely specified -- @sub*domain.gcr.io\/nginx@ is not valid because only leading @*@ or trailing @*@ are allowed. -- @*pkg.dev\/my-project\/my-repo@
      -- is not valid because leading @*@ can only match subdomain -- @**-docker.pkg.dev@ is not valid because one leading @*@ is allowed, and that it cannot match @\/@
      trustedDirPatterns :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrustedDirectoryCheck' with the minimum fields required to make a request.
newTrustedDirectoryCheck 
    ::  TrustedDirectoryCheck
newTrustedDirectoryCheck =
  TrustedDirectoryCheck {trustedDirPatterns = Core.Nothing}

instance Core.FromJSON TrustedDirectoryCheck where
        parseJSON
          = Core.withObject "TrustedDirectoryCheck"
              (\ o ->
                 TrustedDirectoryCheck Core.<$>
                   (o Core..:? "trustedDirPatterns"))

instance Core.ToJSON TrustedDirectoryCheck where
        toJSON TrustedDirectoryCheck{..}
          = Core.object
              (Core.catMaybes
                 [("trustedDirPatterns" Core..=) Core.<$>
                    trustedDirPatterns])


-- | An user owned Grafeas note references a Grafeas Attestation.Authority Note created by the user.
--
-- /See:/ 'newUserOwnedGrafeasNote' smart constructor.
data UserOwnedGrafeasNote = UserOwnedGrafeasNote
    {
      -- | Output only. This field will contain the service account email address that this attestor will use as the principal when querying Container Analysis. Attestor administrators must grant this service account the IAM role needed to read attestations from the note_reference in Container Analysis (@containeranalysis.notes.occurrences.viewer@). This email address is fixed for the lifetime of the attestor, but callers should not make any other assumptions about the service account email; future versions may use an email based on a different naming pattern.
      delegationServiceAccountEmail :: (Core.Maybe Core.Text)
      -- | Required. The Grafeas resource name of a Attestation.Authority Note, created by the user, in the format: @projects\/[PROJECT_ID]\/notes\/*@. This field may not be updated. A project ID must be used, not a project number. An attestation by this attestor is stored as a Grafeas Attestation.Authority Occurrence that names a container image and that links to this Note. Grafeas is an external dependency.
    , noteReference :: (Core.Maybe Core.Text)
      -- | Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
    , publicKeys :: (Core.Maybe [AttestorPublicKey])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserOwnedGrafeasNote' with the minimum fields required to make a request.
newUserOwnedGrafeasNote 
    ::  UserOwnedGrafeasNote
newUserOwnedGrafeasNote =
  UserOwnedGrafeasNote
    { delegationServiceAccountEmail = Core.Nothing
    , noteReference = Core.Nothing
    , publicKeys = Core.Nothing
    }

instance Core.FromJSON UserOwnedGrafeasNote where
        parseJSON
          = Core.withObject "UserOwnedGrafeasNote"
              (\ o ->
                 UserOwnedGrafeasNote Core.<$>
                   (o Core..:? "delegationServiceAccountEmail") Core.<*>
                     (o Core..:? "noteReference")
                     Core.<*> (o Core..:? "publicKeys"))

instance Core.ToJSON UserOwnedGrafeasNote where
        toJSON UserOwnedGrafeasNote{..}
          = Core.object
              (Core.catMaybes
                 [("delegationServiceAccountEmail" Core..=) Core.<$>
                    delegationServiceAccountEmail,
                  ("noteReference" Core..=) Core.<$> noteReference,
                  ("publicKeys" Core..=) Core.<$> publicKeys])


-- | Request message for ValidationHelperV1.ValidateAttestationOccurrence.
--
-- /See:/ 'newValidateAttestationOccurrenceRequest' smart constructor.
data ValidateAttestationOccurrenceRequest = ValidateAttestationOccurrenceRequest
    {
      -- | Required. An AttestationOccurrence to be checked that it can be verified by the @Attestor@. It does not have to be an existing entity in Container Analysis. It must otherwise be a valid @AttestationOccurrence@.
      attestation :: (Core.Maybe AttestationOccurrence)
      -- | Required. The resource name of the Note to which the containing Occurrence is associated.
    , occurrenceNote :: (Core.Maybe Core.Text)
      -- | Required. The URI of the artifact (e.g. container image) that is the subject of the containing Occurrence.
    , occurrenceResourceUri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateAttestationOccurrenceRequest' with the minimum fields required to make a request.
newValidateAttestationOccurrenceRequest 
    ::  ValidateAttestationOccurrenceRequest
newValidateAttestationOccurrenceRequest =
  ValidateAttestationOccurrenceRequest
    { attestation = Core.Nothing
    , occurrenceNote = Core.Nothing
    , occurrenceResourceUri = Core.Nothing
    }

instance Core.FromJSON
           ValidateAttestationOccurrenceRequest
         where
        parseJSON
          = Core.withObject
              "ValidateAttestationOccurrenceRequest"
              (\ o ->
                 ValidateAttestationOccurrenceRequest Core.<$>
                   (o Core..:? "attestation") Core.<*>
                     (o Core..:? "occurrenceNote")
                     Core.<*> (o Core..:? "occurrenceResourceUri"))

instance Core.ToJSON
           ValidateAttestationOccurrenceRequest
         where
        toJSON ValidateAttestationOccurrenceRequest{..}
          = Core.object
              (Core.catMaybes
                 [("attestation" Core..=) Core.<$> attestation,
                  ("occurrenceNote" Core..=) Core.<$> occurrenceNote,
                  ("occurrenceResourceUri" Core..=) Core.<$>
                    occurrenceResourceUri])


-- | Response message for ValidationHelperV1.ValidateAttestationOccurrence.
--
-- /See:/ 'newValidateAttestationOccurrenceResponse' smart constructor.
data ValidateAttestationOccurrenceResponse = ValidateAttestationOccurrenceResponse
    {
      -- | The reason for denial if the Attestation couldn\'t be validated.
      denialReason :: (Core.Maybe Core.Text)
      -- | The result of the Attestation validation.
    , result :: (Core.Maybe ValidateAttestationOccurrenceResponse_Result)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateAttestationOccurrenceResponse' with the minimum fields required to make a request.
newValidateAttestationOccurrenceResponse 
    ::  ValidateAttestationOccurrenceResponse
newValidateAttestationOccurrenceResponse =
  ValidateAttestationOccurrenceResponse
    {denialReason = Core.Nothing, result = Core.Nothing}

instance Core.FromJSON
           ValidateAttestationOccurrenceResponse
         where
        parseJSON
          = Core.withObject
              "ValidateAttestationOccurrenceResponse"
              (\ o ->
                 ValidateAttestationOccurrenceResponse Core.<$>
                   (o Core..:? "denialReason") Core.<*>
                     (o Core..:? "result"))

instance Core.ToJSON
           ValidateAttestationOccurrenceResponse
         where
        toJSON ValidateAttestationOccurrenceResponse{..}
          = Core.object
              (Core.catMaybes
                 [("denialReason" Core..=) Core.<$> denialReason,
                  ("result" Core..=) Core.<$> result])


-- | Specifies verification rules for evaluating the SLSA attestations including: which builders to trust, where to fetch the SLSA attestations generated by those builders, and other builder-specific evaluation rules such as which source repositories are trusted. An image is considered verified by the rule if any of the fetched SLSA attestations is verified.
--
-- /See:/ 'newVerificationRule' smart constructor.
data VerificationRule = VerificationRule
    {
      -- | Specifies where to fetch the provenances attestations generated by the builder (group).
      attestationSource :: (Core.Maybe AttestationSource)
      -- | If true, require the image to be built from a top-level configuration. @trusted_source_repo_patterns@ specifies the repositories containing this configuration.
    , configBasedBuildRequired :: (Core.Maybe Core.Bool)
      -- | Each verification rule is used for evaluation against provenances generated by a specific builder (group). For some of the builders, such as the Google Cloud Build, users don\'t need to explicitly specify their roots of trust in the policy since the evaluation service can automatically fetch them based on the builder (group).
    , trustedBuilder :: (Core.Maybe VerificationRule_TrustedBuilder)
      -- | List of trusted source code repository URL patterns. These patterns match the full repository URL without its scheme (e.g. @https:\/\/@). The patterns must not include schemes. For example, the pattern @source.cloud.google.com\/my-project\/my-repo-name@ matches the following URLs: - @source.cloud.google.com\/my-project\/my-repo-name@ - @git+ssh:\/\/source.cloud.google.com\/my-project\/my-repo-name@ - @https:\/\/source.cloud.google.com\/my-project\/my-repo-name@ A pattern matches a URL either exactly or with @*@ wildcards. @*@ can be used in only two ways: 1. trailing @*@ after hosturi\/ to match varying endings; 2. trailing @**@ after hosturi\/ to match @\/@ as well. @*@ and @**@ can only be used as wildcards and can only occur at the end of the pattern after a @\/@. (So it\'s not possible to match a URL that contains literal @*@.) For example: - @github.com\/my-project\/my-repo@ is valid to match a single repo - @github.com\/my-project\/*@ will match all direct repos in @my-project@ - @github.com\/**@
      -- matches all repos in GitHub
    , trustedSourceRepoPatterns :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VerificationRule' with the minimum fields required to make a request.
newVerificationRule 
    ::  VerificationRule
newVerificationRule =
  VerificationRule
    { attestationSource = Core.Nothing
    , configBasedBuildRequired = Core.Nothing
    , trustedBuilder = Core.Nothing
    , trustedSourceRepoPatterns = Core.Nothing
    }

instance Core.FromJSON VerificationRule where
        parseJSON
          = Core.withObject "VerificationRule"
              (\ o ->
                 VerificationRule Core.<$>
                   (o Core..:? "attestationSource") Core.<*>
                     (o Core..:? "configBasedBuildRequired")
                     Core.<*> (o Core..:? "trustedBuilder")
                     Core.<*> (o Core..:? "trustedSourceRepoPatterns"))

instance Core.ToJSON VerificationRule where
        toJSON VerificationRule{..}
          = Core.object
              (Core.catMaybes
                 [("attestationSource" Core..=) Core.<$>
                    attestationSource,
                  ("configBasedBuildRequired" Core..=) Core.<$>
                    configBasedBuildRequired,
                  ("trustedBuilder" Core..=) Core.<$> trustedBuilder,
                  ("trustedSourceRepoPatterns" Core..=) Core.<$>
                    trustedSourceRepoPatterns])


-- | An image vulnerability check, which rejects images that violate the configured vulnerability rules.
--
-- /See:/ 'newVulnerabilityCheck' smart constructor.
data VulnerabilityCheck = VulnerabilityCheck
    {
      -- | Optional. A list of specific CVEs to ignore even if the vulnerability level violates @maximumUnfixableSeverity@ or @maximumFixableSeverity@. CVEs are listed in the format of Container Analysis note id. For example: - CVE-2021-20305 - CVE-2020-10543 The CVEs are applicable regardless of note provider project, e.g., an entry of @CVE-2021-20305@ will allow vulnerabilities with a note name of either @projects\/goog-vulnz\/notes\/CVE-2021-20305@ or @projects\/CUSTOM-PROJECT\/notes\/CVE-2021-20305@.
      allowedCves :: (Core.Maybe [Core.Text])
      -- | Optional. A list of specific CVEs to always raise warnings about even if the vulnerability level meets @maximumUnfixableSeverity@ or @maximumFixableSeverity@. CVEs are listed in the format of Container Analysis note id. For example: - CVE-2021-20305 - CVE-2020-10543 The CVEs are applicable regardless of note provider project, e.g., an entry of @CVE-2021-20305@ will block vulnerabilities with a note name of either @projects\/goog-vulnz\/notes\/CVE-2021-20305@ or @projects\/CUSTOM-PROJECT\/notes\/CVE-2021-20305@.
    , blockedCves :: (Core.Maybe [Core.Text])
      -- | Optional. The projects where vulnerabilities are stored as Container Analysis Occurrences. Each project is expressed in the resource format of @projects\/[PROJECT_ID]@, e.g., @projects\/my-gcp-project@. An attempt will be made for each project to fetch vulnerabilities, and all valid vulnerabilities will be used to check against the vulnerability policy. If no valid scan is found in all projects configured here, an error will be returned for the check. Maximum number of @container_analysis_vulnerability_projects@ allowed in each @VulnerabilityCheck@ is 10.
    , containerAnalysisVulnerabilityProjects :: (Core.Maybe [Core.Text])
      -- | Required. The threshold for severity for which a fix is currently available. This field is required and must be set.
    , maximumFixableSeverity :: (Core.Maybe VulnerabilityCheck_MaximumFixableSeverity)
      -- | Required. The threshold for severity for which a fix isn\'t currently available. This field is required and must be set.
    , maximumUnfixableSeverity :: (Core.Maybe VulnerabilityCheck_MaximumUnfixableSeverity)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VulnerabilityCheck' with the minimum fields required to make a request.
newVulnerabilityCheck 
    ::  VulnerabilityCheck
newVulnerabilityCheck =
  VulnerabilityCheck
    { allowedCves = Core.Nothing
    , blockedCves = Core.Nothing
    , containerAnalysisVulnerabilityProjects = Core.Nothing
    , maximumFixableSeverity = Core.Nothing
    , maximumUnfixableSeverity = Core.Nothing
    }

instance Core.FromJSON VulnerabilityCheck where
        parseJSON
          = Core.withObject "VulnerabilityCheck"
              (\ o ->
                 VulnerabilityCheck Core.<$>
                   (o Core..:? "allowedCves") Core.<*>
                     (o Core..:? "blockedCves")
                     Core.<*>
                     (o Core..:? "containerAnalysisVulnerabilityProjects")
                     Core.<*> (o Core..:? "maximumFixableSeverity")
                     Core.<*> (o Core..:? "maximumUnfixableSeverity"))

instance Core.ToJSON VulnerabilityCheck where
        toJSON VulnerabilityCheck{..}
          = Core.object
              (Core.catMaybes
                 [("allowedCves" Core..=) Core.<$> allowedCves,
                  ("blockedCves" Core..=) Core.<$> blockedCves,
                  ("containerAnalysisVulnerabilityProjects" Core..=)
                    Core.<$> containerAnalysisVulnerabilityProjects,
                  ("maximumFixableSeverity" Core..=) Core.<$>
                    maximumFixableSeverity,
                  ("maximumUnfixableSeverity" Core..=) Core.<$>
                    maximumUnfixableSeverity])

