{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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
    , cloudKMSScope

    -- * AsymmetricDecryptResponse
    , AsymmetricDecryptResponse
    , asymmetricDecryptResponse
    , adrPlaintextCrc32c
    , adrPlaintext
    , adrProtectionLevel
    , adrVerifiedCiphertextCrc32c

    -- * EncryptResponse
    , EncryptResponse
    , encryptResponse
    , erVerifiedAdditionalAuthenticatedDataCrc32c
    , erVerifiedPlaintextCrc32c
    , erName
    , erProtectionLevel
    , erCiphertext
    , erCiphertextCrc32c

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

    -- * ImportJobProtectionLevel
    , ImportJobProtectionLevel (..)

    -- * AsymmetricSignResponse
    , AsymmetricSignResponse
    , asymmetricSignResponse
    , asrSignature
    , asrSignatureCrc32c
    , asrName
    , asrProtectionLevel
    , asrVerifiedDigestCrc32c

    -- * CryptoKeyPurpose
    , CryptoKeyPurpose (..)

    -- * WrAppingPublicKey
    , WrAppingPublicKey
    , wrAppingPublicKey
    , wapkPem

    -- * KeyRing
    , KeyRing
    , keyRing
    , krName
    , krCreateTime

    -- * ImportCryptoKeyVersionRequestAlgorithm
    , ImportCryptoKeyVersionRequestAlgorithm (..)

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
    , asrDigestCrc32c

    -- * ListImportJobsResponse
    , ListImportJobsResponse
    , listImportJobsResponse
    , lijrNextPageToken
    , lijrImportJobs
    , lijrTotalSize

    -- * PublicKeyProtectionLevel
    , PublicKeyProtectionLevel (..)

    -- * DecryptResponseProtectionLevel
    , DecryptResponseProtectionLevel (..)

    -- * CryptoKeyVersionTemplateProtectionLevel
    , CryptoKeyVersionTemplateProtectionLevel (..)

    -- * CertificateChains
    , CertificateChains
    , certificateChains
    , ccGooglePartitionCerts
    , ccGoogleCardCerts
    , ccCaviumCerts

    -- * PublicKey
    , PublicKey
    , publicKey
    , pkPem
    , pkPemCrc32c
    , pkName
    , pkAlgorithm
    , pkProtectionLevel

    -- * DecryptResponse
    , DecryptResponse
    , decryptResponse
    , drUsedPrimary
    , drPlaintextCrc32c
    , drPlaintext
    , drProtectionLevel

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
    , drAdditionalAuthenticatedDataCrc32c
    , drCiphertext
    , drCiphertextCrc32c

    -- * KeyOperationAttestation
    , KeyOperationAttestation
    , keyOperationAttestation
    , koaFormat
    , koaContent
    , koaCertChains

    -- * ProjectsLocationsKeyRingsCryptoKeysListVersionView
    , ProjectsLocationsKeyRingsCryptoKeysListVersionView (..)

    -- * ListCryptoKeyVersionsResponse
    , ListCryptoKeyVersionsResponse
    , listCryptoKeyVersionsResponse
    , lckvrNextPageToken
    , lckvrTotalSize
    , lckvrCryptoKeyVersions

    -- * AsymmetricSignResponseProtectionLevel
    , AsymmetricSignResponseProtectionLevel (..)

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

    -- * ImportJob
    , ImportJob
    , importJob
    , ijState
    , ijImportMethod
    , ijAttestation
    , ijPublicKey
    , ijGenerateTime
    , ijName
    , ijExpireEventTime
    , ijProtectionLevel
    , ijExpireTime
    , ijCreateTime

    -- * ImportCryptoKeyVersionRequest
    , ImportCryptoKeyVersionRequest
    , importCryptoKeyVersionRequest
    , ickvrRsaAESWrAppedKey
    , ickvrAlgorithm
    , ickvrImportJob

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ImportJobState
    , ImportJobState (..)

    -- * ExternalProtectionLevelOptions
    , ExternalProtectionLevelOptions
    , externalProtectionLevelOptions
    , eploExternalKeyURI

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

    -- * ImportJobImportMethod
    , ImportJobImportMethod (..)

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
    , lmEkmAvailable

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * CryptoKeyVersionProtectionLevel
    , CryptoKeyVersionProtectionLevel (..)

    -- * ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView (..)

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
    , adrCiphertextCrc32c

    -- * CryptoKeyVersion
    , CryptoKeyVersion
    , cryptoKeyVersion
    , ckvState
    , ckvAttestation
    , ckvGenerateTime
    , ckvImportFailureReason
    , ckvName
    , ckvAlgorithm
    , ckvDestroyTime
    , ckvImportJob
    , ckvProtectionLevel
    , ckvImportTime
    , ckvExternalProtectionLevelOptions
    , ckvDestroyEventTime
    , ckvCreateTime

    -- * EncryptRequest
    , EncryptRequest
    , encryptRequest
    , erAdditionalAuthenticatedData
    , erAdditionalAuthenticatedDataCrc32c
    , erPlaintextCrc32c
    , erPlaintext

    -- * AsymmetricDecryptResponseProtectionLevel
    , AsymmetricDecryptResponseProtectionLevel (..)

    -- * CryptoKeyVersionAlgorithm
    , CryptoKeyVersionAlgorithm (..)

    -- * EncryptResponseProtectionLevel
    , EncryptResponseProtectionLevel (..)

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.CloudKMS.Types.Product
import Network.Google.CloudKMS.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Key Management Service (KMS) API. This contains the host and root path used as a starting point for constructing service requests.
cloudKMSService :: ServiceConfig
cloudKMSService
  = defaultService (ServiceId "cloudkms:v1")
      "cloudkms.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and manage your keys and secrets stored in Cloud Key Management
-- Service
cloudKMSScope :: Proxy '["https://www.googleapis.com/auth/cloudkms"]
cloudKMSScope = Proxy
