{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecretManager.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SecretManager.Internal.Product
  (

    -- * AccessSecretVersionResponse
    AccessSecretVersionResponse (..),
    newAccessSecretVersionResponse,

    -- * AddSecretVersionRequest
    AddSecretVersionRequest (..),
    newAddSecretVersionRequest,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Automatic
    Automatic (..),
    newAutomatic,

    -- * AutomaticStatus
    AutomaticStatus (..),
    newAutomaticStatus,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CustomerManagedEncryption
    CustomerManagedEncryption (..),
    newCustomerManagedEncryption,

    -- * CustomerManagedEncryptionStatus
    CustomerManagedEncryptionStatus (..),
    newCustomerManagedEncryptionStatus,

    -- * DestroySecretVersionRequest
    DestroySecretVersionRequest (..),
    newDestroySecretVersionRequest,

    -- * DisableSecretVersionRequest
    DisableSecretVersionRequest (..),
    newDisableSecretVersionRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EnableSecretVersionRequest
    EnableSecretVersionRequest (..),
    newEnableSecretVersionRequest,

    -- * Expr
    Expr (..),
    newExpr,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListSecretVersionsResponse
    ListSecretVersionsResponse (..),
    newListSecretVersionsResponse,

    -- * ListSecretsResponse
    ListSecretsResponse (..),
    newListSecretsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Replica
    Replica (..),
    newReplica,

    -- * ReplicaStatus
    ReplicaStatus (..),
    newReplicaStatus,

    -- * Replication
    Replication (..),
    newReplication,

    -- * ReplicationStatus
    ReplicationStatus (..),
    newReplicationStatus,

    -- * Rotation
    Rotation (..),
    newRotation,

    -- * Secret
    Secret (..),
    newSecret,

    -- * Secret_Annotations
    Secret_Annotations (..),
    newSecret_Annotations,

    -- * Secret_Labels
    Secret_Labels (..),
    newSecret_Labels,

    -- * Secret_VersionAliases
    Secret_VersionAliases (..),
    newSecret_VersionAliases,

    -- * SecretPayload
    SecretPayload (..),
    newSecretPayload,

    -- * SecretVersion
    SecretVersion (..),
    newSecretVersion,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * Topic
    Topic (..),
    newTopic,

    -- * UserManaged
    UserManaged (..),
    newUserManaged,

    -- * UserManagedStatus
    UserManagedStatus (..),
    newUserManagedStatus,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Internal.Sum

-- | Response message for SecretManagerService.AccessSecretVersion.
--
-- /See:/ 'newAccessSecretVersionResponse' smart constructor.
data AccessSecretVersionResponse = AccessSecretVersionResponse
    {
      -- | The resource name of the SecretVersion in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@.
      name :: (Core.Maybe Core.Text)
      -- | Secret payload
    , payload :: (Core.Maybe SecretPayload)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessSecretVersionResponse' with the minimum fields required to make a request.
newAccessSecretVersionResponse 
    ::  AccessSecretVersionResponse
newAccessSecretVersionResponse
  = AccessSecretVersionResponse{name = Core.Nothing,
                                payload = Core.Nothing}
instance Core.FromJSON AccessSecretVersionResponse where
        parseJSON
          = Core.withObject "AccessSecretVersionResponse"
              (\ o ->
                 AccessSecretVersionResponse Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "payload"))

instance Core.ToJSON AccessSecretVersionResponse where
        toJSON AccessSecretVersionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("payload" Core..=) Core.<$> payload])


