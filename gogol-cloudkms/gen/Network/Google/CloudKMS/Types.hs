{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudKMS.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudKMS.Types
    (
    -- * Service Configuration
      cloudKMSService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * AsymmetricDecryptResponse
    , AsymmetricDecryptResponse
    , asymmetricDecryptResponse
    , adrPlaintext

    -- * EncryptResponse
    , EncryptResponse
    , encryptResponse
    , erName
    , erCiphertext

    -- * LocationSchema
    , LocationSchema
    , locationSchema
    , lsAddtional

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListKeyRingsResponse
    , ListKeyRingsResponse
    , listKeyRingsResponse
    , lkrrNextPageToken
    , lkrrTotalSize
    , lkrrKeyRings

    -- * AsymmetricSignResponse
    , AsymmetricSignResponse
    , asymmetricSignResponse
    , asrSignature

    -- * CryptoKeyPurpose
    , CryptoKeyPurpose (..)

    -- * KeyRing
    , KeyRing
    , keyRing
    , krName
    , krCreateTime

    -- * DestroyCryptoKeyVersionRequest
    , DestroyCryptoKeyVersionRequest
    , destroyCryptoKeyVersionRequest

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * AsymmetricSignRequest
    , AsymmetricSignRequest
    , asymmetricSignRequest
    , asrDigest

    -- * CryptoKeyVersionTemplateProtectionLevel
    , CryptoKeyVersionTemplateProtectionLevel (..)

    -- * PublicKey
    , PublicKey
    , publicKey
    , pkPem
    , pkAlgorithm

    -- * DecryptResponse
    , DecryptResponse
    , decryptResponse
    , drPlaintext

    -- * CryptoKeyVersionTemplate
    , CryptoKeyVersionTemplate
    , cryptoKeyVersionTemplate
    , ckvtAlgorithm
    , ckvtProtectionLevel

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * CryptoKeyLabels
    , CryptoKeyLabels
    , cryptoKeyLabels
    , cklAddtional

    -- * CryptoKeyVersionTemplateAlgorithm
    , CryptoKeyVersionTemplateAlgorithm (..)

    -- * PublicKeyAlgorithm
    , PublicKeyAlgorithm (..)

    -- * CryptoKeyVersionState
    , CryptoKeyVersionState (..)

    -- * CryptoKey
    , CryptoKey
    , cryptoKey
    , ckVersionTemplate
    , ckPurpose
    , ckRotationPeriod
    , ckPrimary
    , ckName
    , ckLabels
    , ckNextRotationTime
    , ckCreateTime

    -- * DecryptRequest
    , DecryptRequest
    , decryptRequest
    , drAdditionalAuthenticatedData
    , drCiphertext

    -- * KeyOperationAttestation
    , KeyOperationAttestation
    , keyOperationAttestation
    , koaFormat
    , koaContent

    -- * ListCryptoKeyVersionsResponse
    , ListCryptoKeyVersionsResponse
    , listCryptoKeyVersionsResponse
    , lckvrNextPageToken
    , lckvrTotalSize
    , lckvrCryptoKeyVersions

    -- * KeyOperationAttestationFormat
    , KeyOperationAttestationFormat (..)

    -- * RestoreCryptoKeyVersionRequest
    , RestoreCryptoKeyVersionRequest
    , restoreCryptoKeyVersionRequest

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * UpdateCryptoKeyPrimaryVersionRequest
    , UpdateCryptoKeyPrimaryVersionRequest
    , updateCryptoKeyPrimaryVersionRequest
    , uckpvrCryptoKeyVersionId

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Digest
    , Digest
    , digest
    , dSha512
    , dSha384
    , dSha256

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmHSMAvailable

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * CryptoKeyVersionProtectionLevel
    , CryptoKeyVersionProtectionLevel (..)

    -- * ListCryptoKeysResponse
    , ListCryptoKeysResponse
    , listCryptoKeysResponse
    , lckrCryptoKeys
    , lckrNextPageToken
    , lckrTotalSize

    -- * AsymmetricDecryptRequest
    , AsymmetricDecryptRequest
    , asymmetricDecryptRequest
    , adrCiphertext

    -- * CryptoKeyVersion
    , CryptoKeyVersion
    , cryptoKeyVersion
    , ckvState
    , ckvAttestation
    , ckvGenerateTime
    , ckvName
    , ckvAlgorithm
    , ckvDestroyTime
    , ckvProtectionLevel
    , ckvDestroyEventTime
    , ckvCreateTime

    -- * EncryptRequest
    , EncryptRequest
    , encryptRequest
    , erAdditionalAuthenticatedData
    , erPlaintext

    -- * CryptoKeyVersionAlgorithm
    , CryptoKeyVersionAlgorithm (..)

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.CloudKMS.Types.Product
import           Network.Google.CloudKMS.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Key Management Service (KMS) API. This contains the host and root path used as a starting point for constructing service requests.
cloudKMSService :: ServiceConfig
cloudKMSService
  = defaultService (ServiceId "cloudkms:v1")
      "cloudkms.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
