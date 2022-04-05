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
-- Module      : Gogol.CloudKMS.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudKMS.Internal.Product
  ( -- * AsymmetricDecryptRequest
    AsymmetricDecryptRequest (..),
    newAsymmetricDecryptRequest,

    -- * AsymmetricDecryptResponse
    AsymmetricDecryptResponse (..),
    newAsymmetricDecryptResponse,

    -- * AsymmetricSignRequest
    AsymmetricSignRequest (..),
    newAsymmetricSignRequest,

    -- * AsymmetricSignResponse
    AsymmetricSignResponse (..),
    newAsymmetricSignResponse,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Certificate
    Certificate (..),
    newCertificate,

    -- * CertificateChains
    CertificateChains (..),
    newCertificateChains,

    -- * CryptoKey
    CryptoKey (..),
    newCryptoKey,

    -- * CryptoKey_Labels
    CryptoKey_Labels (..),
    newCryptoKey_Labels,

    -- * CryptoKeyVersion
    CryptoKeyVersion (..),
    newCryptoKeyVersion,

    -- * CryptoKeyVersionTemplate
    CryptoKeyVersionTemplate (..),
    newCryptoKeyVersionTemplate,

    -- * DecryptRequest
    DecryptRequest (..),
    newDecryptRequest,

    -- * DecryptResponse
    DecryptResponse (..),
    newDecryptResponse,

    -- * DestroyCryptoKeyVersionRequest
    DestroyCryptoKeyVersionRequest (..),
    newDestroyCryptoKeyVersionRequest,

    -- * Digest
    Digest (..),
    newDigest,

    -- * EkmConnection
    EkmConnection (..),
    newEkmConnection,

    -- * EncryptRequest
    EncryptRequest (..),
    newEncryptRequest,

    -- * EncryptResponse
    EncryptResponse (..),
    newEncryptResponse,

    -- * Expr
    Expr (..),
    newExpr,

    -- * ExternalProtectionLevelOptions
    ExternalProtectionLevelOptions (..),
    newExternalProtectionLevelOptions,

    -- * GenerateRandomBytesRequest
    GenerateRandomBytesRequest (..),
    newGenerateRandomBytesRequest,

    -- * GenerateRandomBytesResponse
    GenerateRandomBytesResponse (..),
    newGenerateRandomBytesResponse,

    -- * ImportCryptoKeyVersionRequest
    ImportCryptoKeyVersionRequest (..),
    newImportCryptoKeyVersionRequest,

    -- * ImportJob
    ImportJob (..),
    newImportJob,

    -- * KeyOperationAttestation
    KeyOperationAttestation (..),
    newKeyOperationAttestation,

    -- * KeyRing
    KeyRing (..),
    newKeyRing,

    -- * ListCryptoKeyVersionsResponse
    ListCryptoKeyVersionsResponse (..),
    newListCryptoKeyVersionsResponse,

    -- * ListCryptoKeysResponse
    ListCryptoKeysResponse (..),
    newListCryptoKeysResponse,

    -- * ListEkmConnectionsResponse
    ListEkmConnectionsResponse (..),
    newListEkmConnectionsResponse,

    -- * ListImportJobsResponse
    ListImportJobsResponse (..),
    newListImportJobsResponse,

    -- * ListKeyRingsResponse
    ListKeyRingsResponse (..),
    newListKeyRingsResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- * MacSignRequest
    MacSignRequest (..),
    newMacSignRequest,

    -- * MacSignResponse
    MacSignResponse (..),
    newMacSignResponse,

    -- * MacVerifyRequest
    MacVerifyRequest (..),
    newMacVerifyRequest,

    -- * MacVerifyResponse
    MacVerifyResponse (..),
    newMacVerifyResponse,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PublicKey
    PublicKey (..),
    newPublicKey,

    -- * RestoreCryptoKeyVersionRequest
    RestoreCryptoKeyVersionRequest (..),
    newRestoreCryptoKeyVersionRequest,

    -- * ServiceResolver
    ServiceResolver (..),
    newServiceResolver,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UpdateCryptoKeyPrimaryVersionRequest
    UpdateCryptoKeyPrimaryVersionRequest (..),
    newUpdateCryptoKeyPrimaryVersionRequest,

    -- * WrappingPublicKey
    WrappingPublicKey (..),
    newWrappingPublicKey,
  )
where

import Gogol.CloudKMS.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Request message for KeyManagementService.AsymmetricDecrypt.
--
-- /See:/ 'newAsymmetricDecryptRequest' smart constructor.
data AsymmetricDecryptRequest = AsymmetricDecryptRequest
  { -- | Required. The data encrypted with the named CryptoKeyVersion\'s public key using OAEP.
    ciphertext :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the AsymmetricDecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received AsymmetricDecryptRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricDecryptRequest.ciphertext) is equal to AsymmetricDecryptRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    ciphertextCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsymmetricDecryptRequest' with the minimum fields required to make a request.
newAsymmetricDecryptRequest ::
  AsymmetricDecryptRequest
newAsymmetricDecryptRequest =
  AsymmetricDecryptRequest
    { ciphertext = Core.Nothing,
      ciphertextCrc32c = Core.Nothing
    }

instance Core.FromJSON AsymmetricDecryptRequest where
  parseJSON =
    Core.withObject
      "AsymmetricDecryptRequest"
      ( \o ->
          AsymmetricDecryptRequest
            Core.<$> (o Core..:? "ciphertext")
            Core.<*> ( o Core..:? "ciphertextCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON AsymmetricDecryptRequest where
  toJSON AsymmetricDecryptRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("ciphertext" Core..=) Core.<$> ciphertext,
            ("ciphertextCrc32c" Core..=) Core.. Core.AsText
              Core.<$> ciphertextCrc32c
          ]
      )

-- | Response message for KeyManagementService.AsymmetricDecrypt.
--
-- /See:/ 'newAsymmetricDecryptResponse' smart constructor.
data AsymmetricDecryptResponse = AsymmetricDecryptResponse
  { -- | The decrypted data originally encrypted with the matching public key.
    plaintext :: (Core.Maybe Core.Base64),
    -- | Integrity verification field. A CRC32C checksum of the returned AsymmetricDecryptResponse.plaintext. An integrity check of AsymmetricDecryptResponse.plaintext can be performed by computing the CRC32C checksum of AsymmetricDecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    plaintextCrc32c :: (Core.Maybe Core.Int64),
    -- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
    protectionLevel :: (Core.Maybe AsymmetricDecryptResponse_ProtectionLevel),
    -- | Integrity verification field. A flag indicating whether AsymmetricDecryptRequest.ciphertext/crc32c was received by KeyManagementService and used for the integrity verification of the ciphertext. A false value of this field indicates either that AsymmetricDecryptRequest.ciphertext/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set AsymmetricDecryptRequest.ciphertext_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedCiphertextCrc32c :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsymmetricDecryptResponse' with the minimum fields required to make a request.
newAsymmetricDecryptResponse ::
  AsymmetricDecryptResponse
newAsymmetricDecryptResponse =
  AsymmetricDecryptResponse
    { plaintext = Core.Nothing,
      plaintextCrc32c = Core.Nothing,
      protectionLevel = Core.Nothing,
      verifiedCiphertextCrc32c = Core.Nothing
    }

instance Core.FromJSON AsymmetricDecryptResponse where
  parseJSON =
    Core.withObject
      "AsymmetricDecryptResponse"
      ( \o ->
          AsymmetricDecryptResponse
            Core.<$> (o Core..:? "plaintext")
            Core.<*> ( o Core..:? "plaintextCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "verifiedCiphertextCrc32c")
      )

instance Core.ToJSON AsymmetricDecryptResponse where
  toJSON AsymmetricDecryptResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("plaintext" Core..=) Core.<$> plaintext,
            ("plaintextCrc32c" Core..=) Core.. Core.AsText
              Core.<$> plaintextCrc32c,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("verifiedCiphertextCrc32c" Core..=)
              Core.<$> verifiedCiphertextCrc32c
          ]
      )

-- | Request message for KeyManagementService.AsymmetricSign.
--
-- /See:/ 'newAsymmetricSignRequest' smart constructor.
data AsymmetricSignRequest = AsymmetricSignRequest
  { -- | Optional. The data to sign. It can\'t be supplied if AsymmetricSignRequest.digest is supplied.
    data' :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the AsymmetricSignRequest.data. If specified, KeyManagementService will verify the integrity of the received AsymmetricSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricSignRequest.data) is equal to AsymmetricSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    dataCrc32c :: (Core.Maybe Core.Int64),
    -- | Optional. The digest of the data to sign. The digest must be produced with the same digest algorithm as specified by the key version\'s algorithm. This field may not be supplied if AsymmetricSignRequest.data is supplied.
    digest :: (Core.Maybe Digest),
    -- | Optional. An optional CRC32C checksum of the AsymmetricSignRequest.digest. If specified, KeyManagementService will verify the integrity of the received AsymmetricSignRequest.digest using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricSignRequest.digest) is equal to AsymmetricSignRequest.digest_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    digestCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsymmetricSignRequest' with the minimum fields required to make a request.
newAsymmetricSignRequest ::
  AsymmetricSignRequest