-- | Request message for SecretManagerService.AddSecretVersion.
--
-- /See:/ 'newAddSecretVersionRequest' smart constructor.
newtype AddSecretVersionRequest = AddSecretVersionRequest
    {
      -- | Required. The secret payload of the SecretVersion.
      payload :: (Core.Maybe SecretPayload)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddSecretVersionRequest' with the minimum fields required to make a request.
newAddSecretVersionRequest 
    ::  AddSecretVersionRequest
newAddSecretVersionRequest
  = AddSecretVersionRequest{payload = Core.Nothing}
instance Core.FromJSON AddSecretVersionRequest where
        parseJSON
          = Core.withObject "AddSecretVersionRequest"
              (\ o -> AddSecretVersionRequest Core.<$> (o Core..:? "payload"))

instance Core.ToJSON AddSecretVersionRequest where
        toJSON AddSecretVersionRequest{..}
          = Core.object
              (Core.catMaybes [("payload" Core..=) Core.<$> payload])


-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
    {
      -- | The configuration for logging of each type of permission.
      auditLogConfigs :: (Core.Maybe [AuditLogConfig])
      -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    , service :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig 
    ::  AuditConfig
newAuditConfig
  = AuditConfig{auditLogConfigs = Core.Nothing,
                service = Core.Nothing}
instance Core.FromJSON AuditConfig where
        parseJSON
          = Core.withObject "AuditConfig"
              (\ o ->
                 AuditConfig Core.<$>
                   (o Core..:? "auditLogConfigs") Core.<*> (o Core..:? "service"))

instance Core.ToJSON AuditConfig where
        toJSON AuditConfig{..}
          = Core.object
              (Core.catMaybes
                 [("auditLogConfigs" Core..=) Core.<$> auditLogConfigs,
                  ("service" Core..=) Core.<$> service])


-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
    {
      -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
      exemptedMembers :: (Core.Maybe [Core.Text])
      -- | The log type that this config enables.
    , logType :: (Core.Maybe AuditLogConfig_LogType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig 
    ::  AuditLogConfig
newAuditLogConfig
  = AuditLogConfig{exemptedMembers = Core.Nothing,
                   logType = Core.Nothing}
instance Core.FromJSON AuditLogConfig where
        parseJSON
          = Core.withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig Core.<$>
                   (o Core..:? "exemptedMembers") Core.<*> (o Core..:? "logType"))

instance Core.ToJSON AuditLogConfig where
        toJSON AuditLogConfig{..}
          = Core.object
              (Core.catMaybes
                 [("exemptedMembers" Core..=) Core.<$> exemptedMembers,
                  ("logType" Core..=) Core.<$> logType])


-- | A replication policy that replicates the Secret payload without any restrictions.
--
-- /See:/ 'newAutomatic' smart constructor.
newtype Automatic = Automatic
    {
      -- | Optional. The customer-managed encryption configuration of the Secret. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
      customerManagedEncryption :: (Core.Maybe CustomerManagedEncryption)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Automatic' with the minimum fields required to make a request.
newAutomatic 
    ::  Automatic
newAutomatic = Automatic{customerManagedEncryption = Core.Nothing}
instance Core.FromJSON Automatic where
        parseJSON
          = Core.withObject "Automatic"
              (\ o ->
                 Automatic Core.<$> (o Core..:? "customerManagedEncryption"))

instance Core.ToJSON Automatic where
        toJSON Automatic{..}
          = Core.object
              (Core.catMaybes
                 [("customerManagedEncryption" Core..=) Core.<$>
                    customerManagedEncryption])


-- | The replication status of a SecretVersion using automatic replication. Only populated if the parent Secret has an automatic replication policy.
--
-- /See:/ 'newAutomaticStatus' smart constructor.
newtype AutomaticStatus = AutomaticStatus
    {
      -- | Output only. The customer-managed encryption status of the SecretVersion. Only populated if customer-managed encryption is used.
      customerManagedEncryption :: (Core.Maybe CustomerManagedEncryptionStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutomaticStatus' with the minimum fields required to make a request.
newAutomaticStatus 
    ::  AutomaticStatus
newAutomaticStatus
  = AutomaticStatus{customerManagedEncryption = Core.Nothing}
instance Core.FromJSON AutomaticStatus where
        parseJSON
          = Core.withObject "AutomaticStatus"
              (\ o ->
                 AutomaticStatus Core.<$> (o Core..:? "customerManagedEncryption"))

instance Core.ToJSON AutomaticStatus where
        toJSON AutomaticStatus{..}
          = Core.object
              (Core.catMaybes
                 [("customerManagedEncryption" Core..=) Core.<$>
                    customerManagedEncryption])


-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
    {
      -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
      condition :: (Core.Maybe Expr)
      -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
      -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
      -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
      -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
      -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    , members :: (Core.Maybe [Core.Text])
      -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
    , role' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding 
    ::  Binding
newBinding
  = Binding{condition = Core.Nothing, members = Core.Nothing,
            role' = Core.Nothing}
instance Core.FromJSON Binding where
        parseJSON
          = Core.withObject "Binding"
              (\ o ->
                 Binding Core.<$>
                   (o Core..:? "condition") Core.<*> (o Core..:? "members") Core.<*>
                     (o Core..:? "role"))

instance Core.ToJSON Binding where
        toJSON Binding{..}
          = Core.object
              (Core.catMaybes
                 [("condition" Core..=) Core.<$> condition,
                  ("members" Core..=) Core.<$> members,
                  ("role" Core..=) Core.<$> role'])


-- | Configuration for encrypting secret payloads using customer-managed encryption keys (CMEK).
--
-- /See:/ 'newCustomerManagedEncryption' smart constructor.
newtype CustomerManagedEncryption = CustomerManagedEncryption
    {
      -- | Required. The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads. For secrets using the UserManaged replication policy type, Cloud KMS CryptoKeys must reside in the same location as the replica location. For secrets using the Automatic replication policy type, Cloud KMS CryptoKeys must reside in @global@. The expected format is @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*@.
      kmsKeyName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerManagedEncryption' with the minimum fields required to make a request.
newCustomerManagedEncryption 
    ::  CustomerManagedEncryption
newCustomerManagedEncryption
  = CustomerManagedEncryption{kmsKeyName = Core.Nothing}
instance Core.FromJSON CustomerManagedEncryption where
        parseJSON
          = Core.withObject "CustomerManagedEncryption"
              (\ o ->
                 CustomerManagedEncryption Core.<$> (o Core..:? "kmsKeyName"))

instance Core.ToJSON CustomerManagedEncryption where
        toJSON CustomerManagedEncryption{..}
          = Core.object
              (Core.catMaybes [("kmsKeyName" Core..=) Core.<$> kmsKeyName])


-- | Describes the status of customer-managed encryption.
--
-- /See:/ 'newCustomerManagedEncryptionStatus' smart constructor.
newtype CustomerManagedEncryptionStatus = CustomerManagedEncryptionStatus
    {
      -- | Required. The resource name of the Cloud KMS CryptoKeyVersion used to encrypt the secret payload, in the following format: @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\/versions\/*@.
      kmsKeyVersionName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomerManagedEncryptionStatus' with the minimum fields required to make a request.
newCustomerManagedEncryptionStatus 
    :: 
                                   CustomerManagedEncryptionStatus
newCustomerManagedEncryptionStatus
  = CustomerManagedEncryptionStatus{kmsKeyVersionName = Core.Nothing}
instance Core.FromJSON CustomerManagedEncryptionStatus where
        parseJSON
          = Core.withObject "CustomerManagedEncryptionStatus"
              (\ o ->
                 CustomerManagedEncryptionStatus Core.<$>
                   (o Core..:? "kmsKeyVersionName"))

instance Core.ToJSON CustomerManagedEncryptionStatus where
        toJSON CustomerManagedEncryptionStatus{..}
          = Core.object
              (Core.catMaybes
                 [("kmsKeyVersionName" Core..=) Core.<$> kmsKeyVersionName])


-- | Request message for SecretManagerService.DestroySecretVersion.
--
-- /See:/ 'newDestroySecretVersionRequest' smart constructor.
newtype DestroySecretVersionRequest = DestroySecretVersionRequest
    {
      -- | Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently stored secret version object. If the etag is omitted, the request succeeds.
      etag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DestroySecretVersionRequest' with the minimum fields required to make a request.
newDestroySecretVersionRequest 
    ::  DestroySecretVersionRequest
newDestroySecretVersionRequest
  = DestroySecretVersionRequest{etag = Core.Nothing}
instance Core.FromJSON DestroySecretVersionRequest where
        parseJSON
          = Core.withObject "DestroySecretVersionRequest"
              (\ o -> DestroySecretVersionRequest Core.<$> (o Core..:? "etag"))

instance Core.ToJSON DestroySecretVersionRequest where
        toJSON DestroySecretVersionRequest{..}
          = Core.object (Core.catMaybes [("etag" Core..=) Core.<$> etag])


-- | Request message for SecretManagerService.DisableSecretVersion.
--
-- /See:/ 'newDisableSecretVersionRequest' smart constructor.
newtype DisableSecretVersionRequest = DisableSecretVersionRequest
    {
      -- | Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently stored secret version object. If the etag is omitted, the request succeeds.
      etag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisableSecretVersionRequest' with the minimum fields required to make a request.
newDisableSecretVersionRequest 
    ::  DisableSecretVersionRequest
newDisableSecretVersionRequest
  = DisableSecretVersionRequest{etag = Core.Nothing}
instance Core.FromJSON DisableSecretVersionRequest where
        parseJSON
          = Core.withObject "DisableSecretVersionRequest"
              (\ o -> DisableSecretVersionRequest Core.<$> (o Core..:? "etag"))

instance Core.ToJSON DisableSecretVersionRequest where
        toJSON DisableSecretVersionRequest{..}
          = Core.object (Core.catMaybes [("etag" Core..=) Core.<$> etag])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty
instance Core.FromJSON Empty where
        parseJSON = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Request message for SecretManagerService.EnableSecretVersion.
--
-- /See:/ 'newEnableSecretVersionRequest' smart constructor.
newtype EnableSecretVersionRequest = EnableSecretVersionRequest
    {
      -- | Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently stored secret version object. If the etag is omitted, the request succeeds.
      etag :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnableSecretVersionRequest' with the minimum fields required to make a request.
newEnableSecretVersionRequest 
    ::  EnableSecretVersionRequest
newEnableSecretVersionRequest
  = EnableSecretVersionRequest{etag = Core.Nothing}
instance Core.FromJSON EnableSecretVersionRequest where
        parseJSON
          = Core.withObject "EnableSecretVersionRequest"
              (\ o -> EnableSecretVersionRequest Core.<$> (o Core..:? "etag"))

instance Core.ToJSON EnableSecretVersionRequest where
        toJSON EnableSecretVersionRequest{..}
          = Core.object (Core.catMaybes [("etag" Core..=) Core.<$> etag])


-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
    {
      -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
      description :: (Core.Maybe Core.Text)
      -- | Textual representation of an expression in Common Expression Language syntax.
    , expression :: (Core.Maybe Core.Text)
      -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    , location :: (Core.Maybe Core.Text)
      -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr 
    ::  Expr
newExpr
  = Expr{description = Core.Nothing, expression = Core.Nothing,
         location = Core.Nothing, title = Core.Nothing}
instance Core.FromJSON Expr where
        parseJSON
          = Core.withObject "Expr"
              (\ o ->
                 Expr Core.<$>
                   (o Core..:? "description") Core.<*> (o Core..:? "expression")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Expr where
        toJSON Expr{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("location" Core..=) Core.<$> location,
                  ("title" Core..=) Core.<$> title])


-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | A list of locations that matches the specified filter in the request.
      locations :: (Core.Maybe [Location])
      -- | The standard List next-page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse
  = ListLocationsResponse{locations = Core.Nothing,
                          nextPageToken = Core.Nothing}
instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations") Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response message for SecretManagerService.ListSecretVersions.
--
-- /See:/ 'newListSecretVersionsResponse' smart constructor.
data ListSecretVersionsResponse = ListSecretVersionsResponse
    {
      -- | A token to retrieve the next page of results. Pass this value in ListSecretVersionsRequest.page_token to retrieve the next page.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The total number of SecretVersions but 0 when the ListSecretsRequest.filter field is set.
    , totalSize :: (Core.Maybe Core.Int32)
      -- | The list of SecretVersions sorted in reverse by create_time (newest first).
    , versions :: (Core.Maybe [SecretVersion])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSecretVersionsResponse' with the minimum fields required to make a request.
newListSecretVersionsResponse 
    ::  ListSecretVersionsResponse
newListSecretVersionsResponse
  = ListSecretVersionsResponse{nextPageToken = Core.Nothing,
                               totalSize = Core.Nothing, versions = Core.Nothing}
instance Core.FromJSON ListSecretVersionsResponse where
        parseJSON
          = Core.withObject "ListSecretVersionsResponse"
              (\ o ->
                 ListSecretVersionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*> (o Core..:? "totalSize")
                     Core.<*> (o Core..:? "versions"))

instance Core.ToJSON ListSecretVersionsResponse where
        toJSON ListSecretVersionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("totalSize" Core..=) Core.<$> totalSize,
                  ("versions" Core..=) Core.<$> versions])


-- | Response message for SecretManagerService.ListSecrets.
--
-- /See:/ 'newListSecretsResponse' smart constructor.
data ListSecretsResponse = ListSecretsResponse
    {
      -- | A token to retrieve the next page of results. Pass this value in ListSecretsRequest.page_token to retrieve the next page.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The list of Secrets sorted in reverse by create_time (newest first).
    , secrets :: (Core.Maybe [Secret])
      -- | The total number of Secrets but 0 when the ListSecretsRequest.filter field is set.
    , totalSize :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSecretsResponse' with the minimum fields required to make a request.
newListSecretsResponse 
    ::  ListSecretsResponse
newListSecretsResponse
  = ListSecretsResponse{nextPageToken = Core.Nothing,
                        secrets = Core.Nothing, totalSize = Core.Nothing}
instance Core.FromJSON ListSecretsResponse where
        parseJSON
          = Core.withObject "ListSecretsResponse"
              (\ o ->
                 ListSecretsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*> (o Core..:? "secrets")
                     Core.<*> (o Core..:? "totalSize"))

instance Core.ToJSON ListSecretsResponse where
        toJSON ListSecretsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("secrets" Core..=) Core.<$> secrets,
                  ("totalSize" Core..=) Core.<$> totalSize])


-- | A resource that represents a Google Cloud location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
      displayName :: (Core.Maybe Core.Text)
      -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    , labels :: (Core.Maybe Location_Labels)
      -- | The canonical id for this location. For example: @\"us-east1\"@.
    , locationId :: (Core.Maybe Core.Text)
      -- | Service-specific metadata. For example the available capacity at the given location.
    , metadata :: (Core.Maybe Location_Metadata)
      -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation
  = Location{displayName = Core.Nothing, labels = Core.Nothing,
             locationId = Core.Nothing, metadata = Core.Nothing,
             name = Core.Nothing}
instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "labels") Core.<*>
                     (o Core..:? "locationId")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name])


-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
    {

      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels 
    :: 
                   Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Location_Labels
newLocation_Labels additional
  = Location_Labels{additional = additional}
instance Core.FromJSON Location_Labels where
        parseJSON
          = Core.withObject "Location_Labels"
              (\ o -> Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
        toJSON Location_Labels{..} = Core.toJSON additional


-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata 
    :: 
                     Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Location_Metadata
newLocation_Metadata additional
  = Location_Metadata{additional = additional}
instance Core.FromJSON Location_Metadata where
        parseJSON
          = Core.withObject "Location_Metadata"
              (\ o -> Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
        toJSON Location_Metadata{..} = Core.toJSON additional


-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
    {
      -- | Specifies cloud audit logging configuration for this policy.
      auditConfigs :: (Core.Maybe [AuditConfig])
      -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    , bindings :: (Core.Maybe [Binding])
      -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    , etag :: (Core.Maybe Core.Base64)
      -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
      -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy 
    ::  Policy
newPolicy
  = Policy{auditConfigs = Core.Nothing, bindings = Core.Nothing,
           etag = Core.Nothing, version = Core.Nothing}
instance Core.FromJSON Policy where
        parseJSON
          = Core.withObject "Policy"
              (\ o ->
                 Policy Core.<$>
                   (o Core..:? "auditConfigs") Core.<*> (o Core..:? "bindings")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "version"))

instance Core.ToJSON Policy where
        toJSON Policy{..}
          = Core.object
              (Core.catMaybes
                 [("auditConfigs" Core..=) Core.<$> auditConfigs,
                  ("bindings" Core..=) Core.<$> bindings,
                  ("etag" Core..=) Core.<$> etag,
                  ("version" Core..=) Core.<$> version])


-- | Represents a Replica for this Secret.
--
-- /See:/ 'newReplica' smart constructor.
data Replica = Replica
    {
      -- | Optional. The customer-managed encryption configuration of the User-Managed Replica. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
      customerManagedEncryption :: (Core.Maybe CustomerManagedEncryption)
      -- | The canonical IDs of the location to replicate data. For example: @\"us-east1\"@.
    , location :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Replica' with the minimum fields required to make a request.
newReplica 
    ::  Replica
newReplica
  = Replica{customerManagedEncryption = Core.Nothing,
            location = Core.Nothing}
instance Core.FromJSON Replica where
        parseJSON
          = Core.withObject "Replica"
              (\ o ->
                 Replica Core.<$>
                   (o Core..:? "customerManagedEncryption") Core.<*>
                     (o Core..:? "location"))

instance Core.ToJSON Replica where
        toJSON Replica{..}
          = Core.object
              (Core.catMaybes
                 [("customerManagedEncryption" Core..=) Core.<$>
                    customerManagedEncryption,
                  ("location" Core..=) Core.<$> location])


-- | Describes the status of a user-managed replica for the SecretVersion.
--
-- /See:/ 'newReplicaStatus' smart constructor.
data ReplicaStatus = ReplicaStatus
    {
      -- | Output only. The customer-managed encryption status of the SecretVersion. Only populated if customer-managed encryption is used.
      customerManagedEncryption :: (Core.Maybe CustomerManagedEncryptionStatus)
      -- | Output only. The canonical ID of the replica location. For example: @\"us-east1\"@.
    , location :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaStatus' with the minimum fields required to make a request.
newReplicaStatus 
    ::  ReplicaStatus
newReplicaStatus
  = ReplicaStatus{customerManagedEncryption = Core.Nothing,
                  location = Core.Nothing}
instance Core.FromJSON ReplicaStatus where
        parseJSON
          = Core.withObject "ReplicaStatus"
              (\ o ->
                 ReplicaStatus Core.<$>
                   (o Core..:? "customerManagedEncryption") Core.<*>
                     (o Core..:? "location"))

instance Core.ToJSON ReplicaStatus where
        toJSON ReplicaStatus{..}
          = Core.object
              (Core.catMaybes
                 [("customerManagedEncryption" Core..=) Core.<$>
                    customerManagedEncryption,
                  ("location" Core..=) Core.<$> location])


-- | A policy that defines the replication and encryption configuration of data.
--
-- /See:/ 'newReplication' smart constructor.
data Replication = Replication
    {
      -- | The Secret will automatically be replicated without any restrictions.
      automatic :: (Core.Maybe Automatic)
      -- | The Secret will only be replicated into the locations specified.
    , userManaged :: (Core.Maybe UserManaged)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Replication' with the minimum fields required to make a request.
newReplication 
    ::  Replication
newReplication
  = Replication{automatic = Core.Nothing, userManaged = Core.Nothing}
instance Core.FromJSON Replication where
        parseJSON
          = Core.withObject "Replication"
              (\ o ->
                 Replication Core.<$>
                   (o Core..:? "automatic") Core.<*> (o Core..:? "userManaged"))

instance Core.ToJSON Replication where
        toJSON Replication{..}
          = Core.object
              (Core.catMaybes
                 [("automatic" Core..=) Core.<$> automatic,
                  ("userManaged" Core..=) Core.<$> userManaged])


-- | The replication status of a SecretVersion.
--
-- /See:/ 'newReplicationStatus' smart constructor.
data ReplicationStatus = ReplicationStatus
    {
      -- | Describes the replication status of a SecretVersion with automatic replication. Only populated if the parent Secret has an automatic replication policy.
      automatic :: (Core.Maybe AutomaticStatus)
      -- | Describes the replication status of a SecretVersion with user-managed replication. Only populated if the parent Secret has a user-managed replication policy.
    , userManaged :: (Core.Maybe UserManagedStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicationStatus' with the minimum fields required to make a request.
newReplicationStatus 
    ::  ReplicationStatus
newReplicationStatus
  = ReplicationStatus{automatic = Core.Nothing,
                      userManaged = Core.Nothing}
instance Core.FromJSON ReplicationStatus where
        parseJSON
          = Core.withObject "ReplicationStatus"
              (\ o ->
                 ReplicationStatus Core.<$>
                   (o Core..:? "automatic") Core.<*> (o Core..:? "userManaged"))

instance Core.ToJSON ReplicationStatus where
        toJSON ReplicationStatus{..}
          = Core.object
              (Core.catMaybes
                 [("automatic" Core..=) Core.<$> automatic,
                  ("userManaged" Core..=) Core.<$> userManaged])


-- | The rotation time and period for a Secret. At next/rotation/time, Secret Manager will send a Pub\/Sub notification to the topics configured on the Secret. Secret.topics must be set to configure rotation.
--
-- /See:/ 'newRotation' smart constructor.
data Rotation = Rotation
    {
      -- | Optional. Timestamp in UTC at which the Secret is scheduled to rotate. Cannot be set to less than 300s (5 min) in the future and at most 3153600000s (100 years). next/rotation/time MUST be set if rotation_period is set.
      nextRotationTime :: (Core.Maybe Core.DateTime)
      -- | Input only. The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years). If rotation/period is set, next/rotation/time must be set. next/rotation_time will be advanced by this period when the service automatically sends rotation notifications.
    , rotationPeriod :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rotation' with the minimum fields required to make a request.
newRotation 
    ::  Rotation
newRotation
  = Rotation{nextRotationTime = Core.Nothing,
             rotationPeriod = Core.Nothing}
instance Core.FromJSON Rotation where
        parseJSON
          = Core.withObject "Rotation"
              (\ o ->
                 Rotation Core.<$>
                   (o Core..:? "nextRotationTime") Core.<*>
                     (o Core..:? "rotationPeriod"))

instance Core.ToJSON Rotation where
        toJSON Rotation{..}
          = Core.object
              (Core.catMaybes
                 [("nextRotationTime" Core..=) Core.<$> nextRotationTime,
                  ("rotationPeriod" Core..=) Core.<$> rotationPeriod])


-- | A Secret is a logical secret whose value and versions can be accessed. A Secret is made up of zero or more SecretVersions that represent the secret data.
--
-- /See:/ 'newSecret' smart constructor.
data Secret = Secret
    {
      -- | Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
      annotations :: (Core.Maybe Secret_Annotations)
      -- | Output only. The time at which the Secret was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Optional. The customer-managed encryption configuration of the regionalized secrets. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
    , customerManagedEncryption :: (Core.Maybe CustomerManagedEncryption)
      -- | Optional. Etag of the currently stored Secret.
    , etag :: (Core.Maybe Core.Text)
      -- | Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
    , expireTime :: (Core.Maybe Core.DateTime)
      -- | The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: @\\p{Ll}\\p{Lo}{0,62}@ Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: @[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}@ No more than 64 labels can be assigned to a given resource.
    , labels :: (Core.Maybe Secret_Labels)
      -- | Output only. The resource name of the Secret in the format @projects\/*\/secrets\/*@.
    , name :: (Core.Maybe Core.Text)
      -- | Optional. Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
    , replication :: (Core.Maybe Replication)
      -- | Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
    , rotation :: (Core.Maybe Rotation)
      -- | Optional. A list of up to 10 Pub\/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
    , topics :: (Core.Maybe [Topic])
      -- | Input only. The TTL for the Secret.
    , ttl :: (Core.Maybe Core.Duration)
      -- | Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (@-@) and underscore (\'_\') characters. An alias string must start with a letter and cannot be the string \'latest\' or \'NEW\'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. Access by alias is only be supported on GetSecretVersion and AccessSecretVersion.
    , versionAliases :: (Core.Maybe Secret_VersionAliases)
      -- | Optional. Secret Version TTL after destruction request This is a part of the Delayed secret version destroy feature. For secret with TTL>0, version destruction doesn\'t happen immediately on calling destroy instead the version goes to a disabled state and destruction happens after the TTL expires.
    , versionDestroyTtl :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret' with the minimum fields required to make a request.
newSecret 
    ::  Secret
newSecret
  = Secret{annotations = Core.Nothing, createTime = Core.Nothing,
           customerManagedEncryption = Core.Nothing, etag = Core.Nothing,
           expireTime = Core.Nothing, labels = Core.Nothing,
           name = Core.Nothing, replication = Core.Nothing,
           rotation = Core.Nothing, topics = Core.Nothing, ttl = Core.Nothing,
           versionAliases = Core.Nothing, versionDestroyTtl = Core.Nothing}
instance Core.FromJSON Secret where
        parseJSON
          = Core.withObject "Secret"
              (\ o ->
                 Secret Core.<$>
                   (o Core..:? "annotations") Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "customerManagedEncryption")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "expireTime")
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "replication")
                     Core.<*> (o Core..:? "rotation")
                     Core.<*> (o Core..:? "topics")
                     Core.<*> (o Core..:? "ttl")
                     Core.<*> (o Core..:? "versionAliases")
                     Core.<*> (o Core..:? "versionDestroyTtl"))

instance Core.ToJSON Secret where
        toJSON Secret{..}
          = Core.object
              (Core.catMaybes
                 [("annotations" Core..=) Core.<$> annotations,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("customerManagedEncryption" Core..=) Core.<$>
                    customerManagedEncryption,
                  ("etag" Core..=) Core.<$> etag,
                  ("expireTime" Core..=) Core.<$> expireTime,
                  ("labels" Core..=) Core.<$> labels, ("name" Core..=) Core.<$> name,
                  ("replication" Core..=) Core.<$> replication,
                  ("rotation" Core..=) Core.<$> rotation,
                  ("topics" Core..=) Core.<$> topics, ("ttl" Core..=) Core.<$> ttl,
                  ("versionAliases" Core..=) Core.<$> versionAliases,
                  ("versionDestroyTtl" Core..=) Core.<$> versionDestroyTtl])


-- | Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
--
-- /See:/ 'newSecret_Annotations' smart constructor.
newtype Secret_Annotations = Secret_Annotations
    {

      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret_Annotations' with the minimum fields required to make a request.
newSecret_Annotations 
    :: 
                      Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Secret_Annotations
newSecret_Annotations additional
  = Secret_Annotations{additional = additional}
instance Core.FromJSON Secret_Annotations where
        parseJSON
          = Core.withObject "Secret_Annotations"
              (\ o -> Secret_Annotations Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Secret_Annotations where
        toJSON Secret_Annotations{..} = Core.toJSON additional


-- | The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: @\\p{Ll}\\p{Lo}{0,62}@ Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: @[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}@ No more than 64 labels can be assigned to a given resource.
--
-- /See:/ 'newSecret_Labels' smart constructor.
newtype Secret_Labels = Secret_Labels
    {

      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret_Labels' with the minimum fields required to make a request.
newSecret_Labels 
    :: 
                 Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Secret_Labels
newSecret_Labels additional
  = Secret_Labels{additional = additional}
instance Core.FromJSON Secret_Labels where
        parseJSON
          = Core.withObject "Secret_Labels"
              (\ o -> Secret_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Secret_Labels where
        toJSON Secret_Labels{..} = Core.toJSON additional


-- | Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (@-@) and underscore (\'_\') characters. An alias string must start with a letter and cannot be the string \'latest\' or \'NEW\'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. Access by alias is only be supported on GetSecretVersion and AccessSecretVersion.
--
-- /See:/ 'newSecret_VersionAliases' smart constructor.
newtype Secret_VersionAliases = Secret_VersionAliases
    {

      additional :: (Core.HashMap Core.Text Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret_VersionAliases' with the minimum fields required to make a request.
newSecret_VersionAliases 
    :: 
                         Core.HashMap Core.Text Core.Int64
       -- ^  See 'additional'.
    -> Secret_VersionAliases
newSecret_VersionAliases additional
  = Secret_VersionAliases{additional = additional}
instance Core.FromJSON Secret_VersionAliases where
        parseJSON
          = Core.withObject "Secret_VersionAliases"
              (\ o -> Secret_VersionAliases Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Secret_VersionAliases where
        toJSON Secret_VersionAliases{..} = Core.toJSON additional


-- | A secret payload resource in the Secret Manager API. This contains the sensitive secret payload that is associated with a SecretVersion.
--
-- /See:/ 'newSecretPayload' smart constructor.
data SecretPayload = SecretPayload
    {
      -- | The secret data. Must be no larger than 64KiB.
      data' :: (Core.Maybe Core.Base64)
      -- | Optional. If specified, SecretManagerService will verify the integrity of the received data on SecretManagerService.AddSecretVersion calls using the crc32c checksum and store it to include in future SecretManagerService.AccessSecretVersion responses. If a checksum is not provided in the SecretManagerService.AddSecretVersion request, the SecretManagerService will generate and store one for you. The CRC32C value is encoded as a Int64 for compatibility, and can be safely downconverted to uint32 in languages that support this type. https:\/\/cloud.google.com\/apis\/design\/design/patterns#integer/types
    , dataCrc32c :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretPayload' with the minimum fields required to make a request.
newSecretPayload 
    ::  SecretPayload
newSecretPayload
  = SecretPayload{data' = Core.Nothing, dataCrc32c = Core.Nothing}
instance Core.FromJSON SecretPayload where
        parseJSON
          = Core.withObject "SecretPayload"
              (\ o ->
                 SecretPayload Core.<$>
                   (o Core..:? "data") Core.<*>
                     (o Core..:? "dataCrc32c" Core.<&> Core.fmap Core.fromAsText))

instance Core.ToJSON SecretPayload where
        toJSON SecretPayload{..}
          = Core.object
              (Core.catMaybes
                 [("data" Core..=) Core.<$> data',
                  ("dataCrc32c" Core..=) Core.. Core.AsText Core.<$> dataCrc32c])


-- | A secret version resource in the Secret Manager API.
--
-- /See:/ 'newSecretVersion' smart constructor.
data SecretVersion = SecretVersion
    {
      -- | Output only. True if payload checksum specified in SecretPayload object has been received by SecretManagerService on SecretManagerService.AddSecretVersion.
      clientSpecifiedPayloadChecksum :: (Core.Maybe Core.Bool)
      -- | Output only. The time at which the SecretVersion was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The customer-managed encryption status of the SecretVersion. Only populated if customer-managed encryption is used and Secret is a regionalized secret.
    , customerManagedEncryption :: (Core.Maybe CustomerManagedEncryptionStatus)
      -- | Output only. The time this SecretVersion was destroyed. Only present if state is DESTROYED.
    , destroyTime :: (Core.Maybe Core.DateTime)
      -- | Output only. Etag of the currently stored SecretVersion.
    , etag :: (Core.Maybe Core.Text)
      -- | Output only. The resource name of the SecretVersion in the format @projects\/*\/secrets\/*\/versions\/*@. SecretVersion IDs in a Secret start at 1 and are incremented for each subsequent version of the secret.
    , name :: (Core.Maybe Core.Text)
      -- | The replication status of the SecretVersion.
    , replicationStatus :: (Core.Maybe ReplicationStatus)
      -- | Optional. Output only. Scheduled destroy time for secret version. This is a part of the Delayed secret version destroy feature. For a Secret with a valid version destroy TTL, when a secert version is destroyed, version is moved to disabled state and it is scheduled for destruction Version is destroyed only after the scheduled/destroy/time.
    , scheduledDestroyTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The current state of the SecretVersion.
    , state :: (Core.Maybe SecretVersion_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretVersion' with the minimum fields required to make a request.
newSecretVersion 
    ::  SecretVersion
newSecretVersion
  = SecretVersion{clientSpecifiedPayloadChecksum = Core.Nothing,
                  createTime = Core.Nothing,
                  customerManagedEncryption = Core.Nothing,
                  destroyTime = Core.Nothing, etag = Core.Nothing,
                  name = Core.Nothing, replicationStatus = Core.Nothing,
                  scheduledDestroyTime = Core.Nothing, state = Core.Nothing}
instance Core.FromJSON SecretVersion where
        parseJSON
          = Core.withObject "SecretVersion"
              (\ o ->
                 SecretVersion Core.<$>
                   (o Core..:? "clientSpecifiedPayloadChecksum") Core.<*>
                     (o Core..:? "createTime")
                     Core.<*> (o Core..:? "customerManagedEncryption")
                     Core.<*> (o Core..:? "destroyTime")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "replicationStatus")
                     Core.<*> (o Core..:? "scheduledDestroyTime")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON SecretVersion where
        toJSON SecretVersion{..}
          = Core.object
              (Core.catMaybes
                 [("clientSpecifiedPayloadChecksum" Core..=) Core.<$>
                    clientSpecifiedPayloadChecksum,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("customerManagedEncryption" Core..=) Core.<$>
                    customerManagedEncryption,
                  ("destroyTime" Core..=) Core.<$> destroyTime,
                  ("etag" Core..=) Core.<$> etag, ("name" Core..=) Core.<$> name,
                  ("replicationStatus" Core..=) Core.<$> replicationStatus,
                  ("scheduledDestroyTime" Core..=) Core.<$> scheduledDestroyTime,
                  ("state" Core..=) Core.<$> state])


-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
    {
      -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
      policy :: (Core.Maybe Policy)
      -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest 
    ::  SetIamPolicyRequest
newSetIamPolicyRequest
  = SetIamPolicyRequest{policy = Core.Nothing,
                        updateMask = Core.Nothing}
instance Core.FromJSON SetIamPolicyRequest where
        parseJSON
          = Core.withObject "SetIamPolicyRequest"
              (\ o ->
                 SetIamPolicyRequest Core.<$>
                   (o Core..:? "policy") Core.<*> (o Core..:? "updateMask"))

instance Core.ToJSON SetIamPolicyRequest where
        toJSON SetIamPolicyRequest{..}
          = Core.object
              (Core.catMaybes
                 [("policy" Core..=) Core.<$> policy,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
    {
      -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest 
    ::  TestIamPermissionsRequest
newTestIamPermissionsRequest
  = TestIamPermissionsRequest{permissions = Core.Nothing}
instance Core.FromJSON TestIamPermissionsRequest where
        parseJSON
          = Core.withObject "TestIamPermissionsRequest"
              (\ o ->
                 TestIamPermissionsRequest Core.<$> (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsRequest where
        toJSON TestIamPermissionsRequest{..}
          = Core.object
              (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])


-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
    {
      -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
      permissions :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse 
    ::  TestIamPermissionsResponse
newTestIamPermissionsResponse
  = TestIamPermissionsResponse{permissions = Core.Nothing}
instance Core.FromJSON TestIamPermissionsResponse where
        parseJSON
          = Core.withObject "TestIamPermissionsResponse"
              (\ o ->
                 TestIamPermissionsResponse Core.<$> (o Core..:? "permissions"))

instance Core.ToJSON TestIamPermissionsResponse where
        toJSON TestIamPermissionsResponse{..}
          = Core.object
              (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])


-- | A Pub\/Sub topic which Secret Manager will publish to when control plane events occur on this secret.
--
-- /See:/ 'newTopic' smart constructor.
newtype Topic = Topic
    {
      -- | Identifier. The resource name of the Pub\/Sub topic that will be published to, in the following format: @projects\/*\/topics\/*@. For publication to succeed, the Secret Manager service agent must have the @pubsub.topic.publish@ permission on the topic. The Pub\/Sub Publisher role (@roles\/pubsub.publisher@) includes this permission.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Topic' with the minimum fields required to make a request.
newTopic 
    ::  Topic
newTopic = Topic{name = Core.Nothing}
instance Core.FromJSON Topic where
        parseJSON
          = Core.withObject "Topic"
              (\ o -> Topic Core.<$> (o Core..:? "name"))

instance Core.ToJSON Topic where
        toJSON Topic{..}
          = Core.object (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | A replication policy that replicates the Secret payload into the locations specified in Replication.UserManaged.replicas
--
-- /See:/ 'newUserManaged' smart constructor.
newtype UserManaged = UserManaged
    {
      -- | Required. The list of Replicas for this Secret. Cannot be empty.
      replicas :: (Core.Maybe [Replica])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserManaged' with the minimum fields required to make a request.
newUserManaged 
    ::  UserManaged
newUserManaged = UserManaged{replicas = Core.Nothing}
instance Core.FromJSON UserManaged where
        parseJSON
          = Core.withObject "UserManaged"
              (\ o -> UserManaged Core.<$> (o Core..:? "replicas"))

instance Core.ToJSON UserManaged where
        toJSON UserManaged{..}
          = Core.object
              (Core.catMaybes [("replicas" Core..=) Core.<$> replicas])


-- | The replication status of a SecretVersion using user-managed replication. Only populated if the parent Secret has a user-managed replication policy.
--
-- /See:/ 'newUserManagedStatus' smart constructor.
newtype UserManagedStatus = UserManagedStatus
    {
      -- | Output only. The list of replica statuses for the SecretVersion.
      replicas :: (Core.Maybe [ReplicaStatus])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserManagedStatus' with the minimum fields required to make a request.
newUserManagedStatus 
    ::  UserManagedStatus
newUserManagedStatus = UserManagedStatus{replicas = Core.Nothing}
instance Core.FromJSON UserManagedStatus where
        parseJSON
          = Core.withObject "UserManagedStatus"
              (\ o -> UserManagedStatus Core.<$> (o Core..:? "replicas"))

instance Core.ToJSON UserManagedStatus where
        toJSON UserManagedStatus{..}
          = Core.object
              (Core.catMaybes [("replicas" Core..=) Core.<$> replicas])

