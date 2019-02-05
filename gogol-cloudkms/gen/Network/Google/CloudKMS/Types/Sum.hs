{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudKMS.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudKMS.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The immutable purpose of this CryptoKey.
data CryptoKeyPurpose
    = CryptoKeyPurposeUnspecified
      -- ^ @CRYPTO_KEY_PURPOSE_UNSPECIFIED@
      -- Not specified.
    | EncryptDecrypt
      -- ^ @ENCRYPT_DECRYPT@
      -- CryptoKeys with this purpose may be used with Encrypt and Decrypt.
    | AsymmetricSign
      -- ^ @ASYMMETRIC_SIGN@
      -- CryptoKeys with this purpose may be used with AsymmetricSign and
      -- GetPublicKey.
    | AsymmetricDecrypt
      -- ^ @ASYMMETRIC_DECRYPT@
      -- CryptoKeys with this purpose may be used with AsymmetricDecrypt and
      -- GetPublicKey.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyPurpose

instance FromHttpApiData CryptoKeyPurpose where
    parseQueryParam = \case
        "CRYPTO_KEY_PURPOSE_UNSPECIFIED" -> Right CryptoKeyPurposeUnspecified
        "ENCRYPT_DECRYPT" -> Right EncryptDecrypt
        "ASYMMETRIC_SIGN" -> Right AsymmetricSign
        "ASYMMETRIC_DECRYPT" -> Right AsymmetricDecrypt
        x -> Left ("Unable to parse CryptoKeyPurpose from: " <> x)

instance ToHttpApiData CryptoKeyPurpose where
    toQueryParam = \case
        CryptoKeyPurposeUnspecified -> "CRYPTO_KEY_PURPOSE_UNSPECIFIED"
        EncryptDecrypt -> "ENCRYPT_DECRYPT"
        AsymmetricSign -> "ASYMMETRIC_SIGN"
        AsymmetricDecrypt -> "ASYMMETRIC_DECRYPT"

instance FromJSON CryptoKeyPurpose where
    parseJSON = parseJSONText "CryptoKeyPurpose"

instance ToJSON CryptoKeyPurpose where
    toJSON = toJSONText

-- | ProtectionLevel to use when creating a CryptoKeyVersion based on this
-- template. Immutable. Defaults to SOFTWARE.
data CryptoKeyVersionTemplateProtectionLevel
    = ProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | Software
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | HSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionTemplateProtectionLevel

instance FromHttpApiData CryptoKeyVersionTemplateProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right ProtectionLevelUnspecified
        "SOFTWARE" -> Right Software
        "HSM" -> Right HSM
        x -> Left ("Unable to parse CryptoKeyVersionTemplateProtectionLevel from: " <> x)

instance ToHttpApiData CryptoKeyVersionTemplateProtectionLevel where
    toQueryParam = \case
        ProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        Software -> "SOFTWARE"
        HSM -> "HSM"

instance FromJSON CryptoKeyVersionTemplateProtectionLevel where
    parseJSON = parseJSONText "CryptoKeyVersionTemplateProtectionLevel"

instance ToJSON CryptoKeyVersionTemplateProtectionLevel where
    toJSON = toJSONText

-- | Required. Algorithm to use when creating a CryptoKeyVersion based on
-- this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION
-- is implied if both this field is omitted and CryptoKey.purpose is
-- ENCRYPT_DECRYPT.
data CryptoKeyVersionTemplateAlgorithm
    = CryptoKeyVersionAlgorithmUnspecified
      -- ^ @CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED@
      -- Not specified.
    | GoogleSymmetricEncryption
      -- ^ @GOOGLE_SYMMETRIC_ENCRYPTION@
      -- Creates symmetric encryption keys.
    | RsaSignPss2048SHA256
      -- ^ @RSA_SIGN_PSS_2048_SHA256@
      -- RSASSA-PSS 2048 bit key with a SHA256 digest.
    | RsaSignPss3072SHA256
      -- ^ @RSA_SIGN_PSS_3072_SHA256@
      -- RSASSA-PSS 3072 bit key with a SHA256 digest.
    | RsaSignPss4096SHA256
      -- ^ @RSA_SIGN_PSS_4096_SHA256@
      -- RSASSA-PSS 4096 bit key with a SHA256 digest.
    | RsaSignPss4096SHA512
      -- ^ @RSA_SIGN_PSS_4096_SHA512@
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
    | RsaDecryptOaep2048SHA256
      -- ^ @RSA_DECRYPT_OAEP_2048_SHA256@
      -- RSAES-OAEP 2048 bit key with a SHA256 digest.
    | RsaDecryptOaep3072SHA256
      -- ^ @RSA_DECRYPT_OAEP_3072_SHA256@
      -- RSAES-OAEP 3072 bit key with a SHA256 digest.
    | RsaDecryptOaep4096SHA256
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA256@
      -- RSAES-OAEP 4096 bit key with a SHA256 digest.
    | RsaDecryptOaep4096SHA512
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA512@
      -- RSAES-OAEP 4096 bit key with a SHA512 digest.
    | EcSignP256SHA256
      -- ^ @EC_SIGN_P256_SHA256@
      -- ECDSA on the NIST P-256 curve with a SHA256 digest.
    | EcSignP384SHA384
      -- ^ @EC_SIGN_P384_SHA384@
      -- ECDSA on the NIST P-384 curve with a SHA384 digest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionTemplateAlgorithm

instance FromHttpApiData CryptoKeyVersionTemplateAlgorithm where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> Right CryptoKeyVersionAlgorithmUnspecified
        "GOOGLE_SYMMETRIC_ENCRYPTION" -> Right GoogleSymmetricEncryption
        "RSA_SIGN_PSS_2048_SHA256" -> Right RsaSignPss2048SHA256
        "RSA_SIGN_PSS_3072_SHA256" -> Right RsaSignPss3072SHA256
        "RSA_SIGN_PSS_4096_SHA256" -> Right RsaSignPss4096SHA256
        "RSA_SIGN_PSS_4096_SHA512" -> Right RsaSignPss4096SHA512
        "RSA_SIGN_PKCS1_2048_SHA256" -> Right RsaSignPKCS12048SHA256
        "RSA_SIGN_PKCS1_3072_SHA256" -> Right RsaSignPKCS13072SHA256
        "RSA_SIGN_PKCS1_4096_SHA256" -> Right RsaSignPKCS14096SHA256
        "RSA_SIGN_PKCS1_4096_SHA512" -> Right RsaSignPKCS14096SHA512
        "RSA_DECRYPT_OAEP_2048_SHA256" -> Right RsaDecryptOaep2048SHA256
        "RSA_DECRYPT_OAEP_3072_SHA256" -> Right RsaDecryptOaep3072SHA256
        "RSA_DECRYPT_OAEP_4096_SHA256" -> Right RsaDecryptOaep4096SHA256
        "RSA_DECRYPT_OAEP_4096_SHA512" -> Right RsaDecryptOaep4096SHA512
        "EC_SIGN_P256_SHA256" -> Right EcSignP256SHA256
        "EC_SIGN_P384_SHA384" -> Right EcSignP384SHA384
        x -> Left ("Unable to parse CryptoKeyVersionTemplateAlgorithm from: " <> x)

instance ToHttpApiData CryptoKeyVersionTemplateAlgorithm where
    toQueryParam = \case
        CryptoKeyVersionAlgorithmUnspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"
        GoogleSymmetricEncryption -> "GOOGLE_SYMMETRIC_ENCRYPTION"
        RsaSignPss2048SHA256 -> "RSA_SIGN_PSS_2048_SHA256"
        RsaSignPss3072SHA256 -> "RSA_SIGN_PSS_3072_SHA256"
        RsaSignPss4096SHA256 -> "RSA_SIGN_PSS_4096_SHA256"
        RsaSignPss4096SHA512 -> "RSA_SIGN_PSS_4096_SHA512"
        RsaSignPKCS12048SHA256 -> "RSA_SIGN_PKCS1_2048_SHA256"
        RsaSignPKCS13072SHA256 -> "RSA_SIGN_PKCS1_3072_SHA256"
        RsaSignPKCS14096SHA256 -> "RSA_SIGN_PKCS1_4096_SHA256"
        RsaSignPKCS14096SHA512 -> "RSA_SIGN_PKCS1_4096_SHA512"
        RsaDecryptOaep2048SHA256 -> "RSA_DECRYPT_OAEP_2048_SHA256"
        RsaDecryptOaep3072SHA256 -> "RSA_DECRYPT_OAEP_3072_SHA256"
        RsaDecryptOaep4096SHA256 -> "RSA_DECRYPT_OAEP_4096_SHA256"
        RsaDecryptOaep4096SHA512 -> "RSA_DECRYPT_OAEP_4096_SHA512"
        EcSignP256SHA256 -> "EC_SIGN_P256_SHA256"
        EcSignP384SHA384 -> "EC_SIGN_P384_SHA384"

instance FromJSON CryptoKeyVersionTemplateAlgorithm where
    parseJSON = parseJSONText "CryptoKeyVersionTemplateAlgorithm"

instance ToJSON CryptoKeyVersionTemplateAlgorithm where
    toJSON = toJSONText

-- | The Algorithm associated with this key.
data PublicKeyAlgorithm
    = PKACryptoKeyVersionAlgorithmUnspecified
      -- ^ @CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED@
      -- Not specified.
    | PKAGoogleSymmetricEncryption
      -- ^ @GOOGLE_SYMMETRIC_ENCRYPTION@
      -- Creates symmetric encryption keys.
    | PKARsaSignPss2048SHA256
      -- ^ @RSA_SIGN_PSS_2048_SHA256@
      -- RSASSA-PSS 2048 bit key with a SHA256 digest.
    | PKARsaSignPss3072SHA256
      -- ^ @RSA_SIGN_PSS_3072_SHA256@
      -- RSASSA-PSS 3072 bit key with a SHA256 digest.
    | PKARsaSignPss4096SHA256
      -- ^ @RSA_SIGN_PSS_4096_SHA256@
      -- RSASSA-PSS 4096 bit key with a SHA256 digest.
    | PKARsaSignPss4096SHA512
      -- ^ @RSA_SIGN_PSS_4096_SHA512@
      -- RSASSA-PSS 4096 bit key with a SHA512 digest.
    | PKARsaSignPKCS12048SHA256
      -- ^ @RSA_SIGN_PKCS1_2048_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
    | PKARsaSignPKCS13072SHA256
      -- ^ @RSA_SIGN_PKCS1_3072_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
    | PKARsaSignPKCS14096SHA256
      -- ^ @RSA_SIGN_PKCS1_4096_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
    | PKARsaSignPKCS14096SHA512
      -- ^ @RSA_SIGN_PKCS1_4096_SHA512@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
    | PKARsaDecryptOaep2048SHA256
      -- ^ @RSA_DECRYPT_OAEP_2048_SHA256@
      -- RSAES-OAEP 2048 bit key with a SHA256 digest.
    | PKARsaDecryptOaep3072SHA256
      -- ^ @RSA_DECRYPT_OAEP_3072_SHA256@
      -- RSAES-OAEP 3072 bit key with a SHA256 digest.
    | PKARsaDecryptOaep4096SHA256
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA256@
      -- RSAES-OAEP 4096 bit key with a SHA256 digest.
    | PKARsaDecryptOaep4096SHA512
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA512@
      -- RSAES-OAEP 4096 bit key with a SHA512 digest.
    | PKAEcSignP256SHA256
      -- ^ @EC_SIGN_P256_SHA256@
      -- ECDSA on the NIST P-256 curve with a SHA256 digest.
    | PKAEcSignP384SHA384
      -- ^ @EC_SIGN_P384_SHA384@
      -- ECDSA on the NIST P-384 curve with a SHA384 digest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PublicKeyAlgorithm

instance FromHttpApiData PublicKeyAlgorithm where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> Right PKACryptoKeyVersionAlgorithmUnspecified
        "GOOGLE_SYMMETRIC_ENCRYPTION" -> Right PKAGoogleSymmetricEncryption
        "RSA_SIGN_PSS_2048_SHA256" -> Right PKARsaSignPss2048SHA256
        "RSA_SIGN_PSS_3072_SHA256" -> Right PKARsaSignPss3072SHA256
        "RSA_SIGN_PSS_4096_SHA256" -> Right PKARsaSignPss4096SHA256
        "RSA_SIGN_PSS_4096_SHA512" -> Right PKARsaSignPss4096SHA512
        "RSA_SIGN_PKCS1_2048_SHA256" -> Right PKARsaSignPKCS12048SHA256
        "RSA_SIGN_PKCS1_3072_SHA256" -> Right PKARsaSignPKCS13072SHA256
        "RSA_SIGN_PKCS1_4096_SHA256" -> Right PKARsaSignPKCS14096SHA256
        "RSA_SIGN_PKCS1_4096_SHA512" -> Right PKARsaSignPKCS14096SHA512
        "RSA_DECRYPT_OAEP_2048_SHA256" -> Right PKARsaDecryptOaep2048SHA256
        "RSA_DECRYPT_OAEP_3072_SHA256" -> Right PKARsaDecryptOaep3072SHA256
        "RSA_DECRYPT_OAEP_4096_SHA256" -> Right PKARsaDecryptOaep4096SHA256
        "RSA_DECRYPT_OAEP_4096_SHA512" -> Right PKARsaDecryptOaep4096SHA512
        "EC_SIGN_P256_SHA256" -> Right PKAEcSignP256SHA256
        "EC_SIGN_P384_SHA384" -> Right PKAEcSignP384SHA384
        x -> Left ("Unable to parse PublicKeyAlgorithm from: " <> x)

instance ToHttpApiData PublicKeyAlgorithm where
    toQueryParam = \case
        PKACryptoKeyVersionAlgorithmUnspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"
        PKAGoogleSymmetricEncryption -> "GOOGLE_SYMMETRIC_ENCRYPTION"
        PKARsaSignPss2048SHA256 -> "RSA_SIGN_PSS_2048_SHA256"
        PKARsaSignPss3072SHA256 -> "RSA_SIGN_PSS_3072_SHA256"
        PKARsaSignPss4096SHA256 -> "RSA_SIGN_PSS_4096_SHA256"
        PKARsaSignPss4096SHA512 -> "RSA_SIGN_PSS_4096_SHA512"
        PKARsaSignPKCS12048SHA256 -> "RSA_SIGN_PKCS1_2048_SHA256"
        PKARsaSignPKCS13072SHA256 -> "RSA_SIGN_PKCS1_3072_SHA256"
        PKARsaSignPKCS14096SHA256 -> "RSA_SIGN_PKCS1_4096_SHA256"
        PKARsaSignPKCS14096SHA512 -> "RSA_SIGN_PKCS1_4096_SHA512"
        PKARsaDecryptOaep2048SHA256 -> "RSA_DECRYPT_OAEP_2048_SHA256"
        PKARsaDecryptOaep3072SHA256 -> "RSA_DECRYPT_OAEP_3072_SHA256"
        PKARsaDecryptOaep4096SHA256 -> "RSA_DECRYPT_OAEP_4096_SHA256"
        PKARsaDecryptOaep4096SHA512 -> "RSA_DECRYPT_OAEP_4096_SHA512"
        PKAEcSignP256SHA256 -> "EC_SIGN_P256_SHA256"
        PKAEcSignP384SHA384 -> "EC_SIGN_P384_SHA384"

instance FromJSON PublicKeyAlgorithm where
    parseJSON = parseJSONText "PublicKeyAlgorithm"

instance ToJSON PublicKeyAlgorithm where
    toJSON = toJSONText

-- | The current state of the CryptoKeyVersion.
data CryptoKeyVersionState
    = CryptoKeyVersionStateUnspecified
      -- ^ @CRYPTO_KEY_VERSION_STATE_UNSPECIFIED@
      -- Not specified.
    | PendingGeneration
      -- ^ @PENDING_GENERATION@
      -- This version is still being generated. It may not be used, enabled,
      -- disabled, or destroyed yet. Cloud KMS will automatically mark this
      -- version ENABLED as soon as the version is ready.
    | Enabled
      -- ^ @ENABLED@
      -- This version may be used for cryptographic operations.
    | Disabled
      -- ^ @DISABLED@
      -- This version may not be used, but the key material is still available,
      -- and the version can be placed back into the ENABLED state.
    | Destroyed
      -- ^ @DESTROYED@
      -- This version is destroyed, and the key material is no longer stored. A
      -- version may not leave this state once entered.
    | DestroyScheduled
      -- ^ @DESTROY_SCHEDULED@
      -- This version is scheduled for destruction, and will be destroyed soon.
      -- Call RestoreCryptoKeyVersion to put it back into the DISABLED state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionState

instance FromHttpApiData CryptoKeyVersionState where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" -> Right CryptoKeyVersionStateUnspecified
        "PENDING_GENERATION" -> Right PendingGeneration
        "ENABLED" -> Right Enabled
        "DISABLED" -> Right Disabled
        "DESTROYED" -> Right Destroyed
        "DESTROY_SCHEDULED" -> Right DestroyScheduled
        x -> Left ("Unable to parse CryptoKeyVersionState from: " <> x)

instance ToHttpApiData CryptoKeyVersionState where
    toQueryParam = \case
        CryptoKeyVersionStateUnspecified -> "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED"
        PendingGeneration -> "PENDING_GENERATION"
        Enabled -> "ENABLED"
        Disabled -> "DISABLED"
        Destroyed -> "DESTROYED"
        DestroyScheduled -> "DESTROY_SCHEDULED"

instance FromJSON CryptoKeyVersionState where
    parseJSON = parseJSONText "CryptoKeyVersionState"

instance ToJSON CryptoKeyVersionState where
    toJSON = toJSONText

-- | Output only. The format of the attestation data.
data KeyOperationAttestationFormat
    = AttestationFormatUnspecified
      -- ^ @ATTESTATION_FORMAT_UNSPECIFIED@
      -- Not specified.
    | CaviumV1Compressed
      -- ^ @CAVIUM_V1_COMPRESSED@
      -- Cavium HSM attestation compressed with gzip. Note that this format is
      -- defined by Cavium and subject to change at any time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KeyOperationAttestationFormat

instance FromHttpApiData KeyOperationAttestationFormat where
    parseQueryParam = \case
        "ATTESTATION_FORMAT_UNSPECIFIED" -> Right AttestationFormatUnspecified
        "CAVIUM_V1_COMPRESSED" -> Right CaviumV1Compressed
        x -> Left ("Unable to parse KeyOperationAttestationFormat from: " <> x)

instance ToHttpApiData KeyOperationAttestationFormat where
    toQueryParam = \case
        AttestationFormatUnspecified -> "ATTESTATION_FORMAT_UNSPECIFIED"
        CaviumV1Compressed -> "CAVIUM_V1_COMPRESSED"

instance FromJSON KeyOperationAttestationFormat where
    parseJSON = parseJSONText "KeyOperationAttestationFormat"

instance ToJSON KeyOperationAttestationFormat where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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

-- | Output only. The ProtectionLevel describing how crypto operations are
-- performed with this CryptoKeyVersion.
data CryptoKeyVersionProtectionLevel
    = CKVPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | CKVPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | CKVPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionProtectionLevel

instance FromHttpApiData CryptoKeyVersionProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right CKVPLProtectionLevelUnspecified
        "SOFTWARE" -> Right CKVPLSoftware
        "HSM" -> Right CKVPLHSM
        x -> Left ("Unable to parse CryptoKeyVersionProtectionLevel from: " <> x)

instance ToHttpApiData CryptoKeyVersionProtectionLevel where
    toQueryParam = \case
        CKVPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        CKVPLSoftware -> "SOFTWARE"
        CKVPLHSM -> "HSM"

instance FromJSON CryptoKeyVersionProtectionLevel where
    parseJSON = parseJSONText "CryptoKeyVersionProtectionLevel"

instance ToJSON CryptoKeyVersionProtectionLevel where
    toJSON = toJSONText

-- | Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion
-- supports.
data CryptoKeyVersionAlgorithm
    = CKVACryptoKeyVersionAlgorithmUnspecified
      -- ^ @CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED@
      -- Not specified.
    | CKVAGoogleSymmetricEncryption
      -- ^ @GOOGLE_SYMMETRIC_ENCRYPTION@
      -- Creates symmetric encryption keys.
    | CKVARsaSignPss2048SHA256
      -- ^ @RSA_SIGN_PSS_2048_SHA256@
      -- RSASSA-PSS 2048 bit key with a SHA256 digest.
    | CKVARsaSignPss3072SHA256
      -- ^ @RSA_SIGN_PSS_3072_SHA256@
      -- RSASSA-PSS 3072 bit key with a SHA256 digest.
    | CKVARsaSignPss4096SHA256
      -- ^ @RSA_SIGN_PSS_4096_SHA256@
      -- RSASSA-PSS 4096 bit key with a SHA256 digest.
    | CKVARsaSignPss4096SHA512
      -- ^ @RSA_SIGN_PSS_4096_SHA512@
      -- RSASSA-PSS 4096 bit key with a SHA512 digest.
    | CKVARsaSignPKCS12048SHA256
      -- ^ @RSA_SIGN_PKCS1_2048_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
    | CKVARsaSignPKCS13072SHA256
      -- ^ @RSA_SIGN_PKCS1_3072_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
    | CKVARsaSignPKCS14096SHA256
      -- ^ @RSA_SIGN_PKCS1_4096_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
    | CKVARsaSignPKCS14096SHA512
      -- ^ @RSA_SIGN_PKCS1_4096_SHA512@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
    | CKVARsaDecryptOaep2048SHA256
      -- ^ @RSA_DECRYPT_OAEP_2048_SHA256@
      -- RSAES-OAEP 2048 bit key with a SHA256 digest.
    | CKVARsaDecryptOaep3072SHA256
      -- ^ @RSA_DECRYPT_OAEP_3072_SHA256@
      -- RSAES-OAEP 3072 bit key with a SHA256 digest.
    | CKVARsaDecryptOaep4096SHA256
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA256@
      -- RSAES-OAEP 4096 bit key with a SHA256 digest.
    | CKVARsaDecryptOaep4096SHA512
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA512@
      -- RSAES-OAEP 4096 bit key with a SHA512 digest.
    | CKVAEcSignP256SHA256
      -- ^ @EC_SIGN_P256_SHA256@
      -- ECDSA on the NIST P-256 curve with a SHA256 digest.
    | CKVAEcSignP384SHA384
      -- ^ @EC_SIGN_P384_SHA384@
      -- ECDSA on the NIST P-384 curve with a SHA384 digest.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionAlgorithm

instance FromHttpApiData CryptoKeyVersionAlgorithm where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> Right CKVACryptoKeyVersionAlgorithmUnspecified
        "GOOGLE_SYMMETRIC_ENCRYPTION" -> Right CKVAGoogleSymmetricEncryption
        "RSA_SIGN_PSS_2048_SHA256" -> Right CKVARsaSignPss2048SHA256
        "RSA_SIGN_PSS_3072_SHA256" -> Right CKVARsaSignPss3072SHA256
        "RSA_SIGN_PSS_4096_SHA256" -> Right CKVARsaSignPss4096SHA256
        "RSA_SIGN_PSS_4096_SHA512" -> Right CKVARsaSignPss4096SHA512
        "RSA_SIGN_PKCS1_2048_SHA256" -> Right CKVARsaSignPKCS12048SHA256
        "RSA_SIGN_PKCS1_3072_SHA256" -> Right CKVARsaSignPKCS13072SHA256
        "RSA_SIGN_PKCS1_4096_SHA256" -> Right CKVARsaSignPKCS14096SHA256
        "RSA_SIGN_PKCS1_4096_SHA512" -> Right CKVARsaSignPKCS14096SHA512
        "RSA_DECRYPT_OAEP_2048_SHA256" -> Right CKVARsaDecryptOaep2048SHA256
        "RSA_DECRYPT_OAEP_3072_SHA256" -> Right CKVARsaDecryptOaep3072SHA256
        "RSA_DECRYPT_OAEP_4096_SHA256" -> Right CKVARsaDecryptOaep4096SHA256
        "RSA_DECRYPT_OAEP_4096_SHA512" -> Right CKVARsaDecryptOaep4096SHA512
        "EC_SIGN_P256_SHA256" -> Right CKVAEcSignP256SHA256
        "EC_SIGN_P384_SHA384" -> Right CKVAEcSignP384SHA384
        x -> Left ("Unable to parse CryptoKeyVersionAlgorithm from: " <> x)

instance ToHttpApiData CryptoKeyVersionAlgorithm where
    toQueryParam = \case
        CKVACryptoKeyVersionAlgorithmUnspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"
        CKVAGoogleSymmetricEncryption -> "GOOGLE_SYMMETRIC_ENCRYPTION"
        CKVARsaSignPss2048SHA256 -> "RSA_SIGN_PSS_2048_SHA256"
        CKVARsaSignPss3072SHA256 -> "RSA_SIGN_PSS_3072_SHA256"
        CKVARsaSignPss4096SHA256 -> "RSA_SIGN_PSS_4096_SHA256"
        CKVARsaSignPss4096SHA512 -> "RSA_SIGN_PSS_4096_SHA512"
        CKVARsaSignPKCS12048SHA256 -> "RSA_SIGN_PKCS1_2048_SHA256"
        CKVARsaSignPKCS13072SHA256 -> "RSA_SIGN_PKCS1_3072_SHA256"
        CKVARsaSignPKCS14096SHA256 -> "RSA_SIGN_PKCS1_4096_SHA256"
        CKVARsaSignPKCS14096SHA512 -> "RSA_SIGN_PKCS1_4096_SHA512"
        CKVARsaDecryptOaep2048SHA256 -> "RSA_DECRYPT_OAEP_2048_SHA256"
        CKVARsaDecryptOaep3072SHA256 -> "RSA_DECRYPT_OAEP_3072_SHA256"
        CKVARsaDecryptOaep4096SHA256 -> "RSA_DECRYPT_OAEP_4096_SHA256"
        CKVARsaDecryptOaep4096SHA512 -> "RSA_DECRYPT_OAEP_4096_SHA512"
        CKVAEcSignP256SHA256 -> "EC_SIGN_P256_SHA256"
        CKVAEcSignP384SHA384 -> "EC_SIGN_P384_SHA384"

instance FromJSON CryptoKeyVersionAlgorithm where
    parseJSON = parseJSONText "CryptoKeyVersionAlgorithm"

instance ToJSON CryptoKeyVersionAlgorithm where
    toJSON = toJSONText
