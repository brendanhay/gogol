{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudKMS
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages keys and performs cryptographic operations in a central cloud
-- service, for direct use by other cloud resources and applications.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference>
module Network.Google.CloudKMS
    (
    -- * Service Configuration
      cloudKMSService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudKMSScope

    -- * API Declaration
    , CloudKMSAPI

    -- * Resources

    -- ** cloudkms.projects.locations.get
    , module Network.Google.Resource.CloudKMS.Projects.Locations.Get

    -- ** cloudkms.projects.locations.keyRings.create
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Create

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.create
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricSign

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Get

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.List

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Patch

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.decrypt
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.encrypt
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Encrypt

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.get
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Get

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.GetIAMPolicy

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.list
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.List

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.patch
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.SetIAMPolicy

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.TestIAMPermissions

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion

    -- ** cloudkms.projects.locations.keyRings.get
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Get

    -- ** cloudkms.projects.locations.keyRings.getIamPolicy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.GetIAMPolicy

    -- ** cloudkms.projects.locations.keyRings.importJobs.create
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create

    -- ** cloudkms.projects.locations.keyRings.importJobs.get
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get

    -- ** cloudkms.projects.locations.keyRings.importJobs.getIamPolicy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.GetIAMPolicy

    -- ** cloudkms.projects.locations.keyRings.importJobs.list
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List

    -- ** cloudkms.projects.locations.keyRings.importJobs.setIamPolicy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.SetIAMPolicy

    -- ** cloudkms.projects.locations.keyRings.importJobs.testIamPermissions
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.TestIAMPermissions

    -- ** cloudkms.projects.locations.keyRings.list
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.List

    -- ** cloudkms.projects.locations.keyRings.setIamPolicy
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.SetIAMPolicy

    -- ** cloudkms.projects.locations.keyRings.testIamPermissions
    , module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.TestIAMPermissions

    -- ** cloudkms.projects.locations.list
    , module Network.Google.Resource.CloudKMS.Projects.Locations.List

    -- * Types

    -- ** AsymmetricDecryptResponse
    , AsymmetricDecryptResponse
    , asymmetricDecryptResponse
    , adrPlaintextCrc32c
    , adrPlaintext
    , adrProtectionLevel
    , adrVerifiedCiphertextCrc32c

    -- ** EncryptResponse
    , EncryptResponse
    , encryptResponse
    , erVerifiedAdditionalAuthenticatedDataCrc32c
    , erVerifiedPlaintextCrc32c
    , erName
    , erProtectionLevel
    , erCiphertext
    , erCiphertextCrc32c

    -- ** LocationSchema
    , LocationSchema
    , locationSchema
    , lsAddtional

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListKeyRingsResponse
    , ListKeyRingsResponse
    , listKeyRingsResponse
    , lkrrNextPageToken
    , lkrrTotalSize
    , lkrrKeyRings

    -- ** ImportJobProtectionLevel
    , ImportJobProtectionLevel (..)

    -- ** AsymmetricSignResponse
    , AsymmetricSignResponse
    , asymmetricSignResponse
    , asrSignature
    , asrSignatureCrc32c
    , asrName
    , asrProtectionLevel
    , asrVerifiedDigestCrc32c

    -- ** CryptoKeyPurpose
    , CryptoKeyPurpose (..)

    -- ** WrAppingPublicKey
    , WrAppingPublicKey
    , wrAppingPublicKey
    , wapkPem

    -- ** KeyRing
    , KeyRing
    , keyRing
    , krName
    , krCreateTime

    -- ** ImportCryptoKeyVersionRequestAlgorithm
    , ImportCryptoKeyVersionRequestAlgorithm (..)

    -- ** DestroyCryptoKeyVersionRequest
    , DestroyCryptoKeyVersionRequest
    , destroyCryptoKeyVersionRequest

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** AsymmetricSignRequest
    , AsymmetricSignRequest
    , asymmetricSignRequest
    , asrDigest
    , asrDigestCrc32c

    -- ** ListImportJobsResponse
    , ListImportJobsResponse
    , listImportJobsResponse
    , lijrNextPageToken
    , lijrImportJobs
    , lijrTotalSize

    -- ** PublicKeyProtectionLevel
    , PublicKeyProtectionLevel (..)

    -- ** DecryptResponseProtectionLevel
    , DecryptResponseProtectionLevel (..)

    -- ** CryptoKeyVersionTemplateProtectionLevel
    , CryptoKeyVersionTemplateProtectionLevel (..)

    -- ** CertificateChains
    , CertificateChains
    , certificateChains
    , ccGooglePartitionCerts
    , ccGoogleCardCerts
    , ccCaviumCerts

    -- ** PublicKey
    , PublicKey
    , publicKey
    , pkPem
    , pkPemCrc32c
    , pkName
    , pkAlgorithm
    , pkProtectionLevel

    -- ** DecryptResponse
    , DecryptResponse
    , decryptResponse
    , drUsedPrimary
    , drPlaintextCrc32c
    , drPlaintext
    , drProtectionLevel

    -- ** CryptoKeyVersionTemplate
    , CryptoKeyVersionTemplate
    , cryptoKeyVersionTemplate
    , ckvtAlgorithm
    , ckvtProtectionLevel

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** CryptoKeyLabels
    , CryptoKeyLabels
    , cryptoKeyLabels
    , cklAddtional

    -- ** CryptoKeyVersionTemplateAlgorithm
    , CryptoKeyVersionTemplateAlgorithm (..)

    -- ** PublicKeyAlgorithm
    , PublicKeyAlgorithm (..)

    -- ** CryptoKeyVersionState
    , CryptoKeyVersionState (..)

    -- ** CryptoKey
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

    -- ** DecryptRequest
    , DecryptRequest
    , decryptRequest
    , drAdditionalAuthenticatedData
    , drAdditionalAuthenticatedDataCrc32c
    , drCiphertext
    , drCiphertextCrc32c

    -- ** KeyOperationAttestation
    , KeyOperationAttestation
    , keyOperationAttestation
    , koaFormat
    , koaContent
    , koaCertChains

    -- ** ProjectsLocationsKeyRingsCryptoKeysListVersionView
    , ProjectsLocationsKeyRingsCryptoKeysListVersionView (..)

    -- ** ListCryptoKeyVersionsResponse
    , ListCryptoKeyVersionsResponse
    , listCryptoKeyVersionsResponse
    , lckvrNextPageToken
    , lckvrTotalSize
    , lckvrCryptoKeyVersions

    -- ** AsymmetricSignResponseProtectionLevel
    , AsymmetricSignResponseProtectionLevel (..)

    -- ** KeyOperationAttestationFormat
    , KeyOperationAttestationFormat (..)

    -- ** RestoreCryptoKeyVersionRequest
    , RestoreCryptoKeyVersionRequest
    , restoreCryptoKeyVersionRequest

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** UpdateCryptoKeyPrimaryVersionRequest
    , UpdateCryptoKeyPrimaryVersionRequest
    , updateCryptoKeyPrimaryVersionRequest
    , uckpvrCryptoKeyVersionId

    -- ** Xgafv
    , Xgafv (..)

    -- ** ImportJob
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

    -- ** ImportCryptoKeyVersionRequest
    , ImportCryptoKeyVersionRequest
    , importCryptoKeyVersionRequest
    , ickvrRsaAESWrAppedKey
    , ickvrAlgorithm
    , ickvrImportJob

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** ImportJobState
    , ImportJobState (..)

    -- ** ExternalProtectionLevelOptions
    , ExternalProtectionLevelOptions
    , externalProtectionLevelOptions
    , eploExternalKeyURI

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Digest
    , Digest
    , digest
    , dSha512
    , dSha384
    , dSha256

    -- ** ImportJobImportMethod
    , ImportJobImportMethod (..)

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmHSMAvailable
    , lmEkmAvailable

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** CryptoKeyVersionProtectionLevel
    , CryptoKeyVersionProtectionLevel (..)

    -- ** ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView (..)

    -- ** ListCryptoKeysResponse
    , ListCryptoKeysResponse
    , listCryptoKeysResponse
    , lckrCryptoKeys
    , lckrNextPageToken
    , lckrTotalSize

    -- ** AsymmetricDecryptRequest
    , AsymmetricDecryptRequest
    , asymmetricDecryptRequest
    , adrCiphertext
    , adrCiphertextCrc32c

    -- ** CryptoKeyVersion
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

    -- ** EncryptRequest
    , EncryptRequest
    , encryptRequest
    , erAdditionalAuthenticatedData
    , erAdditionalAuthenticatedDataCrc32c
    , erPlaintextCrc32c
    , erPlaintext

    -- ** AsymmetricDecryptResponseProtectionLevel
    , AsymmetricDecryptResponseProtectionLevel (..)

    -- ** CryptoKeyVersionAlgorithm
    , CryptoKeyVersionAlgorithm (..)

    -- ** EncryptResponseProtectionLevel
    , EncryptResponseProtectionLevel (..)

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.CloudKMS.Types
import Network.Google.Resource.CloudKMS.Projects.Locations.Get
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Create
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricSign
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Get
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.List
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Patch
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Encrypt
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Get
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.GetIAMPolicy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.List
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.SetIAMPolicy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.TestIAMPermissions
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.Get
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.GetIAMPolicy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.GetIAMPolicy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.SetIAMPolicy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.TestIAMPermissions
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.List
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.SetIAMPolicy
import Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.TestIAMPermissions
import Network.Google.Resource.CloudKMS.Projects.Locations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Key Management Service (KMS) API service.
type CloudKMSAPI =
     ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatchResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSignResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysEncryptResource
       :<|> ProjectsLocationsKeyRingsCryptoKeysListResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysGetIAMPolicyResource
       :<|> ProjectsLocationsKeyRingsCryptoKeysPatchResource
       :<|> ProjectsLocationsKeyRingsCryptoKeysGetResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysCreateResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysSetIAMPolicyResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysDecryptResource
       :<|>
       ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissionsResource
       :<|> ProjectsLocationsKeyRingsImportJobsListResource
       :<|>
       ProjectsLocationsKeyRingsImportJobsGetIAMPolicyResource
       :<|> ProjectsLocationsKeyRingsImportJobsGetResource
       :<|>
       ProjectsLocationsKeyRingsImportJobsCreateResource
       :<|>
       ProjectsLocationsKeyRingsImportJobsSetIAMPolicyResource
       :<|>
       ProjectsLocationsKeyRingsImportJobsTestIAMPermissionsResource
       :<|> ProjectsLocationsKeyRingsListResource
       :<|> ProjectsLocationsKeyRingsGetIAMPolicyResource
       :<|> ProjectsLocationsKeyRingsGetResource
       :<|> ProjectsLocationsKeyRingsCreateResource
       :<|> ProjectsLocationsKeyRingsSetIAMPolicyResource
       :<|>
       ProjectsLocationsKeyRingsTestIAMPermissionsResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
