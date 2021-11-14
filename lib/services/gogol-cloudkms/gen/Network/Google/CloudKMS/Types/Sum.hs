{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudKMS.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudKMS.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Required. Immutable. The protection level of the ImportJob. This must
-- match the protection_level of the version_template on the CryptoKey you
-- attempt to import into.
data ImportJobProtectionLevel
    = ProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | Software
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | HSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | External
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportJobProtectionLevel

instance FromHttpApiData ImportJobProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right ProtectionLevelUnspecified
        "SOFTWARE" -> Right Software
        "HSM" -> Right HSM
        "EXTERNAL" -> Right External
        x -> Left ("Unable to parse ImportJobProtectionLevel from: " <> x)

instance ToHttpApiData ImportJobProtectionLevel where
    toQueryParam = \case
        ProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        Software -> "SOFTWARE"
        HSM -> "HSM"
        External -> "EXTERNAL"

instance FromJSON ImportJobProtectionLevel where
    parseJSON = parseJSONText "ImportJobProtectionLevel"

instance ToJSON ImportJobProtectionLevel where
    toJSON = toJSONText

-- | Immutable. The immutable purpose of this CryptoKey.
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

-- | Required. The algorithm of the key being imported. This does not need to
-- match the version_template of the CryptoKey this version imports into.
data ImportCryptoKeyVersionRequestAlgorithm
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
    | EcSignSECP256K1SHA256
      -- ^ @EC_SIGN_SECP256K1_SHA256@
      -- ECDSA on the non-NIST secp256k1 curve. This curve is only supported for
      -- HSM protection level.
    | ExternalSymmetricEncryption
      -- ^ @EXTERNAL_SYMMETRIC_ENCRYPTION@
      -- Algorithm representing symmetric encryption by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportCryptoKeyVersionRequestAlgorithm

instance FromHttpApiData ImportCryptoKeyVersionRequestAlgorithm where
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
        "EC_SIGN_SECP256K1_SHA256" -> Right EcSignSECP256K1SHA256
        "EXTERNAL_SYMMETRIC_ENCRYPTION" -> Right ExternalSymmetricEncryption
        x -> Left ("Unable to parse ImportCryptoKeyVersionRequestAlgorithm from: " <> x)

instance ToHttpApiData ImportCryptoKeyVersionRequestAlgorithm where
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
        EcSignSECP256K1SHA256 -> "EC_SIGN_SECP256K1_SHA256"
        ExternalSymmetricEncryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION"

instance FromJSON ImportCryptoKeyVersionRequestAlgorithm where
    parseJSON = parseJSONText "ImportCryptoKeyVersionRequestAlgorithm"

instance ToJSON ImportCryptoKeyVersionRequestAlgorithm where
    toJSON = toJSONText

-- | The ProtectionLevel of the CryptoKeyVersion public key.
data PublicKeyProtectionLevel
    = PKPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | PKPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | PKPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | PKPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PublicKeyProtectionLevel

instance FromHttpApiData PublicKeyProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right PKPLProtectionLevelUnspecified
        "SOFTWARE" -> Right PKPLSoftware
        "HSM" -> Right PKPLHSM
        "EXTERNAL" -> Right PKPLExternal
        x -> Left ("Unable to parse PublicKeyProtectionLevel from: " <> x)

instance ToHttpApiData PublicKeyProtectionLevel where
    toQueryParam = \case
        PKPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        PKPLSoftware -> "SOFTWARE"
        PKPLHSM -> "HSM"
        PKPLExternal -> "EXTERNAL"

instance FromJSON PublicKeyProtectionLevel where
    parseJSON = parseJSONText "PublicKeyProtectionLevel"

instance ToJSON PublicKeyProtectionLevel where
    toJSON = toJSONText

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
data DecryptResponseProtectionLevel
    = DRPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | DRPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | DRPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | DRPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DecryptResponseProtectionLevel

instance FromHttpApiData DecryptResponseProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right DRPLProtectionLevelUnspecified
        "SOFTWARE" -> Right DRPLSoftware
        "HSM" -> Right DRPLHSM
        "EXTERNAL" -> Right DRPLExternal
        x -> Left ("Unable to parse DecryptResponseProtectionLevel from: " <> x)

instance ToHttpApiData DecryptResponseProtectionLevel where
    toQueryParam = \case
        DRPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        DRPLSoftware -> "SOFTWARE"
        DRPLHSM -> "HSM"
        DRPLExternal -> "EXTERNAL"

instance FromJSON DecryptResponseProtectionLevel where
    parseJSON = parseJSONText "DecryptResponseProtectionLevel"

instance ToJSON DecryptResponseProtectionLevel where
    toJSON = toJSONText

-- | ProtectionLevel to use when creating a CryptoKeyVersion based on this
-- template. Immutable. Defaults to SOFTWARE.
data CryptoKeyVersionTemplateProtectionLevel
    = CKVTPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | CKVTPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | CKVTPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | CKVTPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionTemplateProtectionLevel

instance FromHttpApiData CryptoKeyVersionTemplateProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right CKVTPLProtectionLevelUnspecified
        "SOFTWARE" -> Right CKVTPLSoftware
        "HSM" -> Right CKVTPLHSM
        "EXTERNAL" -> Right CKVTPLExternal
        x -> Left ("Unable to parse CryptoKeyVersionTemplateProtectionLevel from: " <> x)

instance ToHttpApiData CryptoKeyVersionTemplateProtectionLevel where
    toQueryParam = \case
        CKVTPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        CKVTPLSoftware -> "SOFTWARE"
        CKVTPLHSM -> "HSM"
        CKVTPLExternal -> "EXTERNAL"

instance FromJSON CryptoKeyVersionTemplateProtectionLevel where
    parseJSON = parseJSONText "CryptoKeyVersionTemplateProtectionLevel"

instance ToJSON CryptoKeyVersionTemplateProtectionLevel where
    toJSON = toJSONText

-- | Required. Algorithm to use when creating a CryptoKeyVersion based on
-- this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION
-- is implied if both this field is omitted and CryptoKey.purpose is
-- ENCRYPT_DECRYPT.
data CryptoKeyVersionTemplateAlgorithm
    = CKVTACryptoKeyVersionAlgorithmUnspecified
      -- ^ @CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED@
      -- Not specified.
    | CKVTAGoogleSymmetricEncryption
      -- ^ @GOOGLE_SYMMETRIC_ENCRYPTION@
      -- Creates symmetric encryption keys.
    | CKVTARsaSignPss2048SHA256
      -- ^ @RSA_SIGN_PSS_2048_SHA256@
      -- RSASSA-PSS 2048 bit key with a SHA256 digest.
    | CKVTARsaSignPss3072SHA256
      -- ^ @RSA_SIGN_PSS_3072_SHA256@
      -- RSASSA-PSS 3072 bit key with a SHA256 digest.
    | CKVTARsaSignPss4096SHA256
      -- ^ @RSA_SIGN_PSS_4096_SHA256@
      -- RSASSA-PSS 4096 bit key with a SHA256 digest.
    | CKVTARsaSignPss4096SHA512
      -- ^ @RSA_SIGN_PSS_4096_SHA512@
      -- RSASSA-PSS 4096 bit key with a SHA512 digest.
    | CKVTARsaSignPKCS12048SHA256
      -- ^ @RSA_SIGN_PKCS1_2048_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
    | CKVTARsaSignPKCS13072SHA256
      -- ^ @RSA_SIGN_PKCS1_3072_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
    | CKVTARsaSignPKCS14096SHA256
      -- ^ @RSA_SIGN_PKCS1_4096_SHA256@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
    | CKVTARsaSignPKCS14096SHA512
      -- ^ @RSA_SIGN_PKCS1_4096_SHA512@
      -- RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
    | CKVTARsaDecryptOaep2048SHA256
      -- ^ @RSA_DECRYPT_OAEP_2048_SHA256@
      -- RSAES-OAEP 2048 bit key with a SHA256 digest.
    | CKVTARsaDecryptOaep3072SHA256
      -- ^ @RSA_DECRYPT_OAEP_3072_SHA256@
      -- RSAES-OAEP 3072 bit key with a SHA256 digest.
    | CKVTARsaDecryptOaep4096SHA256
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA256@
      -- RSAES-OAEP 4096 bit key with a SHA256 digest.
    | CKVTARsaDecryptOaep4096SHA512
      -- ^ @RSA_DECRYPT_OAEP_4096_SHA512@
      -- RSAES-OAEP 4096 bit key with a SHA512 digest.
    | CKVTAEcSignP256SHA256
      -- ^ @EC_SIGN_P256_SHA256@
      -- ECDSA on the NIST P-256 curve with a SHA256 digest.
    | CKVTAEcSignP384SHA384
      -- ^ @EC_SIGN_P384_SHA384@
      -- ECDSA on the NIST P-384 curve with a SHA384 digest.
    | CKVTAEcSignSECP256K1SHA256
      -- ^ @EC_SIGN_SECP256K1_SHA256@
      -- ECDSA on the non-NIST secp256k1 curve. This curve is only supported for
      -- HSM protection level.
    | CKVTAExternalSymmetricEncryption
      -- ^ @EXTERNAL_SYMMETRIC_ENCRYPTION@
      -- Algorithm representing symmetric encryption by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionTemplateAlgorithm

instance FromHttpApiData CryptoKeyVersionTemplateAlgorithm where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" -> Right CKVTACryptoKeyVersionAlgorithmUnspecified
        "GOOGLE_SYMMETRIC_ENCRYPTION" -> Right CKVTAGoogleSymmetricEncryption
        "RSA_SIGN_PSS_2048_SHA256" -> Right CKVTARsaSignPss2048SHA256
        "RSA_SIGN_PSS_3072_SHA256" -> Right CKVTARsaSignPss3072SHA256
        "RSA_SIGN_PSS_4096_SHA256" -> Right CKVTARsaSignPss4096SHA256
        "RSA_SIGN_PSS_4096_SHA512" -> Right CKVTARsaSignPss4096SHA512
        "RSA_SIGN_PKCS1_2048_SHA256" -> Right CKVTARsaSignPKCS12048SHA256
        "RSA_SIGN_PKCS1_3072_SHA256" -> Right CKVTARsaSignPKCS13072SHA256
        "RSA_SIGN_PKCS1_4096_SHA256" -> Right CKVTARsaSignPKCS14096SHA256
        "RSA_SIGN_PKCS1_4096_SHA512" -> Right CKVTARsaSignPKCS14096SHA512
        "RSA_DECRYPT_OAEP_2048_SHA256" -> Right CKVTARsaDecryptOaep2048SHA256
        "RSA_DECRYPT_OAEP_3072_SHA256" -> Right CKVTARsaDecryptOaep3072SHA256
        "RSA_DECRYPT_OAEP_4096_SHA256" -> Right CKVTARsaDecryptOaep4096SHA256
        "RSA_DECRYPT_OAEP_4096_SHA512" -> Right CKVTARsaDecryptOaep4096SHA512
        "EC_SIGN_P256_SHA256" -> Right CKVTAEcSignP256SHA256
        "EC_SIGN_P384_SHA384" -> Right CKVTAEcSignP384SHA384
        "EC_SIGN_SECP256K1_SHA256" -> Right CKVTAEcSignSECP256K1SHA256
        "EXTERNAL_SYMMETRIC_ENCRYPTION" -> Right CKVTAExternalSymmetricEncryption
        x -> Left ("Unable to parse CryptoKeyVersionTemplateAlgorithm from: " <> x)

instance ToHttpApiData CryptoKeyVersionTemplateAlgorithm where
    toQueryParam = \case
        CKVTACryptoKeyVersionAlgorithmUnspecified -> "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED"
        CKVTAGoogleSymmetricEncryption -> "GOOGLE_SYMMETRIC_ENCRYPTION"
        CKVTARsaSignPss2048SHA256 -> "RSA_SIGN_PSS_2048_SHA256"
        CKVTARsaSignPss3072SHA256 -> "RSA_SIGN_PSS_3072_SHA256"
        CKVTARsaSignPss4096SHA256 -> "RSA_SIGN_PSS_4096_SHA256"
        CKVTARsaSignPss4096SHA512 -> "RSA_SIGN_PSS_4096_SHA512"
        CKVTARsaSignPKCS12048SHA256 -> "RSA_SIGN_PKCS1_2048_SHA256"
        CKVTARsaSignPKCS13072SHA256 -> "RSA_SIGN_PKCS1_3072_SHA256"
        CKVTARsaSignPKCS14096SHA256 -> "RSA_SIGN_PKCS1_4096_SHA256"
        CKVTARsaSignPKCS14096SHA512 -> "RSA_SIGN_PKCS1_4096_SHA512"
        CKVTARsaDecryptOaep2048SHA256 -> "RSA_DECRYPT_OAEP_2048_SHA256"
        CKVTARsaDecryptOaep3072SHA256 -> "RSA_DECRYPT_OAEP_3072_SHA256"
        CKVTARsaDecryptOaep4096SHA256 -> "RSA_DECRYPT_OAEP_4096_SHA256"
        CKVTARsaDecryptOaep4096SHA512 -> "RSA_DECRYPT_OAEP_4096_SHA512"
        CKVTAEcSignP256SHA256 -> "EC_SIGN_P256_SHA256"
        CKVTAEcSignP384SHA384 -> "EC_SIGN_P384_SHA384"
        CKVTAEcSignSECP256K1SHA256 -> "EC_SIGN_SECP256K1_SHA256"
        CKVTAExternalSymmetricEncryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION"

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
    | PKAEcSignSECP256K1SHA256
      -- ^ @EC_SIGN_SECP256K1_SHA256@
      -- ECDSA on the non-NIST secp256k1 curve. This curve is only supported for
      -- HSM protection level.
    | PKAExternalSymmetricEncryption
      -- ^ @EXTERNAL_SYMMETRIC_ENCRYPTION@
      -- Algorithm representing symmetric encryption by an external key manager.
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
        "EC_SIGN_SECP256K1_SHA256" -> Right PKAEcSignSECP256K1SHA256
        "EXTERNAL_SYMMETRIC_ENCRYPTION" -> Right PKAExternalSymmetricEncryption
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
        PKAEcSignSECP256K1SHA256 -> "EC_SIGN_SECP256K1_SHA256"
        PKAExternalSymmetricEncryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION"

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
      -- This version is destroyed, and the key material is no longer stored.
    | DestroyScheduled
      -- ^ @DESTROY_SCHEDULED@
      -- This version is scheduled for destruction, and will be destroyed soon.
      -- Call RestoreCryptoKeyVersion to put it back into the DISABLED state.
    | PendingImport
      -- ^ @PENDING_IMPORT@
      -- This version is still being imported. It may not be used, enabled,
      -- disabled, or destroyed yet. Cloud KMS will automatically mark this
      -- version ENABLED as soon as the version is ready.
    | ImportFailed
      -- ^ @IMPORT_FAILED@
      -- This version was not imported successfully. It may not be used, enabled,
      -- disabled, or destroyed. The submitted key material has been discarded.
      -- Additional details can be found in
      -- CryptoKeyVersion.import_failure_reason.
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
        "PENDING_IMPORT" -> Right PendingImport
        "IMPORT_FAILED" -> Right ImportFailed
        x -> Left ("Unable to parse CryptoKeyVersionState from: " <> x)

instance ToHttpApiData CryptoKeyVersionState where
    toQueryParam = \case
        CryptoKeyVersionStateUnspecified -> "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED"
        PendingGeneration -> "PENDING_GENERATION"
        Enabled -> "ENABLED"
        Disabled -> "DISABLED"
        Destroyed -> "DESTROYED"
        DestroyScheduled -> "DESTROY_SCHEDULED"
        PendingImport -> "PENDING_IMPORT"
        ImportFailed -> "IMPORT_FAILED"

instance FromJSON CryptoKeyVersionState where
    parseJSON = parseJSONText "CryptoKeyVersionState"

instance ToJSON CryptoKeyVersionState where
    toJSON = toJSONText

-- | The fields of the primary version to include in the response.
data ProjectsLocationsKeyRingsCryptoKeysListVersionView
    = CryptoKeyVersionViewUnspecified
      -- ^ @CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED@
      -- Default view for each CryptoKeyVersion. Does not include the attestation
      -- field.
    | Full
      -- ^ @FULL@
      -- Provides all fields in each CryptoKeyVersion, including the attestation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsKeyRingsCryptoKeysListVersionView

instance FromHttpApiData ProjectsLocationsKeyRingsCryptoKeysListVersionView where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" -> Right CryptoKeyVersionViewUnspecified
        "FULL" -> Right Full
        x -> Left ("Unable to parse ProjectsLocationsKeyRingsCryptoKeysListVersionView from: " <> x)

instance ToHttpApiData ProjectsLocationsKeyRingsCryptoKeysListVersionView where
    toQueryParam = \case
        CryptoKeyVersionViewUnspecified -> "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED"
        Full -> "FULL"

instance FromJSON ProjectsLocationsKeyRingsCryptoKeysListVersionView where
    parseJSON = parseJSONText "ProjectsLocationsKeyRingsCryptoKeysListVersionView"

instance ToJSON ProjectsLocationsKeyRingsCryptoKeysListVersionView where
    toJSON = toJSONText

-- | The ProtectionLevel of the CryptoKeyVersion used for signing.
data AsymmetricSignResponseProtectionLevel
    = ASRPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | ASRPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | ASRPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | ASRPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AsymmetricSignResponseProtectionLevel

instance FromHttpApiData AsymmetricSignResponseProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right ASRPLProtectionLevelUnspecified
        "SOFTWARE" -> Right ASRPLSoftware
        "HSM" -> Right ASRPLHSM
        "EXTERNAL" -> Right ASRPLExternal
        x -> Left ("Unable to parse AsymmetricSignResponseProtectionLevel from: " <> x)

instance ToHttpApiData AsymmetricSignResponseProtectionLevel where
    toQueryParam = \case
        ASRPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        ASRPLSoftware -> "SOFTWARE"
        ASRPLHSM -> "HSM"
        ASRPLExternal -> "EXTERNAL"

instance FromJSON AsymmetricSignResponseProtectionLevel where
    parseJSON = parseJSONText "AsymmetricSignResponseProtectionLevel"

instance ToJSON AsymmetricSignResponseProtectionLevel where
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
    | CaviumV2Compressed
      -- ^ @CAVIUM_V2_COMPRESSED@
      -- Cavium HSM attestation V2 compressed with gzip. This is a new format
      -- introduced in Cavium\'s version 3.2-08.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable KeyOperationAttestationFormat

instance FromHttpApiData KeyOperationAttestationFormat where
    parseQueryParam = \case
        "ATTESTATION_FORMAT_UNSPECIFIED" -> Right AttestationFormatUnspecified
        "CAVIUM_V1_COMPRESSED" -> Right CaviumV1Compressed
        "CAVIUM_V2_COMPRESSED" -> Right CaviumV2Compressed
        x -> Left ("Unable to parse KeyOperationAttestationFormat from: " <> x)

instance ToHttpApiData KeyOperationAttestationFormat where
    toQueryParam = \case
        AttestationFormatUnspecified -> "ATTESTATION_FORMAT_UNSPECIFIED"
        CaviumV1Compressed -> "CAVIUM_V1_COMPRESSED"
        CaviumV2Compressed -> "CAVIUM_V2_COMPRESSED"

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

-- | Output only. The current state of the ImportJob, indicating if it can be
-- used.
data ImportJobState
    = IJSImportJobStateUnspecified
      -- ^ @IMPORT_JOB_STATE_UNSPECIFIED@
      -- Not specified.
    | IJSPendingGeneration
      -- ^ @PENDING_GENERATION@
      -- The wrapping key for this job is still being generated. It may not be
      -- used. Cloud KMS will automatically mark this job as ACTIVE as soon as
      -- the wrapping key is generated.
    | IJSActive
      -- ^ @ACTIVE@
      -- This job may be used in CreateCryptoKey and CreateCryptoKeyVersion
      -- requests.
    | IJSExpired
      -- ^ @EXPIRED@
      -- This job can no longer be used and may not leave this state once
      -- entered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportJobState

instance FromHttpApiData ImportJobState where
    parseQueryParam = \case
        "IMPORT_JOB_STATE_UNSPECIFIED" -> Right IJSImportJobStateUnspecified
        "PENDING_GENERATION" -> Right IJSPendingGeneration
        "ACTIVE" -> Right IJSActive
        "EXPIRED" -> Right IJSExpired
        x -> Left ("Unable to parse ImportJobState from: " <> x)

instance ToHttpApiData ImportJobState where
    toQueryParam = \case
        IJSImportJobStateUnspecified -> "IMPORT_JOB_STATE_UNSPECIFIED"
        IJSPendingGeneration -> "PENDING_GENERATION"
        IJSActive -> "ACTIVE"
        IJSExpired -> "EXPIRED"

instance FromJSON ImportJobState where
    parseJSON = parseJSONText "ImportJobState"

instance ToJSON ImportJobState where
    toJSON = toJSONText

-- | Required. Immutable. The wrapping method to be used for incoming key
-- material.
data ImportJobImportMethod
    = ImportMethodUnspecified
      -- ^ @IMPORT_METHOD_UNSPECIFIED@
      -- Not specified.
    | RsaOaep3072SHA1AES256
      -- ^ @RSA_OAEP_3072_SHA1_AES_256@
      -- This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping
      -- scheme defined in the PKCS #11 standard. In summary, this involves
      -- wrapping the raw key with an ephemeral AES key, and wrapping the
      -- ephemeral AES key with a 3072 bit RSA key. For more details, see [RSA
      -- AES key wrap
      -- mechanism](http:\/\/docs.oasis-open.org\/pkcs11\/pkcs11-curr\/v2.40\/cos01\/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
    | RsaOaep4096SHA1AES256
      -- ^ @RSA_OAEP_4096_SHA1_AES_256@
      -- This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping
      -- scheme defined in the PKCS #11 standard. In summary, this involves
      -- wrapping the raw key with an ephemeral AES key, and wrapping the
      -- ephemeral AES key with a 4096 bit RSA key. For more details, see [RSA
      -- AES key wrap
      -- mechanism](http:\/\/docs.oasis-open.org\/pkcs11\/pkcs11-curr\/v2.40\/cos01\/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportJobImportMethod

instance FromHttpApiData ImportJobImportMethod where
    parseQueryParam = \case
        "IMPORT_METHOD_UNSPECIFIED" -> Right ImportMethodUnspecified
        "RSA_OAEP_3072_SHA1_AES_256" -> Right RsaOaep3072SHA1AES256
        "RSA_OAEP_4096_SHA1_AES_256" -> Right RsaOaep4096SHA1AES256
        x -> Left ("Unable to parse ImportJobImportMethod from: " <> x)

instance ToHttpApiData ImportJobImportMethod where
    toQueryParam = \case
        ImportMethodUnspecified -> "IMPORT_METHOD_UNSPECIFIED"
        RsaOaep3072SHA1AES256 -> "RSA_OAEP_3072_SHA1_AES_256"
        RsaOaep4096SHA1AES256 -> "RSA_OAEP_4096_SHA1_AES_256"

instance FromJSON ImportJobImportMethod where
    parseJSON = parseJSONText "ImportJobImportMethod"

instance ToJSON ImportJobImportMethod where
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
    | CKVPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CryptoKeyVersionProtectionLevel

instance FromHttpApiData CryptoKeyVersionProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right CKVPLProtectionLevelUnspecified
        "SOFTWARE" -> Right CKVPLSoftware
        "HSM" -> Right CKVPLHSM
        "EXTERNAL" -> Right CKVPLExternal
        x -> Left ("Unable to parse CryptoKeyVersionProtectionLevel from: " <> x)

instance ToHttpApiData CryptoKeyVersionProtectionLevel where
    toQueryParam = \case
        CKVPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        CKVPLSoftware -> "SOFTWARE"
        CKVPLHSM -> "HSM"
        CKVPLExternal -> "EXTERNAL"

instance FromJSON CryptoKeyVersionProtectionLevel where
    parseJSON = parseJSONText "CryptoKeyVersionProtectionLevel"

instance ToJSON CryptoKeyVersionProtectionLevel where
    toJSON = toJSONText

-- | The fields to include in the response.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    = PLKRCKCKVLVCryptoKeyVersionViewUnspecified
      -- ^ @CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED@
      -- Default view for each CryptoKeyVersion. Does not include the attestation
      -- field.
    | PLKRCKCKVLVFull
      -- ^ @FULL@
      -- Provides all fields in each CryptoKeyVersion, including the attestation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView

instance FromHttpApiData ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView where
    parseQueryParam = \case
        "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" -> Right PLKRCKCKVLVCryptoKeyVersionViewUnspecified
        "FULL" -> Right PLKRCKCKVLVFull
        x -> Left ("Unable to parse ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView from: " <> x)

instance ToHttpApiData ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView where
    toQueryParam = \case
        PLKRCKCKVLVCryptoKeyVersionViewUnspecified -> "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED"
        PLKRCKCKVLVFull -> "FULL"

instance FromJSON ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView where
    parseJSON = parseJSONText "ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView"

instance ToJSON ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView where
    toJSON = toJSONText

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
data AsymmetricDecryptResponseProtectionLevel
    = ADRPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | ADRPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | ADRPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | ADRPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AsymmetricDecryptResponseProtectionLevel

instance FromHttpApiData AsymmetricDecryptResponseProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right ADRPLProtectionLevelUnspecified
        "SOFTWARE" -> Right ADRPLSoftware
        "HSM" -> Right ADRPLHSM
        "EXTERNAL" -> Right ADRPLExternal
        x -> Left ("Unable to parse AsymmetricDecryptResponseProtectionLevel from: " <> x)

instance ToHttpApiData AsymmetricDecryptResponseProtectionLevel where
    toQueryParam = \case
        ADRPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        ADRPLSoftware -> "SOFTWARE"
        ADRPLHSM -> "HSM"
        ADRPLExternal -> "EXTERNAL"

instance FromJSON AsymmetricDecryptResponseProtectionLevel where
    parseJSON = parseJSONText "AsymmetricDecryptResponseProtectionLevel"

instance ToJSON AsymmetricDecryptResponseProtectionLevel where
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
    | CKVAEcSignSECP256K1SHA256
      -- ^ @EC_SIGN_SECP256K1_SHA256@
      -- ECDSA on the non-NIST secp256k1 curve. This curve is only supported for
      -- HSM protection level.
    | CKVAExternalSymmetricEncryption
      -- ^ @EXTERNAL_SYMMETRIC_ENCRYPTION@
      -- Algorithm representing symmetric encryption by an external key manager.
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
        "EC_SIGN_SECP256K1_SHA256" -> Right CKVAEcSignSECP256K1SHA256
        "EXTERNAL_SYMMETRIC_ENCRYPTION" -> Right CKVAExternalSymmetricEncryption
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
        CKVAEcSignSECP256K1SHA256 -> "EC_SIGN_SECP256K1_SHA256"
        CKVAExternalSymmetricEncryption -> "EXTERNAL_SYMMETRIC_ENCRYPTION"

instance FromJSON CryptoKeyVersionAlgorithm where
    parseJSON = parseJSONText "CryptoKeyVersionAlgorithm"

instance ToJSON CryptoKeyVersionAlgorithm where
    toJSON = toJSONText

-- | The ProtectionLevel of the CryptoKeyVersion used in encryption.
data EncryptResponseProtectionLevel
    = ERPLProtectionLevelUnspecified
      -- ^ @PROTECTION_LEVEL_UNSPECIFIED@
      -- Not specified.
    | ERPLSoftware
      -- ^ @SOFTWARE@
      -- Crypto operations are performed in software.
    | ERPLHSM
      -- ^ @HSM@
      -- Crypto operations are performed in a Hardware Security Module.
    | ERPLExternal
      -- ^ @EXTERNAL@
      -- Crypto operations are performed by an external key manager.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EncryptResponseProtectionLevel

instance FromHttpApiData EncryptResponseProtectionLevel where
    parseQueryParam = \case
        "PROTECTION_LEVEL_UNSPECIFIED" -> Right ERPLProtectionLevelUnspecified
        "SOFTWARE" -> Right ERPLSoftware
        "HSM" -> Right ERPLHSM
        "EXTERNAL" -> Right ERPLExternal
        x -> Left ("Unable to parse EncryptResponseProtectionLevel from: " <> x)

instance ToHttpApiData EncryptResponseProtectionLevel where
    toQueryParam = \case
        ERPLProtectionLevelUnspecified -> "PROTECTION_LEVEL_UNSPECIFIED"
        ERPLSoftware -> "SOFTWARE"
        ERPLHSM -> "HSM"
        ERPLExternal -> "EXTERNAL"

instance FromJSON EncryptResponseProtectionLevel where
    parseJSON = parseJSONText "EncryptResponseProtectionLevel"

instance ToJSON EncryptResponseProtectionLevel where
    toJSON = toJSONText
