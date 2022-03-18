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
-- Module      : Gogol.CloudKMS.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- * CryptoKey_Purpose
    CryptoKey_Purpose
      ( CryptoKey_Purpose_CRYPTOKEYPURPOSEUNSPECIFIED,
        CryptoKey_Purpose_ENCRYPTDECRYPT,
        CryptoKey_Purpose_ASYMMETRICSIGN,
        CryptoKey_Purpose_ASYMMETRICDECRYPT,
        CryptoKey_Purpose_Mac,
        ..
      ),

    -- * CryptoKeyVersion_Algorithm
    CryptoKeyVersion_Algorithm
      ( CryptoKeyVersion_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        CryptoKeyVersion_Algorithm_GOOGLESYMMETRICENCRYPTION,
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
        CryptoKeyVersion_Algorithm_HMAC_SHA256,
        CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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
        ..
      ),

    -- * CryptoKeyVersionTemplate_Algorithm
    CryptoKeyVersionTemplate_Algorithm
      ( CryptoKeyVersionTemplate_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
        CryptoKeyVersionTemplate_Algorithm_GOOGLESYMMETRICENCRYPTION,
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
        CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256,
        CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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
        ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256,
        ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION,
        ..
      ),

    -- * ImportJob_ImportMethod
    ImportJob_ImportMethod
      ( ImportJob_ImportMethod_IMPORTMETHODUNSPECIFIED,
        ImportJob_ImportMethod_RSA_OAEP_3072_SHA1_AES_256,
        ImportJob_ImportMethod_RSA_OAEP_4096_SHA1_AES_256,
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
        PublicKey_Algorithm_HMAC_SHA256,
        PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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

import qualified Gogol.Prelude as Core

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

-- | CryptoKeys with this purpose may be used with MacSign.
pattern CryptoKey_Purpose_Mac :: CryptoKey_Purpose
pattern CryptoKey_Purpose_Mac = CryptoKey_Purpose "MAC"

{-# COMPLETE
  CryptoKey_Purpose_CRYPTOKEYPURPOSEUNSPECIFIED,
  CryptoKey_Purpose_ENCRYPTDECRYPT,
  CryptoKey_Purpose_ASYMMETRICSIGN,
  CryptoKey_Purpose_ASYMMETRICDECRYPT,
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

-- | ECDSA on the NIST P-256 curve with a SHA256 digest.
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P256_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P256_SHA256 = CryptoKeyVersion_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest.
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P384_SHA384 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_P384_SHA384 = CryptoKeyVersion_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.
pattern CryptoKeyVersion_Algorithm_EC_SIGN_SECP256K1_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EC_SIGN_SECP256K1_SHA256 = CryptoKeyVersion_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern CryptoKeyVersion_Algorithm_HMAC_SHA256 :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_HMAC_SHA256 = CryptoKeyVersion_Algorithm "HMAC_SHA256"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION :: CryptoKeyVersion_Algorithm
pattern CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION = CryptoKeyVersion_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

{-# COMPLETE
  CryptoKeyVersion_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  CryptoKeyVersion_Algorithm_GOOGLESYMMETRICENCRYPTION,
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
  CryptoKeyVersion_Algorithm_HMAC_SHA256,
  CryptoKeyVersion_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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

-- | This version is destroyed, and the key material is no longer stored. This version may only become ENABLED again if this version is reimport_eligible and the original key material is reimported with a call to KeyManagementService.ImportCryptoKeyVersion.
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

{-# COMPLETE
  CryptoKeyVersion_State_CRYPTOKEYVERSIONSTATEUNSPECIFIED,
  CryptoKeyVersion_State_PENDINGGENERATION,
  CryptoKeyVersion_State_Enabled,
  CryptoKeyVersion_State_Disabled,
  CryptoKeyVersion_State_Destroyed,
  CryptoKeyVersion_State_DESTROYSCHEDULED,
  CryptoKeyVersion_State_PENDINGIMPORT,
  CryptoKeyVersion_State_IMPORTFAILED,
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

-- | ECDSA on the NIST P-256 curve with a SHA256 digest.
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P256_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P256_SHA256 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest.
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P384_SHA384 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_P384_SHA384 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_SECP256K1_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EC_SIGN_SECP256K1_SHA256 = CryptoKeyVersionTemplate_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256 :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256 = CryptoKeyVersionTemplate_Algorithm "HMAC_SHA256"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION :: CryptoKeyVersionTemplate_Algorithm
pattern CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION = CryptoKeyVersionTemplate_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

{-# COMPLETE
  CryptoKeyVersionTemplate_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  CryptoKeyVersionTemplate_Algorithm_GOOGLESYMMETRICENCRYPTION,
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
  CryptoKeyVersionTemplate_Algorithm_HMAC_SHA256,
  CryptoKeyVersionTemplate_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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

-- | ECDSA on the NIST P-256 curve with a SHA256 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P256_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P256_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest.
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P384_SHA384 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_P384_SHA384 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_SECP256K1_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EC_SIGN_SECP256K1_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256 :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256 = ImportCryptoKeyVersionRequest_Algorithm "HMAC_SHA256"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION :: ImportCryptoKeyVersionRequest_Algorithm
pattern ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION = ImportCryptoKeyVersionRequest_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

{-# COMPLETE
  ImportCryptoKeyVersionRequest_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  ImportCryptoKeyVersionRequest_Algorithm_GOOGLESYMMETRICENCRYPTION,
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
  ImportCryptoKeyVersionRequest_Algorithm_HMAC_SHA256,
  ImportCryptoKeyVersionRequest_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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

{-# COMPLETE
  ImportJob_ImportMethod_IMPORTMETHODUNSPECIFIED,
  ImportJob_ImportMethod_RSA_OAEP_3072_SHA1_AES_256,
  ImportJob_ImportMethod_RSA_OAEP_4096_SHA1_AES_256,
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

-- | ECDSA on the NIST P-256 curve with a SHA256 digest.
pattern PublicKey_Algorithm_EC_SIGN_P256_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_P256_SHA256 = PublicKey_Algorithm "EC_SIGN_P256_SHA256"

-- | ECDSA on the NIST P-384 curve with a SHA384 digest.
pattern PublicKey_Algorithm_EC_SIGN_P384_SHA384 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_P384_SHA384 = PublicKey_Algorithm "EC_SIGN_P384_SHA384"

-- | ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.
pattern PublicKey_Algorithm_EC_SIGN_SECP256K1_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EC_SIGN_SECP256K1_SHA256 = PublicKey_Algorithm "EC_SIGN_SECP256K1_SHA256"

-- | HMAC-SHA256 signing with a 256 bit key.
pattern PublicKey_Algorithm_HMAC_SHA256 :: PublicKey_Algorithm
pattern PublicKey_Algorithm_HMAC_SHA256 = PublicKey_Algorithm "HMAC_SHA256"

-- | Algorithm representing symmetric encryption by an external key manager.
pattern PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION :: PublicKey_Algorithm
pattern PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION = PublicKey_Algorithm "EXTERNAL_SYMMETRIC_ENCRYPTION"

{-# COMPLETE
  PublicKey_Algorithm_CRYPTOKEYVERSIONALGORITHMUNSPECIFIED,
  PublicKey_Algorithm_GOOGLESYMMETRICENCRYPTION,
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
  PublicKey_Algorithm_HMAC_SHA256,
  PublicKey_Algorithm_EXTERNALSYMMETRICENCRYPTION,
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
