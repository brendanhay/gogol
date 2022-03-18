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
-- Module      : Network.Google.BinaryAuthorization.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.BinaryAuthorization.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AdmissionRule_EnforcementMode
    AdmissionRule_EnforcementMode
      ( AdmissionRule_EnforcementMode_ENFORCEMENTMODEUNSPECIFIED,
        AdmissionRule_EnforcementMode_ENFORCEDBLOCKANDAUDITLOG,
        AdmissionRule_EnforcementMode_DRYRUNAUDITLOGONLY,
        ..
      ),

    -- * AdmissionRule_EvaluationMode
    AdmissionRule_EvaluationMode
      ( AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED,
        AdmissionRule_EvaluationMode_ALWAYSALLOW,
        AdmissionRule_EvaluationMode_REQUIREATTESTATION,
        AdmissionRule_EvaluationMode_ALWAYSDENY,
        ..
      ),

    -- * PkixPublicKey_SignatureAlgorithm
    PkixPublicKey_SignatureAlgorithm
      ( PkixPublicKey_SignatureAlgorithm_SIGNATUREALGORITHMUNSPECIFIED,
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

    -- * Policy_GlobalPolicyEvaluationMode
    Policy_GlobalPolicyEvaluationMode
      ( Policy_GlobalPolicyEvaluationMode_GLOBALPOLICYEVALUATIONMODEUNSPECIFIED,
        Policy_GlobalPolicyEvaluationMode_Enable,
        Policy_GlobalPolicyEvaluationMode_Disable,
        ..
      ),

    -- * ValidateAttestationOccurrenceResponse_Result
    ValidateAttestationOccurrenceResponse_Result
      ( ValidateAttestationOccurrenceResponse_Result_RESULTUNSPECIFIED,
        ValidateAttestationOccurrenceResponse_Result_Verified,
        ValidateAttestationOccurrenceResponse_Result_ATTESTATIONNOTVERIFIABLE,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | Required. The action when a pod creation is denied by the admission rule.
newtype AdmissionRule_EnforcementMode = AdmissionRule_EnforcementMode {fromAdmissionRule_EnforcementMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  AdmissionRule_EnforcementMode
  #-}

-- | Required. How this admission rule will be evaluated.
newtype AdmissionRule_EvaluationMode = AdmissionRule_EvaluationMode {fromAdmissionRule_EvaluationMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Do not use.
pattern AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED :: AdmissionRule_EvaluationMode
pattern AdmissionRule_EvaluationMode_EVALUATIONMODEUNSPECIFIED = AdmissionRule_EvaluationMode "EVALUATION_MODE_UNSPECIFIED"

-- | This rule allows all all pod creations.
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
  AdmissionRule_EvaluationMode
  #-}

-- | The signature algorithm used to verify a message against a signature using this key. These signature algorithm must match the structure and any object identifiers encoded in @public_key_pem@ (i.e. this algorithm must match that of the public key).
newtype PkixPublicKey_SignatureAlgorithm = PkixPublicKey_SignatureAlgorithm {fromPkixPublicKey_SignatureAlgorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  PkixPublicKey_SignatureAlgorithm
  #-}

-- | Optional. Controls the evaluation of a Google-maintained global admission policy for common system-level images. Images not covered by the global policy will be subject to the project admission policy. This setting has no effect when specified inside a global admission policy.
newtype Policy_GlobalPolicyEvaluationMode = Policy_GlobalPolicyEvaluationMode {fromPolicy_GlobalPolicyEvaluationMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified: DISABLE is assumed.
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
  Policy_GlobalPolicyEvaluationMode
  #-}

-- | The result of the Attestation validation.
newtype ValidateAttestationOccurrenceResponse_Result = ValidateAttestationOccurrenceResponse_Result {fromValidateAttestationOccurrenceResponse_Result :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  ValidateAttestationOccurrenceResponse_Result
  #-}
