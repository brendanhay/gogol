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
-- Module      : Gogol.BinaryAuthorization.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BinaryAuthorization.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdmissionRule_EnforcementMode
    AdmissionRule_EnforcementMode
      (
        AdmissionRule_EnforcementMode_ENFORCEMENTMODEUNSPECIFIED,
        AdmissionRule_EnforcementMode_ENFORCEDBLOCKANDAUDITLOG,
        AdmissionRule_EnforcementMode_DRYRUNAUDITLOGONLY,
        ..
      ),

    -- * AdmissionRule_EvaluationMode
    AdmissionRule_EvaluationMode
      (
        AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED,
        AdmissionRule_EvaluationMode_ALWAYSALLOW,
        AdmissionRule_EvaluationMode_REQUIREATTESTATION,
        AdmissionRule_EvaluationMode_ALWAYSDENY,
        ..
      ),

    -- * EvaluateGkePolicyResponse_Verdict
    EvaluateGkePolicyResponse_Verdict
      (
        EvaluateGkePolicyResponse_Verdict_VERDICTUNSPECIFIED,
        EvaluateGkePolicyResponse_Verdict_Conformant,
        EvaluateGkePolicyResponse_Verdict_NONCONFORMANT,
        EvaluateGkePolicyResponse_Verdict_Error',
        ..
      ),

    -- * EvaluationResult_Verdict
    EvaluationResult_Verdict
      (
        EvaluationResult_Verdict_CHECKVERDICTUNSPECIFIED,
        EvaluationResult_Verdict_Conformant,
        EvaluationResult_Verdict_NONCONFORMANT,
        EvaluationResult_Verdict_Error',
        ..
      ),

    -- * ImageResult_Verdict
    ImageResult_Verdict
      (
        ImageResult_Verdict_IMAGEVERDICTUNSPECIFIED,
        ImageResult_Verdict_Conformant,
        ImageResult_Verdict_NONCONFORMANT,
        ImageResult_Verdict_Error',
        ..
      ),

    -- * PkixPublicKey_SignatureAlgorithm
    PkixPublicKey_SignatureAlgorithm
      (
        PkixPublicKey_SignatureAlgorithm_SIGNATUREALGORITHMUNSPECIFIED,
        PkixPublicKey_SignatureAlgorithm_RSA_PSS_2048_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_2048_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_PSS_3072_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_3072_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA512,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA512,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_2048_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_3072_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA256,
        PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA512,
        PkixPublicKey_SignatureAlgorithm_ECDSA_P256_SHA256,
        PkixPublicKey_SignatureAlgorithm_EC_SIGN_P256_SHA256,
        PkixPublicKey_SignatureAlgorithm_ECDSA_P384_SHA384,
        PkixPublicKey_SignatureAlgorithm_EC_SIGN_P384_SHA384,
        PkixPublicKey_SignatureAlgorithm_ECDSA_P521_SHA512,
        PkixPublicKey_SignatureAlgorithm_EC_SIGN_P521_SHA512,
        ..
      ),

    -- * PodResult_Verdict
    PodResult_Verdict
      (
        PodResult_Verdict_PODVERDICTUNSPECIFIED,
        PodResult_Verdict_Conformant,
        PodResult_Verdict_NONCONFORMANT,
        PodResult_Verdict_Error',
        ..
      ),

    -- * Policy_GlobalPolicyEvaluationMode
    Policy_GlobalPolicyEvaluationMode
      (
        Policy_GlobalPolicyEvaluationMode_GLOBALPOLICYEVALUATIONMODEUNSPECIFIED,
        Policy_GlobalPolicyEvaluationMode_Enable,
        Policy_GlobalPolicyEvaluationMode_Disable,
        ..
      ),

    -- * ValidateAttestationOccurrenceResponse_Result
    ValidateAttestationOccurrenceResponse_Result
      (
        ValidateAttestationOccurrenceResponse_Result_RESULTUNSPECIFIED,
        ValidateAttestationOccurrenceResponse_Result_Verified,
        ValidateAttestationOccurrenceResponse_Result_ATTESTATIONNOTVERIFIABLE,
        ..
      ),

    -- * VerificationRule_TrustedBuilder
    VerificationRule_TrustedBuilder
      (
        VerificationRule_TrustedBuilder_BUILDERUNSPECIFIED,
        VerificationRule_TrustedBuilder_GOOGLECLOUDBUILD,
        ..
      ),

    -- * VulnerabilityCheck_MaximumFixableSeverity
    VulnerabilityCheck_MaximumFixableSeverity
      (
        VulnerabilityCheck_MaximumFixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED,
        VulnerabilityCheck_MaximumFixableSeverity_BLOCKALL,
        VulnerabilityCheck_MaximumFixableSeverity_Minimal,
        VulnerabilityCheck_MaximumFixableSeverity_Low,
        VulnerabilityCheck_MaximumFixableSeverity_Medium,
        VulnerabilityCheck_MaximumFixableSeverity_High,
        VulnerabilityCheck_MaximumFixableSeverity_Critical,
        VulnerabilityCheck_MaximumFixableSeverity_ALLOWALL,
        ..
      ),

    -- * VulnerabilityCheck_MaximumUnfixableSeverity
    VulnerabilityCheck_MaximumUnfixableSeverity
      (
        VulnerabilityCheck_MaximumUnfixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED,
        VulnerabilityCheck_MaximumUnfixableSeverity_BLOCKALL,
        VulnerabilityCheck_MaximumUnfixableSeverity_Minimal,
        VulnerabilityCheck_MaximumUnfixableSeverity_Low,
        VulnerabilityCheck_MaximumUnfixableSeverity_Medium,
        VulnerabilityCheck_MaximumUnfixableSeverity_High,
        VulnerabilityCheck_MaximumUnfixableSeverity_Critical,
        VulnerabilityCheck_MaximumUnfixableSeverity_ALLOWALL,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Required. The action when a pod creation is denied by the admission rule.
newtype AdmissionRule_EnforcementMode = AdmissionRule_EnforcementMode { fromAdmissionRule_EnforcementMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use.
pattern AdmissionRule_EnforcementMode_ENFORCEMENTMODEUNSPECIFIED :: AdmissionRule_EnforcementMode
pattern AdmissionRule_EnforcementMode_ENFORCEMENTMODEUNSPECIFIED = AdmissionRule_EnforcementMode "ENFORCEMENT_MODE_UNSPECIFIED"

-- | Enforce the admission rule by blocking the pod creation.
pattern AdmissionRule_EnforcementMode_ENFORCEDBLOCKANDAUDITLOG :: AdmissionRule_EnforcementMode
pattern AdmissionRule_EnforcementMode_ENFORCEDBLOCKANDAUDITLOG = AdmissionRule_EnforcementMode "ENFORCED_BLOCK_AND_AUDIT_LOG"

-- | Dryrun mode: Audit logging only. This will allow the pod creation as if the admission request had specified break-glass.
pattern AdmissionRule_EnforcementMode_DRYRUNAUDITLOGONLY :: AdmissionRule_EnforcementMode
pattern AdmissionRule_EnforcementMode_DRYRUNAUDITLOGONLY = AdmissionRule_EnforcementMode "DRYRUN_AUDIT_LOG_ONLY"

{-# COMPLETE
  AdmissionRule_EnforcementMode_ENFORCEMENTMODEUNSPECIFIED,
  AdmissionRule_EnforcementMode_ENFORCEDBLOCKANDAUDITLOG,
  AdmissionRule_EnforcementMode_DRYRUNAUDITLOGONLY,
  AdmissionRule_EnforcementMode #-}

-- | Required. How this admission rule will be evaluated.
newtype AdmissionRule_EvaluationMode = AdmissionRule_EvaluationMode { fromAdmissionRule_EvaluationMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use.
pattern AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED :: AdmissionRule_EvaluationMode
pattern AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED = AdmissionRule_EvaluationMode "EVALUATION_MODE_UNSPECIFIED"

-- | This rule allows all pod creations.
pattern AdmissionRule_EvaluationMode_ALWAYSALLOW :: AdmissionRule_EvaluationMode
pattern AdmissionRule_EvaluationMode_ALWAYSALLOW = AdmissionRule_EvaluationMode "ALWAYS_ALLOW"

-- | This rule allows a pod creation if all the attestors listed in @require_attestations_by@ have valid attestations for all of the images in the pod spec.
pattern AdmissionRule_EvaluationMode_REQUIREATTESTATION :: AdmissionRule_EvaluationMode
pattern AdmissionRule_EvaluationMode_REQUIREATTESTATION = AdmissionRule_EvaluationMode "REQUIRE_ATTESTATION"

-- | This rule denies all pod creations.
pattern AdmissionRule_EvaluationMode_ALWAYSDENY :: AdmissionRule_EvaluationMode
pattern AdmissionRule_EvaluationMode_ALWAYSDENY = AdmissionRule_EvaluationMode "ALWAYS_DENY"

{-# COMPLETE
  AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED,
  AdmissionRule_EvaluationMode_ALWAYSALLOW,
  AdmissionRule_EvaluationMode_REQUIREATTESTATION,
  AdmissionRule_EvaluationMode_ALWAYSDENY,
  AdmissionRule_EvaluationMode #-}

-- | The result of evaluating all Pods in the request.
newtype EvaluateGkePolicyResponse_Verdict = EvaluateGkePolicyResponse_Verdict { fromEvaluateGkePolicyResponse_Verdict :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. This should never be used.
pattern EvaluateGkePolicyResponse_Verdict_VERDICTUNSPECIFIED :: EvaluateGkePolicyResponse_Verdict
pattern EvaluateGkePolicyResponse_Verdict_VERDICTUNSPECIFIED = EvaluateGkePolicyResponse_Verdict "VERDICT_UNSPECIFIED"

-- | All Pods in the request conform to the policy.
pattern EvaluateGkePolicyResponse_Verdict_Conformant :: EvaluateGkePolicyResponse_Verdict
pattern EvaluateGkePolicyResponse_Verdict_Conformant = EvaluateGkePolicyResponse_Verdict "CONFORMANT"

-- | At least one Pod does not conform to the policy.
pattern EvaluateGkePolicyResponse_Verdict_NONCONFORMANT :: EvaluateGkePolicyResponse_Verdict
pattern EvaluateGkePolicyResponse_Verdict_NONCONFORMANT = EvaluateGkePolicyResponse_Verdict "NON_CONFORMANT"

-- | Encountered at least one error evaluating a Pod and all other Pods conform to the policy. Non-conformance has precedence over errors.
pattern EvaluateGkePolicyResponse_Verdict_Error' :: EvaluateGkePolicyResponse_Verdict
pattern EvaluateGkePolicyResponse_Verdict_Error' = EvaluateGkePolicyResponse_Verdict "ERROR"

{-# COMPLETE
  EvaluateGkePolicyResponse_Verdict_VERDICTUNSPECIFIED,
  EvaluateGkePolicyResponse_Verdict_Conformant,
  EvaluateGkePolicyResponse_Verdict_NONCONFORMANT,
  EvaluateGkePolicyResponse_Verdict_Error',
  EvaluateGkePolicyResponse_Verdict #-}

-- | The result of evaluating this check.
newtype EvaluationResult_Verdict = EvaluationResult_Verdict { fromEvaluationResult_Verdict :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. This should never be used.
pattern EvaluationResult_Verdict_CHECKVERDICTUNSPECIFIED :: EvaluationResult_Verdict
pattern EvaluationResult_Verdict_CHECKVERDICTUNSPECIFIED = EvaluationResult_Verdict "CHECK_VERDICT_UNSPECIFIED"

-- | The check was successfully evaluated and the image satisfied the check.
pattern EvaluationResult_Verdict_Conformant :: EvaluationResult_Verdict
pattern EvaluationResult_Verdict_Conformant = EvaluationResult_Verdict "CONFORMANT"

-- | The check was successfully evaluated and the image did not satisfy the check.
pattern EvaluationResult_Verdict_NONCONFORMANT :: EvaluationResult_Verdict
pattern EvaluationResult_Verdict_NONCONFORMANT = EvaluationResult_Verdict "NON_CONFORMANT"

-- | The check was not successfully evaluated.
pattern EvaluationResult_Verdict_Error' :: EvaluationResult_Verdict
pattern EvaluationResult_Verdict_Error' = EvaluationResult_Verdict "ERROR"

{-# COMPLETE
  EvaluationResult_Verdict_CHECKVERDICTUNSPECIFIED,
  EvaluationResult_Verdict_Conformant,
  EvaluationResult_Verdict_NONCONFORMANT,
  EvaluationResult_Verdict_Error',
  EvaluationResult_Verdict #-}

-- | The result of evaluating this image.
newtype ImageResult_Verdict = ImageResult_Verdict { fromImageResult_Verdict :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. This should never be used.
pattern ImageResult_Verdict_IMAGEVERDICTUNSPECIFIED :: ImageResult_Verdict
pattern ImageResult_Verdict_IMAGEVERDICTUNSPECIFIED = ImageResult_Verdict "IMAGE_VERDICT_UNSPECIFIED"

-- | Image conforms to the policy.
pattern ImageResult_Verdict_Conformant :: ImageResult_Verdict
pattern ImageResult_Verdict_Conformant = ImageResult_Verdict "CONFORMANT"

-- | Image does not conform to the policy.
pattern ImageResult_Verdict_NONCONFORMANT :: ImageResult_Verdict
pattern ImageResult_Verdict_NONCONFORMANT = ImageResult_Verdict "NON_CONFORMANT"

-- | Error evaluating the image. Non-conformance has precedence over errors.
pattern ImageResult_Verdict_Error' :: ImageResult_Verdict
pattern ImageResult_Verdict_Error' = ImageResult_Verdict "ERROR"

{-# COMPLETE
  ImageResult_Verdict_IMAGEVERDICTUNSPECIFIED,
  ImageResult_Verdict_Conformant,
  ImageResult_Verdict_NONCONFORMANT,
  ImageResult_Verdict_Error',
  ImageResult_Verdict #-}

-- | The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in @public_key_pem@ (i.e. this algorithm must match that of the public key).
newtype PkixPublicKey_SignatureAlgorithm = PkixPublicKey_SignatureAlgorithm { fromPkixPublicKey_SignatureAlgorithm :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern PkixPublicKey_SignatureAlgorithm_SIGNATUREALGORITHMUNSPECIFIED :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_SIGNATUREALGORITHMUNSPECIFIED = PkixPublicKey_SignatureAlgorithm "SIGNATURE_ALGORITHM_UNSPECIFIED"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_2048_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_2048_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_PSS_2048_SHA256"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_2048_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_2048_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PSS_2048_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_3072_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_3072_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_PSS_3072_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_3072_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_3072_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PSS_3072_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA512 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA512 = PkixPublicKey_SignatureAlgorithm "RSA_PSS_4096_SHA512"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA512 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA512 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PSS_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_2048_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_2048_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PKCS1_2048_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_3072_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_3072_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PKCS1_3072_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA256 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PKCS1_4096_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA512 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA512 = PkixPublicKey_SignatureAlgorithm "RSA_SIGN_PKCS1_4096_SHA512"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_ECDSA_P256_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_ECDSA_P256_SHA256 = PkixPublicKey_SignatureAlgorithm "ECDSA_P256_SHA256"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest.
pattern PkixPublicKey_SignatureAlgorithm_EC_SIGN_P256_SHA256 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_EC_SIGN_P256_SHA256 = PkixPublicKey_SignatureAlgorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest.
pattern PkixPublicKey_SignatureAlgorithm_ECDSA_P384_SHA384 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_ECDSA_P384_SHA384 = PkixPublicKey_SignatureAlgorithm "ECDSA_P384_SHA384"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest.
pattern PkixPublicKey_SignatureAlgorithm_EC_SIGN_P384_SHA384 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_EC_SIGN_P384_SHA384 = PkixPublicKey_SignatureAlgorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the NIST P-521 curve with a SHA512 digest.
pattern PkixPublicKey_SignatureAlgorithm_ECDSA_P521_SHA512 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_ECDSA_P521_SHA512 = PkixPublicKey_SignatureAlgorithm "ECDSA_P521_SHA512"

-- | ECDSA on the NIST P-521 curve with a SHA512 digest.
pattern PkixPublicKey_SignatureAlgorithm_EC_SIGN_P521_SHA512 :: PkixPublicKey_SignatureAlgorithm
pattern PkixPublicKey_SignatureAlgorithm_EC_SIGN_P521_SHA512 = PkixPublicKey_SignatureAlgorithm "EC_SIGN_P521_SHA512"

{-# COMPLETE
  PkixPublicKey_SignatureAlgorithm_SIGNATUREALGORITHMUNSPECIFIED,
  PkixPublicKey_SignatureAlgorithm_RSA_PSS_2048_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_2048_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_PSS_3072_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_3072_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_PSS_4096_SHA512,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PSS_4096_SHA512,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_2048_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_3072_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA256,
  PkixPublicKey_SignatureAlgorithm_RSA_SIGN_PKCS1_4096_SHA512,
  PkixPublicKey_SignatureAlgorithm_ECDSA_P256_SHA256,
  PkixPublicKey_SignatureAlgorithm_EC_SIGN_P256_SHA256,
  PkixPublicKey_SignatureAlgorithm_ECDSA_P384_SHA384,
  PkixPublicKey_SignatureAlgorithm_EC_SIGN_P384_SHA384,
  PkixPublicKey_SignatureAlgorithm_ECDSA_P521_SHA512,
  PkixPublicKey_SignatureAlgorithm_EC_SIGN_P521_SHA512,
  PkixPublicKey_SignatureAlgorithm #-}

-- | The result of evaluating this Pod.
newtype PodResult_Verdict = PodResult_Verdict { fromPodResult_Verdict :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. This should never be used.
pattern PodResult_Verdict_PODVERDICTUNSPECIFIED :: PodResult_Verdict
pattern PodResult_Verdict_PODVERDICTUNSPECIFIED = PodResult_Verdict "POD_VERDICT_UNSPECIFIED"

-- | All images conform to the policy.
pattern PodResult_Verdict_Conformant :: PodResult_Verdict
pattern PodResult_Verdict_Conformant = PodResult_Verdict "CONFORMANT"

-- | At least one image does not conform to the policy.
pattern PodResult_Verdict_NONCONFORMANT :: PodResult_Verdict
pattern PodResult_Verdict_NONCONFORMANT = PodResult_Verdict "NON_CONFORMANT"

-- | Encountered at least one error evaluating an image and all other images with non-error verdicts conform to the policy. Non-conformance has precedence over errors.
pattern PodResult_Verdict_Error' :: PodResult_Verdict
pattern PodResult_Verdict_Error' = PodResult_Verdict "ERROR"

{-# COMPLETE
  PodResult_Verdict_PODVERDICTUNSPECIFIED,
  PodResult_Verdict_Conformant,
  PodResult_Verdict_NONCONFORMANT,
  PodResult_Verdict_Error',
  PodResult_Verdict #-}

-- | Optional. Controls the evaluation of a Google-maintained global admission policy for common system-level images. Images not covered by the global policy will be subject to the project admission policy. This setting has no effect when specified inside a global admission policy.
newtype Policy_GlobalPolicyEvaluationMode = Policy_GlobalPolicyEvaluationMode { fromPolicy_GlobalPolicyEvaluationMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified: @DISABLE@ is assumed.
pattern Policy_GlobalPolicyEvaluationMode_GLOBALPOLICYEVALUATIONMODEUNSPECIFIED :: Policy_GlobalPolicyEvaluationMode
pattern Policy_GlobalPolicyEvaluationMode_GLOBALPOLICYEVALUATIONMODEUNSPECIFIED = Policy_GlobalPolicyEvaluationMode "GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED"

-- | Enables system policy evaluation.
pattern Policy_GlobalPolicyEvaluationMode_Enable :: Policy_GlobalPolicyEvaluationMode
pattern Policy_GlobalPolicyEvaluationMode_Enable = Policy_GlobalPolicyEvaluationMode "ENABLE"

-- | Disables system policy evaluation.
pattern Policy_GlobalPolicyEvaluationMode_Disable :: Policy_GlobalPolicyEvaluationMode
pattern Policy_GlobalPolicyEvaluationMode_Disable = Policy_GlobalPolicyEvaluationMode "DISABLE"

{-# COMPLETE
  Policy_GlobalPolicyEvaluationMode_GLOBALPOLICYEVALUATIONMODEUNSPECIFIED,
  Policy_GlobalPolicyEvaluationMode_Enable,
  Policy_GlobalPolicyEvaluationMode_Disable,
  Policy_GlobalPolicyEvaluationMode #-}

-- | The result of the Attestation validation.
newtype ValidateAttestationOccurrenceResponse_Result = ValidateAttestationOccurrenceResponse_Result { fromValidateAttestationOccurrenceResponse_Result :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern ValidateAttestationOccurrenceResponse_Result_RESULTUNSPECIFIED :: ValidateAttestationOccurrenceResponse_Result
pattern ValidateAttestationOccurrenceResponse_Result_RESULTUNSPECIFIED = ValidateAttestationOccurrenceResponse_Result "RESULT_UNSPECIFIED"

-- | The Attestation was able to verified by the Attestor.
pattern ValidateAttestationOccurrenceResponse_Result_Verified :: ValidateAttestationOccurrenceResponse_Result
pattern ValidateAttestationOccurrenceResponse_Result_Verified = ValidateAttestationOccurrenceResponse_Result "VERIFIED"

-- | The Attestation was not able to verified by the Attestor.
pattern ValidateAttestationOccurrenceResponse_Result_ATTESTATIONNOTVERIFIABLE :: ValidateAttestationOccurrenceResponse_Result
pattern ValidateAttestationOccurrenceResponse_Result_ATTESTATIONNOTVERIFIABLE = ValidateAttestationOccurrenceResponse_Result "ATTESTATION_NOT_VERIFIABLE"

{-# COMPLETE
  ValidateAttestationOccurrenceResponse_Result_RESULTUNSPECIFIED,
  ValidateAttestationOccurrenceResponse_Result_Verified,
  ValidateAttestationOccurrenceResponse_Result_ATTESTATIONNOTVERIFIABLE,
  ValidateAttestationOccurrenceResponse_Result #-}

-- | Each verification rule is used for evaluation against provenances generated by a specific builder (group). For some of the builders, such as the Google Cloud Build, users don\'t need to explicitly specify their roots of trust in the policy since the evaluation service can automatically fetch them based on the builder (group).
newtype VerificationRule_TrustedBuilder = VerificationRule_TrustedBuilder { fromVerificationRule_TrustedBuilder :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should never happen.
pattern VerificationRule_TrustedBuilder_BUILDERUNSPECIFIED :: VerificationRule_TrustedBuilder
pattern VerificationRule_TrustedBuilder_BUILDERUNSPECIFIED = VerificationRule_TrustedBuilder "BUILDER_UNSPECIFIED"

-- | The whole Google Cloud Build (GCB) builder group, including all GCB builder types.
pattern VerificationRule_TrustedBuilder_GOOGLECLOUDBUILD :: VerificationRule_TrustedBuilder
pattern VerificationRule_TrustedBuilder_GOOGLECLOUDBUILD = VerificationRule_TrustedBuilder "GOOGLE_CLOUD_BUILD"

{-# COMPLETE
  VerificationRule_TrustedBuilder_BUILDERUNSPECIFIED,
  VerificationRule_TrustedBuilder_GOOGLECLOUDBUILD,
  VerificationRule_TrustedBuilder #-}

-- | Required. The threshold for severity for which a fix is currently available. This field is required and must be set.
newtype VulnerabilityCheck_MaximumFixableSeverity = VulnerabilityCheck_MaximumFixableSeverity { fromVulnerabilityCheck_MaximumFixableSeverity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern VulnerabilityCheck_MaximumFixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED = VulnerabilityCheck_MaximumFixableSeverity "MAXIMUM_ALLOWED_SEVERITY_UNSPECIFIED"

-- | Block any vulnerability.
pattern VulnerabilityCheck_MaximumFixableSeverity_BLOCKALL :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_BLOCKALL = VulnerabilityCheck_MaximumFixableSeverity "BLOCK_ALL"

-- | Allow only minimal severity.
pattern VulnerabilityCheck_MaximumFixableSeverity_Minimal :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_Minimal = VulnerabilityCheck_MaximumFixableSeverity "MINIMAL"

-- | Allow only low severity and lower.
pattern VulnerabilityCheck_MaximumFixableSeverity_Low :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_Low = VulnerabilityCheck_MaximumFixableSeverity "LOW"

-- | Allow medium severity and lower.
pattern VulnerabilityCheck_MaximumFixableSeverity_Medium :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_Medium = VulnerabilityCheck_MaximumFixableSeverity "MEDIUM"

-- | Allow high severity and lower.
pattern VulnerabilityCheck_MaximumFixableSeverity_High :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_High = VulnerabilityCheck_MaximumFixableSeverity "HIGH"

-- | Allow critical severity and lower.
pattern VulnerabilityCheck_MaximumFixableSeverity_Critical :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_Critical = VulnerabilityCheck_MaximumFixableSeverity "CRITICAL"

-- | Allow all severity, even vulnerability with unspecified severity.
pattern VulnerabilityCheck_MaximumFixableSeverity_ALLOWALL :: VulnerabilityCheck_MaximumFixableSeverity
pattern VulnerabilityCheck_MaximumFixableSeverity_ALLOWALL = VulnerabilityCheck_MaximumFixableSeverity "ALLOW_ALL"

{-# COMPLETE
  VulnerabilityCheck_MaximumFixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED,
  VulnerabilityCheck_MaximumFixableSeverity_BLOCKALL,
  VulnerabilityCheck_MaximumFixableSeverity_Minimal,
  VulnerabilityCheck_MaximumFixableSeverity_Low,
  VulnerabilityCheck_MaximumFixableSeverity_Medium,
  VulnerabilityCheck_MaximumFixableSeverity_High,
  VulnerabilityCheck_MaximumFixableSeverity_Critical,
  VulnerabilityCheck_MaximumFixableSeverity_ALLOWALL,
  VulnerabilityCheck_MaximumFixableSeverity #-}

-- | Required. The threshold for severity for which a fix isn\'t currently available. This field is required and must be set.
newtype VulnerabilityCheck_MaximumUnfixableSeverity = VulnerabilityCheck_MaximumUnfixableSeverity { fromVulnerabilityCheck_MaximumUnfixableSeverity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED = VulnerabilityCheck_MaximumUnfixableSeverity "MAXIMUM_ALLOWED_SEVERITY_UNSPECIFIED"

-- | Block any vulnerability.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_BLOCKALL :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_BLOCKALL = VulnerabilityCheck_MaximumUnfixableSeverity "BLOCK_ALL"

-- | Allow only minimal severity.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Minimal :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Minimal = VulnerabilityCheck_MaximumUnfixableSeverity "MINIMAL"

-- | Allow only low severity and lower.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Low :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Low = VulnerabilityCheck_MaximumUnfixableSeverity "LOW"

-- | Allow medium severity and lower.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Medium :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Medium = VulnerabilityCheck_MaximumUnfixableSeverity "MEDIUM"

-- | Allow high severity and lower.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_High :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_High = VulnerabilityCheck_MaximumUnfixableSeverity "HIGH"

-- | Allow critical severity and lower.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Critical :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_Critical = VulnerabilityCheck_MaximumUnfixableSeverity "CRITICAL"

-- | Allow all severity, even vulnerability with unspecified severity.
pattern VulnerabilityCheck_MaximumUnfixableSeverity_ALLOWALL :: VulnerabilityCheck_MaximumUnfixableSeverity
pattern VulnerabilityCheck_MaximumUnfixableSeverity_ALLOWALL = VulnerabilityCheck_MaximumUnfixableSeverity "ALLOW_ALL"

{-# COMPLETE
  VulnerabilityCheck_MaximumUnfixableSeverity_MAXIMUMALLOWEDSEVERITYUNSPECIFIED,
  VulnerabilityCheck_MaximumUnfixableSeverity_BLOCKALL,
  VulnerabilityCheck_MaximumUnfixableSeverity_Minimal,
  VulnerabilityCheck_MaximumUnfixableSeverity_Low,
  VulnerabilityCheck_MaximumUnfixableSeverity_Medium,
  VulnerabilityCheck_MaximumUnfixableSeverity_High,
  VulnerabilityCheck_MaximumUnfixableSeverity_Critical,
  VulnerabilityCheck_MaximumUnfixableSeverity_ALLOWALL,
  VulnerabilityCheck_MaximumUnfixableSeverity #-}
