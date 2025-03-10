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
-- Module      : Gogol.CloudKMS.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudKMS.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AsymmetricDecryptResponse_ProtectionLevel
    AsymmetricDecryptResponse_ProtectionLevel
      ( AsymmetricDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        AsymmetricDecryptResponse_ProtectionLevel_Software,
        AsymmetricDecryptResponse_ProtectionLevel_Hsm,
        AsymmetricDecryptResponse_ProtectionLevel_External,
        AsymmetricDecryptResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * AsymmetricSignResponse_ProtectionLevel
    AsymmetricSignResponse_ProtectionLevel
      ( AsymmetricSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        AsymmetricSignResponse_ProtectionLevel_Software,
        AsymmetricSignResponse_ProtectionLevel_Hsm,
        AsymmetricSignResponse_ProtectionLevel_External,
        AsymmetricSignResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * AutokeyConfig_State
    AutokeyConfig_State
      ( AutokeyConfig_State_STATEUNSPECIFIED,
        AutokeyConfig_State_Active,
        AutokeyConfig_State_KEYPROJECTDELETED,
        AutokeyConfig_State_Uninitialized,
        ..
      ),

    -- * CryptoKey_Purpose
    CryptoKey_Purpose
      ( CryptoKey_Purpose_CRYPTOKEYPURPOSEUNSPECIFIED,
        CryptoKey_Purpose_ENCRYPTDECRYPT,
        CryptoKey_Purpose_ASYMMETRICSIGN,
        CryptoKey_Purpose_ASYMMETRICDECRYPT,
        CryptoKey_Purpose_RAWENCRYPTDECRYPT,
        CryptoKey_Purpose_Mac,
        ..
      ),

    -- * CryptoKeyVersion_Algorithm
    CryptoKeyVersion_Algorithm
      ( CryptoKeyVersion_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        CryptoKeyVersion_Algorithm_GOOGLESYMMETRICENCRYPTION,
        CryptoKeyVersion_Algorithm_AES128GCM,
        CryptoKeyVersion_Algorithm_AES256GCM,
        CryptoKeyVersion_Algorithm_AES128CBC,
        CryptoKeyVersion_Algorithm_AES256CBC,
        CryptoKeyVersion_Algorithm_AES128CTR,
        CryptoKeyVersion_Algorithm_AES256CTR,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_2048_SHA256,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_3072_SHA256,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA256,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA512,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
        CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
        CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
        CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
        CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
        CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
        CryptoKeyVersion_Algorithm_EC_SIGN_P256_SHA256,
        CryptoKeyVersion_Algorithm_EC_SIGN_P384_SHA384,
        CryptoKeyVersion_Algorithm_EC_SIGN_SECP256K1_SHA256,
        CryptoKeyVersion_Algorithm_EC_SIGN_ED25519,
        CryptoKeyVersion_Algorithm_HMAC_SHA256,
        CryptoKeyVersion_Algorithm_HMAC_SHA1,
        CryptoKeyVersion_Algorithm_HMAC_SHA384,
        CryptoKeyVersion_Algorithm_HMAC_SHA512,
        CryptoKeyVersion_Algorithm_HMAC_SHA224,
        CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION,
        CryptoKeyVersion_Algorithm_PQ_SIGN_ML_DSA_65,
        CryptoKeyVersion_Algorithm_PQSIGNSLHDSASHA2128S,
        ..
      ),

    -- * CryptoKeyVersion_ProtectionLevel
    CryptoKeyVersion_ProtectionLevel
      ( CryptoKeyVersion_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        CryptoKeyVersion_ProtectionLevel_Software,
        CryptoKeyVersion_ProtectionLevel_Hsm,
        CryptoKeyVersion_ProtectionLevel_External,
        CryptoKeyVersion_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * CryptoKeyVersion_State
    CryptoKeyVersion_State
      ( CryptoKeyVersion_State_CRYPTOKEYVERSIONSTATEUNSPECIFIED,
        CryptoKeyVersion_State_PENDINGGENERATION,
        CryptoKeyVersion_State_Enabled,
        CryptoKeyVersion_State_Disabled,
        CryptoKeyVersion_State_Destroyed,
        CryptoKeyVersion_State_DESTROYSCHEDULED,
        CryptoKeyVersion_State_PENDINGIMPORT,
        CryptoKeyVersion_State_IMPORTFAILED,
        CryptoKeyVersion_State_GENERATIONFAILED,
        CryptoKeyVersion_State_PENDINGEXTERNALDESTRUCTION,
        CryptoKeyVersion_State_EXTERNALDESTRUCTIONFAILED,
        ..
      ),

    -- * CryptoKeyVersionTemplate_Algorithm
    CryptoKeyVersionTemplate_Algorithm
      ( CryptoKeyVersionTemplate_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        CryptoKeyVersionTemplate_Algorithm_GOOGLESYMMETRICENCRYPTION,
        CryptoKeyVersionTemplate_Algorithm_AES128GCM,
        CryptoKeyVersionTemplate_Algorithm_AES256GCM,
        CryptoKeyVersionTemplate_Algorithm_AES128CBC,
        CryptoKeyVersionTemplate_Algorithm_AES256CBC,
        CryptoKeyVersionTemplate_Algorithm_AES128CTR,
        CryptoKeyVersionTemplate_Algorithm_AES256CTR,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_2048_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_3072_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA512,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
        CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
        CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
        CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P256_SHA256,
        CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P384_SHA384,
        CryptoKeyVersionTemplate_Algorithm_EC_SIGN_SECP256K1_SHA256,
        CryptoKeyVersionTemplate_Algorithm_EC_SIGN_ED25519,
        CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256,
        CryptoKeyVersionTemplate_Algorithm_HMAC_SHA1,
        CryptoKeyVersionTemplate_Algorithm_HMAC_SHA384,
        CryptoKeyVersionTemplate_Algorithm_HMAC_SHA512,
        CryptoKeyVersionTemplate_Algorithm_HMAC_SHA224,
        CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION,
        CryptoKeyVersionTemplate_Algorithm_PQ_SIGN_ML_DSA_65,
        CryptoKeyVersionTemplate_Algorithm_PQSIGNSLHDSASHA2128S,
        ..
      ),

    -- * CryptoKeyVersionTemplate_ProtectionLevel
    CryptoKeyVersionTemplate_ProtectionLevel
      ( CryptoKeyVersionTemplate_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        CryptoKeyVersionTemplate_ProtectionLevel_Software,
        CryptoKeyVersionTemplate_ProtectionLevel_Hsm,
        CryptoKeyVersionTemplate_ProtectionLevel_External,
        CryptoKeyVersionTemplate_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * DecryptResponse_ProtectionLevel
    DecryptResponse_ProtectionLevel
      ( DecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        DecryptResponse_ProtectionLevel_Software,
        DecryptResponse_ProtectionLevel_Hsm,
        DecryptResponse_ProtectionLevel_External,
        DecryptResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * EkmConnection_KeyManagementMode
    EkmConnection_KeyManagementMode
      ( EkmConnection_KeyManagementMode_KEYMANAGEMENTMODEUNSPECIFIED,
        EkmConnection_KeyManagementMode_Manual,
        EkmConnection_KeyManagementMode_CLOUDKMS,
        ..
      ),

    -- * EncryptResponse_ProtectionLevel
    EncryptResponse_ProtectionLevel
      ( EncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        EncryptResponse_ProtectionLevel_Software,
        EncryptResponse_ProtectionLevel_Hsm,
        EncryptResponse_ProtectionLevel_External,
        EncryptResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * GenerateRandomBytesRequest_ProtectionLevel
    GenerateRandomBytesRequest_ProtectionLevel
      ( GenerateRandomBytesRequest_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        GenerateRandomBytesRequest_ProtectionLevel_Software,
        GenerateRandomBytesRequest_ProtectionLevel_Hsm,
        GenerateRandomBytesRequest_ProtectionLevel_External,
        GenerateRandomBytesRequest_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * ImportCryptoKeyVersionRequest_Algorithm
    ImportCryptoKeyVersionRequest_Algorithm
      ( ImportCryptoKeyVersionRequest_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        ImportCryptoKeyVersionRequest_Algorithm_GOOGLESYMMETRICENCRYPTION,
        ImportCryptoKeyVersionRequest_Algorithm_AES128GCM,
        ImportCryptoKeyVersionRequest_Algorithm_AES256GCM,
        ImportCryptoKeyVersionRequest_Algorithm_AES128CBC,
        ImportCryptoKeyVersionRequest_Algorithm_AES256CBC,
        ImportCryptoKeyVersionRequest_Algorithm_AES128CTR,
        ImportCryptoKeyVersionRequest_Algorithm_AES256CTR,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_2048_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_3072_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA512,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
        ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
        ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P256_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P384_SHA384,
        ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_SECP256K1_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_ED25519,
        ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA1,
        ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA384,
        ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA512,
        ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA224,
        ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION,
        ImportCryptoKeyVersionRequest_Algorithm_PQ_SIGN_ML_DSA_65,
        ImportCryptoKeyVersionRequest_Algorithm_PQSIGNSLHDSASHA2128S,
        ..
      ),

    -- * ImportJob_ImportMethod
    ImportJob_ImportMethod
      ( ImportJob_ImportMethod_IMPORTMETHODUNSPECIFIED,
        ImportJob_ImportMethod_RSA_OAEP_3072_SHA1_AES_256,
        ImportJob_ImportMethod_RSA_OAEP_4096_SHA1_AES_256,
        ImportJob_ImportMethod_RSA_OAEP_3072_SHA256_AES_256,
        ImportJob_ImportMethod_RSA_OAEP_4096_SHA256_AES_256,
        ImportJob_ImportMethod_RSA_OAEP_3072_SHA256,
        ImportJob_ImportMethod_RSA_OAEP_4096_SHA256,
        ..
      ),

    -- * ImportJob_ProtectionLevel
    ImportJob_ProtectionLevel
      ( ImportJob_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        ImportJob_ProtectionLevel_Software,
        ImportJob_ProtectionLevel_Hsm,
        ImportJob_ProtectionLevel_External,
        ImportJob_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * ImportJob_State
    ImportJob_State
      ( ImportJob_State_IMPORTJOBSTATEUNSPECIFIED,
        ImportJob_State_PENDINGGENERATION,
        ImportJob_State_Active,
        ImportJob_State_Expired,
        ..
      ),

    -- * KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
    KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
      ( KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONUNSPECIFIED,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDSUPPORT,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSERVICE,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_THIRDPARTYDATAREQUEST,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDREVIEW,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDACCESS,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSYSTEMOPERATION,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONNOTEXPECTED,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDCUSTOMERINITIATEDACCESS,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDGOOGLEINITIATEDSYSTEMOPERATION,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLERESPONSETOPRODUCTIONALERT,
        KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERAUTHORIZEDWORKFLOWSERVICING,
        ..
      ),

    -- * KeyOperationAttestation_Format
    KeyOperationAttestation_Format
      ( KeyOperationAttestation_Format_ATTESTATIONFORMATUNSPECIFIED,
        KeyOperationAttestation_Format_CAVIUMV1COMPRESSED,
        KeyOperationAttestation_Format_CAVIUMV2COMPRESSED,
        ..
      ),

    -- * MacSignResponse_ProtectionLevel
    MacSignResponse_ProtectionLevel
      ( MacSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        MacSignResponse_ProtectionLevel_Software,
        MacSignResponse_ProtectionLevel_Hsm,
        MacSignResponse_ProtectionLevel_External,
        MacSignResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * MacVerifyResponse_ProtectionLevel
    MacVerifyResponse_ProtectionLevel
      ( MacVerifyResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        MacVerifyResponse_ProtectionLevel_Software,
        MacVerifyResponse_ProtectionLevel_Hsm,
        MacVerifyResponse_ProtectionLevel_External,
        MacVerifyResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * PublicKey_Algorithm
    PublicKey_Algorithm
      ( PublicKey_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        PublicKey_Algorithm_GOOGLESYMMETRICENCRYPTION,
        PublicKey_Algorithm_AES128GCM,
        PublicKey_Algorithm_AES256GCM,
        PublicKey_Algorithm_AES128CBC,
        PublicKey_Algorithm_AES256CBC,
        PublicKey_Algorithm_AES128CTR,
        PublicKey_Algorithm_AES256CTR,
        PublicKey_Algorithm_RSA_SIGN_PSS_2048_SHA256,
        PublicKey_Algorithm_RSA_SIGN_PSS_3072_SHA256,
        PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA256,
        PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA512,
        PublicKey_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
        PublicKey_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
        PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
        PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
        PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
        PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
        PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
        PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
        PublicKey_Algorithm_EC_SIGN_P256_SHA256,
        PublicKey_Algorithm_EC_SIGN_P384_SHA384,
        PublicKey_Algorithm_EC_SIGN_SECP256K1_SHA256,
        PublicKey_Algorithm_EC_SIGN_ED25519,
        PublicKey_Algorithm_HMAC_SHA256,
        PublicKey_Algorithm_HMAC_SHA1,
        PublicKey_Algorithm_HMAC_SHA384,
        PublicKey_Algorithm_HMAC_SHA512,
        PublicKey_Algorithm_HMAC_SHA224,
        PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION,
        PublicKey_Algorithm_PQ_SIGN_ML_DSA_65,
        PublicKey_Algorithm_PQSIGNSLHDSASHA2128S,
        ..
      ),

    -- * PublicKey_ProtectionLevel
    PublicKey_ProtectionLevel
      ( PublicKey_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        PublicKey_ProtectionLevel_Software,
        PublicKey_ProtectionLevel_Hsm,
        PublicKey_ProtectionLevel_External,
        PublicKey_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * PublicKey_PublicKeyFormat
    PublicKey_PublicKeyFormat
      ( PublicKey_PublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED,
        PublicKey_PublicKeyFormat_Pem,
        PublicKey_PublicKeyFormat_NISTPQC,
        ..
      ),

    -- * RawDecryptResponse_ProtectionLevel
    RawDecryptResponse_ProtectionLevel
      ( RawDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        RawDecryptResponse_ProtectionLevel_Software,
        RawDecryptResponse_ProtectionLevel_Hsm,
        RawDecryptResponse_ProtectionLevel_External,
        RawDecryptResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * RawEncryptResponse_ProtectionLevel
    RawEncryptResponse_ProtectionLevel
      ( RawEncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
        RawEncryptResponse_ProtectionLevel_Software,
        RawEncryptResponse_ProtectionLevel_Hsm,
        RawEncryptResponse_ProtectionLevel_External,
        RawEncryptResponse_ProtectionLevel_EXTERNALVPC,
        ..
      ),

    -- * ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
      ( ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED,
        ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_Pem,
        ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_NISTPQC,
        ..
      ),

    -- * ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
      ( ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_CRYPTOKEYVERSIONVIEWUNSPECIFIED,
        ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_Full,
        ..
      ),

    -- * ProjectsLocationsKeyRingsCryptoKeysListVersionView
    ProjectsLocationsKeyRingsCryptoKeysListVersionView
      ( ProjectsLocationsKeyRingsCryptoKeysListVersionView_CRYPTOKEYVERSIONVIEWUNSPECIFIED,
        ProjectsLocationsKeyRingsCryptoKeysListVersionView_Full,
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

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
newtype AsymmetricDecryptResponse_ProtectionLevel = AsymmetricDecryptResponse_ProtectionLevel {fromAsymmetricDecryptResponse_ProtectionLevel :: Core.Text}
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
pattern AsymmetricDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: AsymmetricDecryptResponse_ProtectionLevel
pattern AsymmetricDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = AsymmetricDecryptResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern AsymmetricDecryptResponse_ProtectionLevel_Software :: AsymmetricDecryptResponse_ProtectionLevel
pattern AsymmetricDecryptResponse_ProtectionLevel_Software = AsymmetricDecryptResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern AsymmetricDecryptResponse_ProtectionLevel_Hsm :: AsymmetricDecryptResponse_ProtectionLevel
pattern AsymmetricDecryptResponse_ProtectionLevel_Hsm = AsymmetricDecryptResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern AsymmetricDecryptResponse_ProtectionLevel_External :: AsymmetricDecryptResponse_ProtectionLevel
pattern AsymmetricDecryptResponse_ProtectionLevel_External = AsymmetricDecryptResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern AsymmetricDecryptResponse_ProtectionLevel_EXTERNALVPC :: AsymmetricDecryptResponse_ProtectionLevel
pattern AsymmetricDecryptResponse_ProtectionLevel_EXTERNALVPC = AsymmetricDecryptResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  AsymmetricDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  AsymmetricDecryptResponse_ProtectionLevel_Software,
  AsymmetricDecryptResponse_ProtectionLevel_Hsm,
  AsymmetricDecryptResponse_ProtectionLevel_External,
  AsymmetricDecryptResponse_ProtectionLevel_EXTERNALVPC,
  AsymmetricDecryptResponse_ProtectionLevel
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used for signing.
newtype AsymmetricSignResponse_ProtectionLevel = AsymmetricSignResponse_ProtectionLevel {fromAsymmetricSignResponse_ProtectionLevel :: Core.Text}
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
pattern AsymmetricSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: AsymmetricSignResponse_ProtectionLevel
pattern AsymmetricSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = AsymmetricSignResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern AsymmetricSignResponse_ProtectionLevel_Software :: AsymmetricSignResponse_ProtectionLevel
pattern AsymmetricSignResponse_ProtectionLevel_Software = AsymmetricSignResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern AsymmetricSignResponse_ProtectionLevel_Hsm :: AsymmetricSignResponse_ProtectionLevel
pattern AsymmetricSignResponse_ProtectionLevel_Hsm = AsymmetricSignResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern AsymmetricSignResponse_ProtectionLevel_External :: AsymmetricSignResponse_ProtectionLevel
pattern AsymmetricSignResponse_ProtectionLevel_External = AsymmetricSignResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern AsymmetricSignResponse_ProtectionLevel_EXTERNALVPC :: AsymmetricSignResponse_ProtectionLevel
pattern AsymmetricSignResponse_ProtectionLevel_EXTERNALVPC = AsymmetricSignResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  AsymmetricSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  AsymmetricSignResponse_ProtectionLevel_Software,
  AsymmetricSignResponse_ProtectionLevel_Hsm,
  AsymmetricSignResponse_ProtectionLevel_External,
  AsymmetricSignResponse_ProtectionLevel_EXTERNALVPC,
  AsymmetricSignResponse_ProtectionLevel
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
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

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | Output only. The state for the AutokeyConfig.
newtype AutokeyConfig_State = AutokeyConfig_State {fromAutokeyConfig_State :: Core.Text}
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

-- | The state of the AutokeyConfig is unspecified.
pattern AutokeyConfig_State_STATEUNSPECIFIED :: AutokeyConfig_State
pattern AutokeyConfig_State_STATEUNSPECIFIED = AutokeyConfig_State "STATE_UNSPECIFIED"

-- | The AutokeyConfig is currently active.
pattern AutokeyConfig_State_Active :: AutokeyConfig_State
pattern AutokeyConfig_State_Active = AutokeyConfig_State "ACTIVE"

-- | A previously configured key project has been deleted and the current AutokeyConfig is unusable.
pattern AutokeyConfig_State_KEYPROJECTDELETED :: AutokeyConfig_State
pattern AutokeyConfig_State_KEYPROJECTDELETED = AutokeyConfig_State "KEY_PROJECT_DELETED"

-- | The AutokeyConfig is not yet initialized or has been reset to its default uninitialized state.
pattern AutokeyConfig_State_Uninitialized :: AutokeyConfig_State
pattern AutokeyConfig_State_Uninitialized = AutokeyConfig_State "UNINITIALIZED"

{-# COMPLETE
  AutokeyConfig_State_STATEUNSPECIFIED,
  AutokeyConfig_State_Active,
  AutokeyConfig_State_KEYPROJECTDELETED,
  AutokeyConfig_State_Uninitialized,
  AutokeyConfig_State
  #-}

-- | Immutable. The immutable purpose of this CryptoKey.
newtype CryptoKey_Purpose = CryptoKey_Purpose {fromCryptoKey_Purpose :: Core.Text}
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
pattern CryptoKey_Purpose_CRYPTOKEYPURPOSEUNSPECIFIED :: CryptoKey_Purpose
pattern CryptoKey_Purpose_CRYPTOKEYPURPOSEUNSPECIFIED = CryptoKey_Purpose "CRYPTO_KEY_PURPOSE_UNSPECIFIED"

-- | CryptoKeys with this purpose may be used with Encrypt and Decrypt.
pattern CryptoKey_Purpose_ENCRYPTDECRYPT :: CryptoKey_Purpose
pattern CryptoKey_Purpose_ENCRYPTDECRYPT = CryptoKey_Purpose "ENCRYPT_DECRYPT"

-- | CryptoKeys with this purpose may be used with AsymmetricSign and GetPublicKey.
pattern CryptoKey_Purpose_ASYMMETRICSIGN :: CryptoKey_Purpose
pattern CryptoKey_Purpose_ASYMMETRICSIGN = CryptoKey_Purpose "ASYMMETRIC_SIGN"

-- | CryptoKeys with this purpose may be used with AsymmetricDecrypt and GetPublicKey.
pattern CryptoKey_Purpose_ASYMMETRICDECRYPT :: CryptoKey_Purpose
pattern CryptoKey_Purpose_ASYMMETRICDECRYPT = CryptoKey_Purpose "ASYMMETRIC_DECRYPT"

-- | CryptoKeys with this purpose may be used with RawEncrypt and RawDecrypt. This purpose is meant to be used for interoperable symmetric encryption and does not support automatic CryptoKey rotation.
pattern CryptoKey_Purpose_RAWENCRYPTDECRYPT :: CryptoKey_Purpose
pattern CryptoKey_Purpose_RAWENCRYPTDECRYPT = CryptoKey_Purpose "RAW_ENCRYPT_DECRYPT"

-- | CryptoKeys with this purpose may be used with MacSign.
pattern CryptoKey_Purpose_Mac :: CryptoKey_Purpose
pattern CryptoKey_Purpose_Mac = CryptoKey_Purpose "MAC"

{-# COMPLETE
  CryptoKey_Purpose_CRYPTOKEYPURPOSEUNSPECIFIED,
  CryptoKey_Purpose_ENCRYPTDECRYPT,
  CryptoKey_Purpose_ASYMMETRICSIGN,
  CryptoKey_Purpose_ASYMMETRICDECRYPT,
  CryptoKey_Purpose_RAWENCRYPTDECRYPT,
  CryptoKey_Purpose_Mac,
  CryptoKey_Purpose
  #-}

-- | Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
newtype CryptoKeyVersion_Algorithm = CryptoKeyVersion_Algorithm {fromCryptoKeyVersion_Algorithm :: Core.Text}
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
pattern CryptoKeyVersion_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED = CryptoKeyVersion_Algorithm "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"

-- | Creates symmetric encryption keys.
pattern CryptoKeyVersion_Algorithm_GOOGLESYMMETRICENCRYPTION :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_GOOGLESYMMETRICENCRYPTION = CryptoKeyVersion_Algorithm "GOOGLE_SYMMETRIC_ENCRYPTION"

-- | AES-GCM (Galois Counter Mode) using 128-bit keys.
pattern CryptoKeyVersion_Algorithm_AES128GCM :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_AES128GCM = CryptoKeyVersion_Algorithm "AES_128_GCM"

-- | AES-GCM (Galois Counter Mode) using 256-bit keys.
pattern CryptoKeyVersion_Algorithm_AES256GCM :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_AES256GCM = CryptoKeyVersion_Algorithm "AES_256_GCM"

-- | AES-CBC (Cipher Block Chaining Mode) using 128-bit keys.
pattern CryptoKeyVersion_Algorithm_AES128CBC :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_AES128CBC = CryptoKeyVersion_Algorithm "AES_128_CBC"

-- | AES-CBC (Cipher Block Chaining Mode) using 256-bit keys.
pattern CryptoKeyVersion_Algorithm_AES256CBC :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_AES256CBC = CryptoKeyVersion_Algorithm "AES_256_CBC"

-- | AES-CTR (Counter Mode) using 128-bit keys.
pattern CryptoKeyVersion_Algorithm_AES128CTR :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_AES128CTR = CryptoKeyVersion_Algorithm "AES_128_CTR"

-- | AES-CTR (Counter Mode) using 256-bit keys.
pattern CryptoKeyVersion_Algorithm_AES256CTR :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_AES256CTR = CryptoKeyVersion_Algorithm "AES_256_CTR"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_2048_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_2048_SHA256 = CryptoKeyVersion_Algorithm "RSA_SIGN_PSS_2048_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_3072_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_3072_SHA256 = CryptoKeyVersion_Algorithm "RSA_SIGN_PSS_3072_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA256 = CryptoKeyVersion_Algorithm "RSA_SIGN_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA512 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA512 = CryptoKeyVersion_Algorithm "RSA_SIGN_PSS_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 = CryptoKeyVersion_Algorithm "RSA_SIGN_PKCS1_2048_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 = CryptoKeyVersion_Algorithm "RSA_SIGN_PKCS1_3072_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 = CryptoKeyVersion_Algorithm "RSA_SIGN_PKCS1_4096_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 = CryptoKeyVersion_Algorithm "RSA_SIGN_PKCS1_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_2048 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_2048 = CryptoKeyVersion_Algorithm "RSA_SIGN_RAW_PKCS1_2048"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_3072 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_3072 = CryptoKeyVersion_Algorithm "RSA_SIGN_RAW_PKCS1_3072"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_4096 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_4096 = CryptoKeyVersion_Algorithm "RSA_SIGN_RAW_PKCS1_4096"

-- | RSAES-OAEP 2048 bit key with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_2048_SHA256"

-- | RSAES-OAEP 3072 bit key with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_3072_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_4096_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA512 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_4096_SHA512"

-- | RSAES-OAEP 2048 bit key with a SHA1 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_2048_SHA1"

-- | RSAES-OAEP 3072 bit key with a SHA1 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_3072_SHA1"

-- | RSAES-OAEP 4096 bit key with a SHA1 digest.
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 = CryptoKeyVersion_Algorithm "RSA_DECRYPT_OAEP_4096_SHA1"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P256_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P256_SHA256 = CryptoKeyVersion_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P384_SHA384 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P384_SHA384 = CryptoKeyVersion_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern CryptoKeyVersion_Algorithm_EC_SIGN_SECP256K1_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_SECP256K1_SHA256 = CryptoKeyVersion_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | EdDSA on the Curve25519 in pure mode (taking data as input).
pattern CryptoKeyVersion_Algorithm_EC_SIGN_ED25519 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_ED25519 = CryptoKeyVersion_Algorithm "EC_SIGN_ED25519"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern CryptoKeyVersion_Algorithm_HMAC_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_HMAC_SHA256 = CryptoKeyVersion_Algorithm "HMAC_SHA256"

-- | HMAC-SHA1 signing with a 160 bit key.
pattern CryptoKeyVersion_Algorithm_HMAC_SHA1 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_HMAC_SHA1 = CryptoKeyVersion_Algorithm "HMAC_SHA1"

-- | HMAC-SHA384 signing with a 384 bit key.
pattern CryptoKeyVersion_Algorithm_HMAC_SHA384 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_HMAC_SHA384 = CryptoKeyVersion_Algorithm "HMAC_SHA384"

-- | HMAC-SHA512 signing with a 512 bit key.
pattern CryptoKeyVersion_Algorithm_HMAC_SHA512 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_HMAC_SHA512 = CryptoKeyVersion_Algorithm "HMAC_SHA512"

-- | HMAC-SHA224 signing with a 224 bit key.
pattern CryptoKeyVersion_Algorithm_HMAC_SHA224 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_HMAC_SHA224 = CryptoKeyVersion_Algorithm "HMAC_SHA224"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION = CryptoKeyVersion_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

-- | The post-quantum Module-Lattice-Based Digital Signature Algorithm, at security level 3. Randomized version.
pattern CryptoKeyVersion_Algorithm_PQ_SIGN_ML_DSA_65 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_PQ_SIGN_ML_DSA_65 = CryptoKeyVersion_Algorithm "PQ_SIGN_ML_DSA_65"

-- | The post-quantum stateless hash-based digital signature algorithm, at security level 1. Randomized version.
pattern CryptoKeyVersion_Algorithm_PQSIGNSLHDSASHA2128S :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_PQSIGNSLHDSASHA2128S = CryptoKeyVersion_Algorithm "PQ_SIGN_SLH_DSA_SHA2_128S"

{-# COMPLETE
  CryptoKeyVersion_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  CryptoKeyVersion_Algorithm_GOOGLESYMMETRICENCRYPTION,
  CryptoKeyVersion_Algorithm_AES128GCM,
  CryptoKeyVersion_Algorithm_AES256GCM,
  CryptoKeyVersion_Algorithm_AES128CBC,
  CryptoKeyVersion_Algorithm_AES256CBC,
  CryptoKeyVersion_Algorithm_AES128CTR,
  CryptoKeyVersion_Algorithm_AES256CTR,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_2048_SHA256,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_3072_SHA256,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA256,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PSS_4096_SHA512,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
  CryptoKeyVersion_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
  CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
  CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
  CryptoKeyVersion_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
  CryptoKeyVersion_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
  CryptoKeyVersion_Algorithm_EC_SIGN_P256_SHA256,
  CryptoKeyVersion_Algorithm_EC_SIGN_P384_SHA384,
  CryptoKeyVersion_Algorithm_EC_SIGN_SECP256K1_SHA256,
  CryptoKeyVersion_Algorithm_EC_SIGN_ED25519,
  CryptoKeyVersion_Algorithm_HMAC_SHA256,
  CryptoKeyVersion_Algorithm_HMAC_SHA1,
  CryptoKeyVersion_Algorithm_HMAC_SHA384,
  CryptoKeyVersion_Algorithm_HMAC_SHA512,
  CryptoKeyVersion_Algorithm_HMAC_SHA224,
  CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION,
  CryptoKeyVersion_Algorithm_PQ_SIGN_ML_DSA_65,
  CryptoKeyVersion_Algorithm_PQSIGNSLHDSASHA2128S,
  CryptoKeyVersion_Algorithm
  #-}

-- | Output only. The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
newtype CryptoKeyVersion_ProtectionLevel = CryptoKeyVersion_ProtectionLevel {fromCryptoKeyVersion_ProtectionLevel :: Core.Text}
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
pattern CryptoKeyVersion_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: CryptoKeyVersion_ProtectionLevel
pattern CryptoKeyVersion_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = CryptoKeyVersion_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern CryptoKeyVersion_ProtectionLevel_Software :: CryptoKeyVersion_ProtectionLevel
pattern CryptoKeyVersion_ProtectionLevel_Software = CryptoKeyVersion_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern CryptoKeyVersion_ProtectionLevel_Hsm :: CryptoKeyVersion_ProtectionLevel
pattern CryptoKeyVersion_ProtectionLevel_Hsm = CryptoKeyVersion_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern CryptoKeyVersion_ProtectionLevel_External :: CryptoKeyVersion_ProtectionLevel
pattern CryptoKeyVersion_ProtectionLevel_External = CryptoKeyVersion_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern CryptoKeyVersion_ProtectionLevel_EXTERNALVPC :: CryptoKeyVersion_ProtectionLevel
pattern CryptoKeyVersion_ProtectionLevel_EXTERNALVPC = CryptoKeyVersion_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  CryptoKeyVersion_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  CryptoKeyVersion_ProtectionLevel_Software,
  CryptoKeyVersion_ProtectionLevel_Hsm,
  CryptoKeyVersion_ProtectionLevel_External,
  CryptoKeyVersion_ProtectionLevel_EXTERNALVPC,
  CryptoKeyVersion_ProtectionLevel
  #-}

-- | The current state of the CryptoKeyVersion.
newtype CryptoKeyVersion_State = CryptoKeyVersion_State {fromCryptoKeyVersion_State :: Core.Text}
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
pattern CryptoKeyVersion_State_CRYPTOKEYVERSIONSTATEUNSPECIFIED :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_CRYPTOKEYVERSIONSTATEUNSPECIFIED = CryptoKeyVersion_State "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED"

-- | This version is still being generated. It may not be used, enabled, disabled, or destroyed yet. Cloud KMS will automatically mark this version ENABLED as soon as the version is ready.
pattern CryptoKeyVersion_State_PENDINGGENERATION :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_PENDINGGENERATION = CryptoKeyVersion_State "PENDING_GENERATION"

-- | This version may be used for cryptographic operations.
pattern CryptoKeyVersion_State_Enabled :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_Enabled = CryptoKeyVersion_State "ENABLED"

-- | This version may not be used, but the key material is still available, and the version can be placed back into the ENABLED state.
pattern CryptoKeyVersion_State_Disabled :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_Disabled = CryptoKeyVersion_State "DISABLED"

-- | This key material of this version is destroyed and no longer stored. This version may only become ENABLED again if this version is reimport_eligible and the original key material is reimported with a call to KeyManagementService.ImportCryptoKeyVersion.
pattern CryptoKeyVersion_State_Destroyed :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_Destroyed = CryptoKeyVersion_State "DESTROYED"

-- | This version is scheduled for destruction, and will be destroyed soon. Call RestoreCryptoKeyVersion to put it back into the DISABLED state.
pattern CryptoKeyVersion_State_DESTROYSCHEDULED :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_DESTROYSCHEDULED = CryptoKeyVersion_State "DESTROY_SCHEDULED"

-- | This version is still being imported. It may not be used, enabled, disabled, or destroyed yet. Cloud KMS will automatically mark this version ENABLED as soon as the version is ready.
pattern CryptoKeyVersion_State_PENDINGIMPORT :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_PENDINGIMPORT = CryptoKeyVersion_State "PENDING_IMPORT"

-- | This version was not imported successfully. It may not be used, enabled, disabled, or destroyed. The submitted key material has been discarded. Additional details can be found in CryptoKeyVersion.import/failure/reason.
pattern CryptoKeyVersion_State_IMPORTFAILED :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_IMPORTFAILED = CryptoKeyVersion_State "IMPORT_FAILED"

-- | This version was not generated successfully. It may not be used, enabled, disabled, or destroyed. Additional details can be found in CryptoKeyVersion.generation/failure/reason.
pattern CryptoKeyVersion_State_GENERATIONFAILED :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_GENERATIONFAILED = CryptoKeyVersion_State "GENERATION_FAILED"

-- | This version was destroyed, and it may not be used or enabled again. Cloud KMS is waiting for the corresponding key material residing in an external key manager to be destroyed.
pattern CryptoKeyVersion_State_PENDINGEXTERNALDESTRUCTION :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_PENDINGEXTERNALDESTRUCTION = CryptoKeyVersion_State "PENDING_EXTERNAL_DESTRUCTION"

-- | This version was destroyed, and it may not be used or enabled again. However, Cloud KMS could not confirm that the corresponding key material residing in an external key manager was destroyed. Additional details can be found in CryptoKeyVersion.external/destruction/failure_reason.
pattern CryptoKeyVersion_State_EXTERNALDESTRUCTIONFAILED :: CryptoKeyVersion_State
pattern CryptoKeyVersion_State_EXTERNALDESTRUCTIONFAILED = CryptoKeyVersion_State "EXTERNAL_DESTRUCTION_FAILED"

{-# COMPLETE
  CryptoKeyVersion_State_CRYPTOKEYVERSIONSTATEUNSPECIFIED,
  CryptoKeyVersion_State_PENDINGGENERATION,
  CryptoKeyVersion_State_Enabled,
  CryptoKeyVersion_State_Disabled,
  CryptoKeyVersion_State_Destroyed,
  CryptoKeyVersion_State_DESTROYSCHEDULED,
  CryptoKeyVersion_State_PENDINGIMPORT,
  CryptoKeyVersion_State_IMPORTFAILED,
  CryptoKeyVersion_State_GENERATIONFAILED,
  CryptoKeyVersion_State_PENDINGEXTERNALDESTRUCTION,
  CryptoKeyVersion_State_EXTERNALDESTRUCTIONFAILED,
  CryptoKeyVersion_State
  #-}

-- | Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE/SYMMETRIC/ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
newtype CryptoKeyVersionTemplate_Algorithm = CryptoKeyVersionTemplate_Algorithm {fromCryptoKeyVersionTemplate_Algorithm :: Core.Text}
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
pattern CryptoKeyVersionTemplate_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED = CryptoKeyVersionTemplate_Algorithm "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"

-- | Creates symmetric encryption keys.
pattern CryptoKeyVersionTemplate_Algorithm_GOOGLESYMMETRICENCRYPTION :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_GOOGLESYMMETRICENCRYPTION = CryptoKeyVersionTemplate_Algorithm "GOOGLE_SYMMETRIC_ENCRYPTION"

-- | AES-GCM (Galois Counter Mode) using 128-bit keys.
pattern CryptoKeyVersionTemplate_Algorithm_AES128GCM :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_AES128GCM = CryptoKeyVersionTemplate_Algorithm "AES_128_GCM"

-- | AES-GCM (Galois Counter Mode) using 256-bit keys.
pattern CryptoKeyVersionTemplate_Algorithm_AES256GCM :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_AES256GCM = CryptoKeyVersionTemplate_Algorithm "AES_256_GCM"

-- | AES-CBC (Cipher Block Chaining Mode) using 128-bit keys.
pattern CryptoKeyVersionTemplate_Algorithm_AES128CBC :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_AES128CBC = CryptoKeyVersionTemplate_Algorithm "AES_128_CBC"

-- | AES-CBC (Cipher Block Chaining Mode) using 256-bit keys.
pattern CryptoKeyVersionTemplate_Algorithm_AES256CBC :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_AES256CBC = CryptoKeyVersionTemplate_Algorithm "AES_256_CBC"

-- | AES-CTR (Counter Mode) using 128-bit keys.
pattern CryptoKeyVersionTemplate_Algorithm_AES128CTR :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_AES128CTR = CryptoKeyVersionTemplate_Algorithm "AES_128_CTR"

-- | AES-CTR (Counter Mode) using 256-bit keys.
pattern CryptoKeyVersionTemplate_Algorithm_AES256CTR :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_AES256CTR = CryptoKeyVersionTemplate_Algorithm "AES_256_CTR"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_2048_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_2048_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PSS_2048_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_3072_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_3072_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PSS_3072_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA512 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA512 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PSS_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PKCS1_2048_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PKCS1_3072_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PKCS1_4096_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_PKCS1_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_2048 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_2048 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_RAW_PKCS1_2048"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_3072 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_3072 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_RAW_PKCS1_3072"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_4096 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_4096 = CryptoKeyVersionTemplate_Algorithm "RSA_SIGN_RAW_PKCS1_4096"

-- | RSAES-OAEP 2048 bit key with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_2048_SHA256"

-- | RSAES-OAEP 3072 bit key with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_3072_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_4096_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA512 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_4096_SHA512"

-- | RSAES-OAEP 2048 bit key with a SHA1 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_2048_SHA1"

-- | RSAES-OAEP 3072 bit key with a SHA1 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_3072_SHA1"

-- | RSAES-OAEP 4096 bit key with a SHA1 digest.
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 = CryptoKeyVersionTemplate_Algorithm "RSA_DECRYPT_OAEP_4096_SHA1"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P256_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P256_SHA256 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P384_SHA384 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P384_SHA384 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_SECP256K1_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_SECP256K1_SHA256 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | EdDSA on the Curve25519 in pure mode (taking data as input).
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_ED25519 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_ED25519 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_ED25519"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256 = CryptoKeyVersionTemplate_Algorithm "HMAC_SHA256"

-- | HMAC-SHA1 signing with a 160 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA1 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA1 = CryptoKeyVersionTemplate_Algorithm "HMAC_SHA1"

-- | HMAC-SHA384 signing with a 384 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA384 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA384 = CryptoKeyVersionTemplate_Algorithm "HMAC_SHA384"

-- | HMAC-SHA512 signing with a 512 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA512 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA512 = CryptoKeyVersionTemplate_Algorithm "HMAC_SHA512"

-- | HMAC-SHA224 signing with a 224 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA224 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA224 = CryptoKeyVersionTemplate_Algorithm "HMAC_SHA224"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION = CryptoKeyVersionTemplate_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

-- | The post-quantum Module-Lattice-Based Digital Signature Algorithm, at security level 3. Randomized version.
pattern CryptoKeyVersionTemplate_Algorithm_PQ_SIGN_ML_DSA_65 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_PQ_SIGN_ML_DSA_65 = CryptoKeyVersionTemplate_Algorithm "PQ_SIGN_ML_DSA_65"

-- | The post-quantum stateless hash-based digital signature algorithm, at security level 1. Randomized version.
pattern CryptoKeyVersionTemplate_Algorithm_PQSIGNSLHDSASHA2128S :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_PQSIGNSLHDSASHA2128S = CryptoKeyVersionTemplate_Algorithm "PQ_SIGN_SLH_DSA_SHA2_128S"

{-# COMPLETE
  CryptoKeyVersionTemplate_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  CryptoKeyVersionTemplate_Algorithm_GOOGLESYMMETRICENCRYPTION,
  CryptoKeyVersionTemplate_Algorithm_AES128GCM,
  CryptoKeyVersionTemplate_Algorithm_AES256GCM,
  CryptoKeyVersionTemplate_Algorithm_AES128CBC,
  CryptoKeyVersionTemplate_Algorithm_AES256CBC,
  CryptoKeyVersionTemplate_Algorithm_AES128CTR,
  CryptoKeyVersionTemplate_Algorithm_AES256CTR,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_2048_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_3072_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PSS_4096_SHA512,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
  CryptoKeyVersionTemplate_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
  CryptoKeyVersionTemplate_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
  CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P256_SHA256,
  CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P384_SHA384,
  CryptoKeyVersionTemplate_Algorithm_EC_SIGN_SECP256K1_SHA256,
  CryptoKeyVersionTemplate_Algorithm_EC_SIGN_ED25519,
  CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256,
  CryptoKeyVersionTemplate_Algorithm_HMAC_SHA1,
  CryptoKeyVersionTemplate_Algorithm_HMAC_SHA384,
  CryptoKeyVersionTemplate_Algorithm_HMAC_SHA512,
  CryptoKeyVersionTemplate_Algorithm_HMAC_SHA224,
  CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION,
  CryptoKeyVersionTemplate_Algorithm_PQ_SIGN_ML_DSA_65,
  CryptoKeyVersionTemplate_Algorithm_PQSIGNSLHDSASHA2128S,
  CryptoKeyVersionTemplate_Algorithm
  #-}

-- | ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
newtype CryptoKeyVersionTemplate_ProtectionLevel = CryptoKeyVersionTemplate_ProtectionLevel {fromCryptoKeyVersionTemplate_ProtectionLevel :: Core.Text}
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
pattern CryptoKeyVersionTemplate_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: CryptoKeyVersionTemplate_ProtectionLevel
pattern CryptoKeyVersionTemplate_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = CryptoKeyVersionTemplate_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern CryptoKeyVersionTemplate_ProtectionLevel_Software :: CryptoKeyVersionTemplate_ProtectionLevel
pattern CryptoKeyVersionTemplate_ProtectionLevel_Software = CryptoKeyVersionTemplate_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern CryptoKeyVersionTemplate_ProtectionLevel_Hsm :: CryptoKeyVersionTemplate_ProtectionLevel
pattern CryptoKeyVersionTemplate_ProtectionLevel_Hsm = CryptoKeyVersionTemplate_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern CryptoKeyVersionTemplate_ProtectionLevel_External :: CryptoKeyVersionTemplate_ProtectionLevel
pattern CryptoKeyVersionTemplate_ProtectionLevel_External = CryptoKeyVersionTemplate_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern CryptoKeyVersionTemplate_ProtectionLevel_EXTERNALVPC :: CryptoKeyVersionTemplate_ProtectionLevel
pattern CryptoKeyVersionTemplate_ProtectionLevel_EXTERNALVPC = CryptoKeyVersionTemplate_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  CryptoKeyVersionTemplate_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  CryptoKeyVersionTemplate_ProtectionLevel_Software,
  CryptoKeyVersionTemplate_ProtectionLevel_Hsm,
  CryptoKeyVersionTemplate_ProtectionLevel_External,
  CryptoKeyVersionTemplate_ProtectionLevel_EXTERNALVPC,
  CryptoKeyVersionTemplate_ProtectionLevel
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
newtype DecryptResponse_ProtectionLevel = DecryptResponse_ProtectionLevel {fromDecryptResponse_ProtectionLevel :: Core.Text}
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
pattern DecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: DecryptResponse_ProtectionLevel
pattern DecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = DecryptResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern DecryptResponse_ProtectionLevel_Software :: DecryptResponse_ProtectionLevel
pattern DecryptResponse_ProtectionLevel_Software = DecryptResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern DecryptResponse_ProtectionLevel_Hsm :: DecryptResponse_ProtectionLevel
pattern DecryptResponse_ProtectionLevel_Hsm = DecryptResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern DecryptResponse_ProtectionLevel_External :: DecryptResponse_ProtectionLevel
pattern DecryptResponse_ProtectionLevel_External = DecryptResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern DecryptResponse_ProtectionLevel_EXTERNALVPC :: DecryptResponse_ProtectionLevel
pattern DecryptResponse_ProtectionLevel_EXTERNALVPC = DecryptResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  DecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  DecryptResponse_ProtectionLevel_Software,
  DecryptResponse_ProtectionLevel_Hsm,
  DecryptResponse_ProtectionLevel_External,
  DecryptResponse_ProtectionLevel_EXTERNALVPC,
  DecryptResponse_ProtectionLevel
  #-}

-- | Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
newtype EkmConnection_KeyManagementMode = EkmConnection_KeyManagementMode {fromEkmConnection_KeyManagementMode :: Core.Text}
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
pattern EkmConnection_KeyManagementMode_KEYMANAGEMENTMODEUNSPECIFIED :: EkmConnection_KeyManagementMode
pattern EkmConnection_KeyManagementMode_KEYMANAGEMENTMODEUNSPECIFIED = EkmConnection_KeyManagementMode "KEY_MANAGEMENT_MODE_UNSPECIFIED"

-- | EKM-side key management operations on CryptoKeys created with this EkmConnection must be initiated from the EKM directly and cannot be performed from Cloud KMS. This means that: * When creating a CryptoKeyVersion associated with this EkmConnection, the caller must supply the key path of pre-existing external key material that will be linked to the CryptoKeyVersion. * Destruction of external key material cannot be requested via the Cloud KMS API and must be performed directly in the EKM. * Automatic rotation of key material is not supported.
pattern EkmConnection_KeyManagementMode_Manual :: EkmConnection_KeyManagementMode
pattern EkmConnection_KeyManagementMode_Manual = EkmConnection_KeyManagementMode "MANUAL"

-- | All CryptoKeys created with this EkmConnection use EKM-side key management operations initiated from Cloud KMS. This means that: * When a CryptoKeyVersion associated with this EkmConnection is created, the EKM automatically generates new key material and a new key path. The caller cannot supply the key path of pre-existing external key material. * Destruction of external key material associated with this EkmConnection can be requested by calling DestroyCryptoKeyVersion. * Automatic rotation of key material is supported.
pattern EkmConnection_KeyManagementMode_CLOUDKMS :: EkmConnection_KeyManagementMode
pattern EkmConnection_KeyManagementMode_CLOUDKMS = EkmConnection_KeyManagementMode "CLOUD_KMS"

{-# COMPLETE
  EkmConnection_KeyManagementMode_KEYMANAGEMENTMODEUNSPECIFIED,
  EkmConnection_KeyManagementMode_Manual,
  EkmConnection_KeyManagementMode_CLOUDKMS,
  EkmConnection_KeyManagementMode
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used in encryption.
newtype EncryptResponse_ProtectionLevel = EncryptResponse_ProtectionLevel {fromEncryptResponse_ProtectionLevel :: Core.Text}
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
pattern EncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: EncryptResponse_ProtectionLevel
pattern EncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = EncryptResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern EncryptResponse_ProtectionLevel_Software :: EncryptResponse_ProtectionLevel
pattern EncryptResponse_ProtectionLevel_Software = EncryptResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern EncryptResponse_ProtectionLevel_Hsm :: EncryptResponse_ProtectionLevel
pattern EncryptResponse_ProtectionLevel_Hsm = EncryptResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern EncryptResponse_ProtectionLevel_External :: EncryptResponse_ProtectionLevel
pattern EncryptResponse_ProtectionLevel_External = EncryptResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern EncryptResponse_ProtectionLevel_EXTERNALVPC :: EncryptResponse_ProtectionLevel
pattern EncryptResponse_ProtectionLevel_EXTERNALVPC = EncryptResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  EncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  EncryptResponse_ProtectionLevel_Software,
  EncryptResponse_ProtectionLevel_Hsm,
  EncryptResponse_ProtectionLevel_External,
  EncryptResponse_ProtectionLevel_EXTERNALVPC,
  EncryptResponse_ProtectionLevel
  #-}

-- | The ProtectionLevel to use when generating the random data. Currently, only HSM protection level is supported.
newtype GenerateRandomBytesRequest_ProtectionLevel = GenerateRandomBytesRequest_ProtectionLevel {fromGenerateRandomBytesRequest_ProtectionLevel :: Core.Text}
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
pattern GenerateRandomBytesRequest_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: GenerateRandomBytesRequest_ProtectionLevel
pattern GenerateRandomBytesRequest_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = GenerateRandomBytesRequest_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern GenerateRandomBytesRequest_ProtectionLevel_Software :: GenerateRandomBytesRequest_ProtectionLevel
pattern GenerateRandomBytesRequest_ProtectionLevel_Software = GenerateRandomBytesRequest_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern GenerateRandomBytesRequest_ProtectionLevel_Hsm :: GenerateRandomBytesRequest_ProtectionLevel
pattern GenerateRandomBytesRequest_ProtectionLevel_Hsm = GenerateRandomBytesRequest_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern GenerateRandomBytesRequest_ProtectionLevel_External :: GenerateRandomBytesRequest_ProtectionLevel
pattern GenerateRandomBytesRequest_ProtectionLevel_External = GenerateRandomBytesRequest_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern GenerateRandomBytesRequest_ProtectionLevel_EXTERNALVPC :: GenerateRandomBytesRequest_ProtectionLevel
pattern GenerateRandomBytesRequest_ProtectionLevel_EXTERNALVPC = GenerateRandomBytesRequest_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  GenerateRandomBytesRequest_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  GenerateRandomBytesRequest_ProtectionLevel_Software,
  GenerateRandomBytesRequest_ProtectionLevel_Hsm,
  GenerateRandomBytesRequest_ProtectionLevel_External,
  GenerateRandomBytesRequest_ProtectionLevel_EXTERNALVPC,
  GenerateRandomBytesRequest_ProtectionLevel
  #-}

-- | Required. The algorithm of the key being imported. This does not need to match the version_template of the CryptoKey this version imports into.
newtype ImportCryptoKeyVersionRequest_Algorithm = ImportCryptoKeyVersionRequest_Algorithm {fromImportCryptoKeyVersionRequest_Algorithm :: Core.Text}
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
pattern ImportCryptoKeyVersionRequest_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED = ImportCryptoKeyVersionRequest_Algorithm "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"

-- | Creates symmetric encryption keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_GOOGLESYMMETRICENCRYPTION :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_GOOGLESYMMETRICENCRYPTION = ImportCryptoKeyVersionRequest_Algorithm "GOOGLE_SYMMETRIC_ENCRYPTION"

-- | AES-GCM (Galois Counter Mode) using 128-bit keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_AES128GCM :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_AES128GCM = ImportCryptoKeyVersionRequest_Algorithm "AES_128_GCM"

-- | AES-GCM (Galois Counter Mode) using 256-bit keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_AES256GCM :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_AES256GCM = ImportCryptoKeyVersionRequest_Algorithm "AES_256_GCM"

-- | AES-CBC (Cipher Block Chaining Mode) using 128-bit keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_AES128CBC :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_AES128CBC = ImportCryptoKeyVersionRequest_Algorithm "AES_128_CBC"

-- | AES-CBC (Cipher Block Chaining Mode) using 256-bit keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_AES256CBC :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_AES256CBC = ImportCryptoKeyVersionRequest_Algorithm "AES_256_CBC"

-- | AES-CTR (Counter Mode) using 128-bit keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_AES128CTR :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_AES128CTR = ImportCryptoKeyVersionRequest_Algorithm "AES_128_CTR"

-- | AES-CTR (Counter Mode) using 256-bit keys.
pattern ImportCryptoKeyVersionRequest_Algorithm_AES256CTR :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_AES256CTR = ImportCryptoKeyVersionRequest_Algorithm "AES_256_CTR"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_2048_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_2048_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PSS_2048_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_3072_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_3072_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PSS_3072_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA512 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA512 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PSS_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PKCS1_2048_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PKCS1_3072_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PKCS1_4096_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_PKCS1_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_2048 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_2048 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_RAW_PKCS1_2048"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_3072 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_3072 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_RAW_PKCS1_3072"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_4096 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_4096 = ImportCryptoKeyVersionRequest_Algorithm "RSA_SIGN_RAW_PKCS1_4096"

-- | RSAES-OAEP 2048 bit key with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_2048_SHA256"

-- | RSAES-OAEP 3072 bit key with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_3072_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_4096_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA512 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_4096_SHA512"

-- | RSAES-OAEP 2048 bit key with a SHA1 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_2048_SHA1"

-- | RSAES-OAEP 3072 bit key with a SHA1 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_3072_SHA1"

-- | RSAES-OAEP 4096 bit key with a SHA1 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 = ImportCryptoKeyVersionRequest_Algorithm "RSA_DECRYPT_OAEP_4096_SHA1"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P256_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P256_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P384_SHA384 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P384_SHA384 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_SECP256K1_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_SECP256K1_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | EdDSA on the Curve25519 in pure mode (taking data as input).
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_ED25519 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_ED25519 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_ED25519"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "HMAC_SHA256"

-- | HMAC-SHA1 signing with a 160 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA1 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA1 = ImportCryptoKeyVersionRequest_Algorithm "HMAC_SHA1"

-- | HMAC-SHA384 signing with a 384 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA384 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA384 = ImportCryptoKeyVersionRequest_Algorithm "HMAC_SHA384"

-- | HMAC-SHA512 signing with a 512 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA512 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA512 = ImportCryptoKeyVersionRequest_Algorithm "HMAC_SHA512"

-- | HMAC-SHA224 signing with a 224 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA224 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA224 = ImportCryptoKeyVersionRequest_Algorithm "HMAC_SHA224"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION = ImportCryptoKeyVersionRequest_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

-- | The post-quantum Module-Lattice-Based Digital Signature Algorithm, at security level 3. Randomized version.
pattern ImportCryptoKeyVersionRequest_Algorithm_PQ_SIGN_ML_DSA_65 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_PQ_SIGN_ML_DSA_65 = ImportCryptoKeyVersionRequest_Algorithm "PQ_SIGN_ML_DSA_65"

-- | The post-quantum stateless hash-based digital signature algorithm, at security level 1. Randomized version.
pattern ImportCryptoKeyVersionRequest_Algorithm_PQSIGNSLHDSASHA2128S :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_PQSIGNSLHDSASHA2128S = ImportCryptoKeyVersionRequest_Algorithm "PQ_SIGN_SLH_DSA_SHA2_128S"

{-# COMPLETE
  ImportCryptoKeyVersionRequest_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  ImportCryptoKeyVersionRequest_Algorithm_GOOGLESYMMETRICENCRYPTION,
  ImportCryptoKeyVersionRequest_Algorithm_AES128GCM,
  ImportCryptoKeyVersionRequest_Algorithm_AES256GCM,
  ImportCryptoKeyVersionRequest_Algorithm_AES128CBC,
  ImportCryptoKeyVersionRequest_Algorithm_AES256CBC,
  ImportCryptoKeyVersionRequest_Algorithm_AES128CTR,
  ImportCryptoKeyVersionRequest_Algorithm_AES256CTR,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_2048_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_3072_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PSS_4096_SHA512,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
  ImportCryptoKeyVersionRequest_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
  ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P256_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P384_SHA384,
  ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_SECP256K1_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_ED25519,
  ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA1,
  ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA384,
  ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA512,
  ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA224,
  ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION,
  ImportCryptoKeyVersionRequest_Algorithm_PQ_SIGN_ML_DSA_65,
  ImportCryptoKeyVersionRequest_Algorithm_PQSIGNSLHDSASHA2128S,
  ImportCryptoKeyVersionRequest_Algorithm
  #-}

-- | Required. Immutable. The wrapping method to be used for incoming key material.
newtype ImportJob_ImportMethod = ImportJob_ImportMethod {fromImportJob_ImportMethod :: Core.Text}
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
pattern ImportJob_ImportMethod_IMPORTMETHODUNSPECIFIED :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_IMPORTMETHODUNSPECIFIED = ImportJob_ImportMethod "IMPORT_METHOD_UNSPECIFIED"

-- | This ImportMethod represents the CKM/RSA/AES/KEY/WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 3072 bit RSA key. For more details, see <http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908 RSA AES key wrap mechanism>.
pattern ImportJob_ImportMethod_RSA_OAEP_3072_SHA1_AES_256 :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_RSA_OAEP_3072_SHA1_AES_256 = ImportJob_ImportMethod "RSA_OAEP_3072_SHA1_AES_256"

-- | This ImportMethod represents the CKM/RSA/AES/KEY/WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 4096 bit RSA key. For more details, see <http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908 RSA AES key wrap mechanism>.
pattern ImportJob_ImportMethod_RSA_OAEP_4096_SHA1_AES_256 :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_RSA_OAEP_4096_SHA1_AES_256 = ImportJob_ImportMethod "RSA_OAEP_4096_SHA1_AES_256"

-- | This ImportMethod represents the CKM/RSA/AES/KEY/WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 3072 bit RSA key. For more details, see <http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908 RSA AES key wrap mechanism>.
pattern ImportJob_ImportMethod_RSA_OAEP_3072_SHA256_AES_256 :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_RSA_OAEP_3072_SHA256_AES_256 = ImportJob_ImportMethod "RSA_OAEP_3072_SHA256_AES_256"

-- | This ImportMethod represents the CKM/RSA/AES/KEY/WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 4096 bit RSA key. For more details, see <http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908 RSA AES key wrap mechanism>.
pattern ImportJob_ImportMethod_RSA_OAEP_4096_SHA256_AES_256 :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_RSA_OAEP_4096_SHA256_AES_256 = ImportJob_ImportMethod "RSA_OAEP_4096_SHA256_AES_256"

-- | This ImportMethod represents RSAES-OAEP with a 3072 bit RSA key. The key material to be imported is wrapped directly with the RSA key. Due to technical limitations of RSA wrapping, this method cannot be used to wrap RSA keys for import.
pattern ImportJob_ImportMethod_RSA_OAEP_3072_SHA256 :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_RSA_OAEP_3072_SHA256 = ImportJob_ImportMethod "RSA_OAEP_3072_SHA256"

-- | This ImportMethod represents RSAES-OAEP with a 4096 bit RSA key. The key material to be imported is wrapped directly with the RSA key. Due to technical limitations of RSA wrapping, this method cannot be used to wrap RSA keys for import.
pattern ImportJob_ImportMethod_RSA_OAEP_4096_SHA256 :: ImportJob_ImportMethod
pattern ImportJob_ImportMethod_RSA_OAEP_4096_SHA256 = ImportJob_ImportMethod "RSA_OAEP_4096_SHA256"

{-# COMPLETE
  ImportJob_ImportMethod_IMPORTMETHODUNSPECIFIED,
  ImportJob_ImportMethod_RSA_OAEP_3072_SHA1_AES_256,
  ImportJob_ImportMethod_RSA_OAEP_4096_SHA1_AES_256,
  ImportJob_ImportMethod_RSA_OAEP_3072_SHA256_AES_256,
  ImportJob_ImportMethod_RSA_OAEP_4096_SHA256_AES_256,
  ImportJob_ImportMethod_RSA_OAEP_3072_SHA256,
  ImportJob_ImportMethod_RSA_OAEP_4096_SHA256,
  ImportJob_ImportMethod
  #-}

-- | Required. Immutable. The protection level of the ImportJob. This must match the protection/level of the version/template on the CryptoKey you attempt to import into.
newtype ImportJob_ProtectionLevel = ImportJob_ProtectionLevel {fromImportJob_ProtectionLevel :: Core.Text}
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
pattern ImportJob_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: ImportJob_ProtectionLevel
pattern ImportJob_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = ImportJob_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern ImportJob_ProtectionLevel_Software :: ImportJob_ProtectionLevel
pattern ImportJob_ProtectionLevel_Software = ImportJob_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern ImportJob_ProtectionLevel_Hsm :: ImportJob_ProtectionLevel
pattern ImportJob_ProtectionLevel_Hsm = ImportJob_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern ImportJob_ProtectionLevel_External :: ImportJob_ProtectionLevel
pattern ImportJob_ProtectionLevel_External = ImportJob_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern ImportJob_ProtectionLevel_EXTERNALVPC :: ImportJob_ProtectionLevel
pattern ImportJob_ProtectionLevel_EXTERNALVPC = ImportJob_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  ImportJob_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  ImportJob_ProtectionLevel_Software,
  ImportJob_ProtectionLevel_Hsm,
  ImportJob_ProtectionLevel_External,
  ImportJob_ProtectionLevel_EXTERNALVPC,
  ImportJob_ProtectionLevel
  #-}

-- | Output only. The current state of the ImportJob, indicating if it can be used.
newtype ImportJob_State = ImportJob_State {fromImportJob_State :: Core.Text}
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
pattern ImportJob_State_IMPORTJOBSTATEUNSPECIFIED :: ImportJob_State
pattern ImportJob_State_IMPORTJOBSTATEUNSPECIFIED = ImportJob_State "IMPORT_JOB_STATE_UNSPECIFIED"

-- | The wrapping key for this job is still being generated. It may not be used. Cloud KMS will automatically mark this job as ACTIVE as soon as the wrapping key is generated.
pattern ImportJob_State_PENDINGGENERATION :: ImportJob_State
pattern ImportJob_State_PENDINGGENERATION = ImportJob_State "PENDING_GENERATION"

-- | This job may be used in CreateCryptoKey and CreateCryptoKeyVersion requests.
pattern ImportJob_State_Active :: ImportJob_State
pattern ImportJob_State_Active = ImportJob_State "ACTIVE"

-- | This job can no longer be used and may not leave this state once entered.
pattern ImportJob_State_Expired :: ImportJob_State
pattern ImportJob_State_Expired = ImportJob_State "EXPIRED"

{-# COMPLETE
  ImportJob_State_IMPORTJOBSTATEUNSPECIFIED,
  ImportJob_State_PENDINGGENERATION,
  ImportJob_State_Active,
  ImportJob_State_Expired,
  ImportJob_State
  #-}

newtype KeyAccessJustificationsPolicy_AllowedAccessReasonsItem = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem {fromKeyAccessJustificationsPolicy_AllowedAccessReasonsItem :: Core.Text}
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

-- | Unspecified access reason.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONUNSPECIFIED :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONUNSPECIFIED = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "REASON_UNSPECIFIED"

-- | Customer-initiated support.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDSUPPORT :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDSUPPORT = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "CUSTOMER_INITIATED_SUPPORT"

-- | Google-initiated access for system management and troubleshooting.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSERVICE :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSERVICE = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "GOOGLE_INITIATED_SERVICE"

-- | Google-initiated access in response to a legal request or legal process.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_THIRDPARTYDATAREQUEST :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_THIRDPARTYDATAREQUEST = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "THIRD_PARTY_DATA_REQUEST"

-- | Google-initiated access for security, fraud, abuse, or compliance purposes.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDREVIEW :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDREVIEW = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "GOOGLE_INITIATED_REVIEW"

-- | Customer uses their account to perform any access to their own data which their IAM policy authorizes.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDACCESS :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDACCESS = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "CUSTOMER_INITIATED_ACCESS"

-- | Google systems access customer data to help optimize the structure of the data or quality for future uses by the customer.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSYSTEMOPERATION :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSYSTEMOPERATION = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "GOOGLE_INITIATED_SYSTEM_OPERATION"

-- | No reason is expected for this key request.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONNOTEXPECTED :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONNOTEXPECTED = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "REASON_NOT_EXPECTED"

-- | Customer uses their account to perform any access to their own data which their IAM policy authorizes, and one of the following is true: * A Google administrator has reset the root-access account associated with the user\'s organization within the past 7 days. * A Google-initiated emergency access operation has interacted with a resource in the same project or folder as the currently accessed resource within the past 7 days.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDCUSTOMERINITIATEDACCESS :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDCUSTOMERINITIATEDACCESS = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "MODIFIED_CUSTOMER_INITIATED_ACCESS"

-- | Google systems access customer data to help optimize the structure of the data or quality for future uses by the customer, and one of the following is true: * A Google administrator has reset the root-access account associated with the user\'s organization within the past 7 days. * A Google-initiated emergency access operation has interacted with a resource in the same project or folder as the currently accessed resource within the past 7 days.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDGOOGLEINITIATEDSYSTEMOPERATION :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDGOOGLEINITIATEDSYSTEMOPERATION = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "MODIFIED_GOOGLE_INITIATED_SYSTEM_OPERATION"

-- | Google-initiated access to maintain system reliability.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLERESPONSETOPRODUCTIONALERT :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLERESPONSETOPRODUCTIONALERT = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT"

-- | One of the following operations is being executed while simultaneously encountering an internal technical issue which prevented a more precise justification code from being generated: * Your account has been used to perform any access to your own data which your IAM policy authorizes. * An automated Google system operates on encrypted customer data which your IAM policy authorizes. * Customer-initiated Google support access. * Google-initiated support access to protect system reliability.
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERAUTHORIZEDWORKFLOWSERVICING :: KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
pattern KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERAUTHORIZEDWORKFLOWSERVICING = KeyAccessJustificationsPolicy_AllowedAccessReasonsItem "CUSTOMER_AUTHORIZED_WORKFLOW_SERVICING"

{-# COMPLETE
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONUNSPECIFIED,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDSUPPORT,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSERVICE,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_THIRDPARTYDATAREQUEST,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDREVIEW,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERINITIATEDACCESS,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLEINITIATEDSYSTEMOPERATION,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_REASONNOTEXPECTED,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDCUSTOMERINITIATEDACCESS,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_MODIFIEDGOOGLEINITIATEDSYSTEMOPERATION,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_GOOGLERESPONSETOPRODUCTIONALERT,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem_CUSTOMERAUTHORIZEDWORKFLOWSERVICING,
  KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
  #-}

-- | Output only. The format of the attestation data.
newtype KeyOperationAttestation_Format = KeyOperationAttestation_Format {fromKeyOperationAttestation_Format :: Core.Text}
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
pattern KeyOperationAttestation_Format_ATTESTATIONFORMATUNSPECIFIED :: KeyOperationAttestation_Format
pattern KeyOperationAttestation_Format_ATTESTATIONFORMATUNSPECIFIED = KeyOperationAttestation_Format "ATTESTATION_FORMAT_UNSPECIFIED"

-- | Cavium HSM attestation compressed with gzip. Note that this format is defined by Cavium and subject to change at any time. See https:\/\/www.marvell.com\/products\/security-solutions\/nitrox-hs-adapters\/software-key-attestation.html.
pattern KeyOperationAttestation_Format_CAVIUMV1COMPRESSED :: KeyOperationAttestation_Format
pattern KeyOperationAttestation_Format_CAVIUMV1COMPRESSED = KeyOperationAttestation_Format "CAVIUM_V1_COMPRESSED"

-- | Cavium HSM attestation V2 compressed with gzip. This is a new format introduced in Cavium\'s version 3.2-08.
pattern KeyOperationAttestation_Format_CAVIUMV2COMPRESSED :: KeyOperationAttestation_Format
pattern KeyOperationAttestation_Format_CAVIUMV2COMPRESSED = KeyOperationAttestation_Format "CAVIUM_V2_COMPRESSED"

{-# COMPLETE
  KeyOperationAttestation_Format_ATTESTATIONFORMATUNSPECIFIED,
  KeyOperationAttestation_Format_CAVIUMV1COMPRESSED,
  KeyOperationAttestation_Format_CAVIUMV2COMPRESSED,
  KeyOperationAttestation_Format
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used for signing.
newtype MacSignResponse_ProtectionLevel = MacSignResponse_ProtectionLevel {fromMacSignResponse_ProtectionLevel :: Core.Text}
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
pattern MacSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: MacSignResponse_ProtectionLevel
pattern MacSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = MacSignResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern MacSignResponse_ProtectionLevel_Software :: MacSignResponse_ProtectionLevel
pattern MacSignResponse_ProtectionLevel_Software = MacSignResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern MacSignResponse_ProtectionLevel_Hsm :: MacSignResponse_ProtectionLevel
pattern MacSignResponse_ProtectionLevel_Hsm = MacSignResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern MacSignResponse_ProtectionLevel_External :: MacSignResponse_ProtectionLevel
pattern MacSignResponse_ProtectionLevel_External = MacSignResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern MacSignResponse_ProtectionLevel_EXTERNALVPC :: MacSignResponse_ProtectionLevel
pattern MacSignResponse_ProtectionLevel_EXTERNALVPC = MacSignResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  MacSignResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  MacSignResponse_ProtectionLevel_Software,
  MacSignResponse_ProtectionLevel_Hsm,
  MacSignResponse_ProtectionLevel_External,
  MacSignResponse_ProtectionLevel_EXTERNALVPC,
  MacSignResponse_ProtectionLevel
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used for verification.
newtype MacVerifyResponse_ProtectionLevel = MacVerifyResponse_ProtectionLevel {fromMacVerifyResponse_ProtectionLevel :: Core.Text}
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
pattern MacVerifyResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: MacVerifyResponse_ProtectionLevel
pattern MacVerifyResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = MacVerifyResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern MacVerifyResponse_ProtectionLevel_Software :: MacVerifyResponse_ProtectionLevel
pattern MacVerifyResponse_ProtectionLevel_Software = MacVerifyResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern MacVerifyResponse_ProtectionLevel_Hsm :: MacVerifyResponse_ProtectionLevel
pattern MacVerifyResponse_ProtectionLevel_Hsm = MacVerifyResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern MacVerifyResponse_ProtectionLevel_External :: MacVerifyResponse_ProtectionLevel
pattern MacVerifyResponse_ProtectionLevel_External = MacVerifyResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern MacVerifyResponse_ProtectionLevel_EXTERNALVPC :: MacVerifyResponse_ProtectionLevel
pattern MacVerifyResponse_ProtectionLevel_EXTERNALVPC = MacVerifyResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  MacVerifyResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  MacVerifyResponse_ProtectionLevel_Software,
  MacVerifyResponse_ProtectionLevel_Hsm,
  MacVerifyResponse_ProtectionLevel_External,
  MacVerifyResponse_ProtectionLevel_EXTERNALVPC,
  MacVerifyResponse_ProtectionLevel
  #-}

-- | The Algorithm associated with this key.
newtype PublicKey_Algorithm = PublicKey_Algorithm {fromPublicKey_Algorithm :: Core.Text}
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
pattern PublicKey_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED :: PublicKey_Algorithm
pattern PublicKey_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED = PublicKey_Algorithm "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"

-- | Creates symmetric encryption keys.
pattern PublicKey_Algorithm_GOOGLESYMMETRICENCRYPTION :: PublicKey_Algorithm
pattern PublicKey_Algorithm_GOOGLESYMMETRICENCRYPTION = PublicKey_Algorithm "GOOGLE_SYMMETRIC_ENCRYPTION"

-- | AES-GCM (Galois Counter Mode) using 128-bit keys.
pattern PublicKey_Algorithm_AES128GCM :: PublicKey_Algorithm
pattern PublicKey_Algorithm_AES128GCM = PublicKey_Algorithm "AES_128_GCM"

-- | AES-GCM (Galois Counter Mode) using 256-bit keys.
pattern PublicKey_Algorithm_AES256GCM :: PublicKey_Algorithm
pattern PublicKey_Algorithm_AES256GCM = PublicKey_Algorithm "AES_256_GCM"

-- | AES-CBC (Cipher Block Chaining Mode) using 128-bit keys.
pattern PublicKey_Algorithm_AES128CBC :: PublicKey_Algorithm
pattern PublicKey_Algorithm_AES128CBC = PublicKey_Algorithm "AES_128_CBC"

-- | AES-CBC (Cipher Block Chaining Mode) using 256-bit keys.
pattern PublicKey_Algorithm_AES256CBC :: PublicKey_Algorithm
pattern PublicKey_Algorithm_AES256CBC = PublicKey_Algorithm "AES_256_CBC"

-- | AES-CTR (Counter Mode) using 128-bit keys.
pattern PublicKey_Algorithm_AES128CTR :: PublicKey_Algorithm
pattern PublicKey_Algorithm_AES128CTR = PublicKey_Algorithm "AES_128_CTR"

-- | AES-CTR (Counter Mode) using 256-bit keys.
pattern PublicKey_Algorithm_AES256CTR :: PublicKey_Algorithm
pattern PublicKey_Algorithm_AES256CTR = PublicKey_Algorithm "AES_256_CTR"

-- | RSASSA-PSS 2048 bit key with a SHA256 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PSS_2048_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PSS_2048_SHA256 = PublicKey_Algorithm "RSA_SIGN_PSS_2048_SHA256"

-- | RSASSA-PSS 3072 bit key with a SHA256 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PSS_3072_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PSS_3072_SHA256 = PublicKey_Algorithm "RSA_SIGN_PSS_3072_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA256 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA256 = PublicKey_Algorithm "RSA_SIGN_PSS_4096_SHA256"

-- | RSASSA-PSS 4096 bit key with a SHA512 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA512 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA512 = PublicKey_Algorithm "RSA_SIGN_PSS_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_2048_SHA256 = PublicKey_Algorithm "RSA_SIGN_PKCS1_2048_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_3072_SHA256 = PublicKey_Algorithm "RSA_SIGN_PKCS1_3072_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA256 = PublicKey_Algorithm "RSA_SIGN_PKCS1_4096_SHA256"

-- | RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA512 = PublicKey_Algorithm "RSA_SIGN_PKCS1_4096_SHA512"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.
pattern PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_2048 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_2048 = PublicKey_Algorithm "RSA_SIGN_RAW_PKCS1_2048"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.
pattern PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_3072 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_3072 = PublicKey_Algorithm "RSA_SIGN_RAW_PKCS1_3072"

-- | RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.
pattern PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_4096 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_4096 = PublicKey_Algorithm "RSA_SIGN_RAW_PKCS1_4096"

-- | RSAES-OAEP 2048 bit key with a SHA256 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_2048_SHA256"

-- | RSAES-OAEP 3072 bit key with a SHA256 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_3072_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA256 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_4096_SHA256"

-- | RSAES-OAEP 4096 bit key with a SHA512 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_4096_SHA512"

-- | RSAES-OAEP 2048 bit key with a SHA1 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_2048_SHA1"

-- | RSAES-OAEP 3072 bit key with a SHA1 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_3072_SHA1"

-- | RSAES-OAEP 4096 bit key with a SHA1 digest.
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1 = PublicKey_Algorithm "RSA_DECRYPT_OAEP_4096_SHA1"

-- | ECDSA on the NIST P-256 curve with a SHA256 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern PublicKey_Algorithm_EC_SIGN_P256_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_P256_SHA256 = PublicKey_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern PublicKey_Algorithm_EC_SIGN_P384_SHA384 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_P384_SHA384 = PublicKey_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level. Other hash functions can also be used: https:\/\/cloud.google.com\/kms\/docs\/create-validate-signatures#ecdsa/support/for/other/hash_algorithms
pattern PublicKey_Algorithm_EC_SIGN_SECP256K1_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_SECP256K1_SHA256 = PublicKey_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | EdDSA on the Curve25519 in pure mode (taking data as input).
pattern PublicKey_Algorithm_EC_SIGN_ED25519 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_ED25519 = PublicKey_Algorithm "EC_SIGN_ED25519"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern PublicKey_Algorithm_HMAC_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_HMAC_SHA256 = PublicKey_Algorithm "HMAC_SHA256"

-- | HMAC-SHA1 signing with a 160 bit key.
pattern PublicKey_Algorithm_HMAC_SHA1 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_HMAC_SHA1 = PublicKey_Algorithm "HMAC_SHA1"

-- | HMAC-SHA384 signing with a 384 bit key.
pattern PublicKey_Algorithm_HMAC_SHA384 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_HMAC_SHA384 = PublicKey_Algorithm "HMAC_SHA384"

-- | HMAC-SHA512 signing with a 512 bit key.
pattern PublicKey_Algorithm_HMAC_SHA512 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_HMAC_SHA512 = PublicKey_Algorithm "HMAC_SHA512"

-- | HMAC-SHA224 signing with a 224 bit key.
pattern PublicKey_Algorithm_HMAC_SHA224 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_HMAC_SHA224 = PublicKey_Algorithm "HMAC_SHA224"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION = PublicKey_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

-- | The post-quantum Module-Lattice-Based Digital Signature Algorithm, at security level 3. Randomized version.
pattern PublicKey_Algorithm_PQ_SIGN_ML_DSA_65 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_PQ_SIGN_ML_DSA_65 = PublicKey_Algorithm "PQ_SIGN_ML_DSA_65"

-- | The post-quantum stateless hash-based digital signature algorithm, at security level 1. Randomized version.
pattern PublicKey_Algorithm_PQSIGNSLHDSASHA2128S :: PublicKey_Algorithm
pattern PublicKey_Algorithm_PQSIGNSLHDSASHA2128S = PublicKey_Algorithm "PQ_SIGN_SLH_DSA_SHA2_128S"

{-# COMPLETE
  PublicKey_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  PublicKey_Algorithm_GOOGLESYMMETRICENCRYPTION,
  PublicKey_Algorithm_AES128GCM,
  PublicKey_Algorithm_AES256GCM,
  PublicKey_Algorithm_AES128CBC,
  PublicKey_Algorithm_AES256CBC,
  PublicKey_Algorithm_AES128CTR,
  PublicKey_Algorithm_AES256CTR,
  PublicKey_Algorithm_RSA_SIGN_PSS_2048_SHA256,
  PublicKey_Algorithm_RSA_SIGN_PSS_3072_SHA256,
  PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA256,
  PublicKey_Algorithm_RSA_SIGN_PSS_4096_SHA512,
  PublicKey_Algorithm_RSA_SIGN_PKCS1_2048_SHA256,
  PublicKey_Algorithm_RSA_SIGN_PKCS1_3072_SHA256,
  PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA256,
  PublicKey_Algorithm_RSA_SIGN_PKCS1_4096_SHA512,
  PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_2048,
  PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_3072,
  PublicKey_Algorithm_RSA_SIGN_RAW_PKCS1_4096,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA256,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA256,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA256,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA512,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_2048_SHA1,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_3072_SHA1,
  PublicKey_Algorithm_RSA_DECRYPT_OAEP_4096_SHA1,
  PublicKey_Algorithm_EC_SIGN_P256_SHA256,
  PublicKey_Algorithm_EC_SIGN_P384_SHA384,
  PublicKey_Algorithm_EC_SIGN_SECP256K1_SHA256,
  PublicKey_Algorithm_EC_SIGN_ED25519,
  PublicKey_Algorithm_HMAC_SHA256,
  PublicKey_Algorithm_HMAC_SHA1,
  PublicKey_Algorithm_HMAC_SHA384,
  PublicKey_Algorithm_HMAC_SHA512,
  PublicKey_Algorithm_HMAC_SHA224,
  PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION,
  PublicKey_Algorithm_PQ_SIGN_ML_DSA_65,
  PublicKey_Algorithm_PQSIGNSLHDSASHA2128S,
  PublicKey_Algorithm
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion public key.
newtype PublicKey_ProtectionLevel = PublicKey_ProtectionLevel {fromPublicKey_ProtectionLevel :: Core.Text}
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
pattern PublicKey_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: PublicKey_ProtectionLevel
pattern PublicKey_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = PublicKey_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern PublicKey_ProtectionLevel_Software :: PublicKey_ProtectionLevel
pattern PublicKey_ProtectionLevel_Software = PublicKey_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern PublicKey_ProtectionLevel_Hsm :: PublicKey_ProtectionLevel
pattern PublicKey_ProtectionLevel_Hsm = PublicKey_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern PublicKey_ProtectionLevel_External :: PublicKey_ProtectionLevel
pattern PublicKey_ProtectionLevel_External = PublicKey_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern PublicKey_ProtectionLevel_EXTERNALVPC :: PublicKey_ProtectionLevel
pattern PublicKey_ProtectionLevel_EXTERNALVPC = PublicKey_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  PublicKey_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  PublicKey_ProtectionLevel_Software,
  PublicKey_ProtectionLevel_Hsm,
  PublicKey_ProtectionLevel_External,
  PublicKey_ProtectionLevel_EXTERNALVPC,
  PublicKey_ProtectionLevel
  #-}

-- | The PublicKey format specified by the customer through the public/key/format field.
newtype PublicKey_PublicKeyFormat = PublicKey_PublicKeyFormat {fromPublicKey_PublicKeyFormat :: Core.Text}
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

-- | If the public/key/format field is not specified: - For PQC algorithms, an error will be returned. - For non-PQC algorithms, the default format is PEM, and the field pem will be populated. Otherwise, the public key will be exported through the public_key field in the requested format.
pattern PublicKey_PublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED :: PublicKey_PublicKeyFormat
pattern PublicKey_PublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED = PublicKey_PublicKeyFormat "PUBLIC_KEY_FORMAT_UNSPECIFIED"

-- | The returned public key will be encoded in PEM format. See the <https://tools.ietf.org/html/rfc7468 RFC7468> sections for <https://tools.ietf.org/html/rfc7468#section-2 General Considerations> and [Textual Encoding of Subject Public Key Info] (https:\/\/tools.ietf.org\/html\/rfc7468#section-13) for more information.
pattern PublicKey_PublicKeyFormat_Pem :: PublicKey_PublicKeyFormat
pattern PublicKey_PublicKeyFormat_Pem = PublicKey_PublicKeyFormat "PEM"

-- | This is supported only for PQC algorithms. The key material is returned in the format defined by NIST PQC standards (FIPS 203, FIPS 204, and FIPS 205).
pattern PublicKey_PublicKeyFormat_NISTPQC :: PublicKey_PublicKeyFormat
pattern PublicKey_PublicKeyFormat_NISTPQC = PublicKey_PublicKeyFormat "NIST_PQC"

{-# COMPLETE
  PublicKey_PublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED,
  PublicKey_PublicKeyFormat_Pem,
  PublicKey_PublicKeyFormat_NISTPQC,
  PublicKey_PublicKeyFormat
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
newtype RawDecryptResponse_ProtectionLevel = RawDecryptResponse_ProtectionLevel {fromRawDecryptResponse_ProtectionLevel :: Core.Text}
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
pattern RawDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: RawDecryptResponse_ProtectionLevel
pattern RawDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = RawDecryptResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern RawDecryptResponse_ProtectionLevel_Software :: RawDecryptResponse_ProtectionLevel
pattern RawDecryptResponse_ProtectionLevel_Software = RawDecryptResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern RawDecryptResponse_ProtectionLevel_Hsm :: RawDecryptResponse_ProtectionLevel
pattern RawDecryptResponse_ProtectionLevel_Hsm = RawDecryptResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern RawDecryptResponse_ProtectionLevel_External :: RawDecryptResponse_ProtectionLevel
pattern RawDecryptResponse_ProtectionLevel_External = RawDecryptResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern RawDecryptResponse_ProtectionLevel_EXTERNALVPC :: RawDecryptResponse_ProtectionLevel
pattern RawDecryptResponse_ProtectionLevel_EXTERNALVPC = RawDecryptResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  RawDecryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  RawDecryptResponse_ProtectionLevel_Software,
  RawDecryptResponse_ProtectionLevel_Hsm,
  RawDecryptResponse_ProtectionLevel_External,
  RawDecryptResponse_ProtectionLevel_EXTERNALVPC,
  RawDecryptResponse_ProtectionLevel
  #-}

-- | The ProtectionLevel of the CryptoKeyVersion used in encryption.
newtype RawEncryptResponse_ProtectionLevel = RawEncryptResponse_ProtectionLevel {fromRawEncryptResponse_ProtectionLevel :: Core.Text}
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
pattern RawEncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED :: RawEncryptResponse_ProtectionLevel
pattern RawEncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED = RawEncryptResponse_ProtectionLevel "PROTECTION_LEVEL_UNSPECIFIED"

-- | Crypto operations are performed in software.
pattern RawEncryptResponse_ProtectionLevel_Software :: RawEncryptResponse_ProtectionLevel
pattern RawEncryptResponse_ProtectionLevel_Software = RawEncryptResponse_ProtectionLevel "SOFTWARE"

-- | Crypto operations are performed in a Hardware Security Module.
pattern RawEncryptResponse_ProtectionLevel_Hsm :: RawEncryptResponse_ProtectionLevel
pattern RawEncryptResponse_ProtectionLevel_Hsm = RawEncryptResponse_ProtectionLevel "HSM"

-- | Crypto operations are performed by an external key manager.
pattern RawEncryptResponse_ProtectionLevel_External :: RawEncryptResponse_ProtectionLevel
pattern RawEncryptResponse_ProtectionLevel_External = RawEncryptResponse_ProtectionLevel "EXTERNAL"

-- | Crypto operations are performed in an EKM-over-VPC backend.
pattern RawEncryptResponse_ProtectionLevel_EXTERNALVPC :: RawEncryptResponse_ProtectionLevel
pattern RawEncryptResponse_ProtectionLevel_EXTERNALVPC = RawEncryptResponse_ProtectionLevel "EXTERNAL_VPC"

{-# COMPLETE
  RawEncryptResponse_ProtectionLevel_PROTECTIONLEVELUNSPECIFIED,
  RawEncryptResponse_ProtectionLevel_Software,
  RawEncryptResponse_ProtectionLevel_Hsm,
  RawEncryptResponse_ProtectionLevel_External,
  RawEncryptResponse_ProtectionLevel_EXTERNALVPC,
  RawEncryptResponse_ProtectionLevel
  #-}

-- | Optional. The PublicKey format specified by the user. This field is required for PQC algorithms. If specified, the public key will be exported through the public_key field in the requested format. Otherwise, the pem field will be populated for non-PQC algorithms, and an error will be returned for PQC algorithms.
newtype ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat {fromProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat :: Core.Text}
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

-- | If the public/key/format field is not specified: - For PQC algorithms, an error will be returned. - For non-PQC algorithms, the default format is PEM, and the field pem will be populated. Otherwise, the public key will be exported through the public_key field in the requested format.
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED :: ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat "PUBLIC_KEY_FORMAT_UNSPECIFIED"

-- | The returned public key will be encoded in PEM format. See the <https://tools.ietf.org/html/rfc7468 RFC7468> sections for <https://tools.ietf.org/html/rfc7468#section-2 General Considerations> and [Textual Encoding of Subject Public Key Info] (https:\/\/tools.ietf.org\/html\/rfc7468#section-13) for more information.
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_Pem :: ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_Pem = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat "PEM"

-- | This is supported only for PQC algorithms. The key material is returned in the format defined by NIST PQC standards (FIPS 203, FIPS 204, and FIPS 205).
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_NISTPQC :: ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_NISTPQC = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat "NIST_PQC"

{-# COMPLETE
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_PUBLICKEYFORMATUNSPECIFIED,
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_Pem,
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat_NISTPQC,
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
  #-}

-- | The fields to include in the response.
newtype ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView {fromProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView :: Core.Text}
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

-- | Default view for each CryptoKeyVersion. Does not include the attestation field.
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_CRYPTOKEYVERSIONVIEWUNSPECIFIED :: ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_CRYPTOKEYVERSIONVIEWUNSPECIFIED = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED"

-- | Provides all fields in each CryptoKeyVersion, including the attestation.
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_Full :: ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
pattern ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_Full = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView "FULL"

{-# COMPLETE
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_CRYPTOKEYVERSIONVIEWUNSPECIFIED,
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView_Full,
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
  #-}

-- | The fields of the primary version to include in the response.
newtype ProjectsLocationsKeyRingsCryptoKeysListVersionView = ProjectsLocationsKeyRingsCryptoKeysListVersionView {fromProjectsLocationsKeyRingsCryptoKeysListVersionView :: Core.Text}
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

-- | Default view for each CryptoKeyVersion. Does not include the attestation field.
pattern ProjectsLocationsKeyRingsCryptoKeysListVersionView_CRYPTOKEYVERSIONVIEWUNSPECIFIED :: ProjectsLocationsKeyRingsCryptoKeysListVersionView
pattern ProjectsLocationsKeyRingsCryptoKeysListVersionView_CRYPTOKEYVERSIONVIEWUNSPECIFIED = ProjectsLocationsKeyRingsCryptoKeysListVersionView "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED"

-- | Provides all fields in each CryptoKeyVersion, including the attestation.
pattern ProjectsLocationsKeyRingsCryptoKeysListVersionView_Full :: ProjectsLocationsKeyRingsCryptoKeysListVersionView
pattern ProjectsLocationsKeyRingsCryptoKeysListVersionView_Full = ProjectsLocationsKeyRingsCryptoKeysListVersionView "FULL"

{-# COMPLETE
  ProjectsLocationsKeyRingsCryptoKeysListVersionView_CRYPTOKEYVERSIONVIEWUNSPECIFIED,
  ProjectsLocationsKeyRingsCryptoKeysListVersionView_Full,
  ProjectsLocationsKeyRingsCryptoKeysListVersionView
  #-}
