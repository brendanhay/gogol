{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BinaryAuthorization.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Required. The action when a pod creation is denied by the admission
-- rule.
data AdmissionRuleEnforcementMode
    = EnforcementModeUnspecified
      -- ^ @ENFORCEMENT_MODE_UNSPECIFIED@
      -- Do not use.
    | EnforcedBlockAndAuditLog
      -- ^ @ENFORCED_BLOCK_AND_AUDIT_LOG@
      -- Enforce the admission rule by blocking the pod creation.
    | DryrunAuditLogOnly
      -- ^ @DRYRUN_AUDIT_LOG_ONLY@
      -- Dryrun mode: Audit logging only. This will allow the pod creation as if
      -- the admission request had specified break-glass.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdmissionRuleEnforcementMode

instance FromHttpApiData AdmissionRuleEnforcementMode where
    parseQueryParam = \case
        "ENFORCEMENT_MODE_UNSPECIFIED" -> Right EnforcementModeUnspecified
        "ENFORCED_BLOCK_AND_AUDIT_LOG" -> Right EnforcedBlockAndAuditLog
        "DRYRUN_AUDIT_LOG_ONLY" -> Right DryrunAuditLogOnly
        x -> Left ("Unable to parse AdmissionRuleEnforcementMode from: " <> x)

instance ToHttpApiData AdmissionRuleEnforcementMode where
    toQueryParam = \case
        EnforcementModeUnspecified -> "ENFORCEMENT_MODE_UNSPECIFIED"
        EnforcedBlockAndAuditLog -> "ENFORCED_BLOCK_AND_AUDIT_LOG"
        DryrunAuditLogOnly -> "DRYRUN_AUDIT_LOG_ONLY"

instance FromJSON AdmissionRuleEnforcementMode where
    parseJSON = parseJSONText "AdmissionRuleEnforcementMode"

instance ToJSON AdmissionRuleEnforcementMode where
    toJSON = toJSONText

-- | Optional. Controls the evaluation of a Google-maintained global
-- admission policy for common system-level images. Images not covered by
-- the global policy will be subject to the project admission policy. This
-- setting has no effect when specified inside a global admission policy.
data PolicyGlobalPolicyEvaluationMode
    = GlobalPolicyEvaluationModeUnspecified
      -- ^ @GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED@
      -- Not specified: DISABLE is assumed.
    | Enable
      -- ^ @ENABLE@
      -- Enables global policy evaluation.
    | Disable
      -- ^ @DISABLE@
      -- Disables global policy evaluation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PolicyGlobalPolicyEvaluationMode

instance FromHttpApiData PolicyGlobalPolicyEvaluationMode where
    parseQueryParam = \case
        "GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED" -> Right GlobalPolicyEvaluationModeUnspecified
        "ENABLE" -> Right Enable
        "DISABLE" -> Right Disable
        x -> Left ("Unable to parse PolicyGlobalPolicyEvaluationMode from: " <> x)

instance ToHttpApiData PolicyGlobalPolicyEvaluationMode where
    toQueryParam = \case
        GlobalPolicyEvaluationModeUnspecified -> "GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED"
        Enable -> "ENABLE"
        Disable -> "DISABLE"

instance FromJSON PolicyGlobalPolicyEvaluationMode where
    parseJSON = parseJSONText "PolicyGlobalPolicyEvaluationMode"

instance ToJSON PolicyGlobalPolicyEvaluationMode where
    toJSON = toJSONText

-- | The signature algorithm used to verify a message against a signature
-- using this key. These signature algorithm must match the structure and
-- any object identifiers encoded in \`public_key_pem\` (i.e. this
-- algorithm must match that of the public key).
data PkixPublicKeySignatureAlgorithm
    = SignatureAlgorithmUnspecified
      -- ^ @SIGNATURE_ALGORITHM_UNSPECIFIED@
      -- Not specified.
    | RsaPss2048SHA256
      -- ^ @RSA_PSS_2048_SHA256@
      -- RSASSA-PSS 2048 bit key with a SHA256 digest.
    | RsaPss3072SHA256
      -- ^ @RSA_PSS_3072_SHA256@
      -- RSASSA-PSS 3072 bit key with a SHA256 digest.
    | RsaPss4096SHA256
      -- ^ @RSA_PSS_4096_SHA256@
      -- RSASSA-PSS 4096 bit key with a SHA256 digest.
    | RsaPss4096SHA512
      -- ^ @RSA_PSS_4096_SHA512@
      -- RSASSA-PSS 4096 bit key with a SHA512 digest.
    | RsaSignPKCS12048SHA256
      -- ^ @RSA_SIGN_PKCS1_2048_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
    | RsaSignPKCS13072SHA256
      -- ^ @RSA_SIGN_PKCS1_3072_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
    | RsaSignPKCS14096SHA256
      -- ^ @RSA_SIGN_PKCS1_4096_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
    | RsaSignPKCS14096SHA512
      -- ^ @RSA_SIGN_PKCS1_4096_SHA512@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
    | EcdsaP256SHA256
      -- ^ @ECDSA_P256_SHA256@
      -- ECDSA on the NIST P-256 curve with a SHA256 digest.
    | EcdsaP384SHA384
      -- ^ @ECDSA_P384_SHA384@
      -- ECDSA on the NIST P-384 curve with a SHA384 digest.
    | EcdsaP521SHA512
      -- ^ @ECDSA_P521_SHA512@
      -- ECDSA on the NIST P-521 curve with a SHA512 digest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PkixPublicKeySignatureAlgorithm

instance FromHttpApiData PkixPublicKeySignatureAlgorithm where
    parseQueryParam = \case
        "SIGNATURE_ALGORITHM_UNSPECIFIED" -> Right SignatureAlgorithmUnspecified
        "RSA_PSS_2048_SHA256" -> Right RsaPss2048SHA256
        "RSA_PSS_3072_SHA256" -> Right RsaPss3072SHA256
        "RSA_PSS_4096_SHA256" -> Right RsaPss4096SHA256
        "RSA_PSS_4096_SHA512" -> Right RsaPss4096SHA512
        "RSA_SIGN_PKCS1_2048_SHA256" -> Right RsaSignPKCS12048SHA256
        "RSA_SIGN_PKCS1_3072_SHA256" -> Right RsaSignPKCS13072SHA256
        "RSA_SIGN_PKCS1_4096_SHA256" -> Right RsaSignPKCS14096SHA256
        "RSA_SIGN_PKCS1_4096_SHA512" -> Right RsaSignPKCS14096SHA512
        "ECDSA_P256_SHA256" -> Right EcdsaP256SHA256
        "ECDSA_P384_SHA384" -> Right EcdsaP384SHA384
        "ECDSA_P521_SHA512" -> Right EcdsaP521SHA512
        x -> Left ("Unable to parse PkixPublicKeySignatureAlgorithm from: " <> x)

instance ToHttpApiData PkixPublicKeySignatureAlgorithm where
    toQueryParam = \case
        SignatureAlgorithmUnspecified -> "SIGNATURE_ALGORITHM_UNSPECIFIED"
        RsaPss2048SHA256 -> "RSA_PSS_2048_SHA256"
        RsaPss3072SHA256 -> "RSA_PSS_3072_SHA256"
        RsaPss4096SHA256 -> "RSA_PSS_4096_SHA256"
        RsaPss4096SHA512 -> "RSA_PSS_4096_SHA512"
        RsaSignPKCS12048SHA256 -> "RSA_SIGN_PKCS1_2048_SHA256"
        RsaSignPKCS13072SHA256 -> "RSA_SIGN_PKCS1_3072_SHA256"
        RsaSignPKCS14096SHA256 -> "RSA_SIGN_PKCS1_4096_SHA256"
        RsaSignPKCS14096SHA512 -> "RSA_SIGN_PKCS1_4096_SHA512"
        EcdsaP256SHA256 -> "ECDSA_P256_SHA256"
        EcdsaP384SHA384 -> "ECDSA_P384_SHA384"
        EcdsaP521SHA512 -> "ECDSA_P521_SHA512"

instance FromJSON PkixPublicKeySignatureAlgorithm where
    parseJSON = parseJSONText "PkixPublicKeySignatureAlgorithm"

instance ToJSON PkixPublicKeySignatureAlgorithm where
    toJSON = toJSONText

-- | Required. How this admission rule will be evaluated.
data AdmissionRuleEvaluationMode
    = EvaluationModeUnspecified
      -- ^ @EVALUATION_MODE_UNSPECIFIED@
      -- Do not use.
    | AlwaysAllow
      -- ^ @ALWAYS_ALLOW@
      -- This rule allows all all pod creations.
    | RequireAttestation
      -- ^ @REQUIRE_ATTESTATION@
      -- This rule allows a pod creation if all the attestors listed in
      -- \'require_attestations_by\' have valid attestations for all of the
      -- images in the pod spec.
    | AlwaysDeny
      -- ^ @ALWAYS_DENY@
      -- This rule denies all pod creations.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AdmissionRuleEvaluationMode

instance FromHttpApiData AdmissionRuleEvaluationMode where
    parseQueryParam = \case
        "EVALUATION_MODE_UNSPECIFIED" -> Right EvaluationModeUnspecified
        "ALWAYS_ALLOW" -> Right AlwaysAllow
        "REQUIRE_ATTESTATION" -> Right RequireAttestation
        "ALWAYS_DENY" -> Right AlwaysDeny
        x -> Left ("Unable to parse AdmissionRuleEvaluationMode from: " <> x)

instance ToHttpApiData AdmissionRuleEvaluationMode where
    toQueryParam = \case
        EvaluationModeUnspecified -> "EVALUATION_MODE_UNSPECIFIED"
        AlwaysAllow -> "ALWAYS_ALLOW"
        RequireAttestation -> "REQUIRE_ATTESTATION"
        AlwaysDeny -> "ALWAYS_DENY"

instance FromJSON AdmissionRuleEvaluationMode where
    parseJSON = parseJSONText "AdmissionRuleEvaluationMode"

instance ToJSON AdmissionRuleEvaluationMode where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText
