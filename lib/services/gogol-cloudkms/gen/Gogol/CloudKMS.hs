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
  ( -- * Configuration
    cloudKMSService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Cloudkms'FullControl,

    -- * Resources

    -- ** cloudkms.projects.locations.ekmConnections.create
    CloudKMSProjectsLocationsEkmConnectionsCreateResource,
    CloudKMSProjectsLocationsEkmConnectionsCreate (..),
    newCloudKMSProjectsLocationsEkmConnectionsCreate,

    -- ** cloudkms.projects.locations.ekmConnections.get
    CloudKMSProjectsLocationsEkmConnectionsGetResource,
    CloudKMSProjectsLocationsEkmConnectionsGet (..),
    newCloudKMSProjectsLocationsEkmConnectionsGet,

    -- ** cloudkms.projects.locations.ekmConnections.getIamPolicy
    CloudKMSProjectsLocationsEkmConnectionsGetIamPolicyResource,
    CloudKMSProjectsLocationsEkmConnectionsGetIamPolicy (..),
    newCloudKMSProjectsLocationsEkmConnectionsGetIamPolicy,

    -- ** cloudkms.projects.locations.ekmConnections.list
    CloudKMSProjectsLocationsEkmConnectionsListResource,
    CloudKMSProjectsLocationsEkmConnectionsList (..),
    newCloudKMSProjectsLocationsEkmConnectionsList,

    -- ** cloudkms.projects.locations.ekmConnections.patch
    CloudKMSProjectsLocationsEkmConnectionsPatchResource,
    CloudKMSProjectsLocationsEkmConnectionsPatch (..),
    newCloudKMSProjectsLocationsEkmConnectionsPatch,

    -- ** cloudkms.projects.locations.ekmConnections.setIamPolicy
    CloudKMSProjectsLocationsEkmConnectionsSetIamPolicyResource,
    CloudKMSProjectsLocationsEkmConnectionsSetIamPolicy (..),
    newCloudKMSProjectsLocationsEkmConnectionsSetIamPolicy,

    -- ** cloudkms.projects.locations.ekmConnections.testIamPermissions
    CloudKMSProjectsLocationsEkmConnectionsTestIamPermissionsResource,
    CloudKMSProjectsLocationsEkmConnectionsTestIamPermissions (..),
    newCloudKMSProjectsLocationsEkmConnectionsTestIamPermissions,

    -- ** cloudkms.projects.locations.generateRandomBytes
    CloudKMSProjectsLocationsGenerateRandomBytesResource,
    CloudKMSProjectsLocationsGenerateRandomBytes (..),
    newCloudKMSProjectsLocationsGenerateRandomBytes,

    -- ** cloudkms.projects.locations.get
    CloudKMSProjectsLocationsGetResource,
    CloudKMSProjectsLocationsGet (..),
    newCloudKMSProjectsLocationsGet,

    -- ** cloudkms.projects.locations.keyRings.create
    CloudKMSProjectsLocationsKeyRingsCreateResource,
    CloudKMSProjectsLocationsKeyRingsCreate (..),
    newCloudKMSProjectsLocationsKeyRingsCreate,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.create
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCreateResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCreate (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCreate,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSignResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsList,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macSign
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacSignResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacSign (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacSign,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macVerify
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacVerifyResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacVerify (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsMacVerify,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatchResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.decrypt
    CloudKMSProjectsLocationsKeyRingsCryptoKeysDecryptResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysDecrypt,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.encrypt
    CloudKMSProjectsLocationsKeyRingsCryptoKeysEncryptResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysEncrypt (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysEncrypt,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.get
    CloudKMSProjectsLocationsKeyRingsCryptoKeysGetResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysGet (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysGet,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy
    CloudKMSProjectsLocationsKeyRingsCryptoKeysGetIamPolicyResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysGetIamPolicy (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysGetIamPolicy,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.list
    CloudKMSProjectsLocationsKeyRingsCryptoKeysListResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysList (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysList,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.patch
    CloudKMSProjectsLocationsKeyRingsCryptoKeysPatchResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysPatch,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy
    CloudKMSProjectsLocationsKeyRingsCryptoKeysSetIamPolicyResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysSetIamPolicy (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysSetIamPolicy,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions
    CloudKMSProjectsLocationsKeyRingsCryptoKeysTestIamPermissionsResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysTestIamPermissions (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysTestIamPermissions,

    -- ** cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion
    CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion,

    -- ** cloudkms.projects.locations.keyRings.get
    CloudKMSProjectsLocationsKeyRingsGetResource,
    CloudKMSProjectsLocationsKeyRingsGet (..),
    newCloudKMSProjectsLocationsKeyRingsGet,

    -- ** cloudkms.projects.locations.keyRings.getIamPolicy
    CloudKMSProjectsLocationsKeyRingsGetIamPolicyResource,
    CloudKMSProjectsLocationsKeyRingsGetIamPolicy (..),
    newCloudKMSProjectsLocationsKeyRingsGetIamPolicy,

    -- ** cloudkms.projects.locations.keyRings.importJobs.create
    CloudKMSProjectsLocationsKeyRingsImportJobsCreateResource,
    CloudKMSProjectsLocationsKeyRingsImportJobsCreate (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsCreate,

    -- ** cloudkms.projects.locations.keyRings.importJobs.get
    CloudKMSProjectsLocationsKeyRingsImportJobsGetResource,
    CloudKMSProjectsLocationsKeyRingsImportJobsGet (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsGet,

    -- ** cloudkms.projects.locations.keyRings.importJobs.getIamPolicy
    CloudKMSProjectsLocationsKeyRingsImportJobsGetIamPolicyResource,
    CloudKMSProjectsLocationsKeyRingsImportJobsGetIamPolicy (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsGetIamPolicy,

    -- ** cloudkms.projects.locations.keyRings.importJobs.list
    CloudKMSProjectsLocationsKeyRingsImportJobsListResource,
    CloudKMSProjectsLocationsKeyRingsImportJobsList (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsList,

    -- ** cloudkms.projects.locations.keyRings.importJobs.setIamPolicy
    CloudKMSProjectsLocationsKeyRingsImportJobsSetIamPolicyResource,
    CloudKMSProjectsLocationsKeyRingsImportJobsSetIamPolicy (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsSetIamPolicy,

    -- ** cloudkms.projects.locations.keyRings.importJobs.testIamPermissions
    CloudKMSProjectsLocationsKeyRingsImportJobsTestIamPermissionsResource,
    CloudKMSProjectsLocationsKeyRingsImportJobsTestIamPermissions (..),
    newCloudKMSProjectsLocationsKeyRingsImportJobsTestIamPermissions,

    -- ** cloudkms.projects.locations.keyRings.list
    CloudKMSProjectsLocationsKeyRingsListResource,
    CloudKMSProjectsLocationsKeyRingsList (..),
    newCloudKMSProjectsLocationsKeyRingsList,

    -- ** cloudkms.projects.locations.keyRings.setIamPolicy
    CloudKMSProjectsLocationsKeyRingsSetIamPolicyResource,
    CloudKMSProjectsLocationsKeyRingsSetIamPolicy (..),
    newCloudKMSProjectsLocationsKeyRingsSetIamPolicy,

    -- ** cloudkms.projects.locations.keyRings.testIamPermissions
    CloudKMSProjectsLocationsKeyRingsTestIamPermissionsResource,
    CloudKMSProjectsLocationsKeyRingsTestIamPermissions (..),
    newCloudKMSProjectsLocationsKeyRingsTestIamPermissions,

    -- ** cloudkms.projects.locations.list
    CloudKMSProjectsLocationsListResource,
    CloudKMSProjectsLocationsList (..),
    newCloudKMSProjectsLocationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AsymmetricDecryptRequest
    AsymmetricDecryptRequest (..),
    newAsymmetricDecryptRequest,

    -- ** AsymmetricDecryptResponse
    AsymmetricDecryptResponse (..),
    newAsymmetricDecryptResponse,

    -- ** AsymmetricDecryptResponse_ProtectionLevel
    AsymmetricDecryptResponse_ProtectionLevel (..),

    -- ** AsymmetricSignRequest
    AsymmetricSignRequest (..),
    newAsymmetricSignRequest,

    -- ** AsymmetricSignResponse
    AsymmetricSignResponse (..),
    newAsymmetricSignResponse,

    -- ** AsymmetricSignResponse_ProtectionLevel
    AsymmetricSignResponse_ProtectionLevel (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Certificate
    Certificate (..),
    newCertificate,

    -- ** CertificateChains
    CertificateChains (..),
    newCertificateChains,

    -- ** CryptoKey
    CryptoKey (..),
    newCryptoKey,

    -- ** CryptoKey_Labels
    CryptoKey_Labels (..),
    newCryptoKey_Labels,

    -- ** CryptoKey_Purpose
    CryptoKey_Purpose (..),

    -- ** CryptoKeyVersion
    CryptoKeyVersion (..),
    newCryptoKeyVersion,

    -- ** CryptoKeyVersion_Algorithm
    CryptoKeyVersion_Algorithm (..),

    -- ** CryptoKeyVersion_ProtectionLevel
    CryptoKeyVersion_ProtectionLevel (..),

    -- ** CryptoKeyVersion_State
    CryptoKeyVersion_State (..),

    -- ** CryptoKeyVersionTemplate
    CryptoKeyVersionTemplate (..),
    newCryptoKeyVersionTemplate,

    -- ** CryptoKeyVersionTemplate_Algorithm
    CryptoKeyVersionTemplate_Algorithm (..),

    -- ** CryptoKeyVersionTemplate_ProtectionLevel
    CryptoKeyVersionTemplate_ProtectionLevel (..),

    -- ** DecryptRequest
    DecryptRequest (..),
    newDecryptRequest,

    -- ** DecryptResponse
    DecryptResponse (..),
    newDecryptResponse,

    -- ** DecryptResponse_ProtectionLevel
    DecryptResponse_ProtectionLevel (..),

    -- ** DestroyCryptoKeyVersionRequest
    DestroyCryptoKeyVersionRequest (..),
    newDestroyCryptoKeyVersionRequest,

    -- ** Digest
    Digest (..),
    newDigest,

    -- ** EkmConnection
    EkmConnection (..),
    newEkmConnection,

    -- ** EncryptRequest
    EncryptRequest (..),
    newEncryptRequest,

    -- ** EncryptResponse
    EncryptResponse (..),
    newEncryptResponse,

    -- ** EncryptResponse_ProtectionLevel
    EncryptResponse_ProtectionLevel (..),

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** ExternalProtectionLevelOptions
    ExternalProtectionLevelOptions (..),
    newExternalProtectionLevelOptions,

    -- ** GenerateRandomBytesRequest
    GenerateRandomBytesRequest (..),
    newGenerateRandomBytesRequest,

    -- ** GenerateRandomBytesRequest_ProtectionLevel
    GenerateRandomBytesRequest_ProtectionLevel (..),

    -- ** GenerateRandomBytesResponse
    GenerateRandomBytesResponse (..),
    newGenerateRandomBytesResponse,

    -- ** ImportCryptoKeyVersionRequest
    ImportCryptoKeyVersionRequest (..),
    newImportCryptoKeyVersionRequest,

    -- ** ImportCryptoKeyVersionRequest_Algorithm
    ImportCryptoKeyVersionRequest_Algorithm (..),

    -- ** ImportJob
    ImportJob (..),
    newImportJob,

    -- ** ImportJob_ImportMethod
    ImportJob_ImportMethod (..),

    -- ** ImportJob_ProtectionLevel
    ImportJob_ProtectionLevel (..),

    -- ** ImportJob_State
    ImportJob_State (..),

    -- ** KeyOperationAttestation
    KeyOperationAttestation (..),
    newKeyOperationAttestation,

    -- ** KeyOperationAttestation_Format
    KeyOperationAttestation_Format (..),

    -- ** KeyRing
    KeyRing (..),
    newKeyRing,

    -- ** ListCryptoKeyVersionsResponse
    ListCryptoKeyVersionsResponse (..),
    newListCryptoKeyVersionsResponse,

    -- ** ListCryptoKeysResponse
    ListCryptoKeysResponse (..),
    newListCryptoKeysResponse,

    -- ** ListEkmConnectionsResponse
    ListEkmConnectionsResponse (..),
    newListEkmConnectionsResponse,

    -- ** ListImportJobsResponse
    ListImportJobsResponse (..),
    newListImportJobsResponse,

    -- ** ListKeyRingsResponse
    ListKeyRingsResponse (..),
    newListKeyRingsResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- ** MacSignRequest
    MacSignRequest (..),
    newMacSignRequest,

    -- ** MacSignResponse
    MacSignResponse (..),
    newMacSignResponse,

    -- ** MacSignResponse_ProtectionLevel
    MacSignResponse_ProtectionLevel (..),

    -- ** MacVerifyRequest
    MacVerifyRequest (..),
    newMacVerifyRequest,

    -- ** MacVerifyResponse
    MacVerifyResponse (..),
    newMacVerifyResponse,

    -- ** MacVerifyResponse_ProtectionLevel
    MacVerifyResponse_ProtectionLevel (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PublicKey
    PublicKey (..),
    newPublicKey,

    -- ** PublicKey_Algorithm
    PublicKey_Algorithm (..),

    -- ** PublicKey_ProtectionLevel
    PublicKey_ProtectionLevel (..),

    -- ** RestoreCryptoKeyVersionRequest
    RestoreCryptoKeyVersionRequest (..),
    newRestoreCryptoKeyVersionRequest,

    -- ** ServiceResolver
    ServiceResolver (..),
    newServiceResolver,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UpdateCryptoKeyPrimaryVersionRequest
    UpdateCryptoKeyPrimaryVersionRequest (..),
    newUpdateCryptoKeyPrimaryVersionRequest,

    -- ** WrappingPublicKey
    WrappingPublicKey (..),
    newWrappingPublicKey,

    -- ** ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView (..),

    -- ** ProjectsLocationsKeyRingsCryptoKeysListVersionView
    ProjectsLocationsKeyRingsCryptoKeysListVersionView (..),
  )
where

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
