{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudKMS
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages keys and performs cryptographic operations in a central cloud service, for direct use by other cloud resources and applications.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference>
module Gogol.CloudKMS
    (
    -- * Configuration
      cloudKMSService

    -- * OAuth Scopes
    , cloudPlatformScope
    , cloudKMSScope

    -- * Resources

    -- ** cloudkms.projects.locations.ekmConnections.create
    , CloudKMSProjectsLocationsEkmConnectionsCreateResource
    , newCloudKMSProjectsLocationsEkmConnectionsCreate
    , CloudKMSProjectsLocationsEkmConnectionsCreate

    -- ** cloudkms.projects.locations.ekmConnections.get
    , CloudKMSProjectsLocationsEkmConnectionsGetResource
    , newCloudKMSProjectsLocationsEkmConnectionsGet
    , CloudKMSProjectsLocationsEkmConnectionsGet

    -- ** cloudkms.projects.locations.ekmConnections.getIamPolicy
    , CloudKMSProjectsLocationsEkmConnectionsGetIamPolicyResource
    , newCloudKMSProjectsLocationsEkmConnectionsGetIamPolicy
    , CloudKMSProjectsLocationsEkmConnectionsGetIamPolicy

    -- ** cloudkms.projects.locations.ekmConnections.list
    , CloudKMSProjectsLocationsEkmConnectionsListResource
    , newCloudKMSProjectsLocationsEkmConnectionsList
    , CloudKMSProjectsLocationsEkmConnectionsList

    -- ** cloudkms.projects.locations.ekmConnections.patch
    , CloudKMSProjectsLocationsEkmConnectionsPatchResource
    , newCloudKMSProjectsLocationsEkmConnectionsPatch
    , CloudKMSProjectsLocationsEkmConnectionsPatch

    -- ** cloudkms.projects.locations.ekmConnections.setIamPolicy
    , CloudKMSProjectsLocationsEkmConnectionsSetIamPolicyResource
    , newCloudKMSProjectsLocationsEkmConnectionsSetIamPolicy
    , CloudKMSProjectsLocationsEkmConnectionsSetIamPolicy

    -- ** cloudkms.projects.locations.ekmConnections.testIamPermissions
    , CloudKMSProjectsLocationsEkmConnectionsTestIamPermissionsResource
    , newCloudKMSProjectsLocationsEkmConnectionsTestIamPermissions
    , CloudKMSProjectsLocationsEkmConnectionsTestIamPermissions

    -- ** cloudkms.projects.locations.generateRandomBytes
    , CloudKMSProjectsLocationsGenerateRandomBytesResource
    , newCloudKMSProjectsLocationsGenerateRandomBytes
    , CloudKMSProjectsLocationsGenerateRandomBytes

    -- ** cloudkms.projects.locations.get
    , CloudKMSProjectsLocationsGetResource
    , newCloudKMSProjectsLocationsGet
    , CloudKMSProjectsLocationsGet

    -- ** cloudkms.projects.locations.keyRings.create
    , CloudKMSProjectsLocationsKeyRingsCreateResource
    , newCloudKMSProjectsLocationsKeyRingsCreate
    , CloudKMSProjectsLocationsKeyRingsCreate

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.create
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCreateResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCreate
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSignResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macSign
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacSignResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacSign
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacSign

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macVerify
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacVerifyResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacVerify
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacVerify

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatchResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.decrypt
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysDecryptResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.encrypt
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysEncryptResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysEncrypt
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysEncrypt

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.get
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysGetResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysGet
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysGet

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysGetIamPolicyResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysGetIamPolicy
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysGetIamPolicy

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.list
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysListResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysList
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysList

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.patch
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysPatchResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysSetIamPolicyResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysSetIamPolicy
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysSetIamPolicy

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysTestIamPermissionsResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysTestIamPermissions
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysTestIamPermissions

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion

    -- ** cloudkms.projects.locations.keyRings.get
    , CloudKMSProjectsLocationsKeyRingsGetResource
    , newCloudKMSProjectsLocationsKeyRingsGet
    , CloudKMSProjectsLocationsKeyRingsGet

    -- ** cloudkms.projects.locations.keyRings.getIamPolicy
    , CloudKMSProjectsLocationsKeyRingsGetIamPolicyResource
    , newCloudKMSProjectsLocationsKeyRingsGetIamPolicy
    , CloudKMSProjectsLocationsKeyRingsGetIamPolicy

    -- ** cloudkms.projects.locations.keyRings.importJobs.create
    , CloudKMSProjectsLocationsKeyRingsImportJobsCreateResource
    , newCloudKMSProjectsLocationsKeyRingsImportJobsCreate
    , CloudKMSProjectsLocationsKeyRingsImportJobsCreate

    -- ** cloudkms.projects.locations.keyRings.importJobs.get
    , CloudKMSProjectsLocationsKeyRingsImportJobsGetResource
    , newCloudKMSProjectsLocationsKeyRingsImportJobsGet
    , CloudKMSProjectsLocationsKeyRingsImportJobsGet

    -- ** cloudkms.projects.locations.keyRings.importJobs.getIamPolicy
    , CloudKMSProjectsLocationsKeyRingsImportJobsGetIamPolicyResource
    , newCloudKMSProjectsLocationsKeyRingsImportJobsGetIamPolicy
    , CloudKMSProjectsLocationsKeyRingsImportJobsGetIamPolicy

    -- ** cloudkms.projects.locations.keyRings.importJobs.list
    , CloudKMSProjectsLocationsKeyRingsImportJobsListResource
    , newCloudKMSProjectsLocationsKeyRingsImportJobsList
    , CloudKMSProjectsLocationsKeyRingsImportJobsList

    -- ** cloudkms.projects.locations.keyRings.importJobs.setIamPolicy
    , CloudKMSProjectsLocationsKeyRingsImportJobsSetIamPolicyResource
    , newCloudKMSProjectsLocationsKeyRingsImportJobsSetIamPolicy
    , CloudKMSProjectsLocationsKeyRingsImportJobsSetIamPolicy

    -- ** cloudkms.projects.locations.keyRings.importJobs.testIamPermissions
    , CloudKMSProjectsLocationsKeyRingsImportJobsTestIamPermissionsResource
    , newCloudKMSProjectsLocationsKeyRingsImportJobsTestIamPermissions
    , CloudKMSProjectsLocationsKeyRingsImportJobsTestIamPermissions

    -- ** cloudkms.projects.locations.keyRings.list
    , CloudKMSProjectsLocationsKeyRingsListResource
    , newCloudKMSProjectsLocationsKeyRingsList
    , CloudKMSProjectsLocationsKeyRingsList

    -- ** cloudkms.projects.locations.keyRings.setIamPolicy
    , CloudKMSProjectsLocationsKeyRingsSetIamPolicyResource
    , newCloudKMSProjectsLocationsKeyRingsSetIamPolicy
    , CloudKMSProjectsLocationsKeyRingsSetIamPolicy

    -- ** cloudkms.projects.locations.keyRings.testIamPermissions
    , CloudKMSProjectsLocationsKeyRingsTestIamPermissionsResource
    , newCloudKMSProjectsLocationsKeyRingsTestIamPermissions
    , CloudKMSProjectsLocationsKeyRingsTestIamPermissions

    -- ** cloudkms.projects.locations.list
    , CloudKMSProjectsLocationsListResource
    , newCloudKMSProjectsLocationsList
    , CloudKMSProjectsLocationsList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AsymmetricDecryptRequest
    , AsymmetricDecryptRequest (..)
    , newAsymmetricDecryptRequest

    -- ** AsymmetricDecryptResponse
    , AsymmetricDecryptResponse (..)
    , newAsymmetricDecryptResponse

    -- ** AsymmetricDecryptResponse_ProtectionLevel
    , AsymmetricDecryptResponse_ProtectionLevel (..)

    -- ** AsymmetricSignRequest
    , AsymmetricSignRequest (..)
    , newAsymmetricSignRequest

    -- ** AsymmetricSignResponse
    , AsymmetricSignResponse (..)
    , newAsymmetricSignResponse

    -- ** AsymmetricSignResponse_ProtectionLevel
    , AsymmetricSignResponse_ProtectionLevel (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** Certificate
    , Certificate (..)
    , newCertificate

    -- ** CertificateChains
    , CertificateChains (..)
    , newCertificateChains

    -- ** CryptoKey
    , CryptoKey (..)
    , newCryptoKey

    -- ** CryptoKey_Labels
    , CryptoKey_Labels (..)
    , newCryptoKey_Labels

    -- ** CryptoKey_Purpose
    , CryptoKey_Purpose (..)

    -- ** CryptoKeyVersion
    , CryptoKeyVersion (..)
    , newCryptoKeyVersion

    -- ** CryptoKeyVersion_Algorithm
    , CryptoKeyVersion_Algorithm (..)

    -- ** CryptoKeyVersion_ProtectionLevel
    , CryptoKeyVersion_ProtectionLevel (..)

    -- ** CryptoKeyVersion_State
    , CryptoKeyVersion_State (..)

    -- ** CryptoKeyVersionTemplate
    , CryptoKeyVersionTemplate (..)
    , newCryptoKeyVersionTemplate

    -- ** CryptoKeyVersionTemplate_Algorithm
    , CryptoKeyVersionTemplate_Algorithm (..)

    -- ** CryptoKeyVersionTemplate_ProtectionLevel
    , CryptoKeyVersionTemplate_ProtectionLevel (..)

    -- ** DecryptRequest
    , DecryptRequest (..)
    , newDecryptRequest

    -- ** DecryptResponse
    , DecryptResponse (..)
    , newDecryptResponse

    -- ** DecryptResponse_ProtectionLevel
    , DecryptResponse_ProtectionLevel (..)

    -- ** DestroyCryptoKeyVersionRequest
    , DestroyCryptoKeyVersionRequest (..)
    , newDestroyCryptoKeyVersionRequest

    -- ** Digest
    , Digest (..)
    , newDigest

    -- ** EkmConnection
    , EkmConnection (..)
    , newEkmConnection

    -- ** EncryptRequest
    , EncryptRequest (..)
    , newEncryptRequest

    -- ** EncryptResponse
    , EncryptResponse (..)
    , newEncryptResponse

    -- ** EncryptResponse_ProtectionLevel
    , EncryptResponse_ProtectionLevel (..)

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** ExternalProtectionLevelOptions
    , ExternalProtectionLevelOptions (..)
    , newExternalProtectionLevelOptions

    -- ** GenerateRandomBytesRequest
    , GenerateRandomBytesRequest (..)
    , newGenerateRandomBytesRequest

    -- ** GenerateRandomBytesRequest_ProtectionLevel
    , GenerateRandomBytesRequest_ProtectionLevel (..)

    -- ** GenerateRandomBytesResponse
    , GenerateRandomBytesResponse (..)
    , newGenerateRandomBytesResponse

    -- ** ImportCryptoKeyVersionRequest
    , ImportCryptoKeyVersionRequest (..)
    , newImportCryptoKeyVersionRequest

    -- ** ImportCryptoKeyVersionRequest_Algorithm
    , ImportCryptoKeyVersionRequest_Algorithm (..)

    -- ** ImportJob
    , ImportJob (..)
    , newImportJob

    -- ** ImportJob_ImportMethod
    , ImportJob_ImportMethod (..)

    -- ** ImportJob_ProtectionLevel
    , ImportJob_ProtectionLevel (..)

    -- ** ImportJob_State
    , ImportJob_State (..)

    -- ** KeyOperationAttestation
    , KeyOperationAttestation (..)
    , newKeyOperationAttestation

    -- ** KeyOperationAttestation_Format
    , KeyOperationAttestation_Format (..)

    -- ** KeyRing
    , KeyRing (..)
    , newKeyRing

    -- ** ListCryptoKeyVersionsResponse
    , ListCryptoKeyVersionsResponse (..)
    , newListCryptoKeyVersionsResponse

    -- ** ListCryptoKeysResponse
    , ListCryptoKeysResponse (..)
    , newListCryptoKeysResponse

    -- ** ListEkmConnectionsResponse
    , ListEkmConnectionsResponse (..)
    , newListEkmConnectionsResponse

    -- ** ListImportJobsResponse
    , ListImportJobsResponse (..)
    , newListImportJobsResponse

    -- ** ListKeyRingsResponse
    , ListKeyRingsResponse (..)
    , newListKeyRingsResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** LocationMetadata
    , LocationMetadata (..)
    , newLocationMetadata

    -- ** MacSignRequest
    , MacSignRequest (..)
    , newMacSignRequest

    -- ** MacSignResponse
    , MacSignResponse (..)
    , newMacSignResponse

    -- ** MacSignResponse_ProtectionLevel
    , MacSignResponse_ProtectionLevel (..)

    -- ** MacVerifyRequest
    , MacVerifyRequest (..)
    , newMacVerifyRequest

    -- ** MacVerifyResponse
    , MacVerifyResponse (..)
    , newMacVerifyResponse

    -- ** MacVerifyResponse_ProtectionLevel
    , MacVerifyResponse_ProtectionLevel (..)

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** PublicKey
    , PublicKey (..)
    , newPublicKey

    -- ** PublicKey_Algorithm
    , PublicKey_Algorithm (..)

    -- ** PublicKey_ProtectionLevel
    , PublicKey_ProtectionLevel (..)

    -- ** RestoreCryptoKeyVersionRequest
    , RestoreCryptoKeyVersionRequest (..)
    , newRestoreCryptoKeyVersionRequest

    -- ** ServiceResolver
    , ServiceResolver (..)
    , newServiceResolver

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** UpdateCryptoKeyPrimaryVersionRequest
    , UpdateCryptoKeyPrimaryVersionRequest (..)
    , newUpdateCryptoKeyPrimaryVersionRequest

    -- ** WrappingPublicKey
    , WrappingPublicKey (..)
    , newWrappingPublicKey

    -- ** ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView (..)

    -- ** ProjectsLocationsKeyRingsCryptoKeysListVersionView
    , ProjectsLocationsKeyRingsCryptoKeysListVersionView (..)
    ) where

import Gogol.CloudKMS.Projects.Locations.EkmConnections.Create
import Gogol.CloudKMS.Projects.Locations.EkmConnections.Get
import Gogol.CloudKMS.Projects.Locations.EkmConnections.GetIamPolicy
import Gogol.CloudKMS.Projects.Locations.EkmConnections.List
import Gogol.CloudKMS.Projects.Locations.EkmConnections.Patch
import Gogol.CloudKMS.Projects.Locations.EkmConnections.SetIamPolicy
import Gogol.CloudKMS.Projects.Locations.EkmConnections.TestIamPermissions
import Gogol.CloudKMS.Projects.Locations.GenerateRandomBytes
import Gogol.CloudKMS.Projects.Locations.Get
import Gogol.CloudKMS.Projects.Locations.KeyRings.Create
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricSign
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Get
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.List
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.MacSign
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.MacVerify
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Patch
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Encrypt
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Get
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.GetIamPolicy
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.List
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.SetIamPolicy
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.TestIamPermissions
import Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion
import Gogol.CloudKMS.Projects.Locations.KeyRings.Get
import Gogol.CloudKMS.Projects.Locations.KeyRings.GetIamPolicy
import Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create
import Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get
import Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.GetIamPolicy
import Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List
import Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.SetIamPolicy
import Gogol.CloudKMS.Projects.Locations.KeyRings.ImportJobs.TestIamPermissions
import Gogol.CloudKMS.Projects.Locations.KeyRings.List
import Gogol.CloudKMS.Projects.Locations.KeyRings.SetIamPolicy
import Gogol.CloudKMS.Projects.Locations.KeyRings.TestIamPermissions
import Gogol.CloudKMS.Projects.Locations.List
import Gogol.CloudKMS.Types