newAsymmetricSignRequest =
  AsymmetricSignRequest
    { data' = Core.Nothing,
      dataCrc32c = Core.Nothing,
      digest = Core.Nothing,
      digestCrc32c = Core.Nothing
    }

instance Core.FromJSON AsymmetricSignRequest where
  parseJSON =
    Core.withObject
      "AsymmetricSignRequest"
      ( \o ->
          AsymmetricSignRequest
            Core.<$> (o Core..:? "data")
            Core.<*> ( o Core..:? "dataCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "digest")
            Core.<*> ( o Core..:? "digestCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON AsymmetricSignRequest where
  toJSON AsymmetricSignRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("dataCrc32c" Core..=) Core.. Core.AsText
              Core.<$> dataCrc32c,
            ("digest" Core..=) Core.<$> digest,
            ("digestCrc32c" Core..=) Core.. Core.AsText
              Core.<$> digestCrc32c
          ]
      )

-- | Response message for KeyManagementService.AsymmetricSign.
--
-- /See:/ 'newAsymmetricSignResponse' smart constructor.
data AsymmetricSignResponse = AsymmetricSignResponse
  { -- | The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing.
    name :: (Core.Maybe Core.Text),
    -- | The ProtectionLevel of the CryptoKeyVersion used for signing.
    protectionLevel :: (Core.Maybe AsymmetricSignResponse_ProtectionLevel),
    -- | The created signature.
    signature :: (Core.Maybe Core.Base64),
    -- | Integrity verification field. A CRC32C checksum of the returned AsymmetricSignResponse.signature. An integrity check of AsymmetricSignResponse.signature can be performed by computing the CRC32C checksum of AsymmetricSignResponse.signature and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    signatureCrc32c :: (Core.Maybe Core.Int64),
    -- | Integrity verification field. A flag indicating whether AsymmetricSignRequest.data/crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that AsymmetricSignRequest.data/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set AsymmetricSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedDataCrc32c :: (Core.Maybe Core.Bool),
    -- | Integrity verification field. A flag indicating whether AsymmetricSignRequest.digest/crc32c was received by KeyManagementService and used for the integrity verification of the digest. A false value of this field indicates either that AsymmetricSignRequest.digest/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set AsymmetricSignRequest.digest_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedDigestCrc32c :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsymmetricSignResponse' with the minimum fields required to make a request.
newAsymmetricSignResponse ::
  AsymmetricSignResponse
newAsymmetricSignResponse =
  AsymmetricSignResponse
    { name = Core.Nothing,
      protectionLevel = Core.Nothing,
      signature = Core.Nothing,
      signatureCrc32c = Core.Nothing,
      verifiedDataCrc32c = Core.Nothing,
      verifiedDigestCrc32c = Core.Nothing
    }

instance Core.FromJSON AsymmetricSignResponse where
  parseJSON =
    Core.withObject
      "AsymmetricSignResponse"
      ( \o ->
          AsymmetricSignResponse
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "signature")
            Core.<*> ( o Core..:? "signatureCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "verifiedDataCrc32c")
            Core.<*> (o Core..:? "verifiedDigestCrc32c")
      )

instance Core.ToJSON AsymmetricSignResponse where
  toJSON AsymmetricSignResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("signature" Core..=) Core.<$> signature,
            ("signatureCrc32c" Core..=) Core.. Core.AsText
              Core.<$> signatureCrc32c,
            ("verifiedDataCrc32c" Core..=)
              Core.<$> verifiedDataCrc32c,
            ("verifiedDigestCrc32c" Core..=)
              Core.<$> verifiedDigestCrc32c
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.
--
-- /See:/ 'newCertificate' smart constructor.
data Certificate = Certificate
  { -- | Output only. The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
    issuer :: (Core.Maybe Core.Text),
    -- | Output only. The certificate is not valid after this time. Only present if parsed is true.
    notAfterTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The certificate is not valid before this time. Only present if parsed is true.
    notBeforeTime :: (Core.Maybe Core.DateTime),
    -- | Output only. True if the certificate was parsed successfully.
    parsed :: (Core.Maybe Core.Bool),
    -- | Required. The raw certificate bytes in DER format.
    rawDer :: (Core.Maybe Core.Base64),
    -- | Output only. The certificate serial number as a hex string. Only present if parsed is true.
    serialNumber :: (Core.Maybe Core.Text),
    -- | Output only. The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
    sha256Fingerprint :: (Core.Maybe Core.Text),
    -- | Output only. The subject distinguished name in RFC 2253 format. Only present if parsed is true.
    subject :: (Core.Maybe Core.Text),
    -- | Output only. The subject Alternative DNS names. Only present if parsed is true.
    subjectAlternativeDnsNames :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Certificate' with the minimum fields required to make a request.
newCertificate ::
  Certificate
newCertificate =
  Certificate
    { issuer = Core.Nothing,
      notAfterTime = Core.Nothing,
      notBeforeTime = Core.Nothing,
      parsed = Core.Nothing,
      rawDer = Core.Nothing,
      serialNumber = Core.Nothing,
      sha256Fingerprint = Core.Nothing,
      subject = Core.Nothing,
      subjectAlternativeDnsNames = Core.Nothing
    }

instance Core.FromJSON Certificate where
  parseJSON =
    Core.withObject
      "Certificate"
      ( \o ->
          Certificate
            Core.<$> (o Core..:? "issuer")
            Core.<*> (o Core..:? "notAfterTime")
            Core.<*> (o Core..:? "notBeforeTime")
            Core.<*> (o Core..:? "parsed")
            Core.<*> (o Core..:? "rawDer")
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> (o Core..:? "sha256Fingerprint")
            Core.<*> (o Core..:? "subject")
            Core.<*> (o Core..:? "subjectAlternativeDnsNames")
      )

instance Core.ToJSON Certificate where
  toJSON Certificate {..} =
    Core.object
      ( Core.catMaybes
          [ ("issuer" Core..=) Core.<$> issuer,
            ("notAfterTime" Core..=) Core.<$> notAfterTime,
            ("notBeforeTime" Core..=) Core.<$> notBeforeTime,
            ("parsed" Core..=) Core.<$> parsed,
            ("rawDer" Core..=) Core.<$> rawDer,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("sha256Fingerprint" Core..=)
              Core.<$> sha256Fingerprint,
            ("subject" Core..=) Core.<$> subject,
            ("subjectAlternativeDnsNames" Core..=)
              Core.<$> subjectAlternativeDnsNames
          ]
      )

-- | Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https:\/\/tools.ietf.org\/html\/rfc5246#section-7.4.2.
--
-- /See:/ 'newCertificateChains' smart constructor.
data CertificateChains = CertificateChains
  { -- | Cavium certificate chain corresponding to the attestation.
    caviumCerts :: (Core.Maybe [Core.Text]),
    -- | Google card certificate chain corresponding to the attestation.
    googleCardCerts :: (Core.Maybe [Core.Text]),
    -- | Google partition certificate chain corresponding to the attestation.
    googlePartitionCerts :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertificateChains' with the minimum fields required to make a request.
newCertificateChains ::
  CertificateChains
newCertificateChains =
  CertificateChains
    { caviumCerts = Core.Nothing,
      googleCardCerts = Core.Nothing,
      googlePartitionCerts = Core.Nothing
    }

instance Core.FromJSON CertificateChains where
  parseJSON =
    Core.withObject
      "CertificateChains"
      ( \o ->
          CertificateChains
            Core.<$> (o Core..:? "caviumCerts")
            Core.<*> (o Core..:? "googleCardCerts")
            Core.<*> (o Core..:? "googlePartitionCerts")
      )

instance Core.ToJSON CertificateChains where
  toJSON CertificateChains {..} =
    Core.object
      ( Core.catMaybes
          [ ("caviumCerts" Core..=) Core.<$> caviumCerts,
            ("googleCardCerts" Core..=) Core.<$> googleCardCerts,
            ("googlePartitionCerts" Core..=)
              Core.<$> googlePartitionCerts
          ]
      )

-- | A CryptoKey represents a logical key that can be used for cryptographic operations. A CryptoKey is made up of zero or more versions, which represent the actual key material used in cryptographic operations.
--
-- /See:/ 'newCryptoKey' smart constructor.
data CryptoKey = CryptoKey
  { -- | Output only. The time at which this CryptoKey was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format @projects\/*\/locations\/*\/ekmConnections\/*@. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
    cryptoKeyBackend :: (Core.Maybe Core.Text),
    -- | Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
    destroyScheduledDuration :: (Core.Maybe Core.Duration),
    -- | Immutable. Whether this key may contain imported versions only.
    importOnly :: (Core.Maybe Core.Bool),
    -- | Labels with user-defined metadata. For more information, see <https://cloud.google.com/kms/docs/labeling-keys Labeling Keys>.
    labels :: (Core.Maybe CryptoKey_Labels),
    -- | Output only. The resource name for this CryptoKey in the format @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*@.
    name :: (Core.Maybe Core.Text),
    -- | At next/rotation/time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next/rotation/time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
    nextRotationTime :: (Core.Maybe Core.DateTime),
    -- | Output only. A copy of the \"primary\" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey\'s primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.
    primary :: (Core.Maybe CryptoKeyVersion),
    -- | Immutable. The immutable purpose of this CryptoKey.
    purpose :: (Core.Maybe CryptoKey_Purpose),
    -- | next/rotation/time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation/period is set, next/rotation/time must also be set. Keys with purpose ENCRYPT/DECRYPT support automatic rotation. For other keys, this field must be omitted.
    rotationPeriod :: (Core.Maybe Core.Duration),
    -- | A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
    versionTemplate :: (Core.Maybe CryptoKeyVersionTemplate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CryptoKey' with the minimum fields required to make a request.
newCryptoKey ::
  CryptoKey
newCryptoKey =
  CryptoKey
    { createTime = Core.Nothing,
      cryptoKeyBackend = Core.Nothing,
      destroyScheduledDuration = Core.Nothing,
      importOnly = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      nextRotationTime = Core.Nothing,
      primary = Core.Nothing,
      purpose = Core.Nothing,
      rotationPeriod = Core.Nothing,
      versionTemplate = Core.Nothing
    }

instance Core.FromJSON CryptoKey where
  parseJSON =
    Core.withObject
      "CryptoKey"
      ( \o ->
          CryptoKey
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "cryptoKeyBackend")
            Core.<*> (o Core..:? "destroyScheduledDuration")
            Core.<*> (o Core..:? "importOnly")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nextRotationTime")
            Core.<*> (o Core..:? "primary")
            Core.<*> (o Core..:? "purpose")
            Core.<*> (o Core..:? "rotationPeriod")
            Core.<*> (o Core..:? "versionTemplate")
      )

instance Core.ToJSON CryptoKey where
  toJSON CryptoKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("cryptoKeyBackend" Core..=)
              Core.<$> cryptoKeyBackend,
            ("destroyScheduledDuration" Core..=)
              Core.<$> destroyScheduledDuration,
            ("importOnly" Core..=) Core.<$> importOnly,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("nextRotationTime" Core..=)
              Core.<$> nextRotationTime,
            ("primary" Core..=) Core.<$> primary,
            ("purpose" Core..=) Core.<$> purpose,
            ("rotationPeriod" Core..=) Core.<$> rotationPeriod,
            ("versionTemplate" Core..=)
              Core.<$> versionTemplate
          ]
      )

-- | Labels with user-defined metadata. For more information, see <https://cloud.google.com/kms/docs/labeling-keys Labeling Keys>.
--
-- /See:/ 'newCryptoKey_Labels' smart constructor.
newtype CryptoKey_Labels = CryptoKey_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CryptoKey_Labels' with the minimum fields required to make a request.
newCryptoKey_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CryptoKey_Labels
newCryptoKey_Labels additional = CryptoKey_Labels {additional = additional}

instance Core.FromJSON CryptoKey_Labels where
  parseJSON =
    Core.withObject
      "CryptoKey_Labels"
      ( \o ->
          CryptoKey_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CryptoKey_Labels where
  toJSON CryptoKey_Labels {..} = Core.toJSON additional

-- | A CryptoKeyVersion represents an individual cryptographic key, and the associated key material. An ENABLED version can be used for cryptographic operations. For security reasons, the raw cryptographic key material represented by a CryptoKeyVersion can never be viewed or exported. It can only be used to encrypt, decrypt, or sign data when an authorized user or application invokes Cloud KMS.
--
-- /See:/ 'newCryptoKeyVersion' smart constructor.
data CryptoKeyVersion = CryptoKeyVersion
  { -- | Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
    algorithm :: (Core.Maybe CryptoKeyVersion_Algorithm),
    -- | Output only. Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
    attestation :: (Core.Maybe KeyOperationAttestation),
    -- | Output only. The time at which this CryptoKeyVersion was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time this CryptoKeyVersion\'s key material was destroyed. Only present if state is DESTROYED.
    destroyEventTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time this CryptoKeyVersion\'s key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
    destroyTime :: (Core.Maybe Core.DateTime),
    -- | ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
    externalProtectionLevelOptions :: (Core.Maybe ExternalProtectionLevelOptions),
    -- | Output only. The time this CryptoKeyVersion\'s key material was generated.
    generateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
    importFailureReason :: (Core.Maybe Core.Text),
    -- | Output only. The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
    importJob :: (Core.Maybe Core.Text),
    -- | Output only. The time at which this CryptoKeyVersion\'s key material was most recently imported.
    importTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The resource name for this CryptoKeyVersion in the format @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\/cryptoKeyVersions\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
    protectionLevel :: (Core.Maybe CryptoKeyVersion_ProtectionLevel),
    -- | Output only. Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto/key/version.
    reimportEligible :: (Core.Maybe Core.Bool),
    -- | The current state of the CryptoKeyVersion.
    state :: (Core.Maybe CryptoKeyVersion_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CryptoKeyVersion' with the minimum fields required to make a request.
newCryptoKeyVersion ::
  CryptoKeyVersion
newCryptoKeyVersion =
  CryptoKeyVersion
    { algorithm = Core.Nothing,
      attestation = Core.Nothing,
      createTime = Core.Nothing,
      destroyEventTime = Core.Nothing,
      destroyTime = Core.Nothing,
      externalProtectionLevelOptions = Core.Nothing,
      generateTime = Core.Nothing,
      importFailureReason = Core.Nothing,
      importJob = Core.Nothing,
      importTime = Core.Nothing,
      name = Core.Nothing,
      protectionLevel = Core.Nothing,
      reimportEligible = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON CryptoKeyVersion where
  parseJSON =
    Core.withObject
      "CryptoKeyVersion"
      ( \o ->
          CryptoKeyVersion
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "attestation")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "destroyEventTime")
            Core.<*> (o Core..:? "destroyTime")
            Core.<*> (o Core..:? "externalProtectionLevelOptions")
            Core.<*> (o Core..:? "generateTime")
            Core.<*> (o Core..:? "importFailureReason")
            Core.<*> (o Core..:? "importJob")
            Core.<*> (o Core..:? "importTime")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "reimportEligible")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON CryptoKeyVersion where
  toJSON CryptoKeyVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("attestation" Core..=) Core.<$> attestation,
            ("createTime" Core..=) Core.<$> createTime,
            ("destroyEventTime" Core..=)
              Core.<$> destroyEventTime,
            ("destroyTime" Core..=) Core.<$> destroyTime,
            ("externalProtectionLevelOptions" Core..=)
              Core.<$> externalProtectionLevelOptions,
            ("generateTime" Core..=) Core.<$> generateTime,
            ("importFailureReason" Core..=)
              Core.<$> importFailureReason,
            ("importJob" Core..=) Core.<$> importJob,
            ("importTime" Core..=) Core.<$> importTime,
            ("name" Core..=) Core.<$> name,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("reimportEligible" Core..=)
              Core.<$> reimportEligible,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.
--
-- /See:/ 'newCryptoKeyVersionTemplate' smart constructor.
data CryptoKeyVersionTemplate = CryptoKeyVersionTemplate
  { -- | Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE/SYMMETRIC/ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
    algorithm :: (Core.Maybe CryptoKeyVersionTemplate_Algorithm),
    -- | ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
    protectionLevel :: (Core.Maybe CryptoKeyVersionTemplate_ProtectionLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CryptoKeyVersionTemplate' with the minimum fields required to make a request.
newCryptoKeyVersionTemplate ::
  CryptoKeyVersionTemplate
newCryptoKeyVersionTemplate =
  CryptoKeyVersionTemplate
    { algorithm = Core.Nothing,
      protectionLevel = Core.Nothing
    }

instance Core.FromJSON CryptoKeyVersionTemplate where
  parseJSON =
    Core.withObject
      "CryptoKeyVersionTemplate"
      ( \o ->
          CryptoKeyVersionTemplate
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "protectionLevel")
      )

instance Core.ToJSON CryptoKeyVersionTemplate where
  toJSON CryptoKeyVersionTemplate {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("protectionLevel" Core..=)
              Core.<$> protectionLevel
          ]
      )

-- | Request message for KeyManagementService.Decrypt.
--
-- /See:/ 'newDecryptRequest' smart constructor.
data DecryptRequest = DecryptRequest
  { -- | Optional. Optional data that must match the data originally supplied in EncryptRequest.additional/authenticated/data.
    additionalAuthenticatedData :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the DecryptRequest.additional/authenticated/data. If specified, KeyManagementService will verify the integrity of the received DecryptRequest.additional/authenticated/data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecryptRequest.additional/authenticated/data) is equal to DecryptRequest.additional/authenticated/data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    additionalAuthenticatedDataCrc32c :: (Core.Maybe Core.Int64),
    -- | Required. The encrypted data originally returned in EncryptResponse.ciphertext.
    ciphertext :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the DecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received DecryptRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecryptRequest.ciphertext) is equal to DecryptRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    ciphertextCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DecryptRequest' with the minimum fields required to make a request.
newDecryptRequest ::
  DecryptRequest
newDecryptRequest =
  DecryptRequest
    { additionalAuthenticatedData = Core.Nothing,
      additionalAuthenticatedDataCrc32c = Core.Nothing,
      ciphertext = Core.Nothing,
      ciphertextCrc32c = Core.Nothing
    }

instance Core.FromJSON DecryptRequest where
  parseJSON =
    Core.withObject
      "DecryptRequest"
      ( \o ->
          DecryptRequest
            Core.<$> (o Core..:? "additionalAuthenticatedData")
            Core.<*> ( o Core..:? "additionalAuthenticatedDataCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "ciphertext")
            Core.<*> ( o Core..:? "ciphertextCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DecryptRequest where
  toJSON DecryptRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalAuthenticatedData" Core..=)
              Core.<$> additionalAuthenticatedData,
            ("additionalAuthenticatedDataCrc32c" Core..=)
              Core.. Core.AsText
              Core.<$> additionalAuthenticatedDataCrc32c,
            ("ciphertext" Core..=) Core.<$> ciphertext,
            ("ciphertextCrc32c" Core..=) Core.. Core.AsText
              Core.<$> ciphertextCrc32c
          ]
      )

-- | Response message for KeyManagementService.Decrypt.
--
-- /See:/ 'newDecryptResponse' smart constructor.
data DecryptResponse = DecryptResponse
  { -- | The decrypted data originally supplied in EncryptRequest.plaintext.
    plaintext :: (Core.Maybe Core.Base64),
    -- | Integrity verification field. A CRC32C checksum of the returned DecryptResponse.plaintext. An integrity check of DecryptResponse.plaintext can be performed by computing the CRC32C checksum of DecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: receiving this response message indicates that KeyManagementService is able to successfully decrypt the ciphertext. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    plaintextCrc32c :: (Core.Maybe Core.Int64),
    -- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
    protectionLevel :: (Core.Maybe DecryptResponse_ProtectionLevel),
    -- | Whether the Decryption was performed using the primary key version.
    usedPrimary :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DecryptResponse' with the minimum fields required to make a request.
newDecryptResponse ::
  DecryptResponse
newDecryptResponse =
  DecryptResponse
    { plaintext = Core.Nothing,
      plaintextCrc32c = Core.Nothing,
      protectionLevel = Core.Nothing,
      usedPrimary = Core.Nothing
    }

instance Core.FromJSON DecryptResponse where
  parseJSON =
    Core.withObject
      "DecryptResponse"
      ( \o ->
          DecryptResponse
            Core.<$> (o Core..:? "plaintext")
            Core.<*> ( o Core..:? "plaintextCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "usedPrimary")
      )

instance Core.ToJSON DecryptResponse where
  toJSON DecryptResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("plaintext" Core..=) Core.<$> plaintext,
            ("plaintextCrc32c" Core..=) Core.. Core.AsText
              Core.<$> plaintextCrc32c,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("usedPrimary" Core..=) Core.<$> usedPrimary
          ]
      )

-- | Request message for KeyManagementService.DestroyCryptoKeyVersion.
--
-- /See:/ 'newDestroyCryptoKeyVersionRequest' smart constructor.
data DestroyCryptoKeyVersionRequest = DestroyCryptoKeyVersionRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DestroyCryptoKeyVersionRequest' with the minimum fields required to make a request.
newDestroyCryptoKeyVersionRequest ::
  DestroyCryptoKeyVersionRequest
newDestroyCryptoKeyVersionRequest = DestroyCryptoKeyVersionRequest

instance Core.FromJSON DestroyCryptoKeyVersionRequest where
  parseJSON =
    Core.withObject
      "DestroyCryptoKeyVersionRequest"
      (\o -> Core.pure DestroyCryptoKeyVersionRequest)

instance Core.ToJSON DestroyCryptoKeyVersionRequest where
  toJSON = Core.const Core.emptyObject

-- | A Digest holds a cryptographic message digest.
--
-- /See:/ 'newDigest' smart constructor.
data Digest = Digest
  { -- | A message digest produced with the SHA-256 algorithm.
    sha256 :: (Core.Maybe Core.Base64),
    -- | A message digest produced with the SHA-384 algorithm.
    sha384 :: (Core.Maybe Core.Base64),
    -- | A message digest produced with the SHA-512 algorithm.
    sha512 :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Digest' with the minimum fields required to make a request.
newDigest ::
  Digest
newDigest =
  Digest {sha256 = Core.Nothing, sha384 = Core.Nothing, sha512 = Core.Nothing}

instance Core.FromJSON Digest where
  parseJSON =
    Core.withObject
      "Digest"
      ( \o ->
          Digest
            Core.<$> (o Core..:? "sha256")
            Core.<*> (o Core..:? "sha384")
            Core.<*> (o Core..:? "sha512")
      )

instance Core.ToJSON Digest where
  toJSON Digest {..} =
    Core.object
      ( Core.catMaybes
          [ ("sha256" Core..=) Core.<$> sha256,
            ("sha384" Core..=) Core.<$> sha384,
            ("sha512" Core..=) Core.<$> sha512
          ]
      )

-- | An EkmConnection represents an individual EKM connection. It can be used for creating CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC, as well as performing cryptographic operations using keys created within the EkmConnection.
--
-- /See:/ 'newEkmConnection' smart constructor.
data EkmConnection = EkmConnection
  { -- | Output only. The time at which the EkmConnection was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | This checksum is computed by the server based on the value of other fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The resource name for the EkmConnection in the format @projects\/*\/locations\/*\/ekmConnections\/*@.
    name :: (Core.Maybe Core.Text),
    -- | A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
    serviceResolvers :: (Core.Maybe [ServiceResolver])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EkmConnection' with the minimum fields required to make a request.
newEkmConnection ::
  EkmConnection
newEkmConnection =
  EkmConnection
    { createTime = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      serviceResolvers = Core.Nothing
    }

instance Core.FromJSON EkmConnection where
  parseJSON =
    Core.withObject
      "EkmConnection"
      ( \o ->
          EkmConnection
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "serviceResolvers")
      )

instance Core.ToJSON EkmConnection where
  toJSON EkmConnection {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("serviceResolvers" Core..=)
              Core.<$> serviceResolvers
          ]
      )

-- | Request message for KeyManagementService.Encrypt.
--
-- /See:/ 'newEncryptRequest' smart constructor.
data EncryptRequest = EncryptRequest
  { -- | Optional. Optional data that, if specified, must also be provided during decryption through DecryptRequest.additional/authenticated/data. The maximum size depends on the key version\'s protection/level. For SOFTWARE keys, the AAD must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional/authenticated_data fields must be no larger than 8KiB.
    additionalAuthenticatedData :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the EncryptRequest.additional/authenticated/data. If specified, KeyManagementService will verify the integrity of the received EncryptRequest.additional/authenticated/data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(EncryptRequest.additional/authenticated/data) is equal to EncryptRequest.additional/authenticated/data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    additionalAuthenticatedDataCrc32c :: (Core.Maybe Core.Int64),
    -- | Required. The data to encrypt. Must be no larger than 64KiB. The maximum size depends on the key version\'s protection/level. For SOFTWARE keys, the plaintext must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional/authenticated_data fields must be no larger than 8KiB.
    plaintext :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the EncryptRequest.plaintext. If specified, KeyManagementService will verify the integrity of the received EncryptRequest.plaintext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(EncryptRequest.plaintext) is equal to EncryptRequest.plaintext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    plaintextCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptRequest' with the minimum fields required to make a request.
newEncryptRequest ::
  EncryptRequest
newEncryptRequest =
  EncryptRequest
    { additionalAuthenticatedData = Core.Nothing,
      additionalAuthenticatedDataCrc32c = Core.Nothing,
      plaintext = Core.Nothing,
      plaintextCrc32c = Core.Nothing
    }

instance Core.FromJSON EncryptRequest where
  parseJSON =
    Core.withObject
      "EncryptRequest"
      ( \o ->
          EncryptRequest
            Core.<$> (o Core..:? "additionalAuthenticatedData")
            Core.<*> ( o Core..:? "additionalAuthenticatedDataCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "plaintext")
            Core.<*> ( o Core..:? "plaintextCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON EncryptRequest where
  toJSON EncryptRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalAuthenticatedData" Core..=)
              Core.<$> additionalAuthenticatedData,
            ("additionalAuthenticatedDataCrc32c" Core..=)
              Core.. Core.AsText
              Core.<$> additionalAuthenticatedDataCrc32c,
            ("plaintext" Core..=) Core.<$> plaintext,
            ("plaintextCrc32c" Core..=) Core.. Core.AsText
              Core.<$> plaintextCrc32c
          ]
      )

-- | Response message for KeyManagementService.Encrypt.
--
-- /See:/ 'newEncryptResponse' smart constructor.
data EncryptResponse = EncryptResponse
  { -- | The encrypted data.
    ciphertext :: (Core.Maybe Core.Base64),
    -- | Integrity verification field. A CRC32C checksum of the returned EncryptResponse.ciphertext. An integrity check of EncryptResponse.ciphertext can be performed by computing the CRC32C checksum of EncryptResponse.ciphertext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    ciphertextCrc32c :: (Core.Maybe Core.Int64),
    -- | The resource name of the CryptoKeyVersion used in encryption. Check this field to verify that the intended resource was used for encryption.
    name :: (Core.Maybe Core.Text),
    -- | The ProtectionLevel of the CryptoKeyVersion used in encryption.
    protectionLevel :: (Core.Maybe EncryptResponse_ProtectionLevel),
    -- | Integrity verification field. A flag indicating whether EncryptRequest.additional/authenticated/data/crc32c was received by KeyManagementService and used for the integrity verification of the AAD. A false value of this field indicates either that EncryptRequest.additional/authenticated/data/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set EncryptRequest.additional/authenticated/data_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedAdditionalAuthenticatedDataCrc32c :: (Core.Maybe Core.Bool),
    -- | Integrity verification field. A flag indicating whether EncryptRequest.plaintext/crc32c was received by KeyManagementService and used for the integrity verification of the plaintext. A false value of this field indicates either that EncryptRequest.plaintext/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set EncryptRequest.plaintext_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedPlaintextCrc32c :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptResponse' with the minimum fields required to make a request.
newEncryptResponse ::
  EncryptResponse
newEncryptResponse =
  EncryptResponse
    { ciphertext = Core.Nothing,
      ciphertextCrc32c = Core.Nothing,
      name = Core.Nothing,
      protectionLevel = Core.Nothing,
      verifiedAdditionalAuthenticatedDataCrc32c = Core.Nothing,
      verifiedPlaintextCrc32c = Core.Nothing
    }

instance Core.FromJSON EncryptResponse where
  parseJSON =
    Core.withObject
      "EncryptResponse"
      ( \o ->
          EncryptResponse
            Core.<$> (o Core..:? "ciphertext")
            Core.<*> ( o Core..:? "ciphertextCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> ( o
                         Core..:? "verifiedAdditionalAuthenticatedDataCrc32c"
                     )
            Core.<*> (o Core..:? "verifiedPlaintextCrc32c")
      )

instance Core.ToJSON EncryptResponse where
  toJSON EncryptResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("ciphertext" Core..=) Core.<$> ciphertext,
            ("ciphertextCrc32c" Core..=) Core.. Core.AsText
              Core.<$> ciphertextCrc32c,
            ("name" Core..=) Core.<$> name,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("verifiedAdditionalAuthenticatedDataCrc32c" Core..=)
              Core.<$> verifiedAdditionalAuthenticatedDataCrc32c,
            ("verifiedPlaintextCrc32c" Core..=)
              Core.<$> verifiedPlaintextCrc32c
          ]
      )

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
--
-- /See:/ 'newExternalProtectionLevelOptions' smart constructor.
data ExternalProtectionLevelOptions = ExternalProtectionLevelOptions
  { -- | The path to the external key material on the EKM when using EkmConnection e.g., \"v0\/my\/key\". Set this field instead of external/key/uri when using an EkmConnection.
    ekmConnectionKeyPath :: (Core.Maybe Core.Text),
    -- | The URI for an external resource that this CryptoKeyVersion represents.
    externalKeyUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternalProtectionLevelOptions' with the minimum fields required to make a request.
newExternalProtectionLevelOptions ::
  ExternalProtectionLevelOptions
newExternalProtectionLevelOptions =
  ExternalProtectionLevelOptions
    { ekmConnectionKeyPath = Core.Nothing,
      externalKeyUri = Core.Nothing
    }

instance Core.FromJSON ExternalProtectionLevelOptions where
  parseJSON =
    Core.withObject
      "ExternalProtectionLevelOptions"
      ( \o ->
          ExternalProtectionLevelOptions
            Core.<$> (o Core..:? "ekmConnectionKeyPath")
            Core.<*> (o Core..:? "externalKeyUri")
      )

instance Core.ToJSON ExternalProtectionLevelOptions where
  toJSON ExternalProtectionLevelOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("ekmConnectionKeyPath" Core..=)
              Core.<$> ekmConnectionKeyPath,
            ("externalKeyUri" Core..=) Core.<$> externalKeyUri
          ]
      )

-- | Request message for KeyManagementService.GenerateRandomBytes.
--
-- /See:/ 'newGenerateRandomBytesRequest' smart constructor.
data GenerateRandomBytesRequest = GenerateRandomBytesRequest
  { -- | The length in bytes of the amount of randomness to retrieve. Minimum 8 bytes, maximum 1024 bytes.
    lengthBytes :: (Core.Maybe Core.Int32),
    -- | The ProtectionLevel to use when generating the random data. Currently, only HSM protection level is supported.
    protectionLevel :: (Core.Maybe GenerateRandomBytesRequest_ProtectionLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateRandomBytesRequest' with the minimum fields required to make a request.
newGenerateRandomBytesRequest ::
  GenerateRandomBytesRequest
newGenerateRandomBytesRequest =
  GenerateRandomBytesRequest
    { lengthBytes = Core.Nothing,
      protectionLevel = Core.Nothing
    }

instance Core.FromJSON GenerateRandomBytesRequest where
  parseJSON =
    Core.withObject
      "GenerateRandomBytesRequest"
      ( \o ->
          GenerateRandomBytesRequest
            Core.<$> (o Core..:? "lengthBytes")
            Core.<*> (o Core..:? "protectionLevel")
      )

instance Core.ToJSON GenerateRandomBytesRequest where
  toJSON GenerateRandomBytesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lengthBytes" Core..=) Core.<$> lengthBytes,
            ("protectionLevel" Core..=)
              Core.<$> protectionLevel
          ]
      )

-- | Response message for KeyManagementService.GenerateRandomBytes.
--
-- /See:/ 'newGenerateRandomBytesResponse' smart constructor.
data GenerateRandomBytesResponse = GenerateRandomBytesResponse
  { -- | The generated data.
    data' :: (Core.Maybe Core.Base64),
    -- | Integrity verification field. A CRC32C checksum of the returned GenerateRandomBytesResponse.data. An integrity check of GenerateRandomBytesResponse.data can be performed by computing the CRC32C checksum of GenerateRandomBytesResponse.data and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    dataCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateRandomBytesResponse' with the minimum fields required to make a request.
newGenerateRandomBytesResponse ::
  GenerateRandomBytesResponse
newGenerateRandomBytesResponse =
  GenerateRandomBytesResponse {data' = Core.Nothing, dataCrc32c = Core.Nothing}

instance Core.FromJSON GenerateRandomBytesResponse where
  parseJSON =
    Core.withObject
      "GenerateRandomBytesResponse"
      ( \o ->
          GenerateRandomBytesResponse
            Core.<$> (o Core..:? "data")
            Core.<*> ( o Core..:? "dataCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GenerateRandomBytesResponse where
  toJSON GenerateRandomBytesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("dataCrc32c" Core..=) Core.. Core.AsText
              Core.<$> dataCrc32c
          ]
      )

-- | Request message for KeyManagementService.ImportCryptoKeyVersion.
--
-- /See:/ 'newImportCryptoKeyVersionRequest' smart constructor.
data ImportCryptoKeyVersionRequest = ImportCryptoKeyVersionRequest
  { -- | Required. The algorithm of the key being imported. This does not need to match the version_template of the CryptoKey this version imports into.
    algorithm :: (Core.Maybe ImportCryptoKeyVersionRequest_Algorithm),
    -- | Optional. The optional name of an existing CryptoKeyVersion to target for an import operation. If this field is not present, a new CryptoKeyVersion containing the supplied key material is created. If this field is present, the supplied key material is imported into the existing CryptoKeyVersion. To import into an existing CryptoKeyVersion, the CryptoKeyVersion must be a child of ImportCryptoKeyVersionRequest.parent, have been previously created via ImportCryptoKeyVersion, and be in DESTROYED or IMPORT_FAILED state. The key material and algorithm must match the previous CryptoKeyVersion exactly if the CryptoKeyVersion has ever contained key material.
    cryptoKeyVersion :: (Core.Maybe Core.Text),
    -- | Required. The name of the ImportJob that was used to wrap this key material.
    importJob :: (Core.Maybe Core.Text),
    -- | Wrapped key material produced with RSA/OAEP/3072/SHA1/AES/256 or RSA/OAEP/4096/SHA1/AES/256. This field contains the concatenation of two wrapped keys: 1. An ephemeral AES-256 wrapping key wrapped with the public/key using RSAES-OAEP with SHA-1\/SHA-256, MGF1 with SHA-1\/SHA-256, and an empty label. 2. The key to be imported, wrapped with the ephemeral AES-256 key using AES-KWP (RFC 5649). If importing symmetric key material, it is expected that the unwrapped key contains plain bytes. If importing asymmetric key material, it is expected that the unwrapped key is in PKCS#8-encoded DER format (the PrivateKeyInfo structure from RFC 5208). This format is the same as the format produced by PKCS#11 mechanism CKM/RSA/AES/KEY_WRAP.
    rsaAesWrappedKey :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportCryptoKeyVersionRequest' with the minimum fields required to make a request.
newImportCryptoKeyVersionRequest ::
  ImportCryptoKeyVersionRequest
newImportCryptoKeyVersionRequest =
  ImportCryptoKeyVersionRequest
    { algorithm = Core.Nothing,
      cryptoKeyVersion = Core.Nothing,
      importJob = Core.Nothing,
      rsaAesWrappedKey = Core.Nothing
    }

instance Core.FromJSON ImportCryptoKeyVersionRequest where
  parseJSON =
    Core.withObject
      "ImportCryptoKeyVersionRequest"
      ( \o ->
          ImportCryptoKeyVersionRequest
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "cryptoKeyVersion")
            Core.<*> (o Core..:? "importJob")
            Core.<*> (o Core..:? "rsaAesWrappedKey")
      )

instance Core.ToJSON ImportCryptoKeyVersionRequest where
  toJSON ImportCryptoKeyVersionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("cryptoKeyVersion" Core..=)
              Core.<$> cryptoKeyVersion,
            ("importJob" Core..=) Core.<$> importJob,
            ("rsaAesWrappedKey" Core..=)
              Core.<$> rsaAesWrappedKey
          ]
      )

-- | An ImportJob can be used to create CryptoKeys and CryptoKeyVersions using pre-existing key material, generated outside of Cloud KMS. When an ImportJob is created, Cloud KMS will generate a \"wrapping key\", which is a public\/private key pair. You use the wrapping key to encrypt (also known as wrap) the pre-existing key material to protect it during the import process. The nature of the wrapping key depends on the choice of import/method. When the wrapping key generation is complete, the state will be set to ACTIVE and the public/key can be fetched. The fetched public key can then be used to wrap your pre-existing key material. Once the key material is wrapped, it can be imported into a new CryptoKeyVersion in an existing CryptoKey by calling ImportCryptoKeyVersion. Multiple CryptoKeyVersions can be imported with a single ImportJob. Cloud KMS uses the private key portion of the wrapping key to unwrap the key material. Only Cloud KMS has access to the private key. An ImportJob expires 3 days after it is
-- created. Once expired, Cloud KMS will no longer be able to import or unwrap any key material that was wrapped with the ImportJob\'s public key. For more information, see <https://cloud.google.com/kms/docs/importing-a-key Importing a key>.
--
-- /See:/ 'newImportJob' smart constructor.
data ImportJob = ImportJob
  { -- | Output only. Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.
    attestation :: (Core.Maybe KeyOperationAttestation),
    -- | Output only. The time at which this ImportJob was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time this ImportJob expired. Only present if state is EXPIRED.
    expireEventTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time this ImportJob\'s key material was generated.
    generateTime :: (Core.Maybe Core.DateTime),
    -- | Required. Immutable. The wrapping method to be used for incoming key material.
    importMethod :: (Core.Maybe ImportJob_ImportMethod),
    -- | Output only. The resource name for this ImportJob in the format @projects\/*\/locations\/*\/keyRings\/*\/importJobs\/*@.
    name :: (Core.Maybe Core.Text),
    -- | Required. Immutable. The protection level of the ImportJob. This must match the protection/level of the version/template on the CryptoKey you attempt to import into.
    protectionLevel :: (Core.Maybe ImportJob_ProtectionLevel),
    -- | Output only. The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.
    publicKey :: (Core.Maybe WrappingPublicKey),
    -- | Output only. The current state of the ImportJob, indicating if it can be used.
    state :: (Core.Maybe ImportJob_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportJob' with the minimum fields required to make a request.
newImportJob ::
  ImportJob
newImportJob =
  ImportJob
    { attestation = Core.Nothing,
      createTime = Core.Nothing,
      expireEventTime = Core.Nothing,
      expireTime = Core.Nothing,
      generateTime = Core.Nothing,
      importMethod = Core.Nothing,
      name = Core.Nothing,
      protectionLevel = Core.Nothing,
      publicKey = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON ImportJob where
  parseJSON =
    Core.withObject
      "ImportJob"
      ( \o ->
          ImportJob
            Core.<$> (o Core..:? "attestation")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "expireEventTime")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "generateTime")
            Core.<*> (o Core..:? "importMethod")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "publicKey")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ImportJob where
  toJSON ImportJob {..} =
    Core.object
      ( Core.catMaybes
          [ ("attestation" Core..=) Core.<$> attestation,
            ("createTime" Core..=) Core.<$> createTime,
            ("expireEventTime" Core..=) Core.<$> expireEventTime,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("generateTime" Core..=) Core.<$> generateTime,
            ("importMethod" Core..=) Core.<$> importMethod,
            ("name" Core..=) Core.<$> name,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("publicKey" Core..=) Core.<$> publicKey,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https:\/\/cloud.google.com\/kms\/docs\/attest-key).
--
-- /See:/ 'newKeyOperationAttestation' smart constructor.
data KeyOperationAttestation = KeyOperationAttestation
  { -- | Output only. The certificate chains needed to validate the attestation
    certChains :: (Core.Maybe CertificateChains),
    -- | Output only. The attestation data provided by the HSM when the key operation was performed.
    content :: (Core.Maybe Core.Base64),
    -- | Output only. The format of the attestation data.
    format :: (Core.Maybe KeyOperationAttestation_Format)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyOperationAttestation' with the minimum fields required to make a request.
newKeyOperationAttestation ::
  KeyOperationAttestation
newKeyOperationAttestation =
  KeyOperationAttestation
    { certChains = Core.Nothing,
      content = Core.Nothing,
      format = Core.Nothing
    }

instance Core.FromJSON KeyOperationAttestation where
  parseJSON =
    Core.withObject
      "KeyOperationAttestation"
      ( \o ->
          KeyOperationAttestation
            Core.<$> (o Core..:? "certChains")
            Core.<*> (o Core..:? "content")
            Core.<*> (o Core..:? "format")
      )

instance Core.ToJSON KeyOperationAttestation where
  toJSON KeyOperationAttestation {..} =
    Core.object
      ( Core.catMaybes
          [ ("certChains" Core..=) Core.<$> certChains,
            ("content" Core..=) Core.<$> content,
            ("format" Core..=) Core.<$> format
          ]
      )

-- | A KeyRing is a toplevel logical grouping of CryptoKeys.
--
-- /See:/ 'newKeyRing' smart constructor.
data KeyRing = KeyRing
  { -- | Output only. The time at which this KeyRing was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The resource name for the KeyRing in the format @projects\/*\/locations\/*\/keyRings\/*@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyRing' with the minimum fields required to make a request.
newKeyRing ::
  KeyRing
newKeyRing = KeyRing {createTime = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON KeyRing where
  parseJSON =
    Core.withObject
      "KeyRing"
      ( \o ->
          KeyRing
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON KeyRing where
  toJSON KeyRing {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Response message for KeyManagementService.ListCryptoKeyVersions.
--
-- /See:/ 'newListCryptoKeyVersionsResponse' smart constructor.
data ListCryptoKeyVersionsResponse = ListCryptoKeyVersionsResponse
  { -- | The list of CryptoKeyVersions.
    cryptoKeyVersions :: (Core.Maybe [CryptoKeyVersion]),
    -- | A token to retrieve next page of results. Pass this value in ListCryptoKeyVersionsRequest.page_token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of CryptoKeyVersions that matched the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCryptoKeyVersionsResponse' with the minimum fields required to make a request.
newListCryptoKeyVersionsResponse ::
  ListCryptoKeyVersionsResponse
newListCryptoKeyVersionsResponse =
  ListCryptoKeyVersionsResponse
    { cryptoKeyVersions = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListCryptoKeyVersionsResponse where
  parseJSON =
    Core.withObject
      "ListCryptoKeyVersionsResponse"
      ( \o ->
          ListCryptoKeyVersionsResponse
            Core.<$> (o Core..:? "cryptoKeyVersions")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListCryptoKeyVersionsResponse where
  toJSON ListCryptoKeyVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cryptoKeyVersions" Core..=)
              Core.<$> cryptoKeyVersions,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message for KeyManagementService.ListCryptoKeys.
--
-- /See:/ 'newListCryptoKeysResponse' smart constructor.
data ListCryptoKeysResponse = ListCryptoKeysResponse
  { -- | The list of CryptoKeys.
    cryptoKeys :: (Core.Maybe [CryptoKey]),
    -- | A token to retrieve next page of results. Pass this value in ListCryptoKeysRequest.page_token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of CryptoKeys that matched the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCryptoKeysResponse' with the minimum fields required to make a request.
newListCryptoKeysResponse ::
  ListCryptoKeysResponse
newListCryptoKeysResponse =
  ListCryptoKeysResponse
    { cryptoKeys = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListCryptoKeysResponse where
  parseJSON =
    Core.withObject
      "ListCryptoKeysResponse"
      ( \o ->
          ListCryptoKeysResponse
            Core.<$> (o Core..:? "cryptoKeys")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListCryptoKeysResponse where
  toJSON ListCryptoKeysResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cryptoKeys" Core..=) Core.<$> cryptoKeys,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message for KeyManagementService.ListEkmConnections.
--
-- /See:/ 'newListEkmConnectionsResponse' smart constructor.
data ListEkmConnectionsResponse = ListEkmConnectionsResponse
  { -- | The list of EkmConnections.
    ekmConnections :: (Core.Maybe [EkmConnection]),
    -- | A token to retrieve next page of results. Pass this value in ListEkmConnectionsRequest.page_token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of EkmConnections that matched the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListEkmConnectionsResponse' with the minimum fields required to make a request.
newListEkmConnectionsResponse ::
  ListEkmConnectionsResponse
newListEkmConnectionsResponse =
  ListEkmConnectionsResponse
    { ekmConnections = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListEkmConnectionsResponse where
  parseJSON =
    Core.withObject
      "ListEkmConnectionsResponse"
      ( \o ->
          ListEkmConnectionsResponse
            Core.<$> (o Core..:? "ekmConnections")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListEkmConnectionsResponse where
  toJSON ListEkmConnectionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("ekmConnections" Core..=) Core.<$> ekmConnections,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message for KeyManagementService.ListImportJobs.
--
-- /See:/ 'newListImportJobsResponse' smart constructor.
data ListImportJobsResponse = ListImportJobsResponse
  { -- | The list of ImportJobs.
    importJobs :: (Core.Maybe [ImportJob]),
    -- | A token to retrieve next page of results. Pass this value in ListImportJobsRequest.page_token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of ImportJobs that matched the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListImportJobsResponse' with the minimum fields required to make a request.
newListImportJobsResponse ::
  ListImportJobsResponse
newListImportJobsResponse =
  ListImportJobsResponse
    { importJobs = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListImportJobsResponse where
  parseJSON =
    Core.withObject
      "ListImportJobsResponse"
      ( \o ->
          ListImportJobsResponse
            Core.<$> (o Core..:? "importJobs")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListImportJobsResponse where
  toJSON ListImportJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("importJobs" Core..=) Core.<$> importJobs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | Response message for KeyManagementService.ListKeyRings.
--
-- /See:/ 'newListKeyRingsResponse' smart constructor.
data ListKeyRingsResponse = ListKeyRingsResponse
  { -- | The list of KeyRings.
    keyRings :: (Core.Maybe [KeyRing]),
    -- | A token to retrieve next page of results. Pass this value in ListKeyRingsRequest.page_token to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The total number of KeyRings that matched the query.
    totalSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListKeyRingsResponse' with the minimum fields required to make a request.
newListKeyRingsResponse ::
  ListKeyRingsResponse
newListKeyRingsResponse =
  ListKeyRingsResponse
    { keyRings = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalSize = Core.Nothing
    }

instance Core.FromJSON ListKeyRingsResponse where
  parseJSON =
    Core.withObject
      "ListKeyRingsResponse"
      ( \o ->
          ListKeyRingsResponse
            Core.<$> (o Core..:? "keyRings")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalSize")
      )

instance Core.ToJSON ListKeyRingsResponse where
  toJSON ListKeyRingsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyRings" Core..=) Core.<$> keyRings,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalSize" Core..=) Core.<$> totalSize
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Cloud KMS metadata for the given google.cloud.location.Location.
--
-- /See:/ 'newLocationMetadata' smart constructor.
data LocationMetadata = LocationMetadata
  { -- | Indicates whether CryptoKeys with protection_level EXTERNAL can be created in this location.
    ekmAvailable :: (Core.Maybe Core.Bool),
    -- | Indicates whether CryptoKeys with protection_level HSM can be created in this location.
    hsmAvailable :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
newLocationMetadata ::
  LocationMetadata
newLocationMetadata =
  LocationMetadata {ekmAvailable = Core.Nothing, hsmAvailable = Core.Nothing}

instance Core.FromJSON LocationMetadata where
  parseJSON =
    Core.withObject
      "LocationMetadata"
      ( \o ->
          LocationMetadata
            Core.<$> (o Core..:? "ekmAvailable")
            Core.<*> (o Core..:? "hsmAvailable")
      )

instance Core.ToJSON LocationMetadata where
  toJSON LocationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("ekmAvailable" Core..=) Core.<$> ekmAvailable,
            ("hsmAvailable" Core..=) Core.<$> hsmAvailable
          ]
      )

-- | Request message for KeyManagementService.MacSign.
--
-- /See:/ 'newMacSignRequest' smart constructor.
data MacSignRequest = MacSignRequest
  { -- | Required. The data to sign. The MAC tag is computed over this data field based on the specific algorithm.
    data' :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the MacSignRequest.data. If specified, KeyManagementService will verify the integrity of the received MacSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacSignRequest.data) is equal to MacSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    dataCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MacSignRequest' with the minimum fields required to make a request.
newMacSignRequest ::
  MacSignRequest
newMacSignRequest =
  MacSignRequest {data' = Core.Nothing, dataCrc32c = Core.Nothing}

instance Core.FromJSON MacSignRequest where
  parseJSON =
    Core.withObject
      "MacSignRequest"
      ( \o ->
          MacSignRequest
            Core.<$> (o Core..:? "data")
            Core.<*> ( o Core..:? "dataCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MacSignRequest where
  toJSON MacSignRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("dataCrc32c" Core..=) Core.. Core.AsText
              Core.<$> dataCrc32c
          ]
      )

-- | Response message for KeyManagementService.MacSign.
--
-- /See:/ 'newMacSignResponse' smart constructor.
data MacSignResponse = MacSignResponse
  { -- | The created signature.
    mac :: (Core.Maybe Core.Base64),
    -- | Integrity verification field. A CRC32C checksum of the returned MacSignResponse.mac. An integrity check of MacSignResponse.mac can be performed by computing the CRC32C checksum of MacSignResponse.mac and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    macCrc32c :: (Core.Maybe Core.Int64),
    -- | The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing.
    name :: (Core.Maybe Core.Text),
    -- | The ProtectionLevel of the CryptoKeyVersion used for signing.
    protectionLevel :: (Core.Maybe MacSignResponse_ProtectionLevel),
    -- | Integrity verification field. A flag indicating whether MacSignRequest.data/crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacSignRequest.data/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set MacSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedDataCrc32c :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MacSignResponse' with the minimum fields required to make a request.
newMacSignResponse ::
  MacSignResponse
newMacSignResponse =
  MacSignResponse
    { mac = Core.Nothing,
      macCrc32c = Core.Nothing,
      name = Core.Nothing,
      protectionLevel = Core.Nothing,
      verifiedDataCrc32c = Core.Nothing
    }

instance Core.FromJSON MacSignResponse where
  parseJSON =
    Core.withObject
      "MacSignResponse"
      ( \o ->
          MacSignResponse
            Core.<$> (o Core..:? "mac")
            Core.<*> ( o Core..:? "macCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "verifiedDataCrc32c")
      )

instance Core.ToJSON MacSignResponse where
  toJSON MacSignResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("mac" Core..=) Core.<$> mac,
            ("macCrc32c" Core..=) Core.. Core.AsText
              Core.<$> macCrc32c,
            ("name" Core..=) Core.<$> name,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("verifiedDataCrc32c" Core..=)
              Core.<$> verifiedDataCrc32c
          ]
      )

-- | Request message for KeyManagementService.MacVerify.
--
-- /See:/ 'newMacVerifyRequest' smart constructor.
data MacVerifyRequest = MacVerifyRequest
  { -- | Required. The data used previously as a MacSignRequest.data to generate the MAC tag.
    data' :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the MacVerifyRequest.data. If specified, KeyManagementService will verify the integrity of the received MacVerifyRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacVerifyRequest.data) is equal to MacVerifyRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    dataCrc32c :: (Core.Maybe Core.Int64),
    -- | Required. The signature to verify.
    mac :: (Core.Maybe Core.Base64),
    -- | Optional. An optional CRC32C checksum of the MacVerifyRequest.mac. If specified, KeyManagementService will verify the integrity of the received MacVerifyRequest.mac using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacVerifyRequest.tag) is equal to MacVerifyRequest.mac_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
    macCrc32c :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MacVerifyRequest' with the minimum fields required to make a request.
newMacVerifyRequest ::
  MacVerifyRequest
newMacVerifyRequest =
  MacVerifyRequest
    { data' = Core.Nothing,
      dataCrc32c = Core.Nothing,
      mac = Core.Nothing,
      macCrc32c = Core.Nothing
    }

instance Core.FromJSON MacVerifyRequest where
  parseJSON =
    Core.withObject
      "MacVerifyRequest"
      ( \o ->
          MacVerifyRequest
            Core.<$> (o Core..:? "data")
            Core.<*> ( o Core..:? "dataCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "mac")
            Core.<*> ( o Core..:? "macCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MacVerifyRequest where
  toJSON MacVerifyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("dataCrc32c" Core..=) Core.. Core.AsText
              Core.<$> dataCrc32c,
            ("mac" Core..=) Core.<$> mac,
            ("macCrc32c" Core..=) Core.. Core.AsText
              Core.<$> macCrc32c
          ]
      )

-- | Response message for KeyManagementService.MacVerify.
--
-- /See:/ 'newMacVerifyResponse' smart constructor.
data MacVerifyResponse = MacVerifyResponse
  { -- | The resource name of the CryptoKeyVersion used for verification. Check this field to verify that the intended resource was used for verification.
    name :: (Core.Maybe Core.Text),
    -- | The ProtectionLevel of the CryptoKeyVersion used for verification.
    protectionLevel :: (Core.Maybe MacVerifyResponse_ProtectionLevel),
    -- | This field indicates whether or not the verification operation for MacVerifyRequest.mac over MacVerifyRequest.data was successful.
    success :: (Core.Maybe Core.Bool),
    -- | Integrity verification field. A flag indicating whether MacVerifyRequest.data/crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.data/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set MacVerifyRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedDataCrc32c :: (Core.Maybe Core.Bool),
    -- | Integrity verification field. A flag indicating whether MacVerifyRequest.mac/crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.mac/crc32c was left unset or that it was not delivered to KeyManagementService. If you\'ve set MacVerifyRequest.mac_crc32c but this field is still false, discard the response and perform a limited number of retries.
    verifiedMacCrc32c :: (Core.Maybe Core.Bool),
    -- | Integrity verification field. This value is used for the integrity verification of [MacVerifyResponse.success]. If the value of this field contradicts the value of [MacVerifyResponse.success], discard the response and perform a limited number of retries.
    verifiedSuccessIntegrity :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MacVerifyResponse' with the minimum fields required to make a request.
newMacVerifyResponse ::
  MacVerifyResponse
newMacVerifyResponse =
  MacVerifyResponse
    { name = Core.Nothing,
      protectionLevel = Core.Nothing,
      success = Core.Nothing,
      verifiedDataCrc32c = Core.Nothing,
      verifiedMacCrc32c = Core.Nothing,
      verifiedSuccessIntegrity = Core.Nothing
    }

instance Core.FromJSON MacVerifyResponse where
  parseJSON =
    Core.withObject
      "MacVerifyResponse"
      ( \o ->
          MacVerifyResponse
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "protectionLevel")
            Core.<*> (o Core..:? "success")
            Core.<*> (o Core..:? "verifiedDataCrc32c")
            Core.<*> (o Core..:? "verifiedMacCrc32c")
            Core.<*> (o Core..:? "verifiedSuccessIntegrity")
      )

instance Core.ToJSON MacVerifyResponse where
  toJSON MacVerifyResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("protectionLevel" Core..=) Core.<$> protectionLevel,
            ("success" Core..=) Core.<$> success,
            ("verifiedDataCrc32c" Core..=)
              Core.<$> verifiedDataCrc32c,
            ("verifiedMacCrc32c" Core..=)
              Core.<$> verifiedMacCrc32c,
            ("verifiedSuccessIntegrity" Core..=)
              Core.<$> verifiedSuccessIntegrity
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | The public key for a given CryptoKeyVersion. Obtained via GetPublicKey.
--
-- /See:/ 'newPublicKey' smart constructor.
data PublicKey = PublicKey
  { -- | The Algorithm associated with this key.
    algorithm :: (Core.Maybe PublicKey_Algorithm),
    -- | The name of the CryptoKeyVersion public key. Provided here for verification. NOTE: This field is in Beta.
    name :: (Core.Maybe Core.Text),
    -- | The public key, encoded in PEM format. For more information, see the <https://tools.ietf.org/html/rfc7468 RFC 7468> sections for <https://tools.ietf.org/html/rfc7468#section-2 General Considerations> and [Textual Encoding of Subject Public Key Info] (https:\/\/tools.ietf.org\/html\/rfc7468#section-13).
    pem :: (Core.Maybe Core.Text),
    -- | Integrity verification field. A CRC32C checksum of the returned PublicKey.pem. An integrity check of PublicKey.pem can be performed by computing the CRC32C checksum of PublicKey.pem and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. NOTE: This field is in Beta.
    pemCrc32c :: (Core.Maybe Core.Int64),
    -- | The ProtectionLevel of the CryptoKeyVersion public key.
    protectionLevel :: (Core.Maybe PublicKey_ProtectionLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublicKey' with the minimum fields required to make a request.
newPublicKey ::
  PublicKey
newPublicKey =
  PublicKey
    { algorithm = Core.Nothing,
      name = Core.Nothing,
      pem = Core.Nothing,
      pemCrc32c = Core.Nothing,
      protectionLevel = Core.Nothing
    }

instance Core.FromJSON PublicKey where
  parseJSON =
    Core.withObject
      "PublicKey"
      ( \o ->
          PublicKey
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pem")
            Core.<*> ( o Core..:? "pemCrc32c"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "protectionLevel")
      )

instance Core.ToJSON PublicKey where
  toJSON PublicKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("name" Core..=) Core.<$> name,
            ("pem" Core..=) Core.<$> pem,
            ("pemCrc32c" Core..=) Core.. Core.AsText
              Core.<$> pemCrc32c,
            ("protectionLevel" Core..=)
              Core.<$> protectionLevel
          ]
      )

-- | Request message for KeyManagementService.RestoreCryptoKeyVersion.
--
-- /See:/ 'newRestoreCryptoKeyVersionRequest' smart constructor.
data RestoreCryptoKeyVersionRequest = RestoreCryptoKeyVersionRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestoreCryptoKeyVersionRequest' with the minimum fields required to make a request.
newRestoreCryptoKeyVersionRequest ::
  RestoreCryptoKeyVersionRequest
newRestoreCryptoKeyVersionRequest = RestoreCryptoKeyVersionRequest

instance Core.FromJSON RestoreCryptoKeyVersionRequest where
  parseJSON =
    Core.withObject
      "RestoreCryptoKeyVersionRequest"
      (\o -> Core.pure RestoreCryptoKeyVersionRequest)

instance Core.ToJSON RestoreCryptoKeyVersionRequest where
  toJSON = Core.const Core.emptyObject

-- | A ServiceResolver represents an EKM replica that can be reached within an EkmConnection.
--
-- /See:/ 'newServiceResolver' smart constructor.
data ServiceResolver = ServiceResolver
  { -- | Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https:\/\/cloud.google.com\/service-directory\/docs\/reference\/rpc\/google.cloud.servicedirectory.v1#resolveservicerequest.
    endpointFilter :: (Core.Maybe Core.Text),
    -- | Required. The hostname of the EKM replica used at TLS and HTTP layers.
    hostname :: (Core.Maybe Core.Text),
    -- | Required. A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported.
    serverCertificates :: (Core.Maybe [Certificate]),
    -- | Required. The resource name of the Service Directory service pointing to an EKM replica, in the format @projects\/*\/locations\/*\/namespaces\/*\/services\/*@.
    serviceDirectoryService :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceResolver' with the minimum fields required to make a request.
newServiceResolver ::
  ServiceResolver
newServiceResolver =
  ServiceResolver
    { endpointFilter = Core.Nothing,
      hostname = Core.Nothing,
      serverCertificates = Core.Nothing,
      serviceDirectoryService = Core.Nothing
    }

instance Core.FromJSON ServiceResolver where
  parseJSON =
    Core.withObject
      "ServiceResolver"
      ( \o ->
          ServiceResolver
            Core.<$> (o Core..:? "endpointFilter")
            Core.<*> (o Core..:? "hostname")
            Core.<*> (o Core..:? "serverCertificates")
            Core.<*> (o Core..:? "serviceDirectoryService")
      )

instance Core.ToJSON ServiceResolver where
  toJSON ServiceResolver {..} =
    Core.object
      ( Core.catMaybes
          [ ("endpointFilter" Core..=) Core.<$> endpointFilter,
            ("hostname" Core..=) Core.<$> hostname,
            ("serverCertificates" Core..=)
              Core.<$> serverCertificates,
            ("serviceDirectoryService" Core..=)
              Core.<$> serviceDirectoryService
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
--
-- /See:/ 'newUpdateCryptoKeyPrimaryVersionRequest' smart constructor.
newtype UpdateCryptoKeyPrimaryVersionRequest = UpdateCryptoKeyPrimaryVersionRequest
  { -- | Required. The id of the child CryptoKeyVersion to use as primary.
    cryptoKeyVersionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateCryptoKeyPrimaryVersionRequest' with the minimum fields required to make a request.
newUpdateCryptoKeyPrimaryVersionRequest ::
  UpdateCryptoKeyPrimaryVersionRequest
newUpdateCryptoKeyPrimaryVersionRequest =
  UpdateCryptoKeyPrimaryVersionRequest {cryptoKeyVersionId = Core.Nothing}

instance
  Core.FromJSON
    UpdateCryptoKeyPrimaryVersionRequest
  where
  parseJSON =
    Core.withObject
      "UpdateCryptoKeyPrimaryVersionRequest"
      ( \o ->
          UpdateCryptoKeyPrimaryVersionRequest
            Core.<$> (o Core..:? "cryptoKeyVersionId")
      )

instance
  Core.ToJSON
    UpdateCryptoKeyPrimaryVersionRequest
  where
  toJSON UpdateCryptoKeyPrimaryVersionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cryptoKeyVersionId" Core..=)
              Core.<$> cryptoKeyVersionId
          ]
      )

-- | The public key component of the wrapping key. For details of the type of key this public key corresponds to, see the ImportMethod.
--
-- /See:/ 'newWrappingPublicKey' smart constructor.
newtype WrappingPublicKey = WrappingPublicKey
  { -- | The public key, encoded in PEM format. For more information, see the <https://tools.ietf.org/html/rfc7468 RFC 7468> sections for <https://tools.ietf.org/html/rfc7468#section-2 General Considerations> and [Textual Encoding of Subject Public Key Info] (https:\/\/tools.ietf.org\/html\/rfc7468#section-13).
    pem :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WrappingPublicKey' with the minimum fields required to make a request.
newWrappingPublicKey ::
  WrappingPublicKey
newWrappingPublicKey = WrappingPublicKey {pem = Core.Nothing}

instance Core.FromJSON WrappingPublicKey where
  parseJSON =
    Core.withObject
      "WrappingPublicKey"
      ( \o ->
          WrappingPublicKey Core.<$> (o Core..:? "pem")
      )

instance Core.ToJSON WrappingPublicKey where
  toJSON WrappingPublicKey {..} =
    Core.object
      (Core.catMaybes [("pem" Core..=) Core.<$> pem])
