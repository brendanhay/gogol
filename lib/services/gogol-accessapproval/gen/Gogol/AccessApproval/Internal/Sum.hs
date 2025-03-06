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
-- Module      : Gogol.AccessApproval.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AccessApproval.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccessApprovalSettings_RequestScopeMaxWidthPreference
    AccessApprovalSettings_RequestScopeMaxWidthPreference
      ( AccessApprovalSettings_RequestScopeMaxWidthPreference_REQUESTSCOPEMAXWIDTHPREFERENCEUNSPECIFIED,
        AccessApprovalSettings_RequestScopeMaxWidthPreference_Organization,
        AccessApprovalSettings_RequestScopeMaxWidthPreference_Folder,
        AccessApprovalSettings_RequestScopeMaxWidthPreference_Project,
        ..
      ),

    -- * AccessReason_Type
    AccessReason_Type
      ( AccessReason_Type_TYPEUNSPECIFIED,
        AccessReason_Type_CUSTOMERINITIATEDSUPPORT,
        AccessReason_Type_GOOGLEINITIATEDSERVICE,
        AccessReason_Type_GOOGLEINITIATEDREVIEW,
        AccessReason_Type_THIRDPARTYDATAREQUEST,
        AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT,
        AccessReason_Type_CLOUDINITIATEDACCESS,
        ..
      ),

    -- * EnrolledService_EnrollmentLevel
    EnrolledService_EnrollmentLevel
      ( EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED,
        EnrolledService_EnrollmentLevel_BLOCKALL,
        ..
      ),

    -- * SignatureInfo_GoogleKeyAlgorithm
    SignatureInfo_GoogleKeyAlgorithm
      ( SignatureInfo_GoogleKeyAlgorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        SignatureInfo_GoogleKeyAlgorithm_GOOGLESYMMETRICENCRYPTION,
        SignatureInfo_GoogleKeyAlgorithm_AES128GCM,
        SignatureInfo_GoogleKeyAlgorithm_AES256GCM,
        SignatureInfo_GoogleKeyAlgorithm_AES128CBC,
        SignatureInfo_GoogleKeyAlgorithm_AES256CBC,
        SignatureInfo_GoogleKeyAlgorithm_AES128CTR,
        SignatureInfo_GoogleKeyAlgorithm_AES256CTR,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_2048_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_3072_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA512,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_2048_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_3072_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA512,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_2048,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_3072,
        SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_4096,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA512,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA1,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA1,
        SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA1,
        SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P256_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P384_SHA384,
        SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_SECP256K1_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_ED25519,
        SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA256,
        SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA1,
        SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA384,
        SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA512,
        SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA224,
        SignatureInfo_GoogleKeyAlgorithm_EXTERNALSYMMETRICENCRYPTION,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

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

-- | Optional. A setting to indicate the maximum width of an Access Approval request.
newtype AccessApprovalSettings_RequestScopeMaxWidthPreference = AccessApprovalSettings_RequestScopeMaxWidthPreference {fromAccessApprovalSettings_RequestScopeMaxWidthPreference :: Core.Text}
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

-- | Default value for proto, shouldn\'t be used.
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_REQUESTSCOPEMAXWIDTHPREFERENCEUNSPECIFIED :: AccessApprovalSettings_RequestScopeMaxWidthPreference
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_REQUESTSCOPEMAXWIDTHPREFERENCEUNSPECIFIED = AccessApprovalSettings_RequestScopeMaxWidthPreference "REQUEST_SCOPE_MAX_WIDTH_PREFERENCE_UNSPECIFIED"

-- | This is the widest scope possible. It means the customer has no scope restriction when it comes to Access Approval requests.
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_Organization :: AccessApprovalSettings_RequestScopeMaxWidthPreference
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_Organization = AccessApprovalSettings_RequestScopeMaxWidthPreference "ORGANIZATION"

-- | Customer allows the scope of Access Approval requests as broad as the Folder level.
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_Folder :: AccessApprovalSettings_RequestScopeMaxWidthPreference
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_Folder = AccessApprovalSettings_RequestScopeMaxWidthPreference "FOLDER"

-- | Customer allows the scope of Access Approval requests as broad as the Project level.
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_Project :: AccessApprovalSettings_RequestScopeMaxWidthPreference
pattern AccessApprovalSettings_RequestScopeMaxWidthPreference_Project = AccessApprovalSettings_RequestScopeMaxWidthPreference "PROJECT"

{-# COMPLETE
  AccessApprovalSettings_RequestScopeMaxWidthPreference_REQUESTSCOPEMAXWIDTHPREFERENCEUNSPECIFIED,
  AccessApprovalSettings_RequestScopeMaxWidthPreference_Organization,
  AccessApprovalSettings_RequestScopeMaxWidthPreference_Folder,
  AccessApprovalSettings_RequestScopeMaxWidthPreference_Project,
  AccessApprovalSettings_RequestScopeMaxWidthPreference
  #-}

-- | Type of access justification.
newtype AccessReason_Type = AccessReason_Type {fromAccessReason_Type :: Core.Text}
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

-- | Default value for proto, shouldn\'t be used.
pattern AccessReason_Type_TYPEUNSPECIFIED :: AccessReason_Type
pattern AccessReason_Type_TYPEUNSPECIFIED = AccessReason_Type "TYPE_UNSPECIFIED"

-- | Customer made a request or raised an issue that required the principal to access customer data. @detail@ is of the form (\"#####\" is the issue ID): * \"Feedback Report: #####\" * \"Case Number: #####\" * \"Case ID: #####\" * \"E-PIN Reference: #####\" * \"Google-#####\" * \"T-#####\"
pattern AccessReason_Type_CUSTOMERINITIATEDSUPPORT :: AccessReason_Type
pattern AccessReason_Type_CUSTOMERINITIATEDSUPPORT = AccessReason_Type "CUSTOMER_INITIATED_SUPPORT"

-- | The principal accessed customer data in order to diagnose or resolve a suspected issue in services. Often this access is used to confirm that customers are not affected by a suspected service issue or to remediate a reversible system issue.
pattern AccessReason_Type_GOOGLEINITIATEDSERVICE :: AccessReason_Type
pattern AccessReason_Type_GOOGLEINITIATEDSERVICE = AccessReason_Type "GOOGLE_INITIATED_SERVICE"

-- | Google initiated service for security, fraud, abuse, or compliance purposes.
pattern AccessReason_Type_GOOGLEINITIATEDREVIEW :: AccessReason_Type
pattern AccessReason_Type_GOOGLEINITIATEDREVIEW = AccessReason_Type "GOOGLE_INITIATED_REVIEW"

-- | The principal was compelled to access customer data in order to respond to a legal third party data request or process, including legal processes from customers themselves.
pattern AccessReason_Type_THIRDPARTYDATAREQUEST :: AccessReason_Type
pattern AccessReason_Type_THIRDPARTYDATAREQUEST = AccessReason_Type "THIRD_PARTY_DATA_REQUEST"

-- | The principal accessed customer data in order to diagnose or resolve a suspected issue in services or a known outage.
pattern AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT :: AccessReason_Type
pattern AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT = AccessReason_Type "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT"

-- | Similar to \'GOOGLE/INITIATED/SERVICE\' or \'GOOGLE/INITIATED/REVIEW\', but with universe agnostic naming. The principal accessed customer data in order to diagnose or resolve a suspected issue in services or a known outage, or for security, fraud, abuse, or compliance review purposes.
pattern AccessReason_Type_CLOUDINITIATEDACCESS :: AccessReason_Type
pattern AccessReason_Type_CLOUDINITIATEDACCESS = AccessReason_Type "CLOUD_INITIATED_ACCESS"

{-# COMPLETE
  AccessReason_Type_TYPEUNSPECIFIED,
  AccessReason_Type_CUSTOMERINITIATEDSUPPORT,
  AccessReason_Type_GOOGLEINITIATEDSERVICE,
  AccessReason_Type_GOOGLEINITIATEDREVIEW,
  AccessReason_Type_THIRDPARTYDATAREQUEST,
  AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT,
  AccessReason_Type_CLOUDINITIATEDACCESS,
  AccessReason_Type
  #-}

-- | The enrollment level of the service.
newtype EnrolledService_EnrollmentLevel = EnrolledService_EnrollmentLevel {fromEnrolledService_EnrollmentLevel :: Core.Text}
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

-- | Default value for proto, shouldn\'t be used.
pattern EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED :: EnrolledService_EnrollmentLevel
pattern EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED = EnrolledService_EnrollmentLevel "ENROLLMENT_LEVEL_UNSPECIFIED"

-- | Service is enrolled in Access Approval for all requests
pattern EnrolledService_EnrollmentLevel_BLOCKALL :: EnrolledService_EnrollmentLevel
pattern EnrolledService_EnrollmentLevel_BLOCKALL = EnrolledService_EnrollmentLevel "BLOCK_ALL"

{-# COMPLETE
  EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED,
  EnrolledService_EnrollmentLevel_BLOCKALL,
  EnrolledService_EnrollmentLevel
  #-}

-- | The hashing algorithm used for signature verification. It will only be present in the case of Google managed keys.
newtype SignatureInfo_GoogleKeyAlgorithm = SignatureInfo_GoogleKeyAlgorithm {fromSignatureInfo_GoogleKeyAlgorithm :: Core.Text}
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
pattern SignatureInfo_GoogleKeyAlgorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED = SignatureInfo_GoogleKeyAlgorithm "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"

-- | Creates symmetric encryption keys.
pattern SignatureInfo_GoogleKeyAlgorithm_GOOGLESYMMETRICENCRYPTION :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_GOOGLESYMMETRICENCRYPTION = SignatureInfo_GoogleKeyAlgorithm "GOOGLE_SYMMETRIC_ENCRYPTION"

-- | AES-GCM (Galois Counter Mode) using 128-bit keys.
pattern SignatureInfo_GoogleKeyAlgorithm_AES128GCM :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_AES128GCM = SignatureInfo_GoogleKeyAlgorithm "AES_128_GCM"

-- | AES-GCM (Galois Counter Mode) using 256-bit keys.
pattern SignatureInfo_GoogleKeyAlgorithm_AES256GCM :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_AES256GCM = SignatureInfo_GoogleKeyAlgorithm "AES_256_GCM"

-- | AES-CBC (Cipher Block Chaining Mode) using 128-bit keys.
pattern SignatureInfo_GoogleKeyAlgorithm_AES128CBC :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_AES128CBC = SignatureInfo_GoogleKeyAlgorithm "AES_128_CBC"

-- | AES-CBC (Cipher Block Chaining Mode) using 256-bit keys.
pattern SignatureInfo_GoogleKeyAlgorithm_AES256CBC :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_AES256CBC = SignatureInfo_GoogleKeyAlgorithm "AES_256_CBC"

-- | AES-CTR (Counter Mode) using 128-bit keys.
pattern SignatureInfo_GoogleKeyAlgorithm_AES128CTR :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_AES128CTR = SignatureInfo_GoogleKeyAlgorithm "AES_128_CTR"

-- | AES-CTR (Counter Mode) using 256-bit keys.
pattern SignatureInfo_GoogleKeyAlgorithm_AES256CTR :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_AES256CTR = SignatureInfo_GoogleKeyAlgorithm "AES_256_CTR"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_2048_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_2048_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PSS_2048_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_3072_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_3072_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PSS_3072_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA512 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA512 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PSS_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_2048_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_2048_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PKCS1_2048_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_3072_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_3072_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PKCS1_3072_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PKCS1_4096_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA512 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA512 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_PKCS1_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_2048 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_2048 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_RAW_PKCS1_2048"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_3072 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_3072 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_RAW_PKCS1_3072"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_4096 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_4096 = SignatureInfo_GoogleKeyAlgorithm "RSA_SIGN_RAW_PKCS1_4096"

-- | RSAES-OAEP 2048 bit key with a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_2048_SHA256"

-- | RSAES-OAEP 3072 bit key with a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_3072_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA256 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA256 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_4096_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA512 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA512 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA512 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_4096_SHA512"

-- | RSAES-OAEP 2048 bit key with a SHA1 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA1 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA1 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_2048_SHA1"

-- | RSAES-OAEP 3072 bit key with a SHA1 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA1 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA1 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_3072_SHA1"

-- | RSAES-OAEP 4096 bit key with a SHA1 digest.
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA1 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA1 = SignatureInfo_GoogleKeyAlgorithm "RSA_DECRYPT_OAEP_4096_SHA1"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P256_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P256_SHA256 = SignatureInfo_GoogleKeyAlgorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P384_SHA384 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P384_SHA384 = SignatureInfo_GoogleKeyAlgorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_SECP256K1_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_SECP256K1_SHA256 = SignatureInfo_GoogleKeyAlgorithm "EC_SIGN_SECP256K1_SHA256"

-- | EdDSA on the Curve25519 in pure mode (taking data as input).
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_ED25519 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_ED25519 = SignatureInfo_GoogleKeyAlgorithm "EC_SIGN_ED25519"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA256 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA256 = SignatureInfo_GoogleKeyAlgorithm "HMAC_SHA256"

-- | HMAC-SHA1 signing with a 160 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA1 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA1 = SignatureInfo_GoogleKeyAlgorithm "HMAC_SHA1"

-- | HMAC-SHA384 signing with a 384 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA384 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA384 = SignatureInfo_GoogleKeyAlgorithm "HMAC_SHA384"

-- | HMAC-SHA512 signing with a 512 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA512 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA512 = SignatureInfo_GoogleKeyAlgorithm "HMAC_SHA512"

-- | HMAC-SHA224 signing with a 224 bit key.
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA224 :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA224 = SignatureInfo_GoogleKeyAlgorithm "HMAC_SHA224"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern SignatureInfo_GoogleKeyAlgorithm_EXTERNALSYMMETRICENCRYPTION :: SignatureInfo_GoogleKeyAlgorithm
pattern SignatureInfo_GoogleKeyAlgorithm_EXTERNALSYMMETRICENCRYPTION = SignatureInfo_GoogleKeyAlgorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

{-# COMPLETE
  SignatureInfo_GoogleKeyAlgorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  SignatureInfo_GoogleKeyAlgorithm_GOOGLESYMMETRICENCRYPTION,
  SignatureInfo_GoogleKeyAlgorithm_AES128GCM,
  SignatureInfo_GoogleKeyAlgorithm_AES256GCM,
  SignatureInfo_GoogleKeyAlgorithm_AES128CBC,
  SignatureInfo_GoogleKeyAlgorithm_AES256CBC,
  SignatureInfo_GoogleKeyAlgorithm_AES128CTR,
  SignatureInfo_GoogleKeyAlgorithm_AES256CTR,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_2048_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_3072_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PSS_4096_SHA512,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_2048_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_3072_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_PKCS1_4096_SHA512,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_2048,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_3072,
  SignatureInfo_GoogleKeyAlgorithm_RSA_SIGN_RAW_PKCS1_4096,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA512,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_2048_SHA1,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_3072_SHA1,
  SignatureInfo_GoogleKeyAlgorithm_RSA_DECRYPT_OAEP_4096_SHA1,
  SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P256_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_P384_SHA384,
  SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_SECP256K1_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_EC_SIGN_ED25519,
  SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA256,
  SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA1,
  SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA384,
  SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA512,
  SignatureInfo_GoogleKeyAlgorithm_HMAC_SHA224,
  SignatureInfo_GoogleKeyAlgorithm_EXTERNALSYMMETRICENCRYPTION,
  SignatureInfo_GoogleKeyAlgorithm
  #-}
