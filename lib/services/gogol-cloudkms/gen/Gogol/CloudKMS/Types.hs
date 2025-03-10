{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudKMS.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudKMS.Types
  ( -- * Configuration
    cloudKMSService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Cloudkms'FullControl,

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

    -- ** AutokeyConfig
    AutokeyConfig (..),
    newAutokeyConfig,

    -- ** AutokeyConfig_State
    AutokeyConfig_State (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Certificate
    Certificate (..),
    newCertificate,

    -- ** CertificateChains
    CertificateChains (..),
    newCertificateChains,

    -- ** ChecksummedData
    ChecksummedData (..),
    newChecksummedData,

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

    -- ** EkmConfig
    EkmConfig (..),
    newEkmConfig,

    -- ** EkmConnection
    EkmConnection (..),
    newEkmConnection,

    -- ** EkmConnection_KeyManagementMode
    EkmConnection_KeyManagementMode (..),

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

    -- ** KeyAccessJustificationsPolicy
    KeyAccessJustificationsPolicy (..),
    newKeyAccessJustificationsPolicy,

    -- ** KeyAccessJustificationsPolicy_AllowedAccessReasonsItem
    KeyAccessJustificationsPolicy_AllowedAccessReasonsItem (..),

    -- ** KeyHandle
    KeyHandle (..),
    newKeyHandle,

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

    -- ** ListKeyHandlesResponse
    ListKeyHandlesResponse (..),
    newListKeyHandlesResponse,

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

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

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

    -- ** PublicKey_PublicKeyFormat
    PublicKey_PublicKeyFormat (..),

    -- ** RawDecryptRequest
    RawDecryptRequest (..),
    newRawDecryptRequest,

    -- ** RawDecryptResponse
    RawDecryptResponse (..),
    newRawDecryptResponse,

    -- ** RawDecryptResponse_ProtectionLevel
    RawDecryptResponse_ProtectionLevel (..),

    -- ** RawEncryptRequest
    RawEncryptRequest (..),
    newRawEncryptRequest,

    -- ** RawEncryptResponse
    RawEncryptResponse (..),
    newRawEncryptResponse,

    -- ** RawEncryptResponse_ProtectionLevel
    RawEncryptResponse_ProtectionLevel (..),

    -- ** RestoreCryptoKeyVersionRequest
    RestoreCryptoKeyVersionRequest (..),
    newRestoreCryptoKeyVersionRequest,

    -- ** ServiceResolver
    ServiceResolver (..),
    newServiceResolver,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** ShowEffectiveAutokeyConfigResponse
    ShowEffectiveAutokeyConfigResponse (..),
    newShowEffectiveAutokeyConfigResponse,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UpdateCryptoKeyPrimaryVersionRequest
    UpdateCryptoKeyPrimaryVersionRequest (..),
    newUpdateCryptoKeyPrimaryVersionRequest,

    -- ** VerifyConnectivityResponse
    VerifyConnectivityResponse (..),
    newVerifyConnectivityResponse,

    -- ** WrappingPublicKey
    WrappingPublicKey (..),
    newWrappingPublicKey,

    -- ** ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyPublicKeyFormat (..),

    -- ** ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsListView (..),

    -- ** ProjectsLocationsKeyRingsCryptoKeysListVersionView
    ProjectsLocationsKeyRingsCryptoKeysListVersionView (..),
  )
where

import Gogol.CloudKMS.Internal.Product
import Gogol.CloudKMS.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Cloud Key Management Service (KMS) API. This contains the host and root path used as a starting point for constructing service requests.
cloudKMSService :: Core.ServiceConfig
cloudKMSService =
  Core.defaultService
    (Core.ServiceId "cloudkms:v1")
    "cloudkms.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View and manage your keys and secrets stored in Cloud Key Management Service
type Cloudkms'FullControl =
  "https://www.googleapis.com/auth/cloudkms"
