{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DataFusion.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DataFusion.Internal.Product
  ( -- * Accelerator
    Accelerator (..),
    newAccelerator,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CryptoKeyConfig
    CryptoKeyConfig (..),
    newCryptoKeyConfig,

    -- * DnsPeering
    DnsPeering (..),
    newDnsPeering,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EventPublishConfig
    EventPublishConfig (..),
    newEventPublishConfig,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * Instance_Options
    Instance_Options (..),
    newInstance_Options,

    -- * ListAvailableVersionsResponse
    ListAvailableVersionsResponse (..),
    newListAvailableVersionsResponse,

    -- * ListDnsPeeringsResponse
    ListDnsPeeringsResponse (..),
    newListDnsPeeringsResponse,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- * MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- * NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * OperationMetadata_AdditionalStatus
    OperationMetadata_AdditionalStatus (..),
    newOperationMetadata_AdditionalStatus,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PrivateServiceConnectConfig
    PrivateServiceConnectConfig (..),
    newPrivateServiceConnectConfig,

    -- * RecurringTimeWindow
    RecurringTimeWindow (..),
    newRecurringTimeWindow,

    -- * RestartInstanceRequest
    RestartInstanceRequest (..),
    newRestartInstanceRequest,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TimeWindow
    TimeWindow (..),
    newTimeWindow,

    -- * Version
    Version (..),
    newVersion,
  )
where

import Gogol.DataFusion.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Identifies Data Fusion accelerators for an instance.
--
-- /See:/ 'newAccelerator' smart constructor.
data Accelerator = Accelerator
  { -- | Optional. The type of an accelator for a Cloud Data Fusion instance.
    acceleratorType :: (Core.Maybe Accelerator_AcceleratorType),
    -- | Output only. The state of the accelerator.
    state :: (Core.Maybe Accelerator_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Accelerator' with the minimum fields required to make a request.
newAccelerator ::
  Accelerator
newAccelerator =
  Accelerator {acceleratorType = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON Accelerator where
  parseJSON =
    Core.withObject
      "Accelerator"
      ( \o ->
          Accelerator
            Core.<$> (o Core..:? "acceleratorType")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON Accelerator where
  toJSON Accelerator {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorType" Core..=) Core.<$> acceleratorType,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
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
  AuditConfig
    { auditLogConfigs = Core.Nothing,
      service = Core.Nothing
    }

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
          [ ("auditLogConfigs" Core..=) Core.<$> auditLogConfigs,
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
  AuditLogConfig
    { exemptedMembers = Core.Nothing,
      logType = Core.Nothing
    }

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
          [ ("exemptedMembers" Core..=) Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workforce identity pool. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/group\/{group_id}@: All workforce identities in a group. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All workforce identities with a specific attribute value. * @principalSet:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/*@: All identities in a workforce identity pool. *
    -- @principal:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/subject\/{subject_attribute_value}@: A single identity in a workload identity pool. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/group\/{group_id}@: A workload identity pool group. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/attribute.{attribute_name}\/{attribute_value}@: All identities in a workload identity pool with a certain attribute. * @principalSet:\/\/iam.googleapis.com\/projects\/{project_number}\/locations\/global\/workloadIdentityPools\/{pool_id}\/*@: All identities in a workload identity pool. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts
    -- to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/{pool_id}\/subject\/{subject_attribute_value}@: Deleted single identity in a workforce identity pool. For example,
    -- @deleted:principal:\/\/iam.googleapis.com\/locations\/global\/workforcePools\/my-pool-id\/subject\/my-subject-attribute-value@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@. For an overview of the IAM roles and permissions, see the <https://cloud.google.com/iam/docs/roles-overview IAM documentation>. For a list of the available pre-defined roles, see <https://cloud.google.com/iam/docs/understanding-roles here>.
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

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.
--
-- /See:/ 'newCryptoKeyConfig' smart constructor.
newtype CryptoKeyConfig = CryptoKeyConfig
  { -- | Optional. The name of the key which is used to encrypt\/decrypt customer data. For key in Cloud KMS, the key should be in the format of @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*@.
    keyReference :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CryptoKeyConfig' with the minimum fields required to make a request.
newCryptoKeyConfig ::
  CryptoKeyConfig
newCryptoKeyConfig = CryptoKeyConfig {keyReference = Core.Nothing}

instance Core.FromJSON CryptoKeyConfig where
  parseJSON =
    Core.withObject
      "CryptoKeyConfig"
      (\o -> CryptoKeyConfig Core.<$> (o Core..:? "keyReference"))

instance Core.ToJSON CryptoKeyConfig where
  toJSON CryptoKeyConfig {..} =
    Core.object
      (Core.catMaybes [("keyReference" Core..=) Core.<$> keyReference])

-- | DNS peering configuration. These configurations are used to create DNS peering with the customer Cloud DNS.
--
-- /See:/ 'newDnsPeering' smart constructor.
data DnsPeering = DnsPeering
  { -- | Optional. Optional description of the dns zone.
    description :: (Core.Maybe Core.Text),
    -- | Required. The dns name suffix of the zone.
    domain :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name of the dns peering zone. Format: projects\/{project}\/locations\/{location}\/instances\/{instance}\/dnsPeerings\/{dns_peering}
    name :: (Core.Maybe Core.Text),
    -- | Optional. Optional target network to which dns peering should happen.
    targetNetwork :: (Core.Maybe Core.Text),
    -- | Optional. Optional target project to which dns peering should happen.
    targetProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsPeering' with the minimum fields required to make a request.
newDnsPeering ::
  DnsPeering
newDnsPeering =
  DnsPeering
    { description = Core.Nothing,
      domain = Core.Nothing,
      name = Core.Nothing,
      targetNetwork = Core.Nothing,
      targetProject = Core.Nothing
    }

instance Core.FromJSON DnsPeering where
  parseJSON =
    Core.withObject
      "DnsPeering"
      ( \o ->
          DnsPeering
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "targetNetwork")
            Core.<*> (o Core..:? "targetProject")
      )

instance Core.ToJSON DnsPeering where
  toJSON DnsPeering {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("domain" Core..=) Core.<$> domain,
            ("name" Core..=) Core.<$> name,
            ("targetNetwork" Core..=) Core.<$> targetNetwork,
            ("targetProject" Core..=) Core.<$> targetProject
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Confirguration of PubSubEventWriter.
--
-- /See:/ 'newEventPublishConfig' smart constructor.
data EventPublishConfig = EventPublishConfig
  { -- | Required. Option to enable Event Publishing.
    enabled :: (Core.Maybe Core.Bool),
    -- | Required. The resource name of the Pub\/Sub topic. Format: projects\/{project/id}\/topics\/{topic/id}
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventPublishConfig' with the minimum fields required to make a request.
newEventPublishConfig ::
  EventPublishConfig
newEventPublishConfig =
  EventPublishConfig {enabled = Core.Nothing, topic = Core.Nothing}

instance Core.FromJSON EventPublishConfig where
  parseJSON =
    Core.withObject
      "EventPublishConfig"
      ( \o ->
          EventPublishConfig
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON EventPublishConfig where
  toJSON EventPublishConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("topic" Core..=) Core.<$> topic
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

-- | Represents a Data Fusion instance.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Output only. List of accelerators enabled for this CDF instance.
    accelerators :: (Core.Maybe [Accelerator]),
    -- | Output only. Endpoint on which the REST APIs is accessible.
    apiEndpoint :: (Core.Maybe Core.Text),
    -- | Output only. Available versions that the instance can be upgraded to using UpdateInstanceRequest.
    availableVersion :: (Core.Maybe [Version]),
    -- | Output only. The time the instance was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
    cryptoKeyConfig :: (Core.Maybe CryptoKeyConfig),
    -- | Optional. Option to enable the Dataplex Lineage Integration feature.
    dataplexDataLineageIntegrationEnabled :: (Core.Maybe Core.Bool),
    -- | Optional. User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc\'s accesses to cloud resources.
    dataprocServiceAccount :: (Core.Maybe Core.Text),
    -- | Optional. A description of this instance.
    description :: (Core.Maybe Core.Text),
    -- | Output only. If the instance state is DISABLED, the reason for disabling the instance.
    disabledReason :: (Core.Maybe [Instance_DisabledReasonItem]),
    -- | Optional. Display name for an instance.
    displayName :: (Core.Maybe Core.Text),
    -- | Optional. Option to enable granular role-based access control.
    enableRbac :: (Core.Maybe Core.Bool),
    -- | Optional. Option to enable Stackdriver Logging.
    enableStackdriverLogging :: (Core.Maybe Core.Bool),
    -- | Optional. Option to enable Stackdriver Monitoring.
    enableStackdriverMonitoring :: (Core.Maybe Core.Bool),
    -- | Output only. Option to enable granular zone separation.
    enableZoneSeparation :: (Core.Maybe Core.Bool),
    -- | Optional. Option to enable and pass metadata for event publishing.
    eventPublishConfig :: (Core.Maybe EventPublishConfig),
    -- | Output only. Cloud Storage bucket generated by Data Fusion in the customer project.
    gcsBucket :: (Core.Maybe Core.Text),
    -- | The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character \'=\' is not allowed to be used within the labels.
    labels :: (Core.Maybe Instance_Labels),
    -- | Optional. Configure the maintenance policy for this instance.
    maintenancePolicy :: (Core.Maybe MaintenancePolicy),
    -- | Output only. The name of this instance is in the form of projects\/{project}\/locations\/{location}\/instances\/{instance}.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Network configuration options. These are required when a private Data Fusion instance is to be created.
    networkConfig :: (Core.Maybe NetworkConfig),
    -- | Map of additional options used to configure the behavior of Data Fusion instance.
    options :: (Core.Maybe Instance_Options),
    -- | Output only. Service agent for the customer project.
    p4ServiceAccount :: (Core.Maybe Core.Text),
    -- | Optional. Current patch revision of the Data Fusion.
    patchRevision :: (Core.Maybe Core.Text),
    -- | Optional. Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
    privateInstance :: (Core.Maybe Core.Bool),
    -- | Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Output only. Deprecated. Use tenant/project/id instead to extract the tenant project ID.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Output only. Endpoint on which the Data Fusion UI is accessible.
    serviceEndpoint :: (Core.Maybe Core.Text),
    -- | Output only. The current state of this Data Fusion instance.
    state :: (Core.Maybe Instance_State),
    -- | Output only. Additional information about the current state of this Data Fusion instance if available.
    stateMessage :: (Core.Maybe Core.Text),
    -- | Output only. The name of the tenant project.
    tenantProjectId :: (Core.Maybe Core.Text),
    -- | Required. Instance type.
    type' :: (Core.Maybe Instance_Type),
    -- | Output only. The time the instance was last updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Current version of the Data Fusion. Only specifiable in Update.
    version :: (Core.Maybe Core.Text),
    -- | Output only. Endpoint on which the Data Fusion UI is accessible to third-party users
    workforceIdentityServiceEndpoint :: (Core.Maybe Core.Text),
    -- | Optional. Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { accelerators = Core.Nothing,
      apiEndpoint = Core.Nothing,
      availableVersion = Core.Nothing,
      createTime = Core.Nothing,
      cryptoKeyConfig = Core.Nothing,
      dataplexDataLineageIntegrationEnabled = Core.Nothing,
      dataprocServiceAccount = Core.Nothing,
      description = Core.Nothing,
      disabledReason = Core.Nothing,
      displayName = Core.Nothing,
      enableRbac = Core.Nothing,
      enableStackdriverLogging = Core.Nothing,
      enableStackdriverMonitoring = Core.Nothing,
      enableZoneSeparation = Core.Nothing,
      eventPublishConfig = Core.Nothing,
      gcsBucket = Core.Nothing,
      labels = Core.Nothing,
      maintenancePolicy = Core.Nothing,
      name = Core.Nothing,
      networkConfig = Core.Nothing,
      options = Core.Nothing,
      p4ServiceAccount = Core.Nothing,
      patchRevision = Core.Nothing,
      privateInstance = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      serviceAccount = Core.Nothing,
      serviceEndpoint = Core.Nothing,
      state = Core.Nothing,
      stateMessage = Core.Nothing,
      tenantProjectId = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing,
      version = Core.Nothing,
      workforceIdentityServiceEndpoint = Core.Nothing,
      zone = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "accelerators")
            Core.<*> (o Core..:? "apiEndpoint")
            Core.<*> (o Core..:? "availableVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "cryptoKeyConfig")
            Core.<*> (o Core..:? "dataplexDataLineageIntegrationEnabled")
            Core.<*> (o Core..:? "dataprocServiceAccount")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disabledReason")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "enableRbac")
            Core.<*> (o Core..:? "enableStackdriverLogging")
            Core.<*> (o Core..:? "enableStackdriverMonitoring")
            Core.<*> (o Core..:? "enableZoneSeparation")
            Core.<*> (o Core..:? "eventPublishConfig")
            Core.<*> (o Core..:? "gcsBucket")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "maintenancePolicy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkConfig")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "p4ServiceAccount")
            Core.<*> (o Core..:? "patchRevision")
            Core.<*> (o Core..:? "privateInstance")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "serviceEndpoint")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateMessage")
            Core.<*> (o Core..:? "tenantProjectId")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "workforceIdentityServiceEndpoint")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("accelerators" Core..=) Core.<$> accelerators,
            ("apiEndpoint" Core..=) Core.<$> apiEndpoint,
            ("availableVersion" Core..=) Core.<$> availableVersion,
            ("createTime" Core..=) Core.<$> createTime,
            ("cryptoKeyConfig" Core..=) Core.<$> cryptoKeyConfig,
            ("dataplexDataLineageIntegrationEnabled" Core..=)
              Core.<$> dataplexDataLineageIntegrationEnabled,
            ("dataprocServiceAccount" Core..=) Core.<$> dataprocServiceAccount,
            ("description" Core..=) Core.<$> description,
            ("disabledReason" Core..=) Core.<$> disabledReason,
            ("displayName" Core..=) Core.<$> displayName,
            ("enableRbac" Core..=) Core.<$> enableRbac,
            ("enableStackdriverLogging" Core..=)
              Core.<$> enableStackdriverLogging,
            ("enableStackdriverMonitoring" Core..=)
              Core.<$> enableStackdriverMonitoring,
            ("enableZoneSeparation" Core..=) Core.<$> enableZoneSeparation,
            ("eventPublishConfig" Core..=) Core.<$> eventPublishConfig,
            ("gcsBucket" Core..=) Core.<$> gcsBucket,
            ("labels" Core..=) Core.<$> labels,
            ("maintenancePolicy" Core..=) Core.<$> maintenancePolicy,
            ("name" Core..=) Core.<$> name,
            ("networkConfig" Core..=) Core.<$> networkConfig,
            ("options" Core..=) Core.<$> options,
            ("p4ServiceAccount" Core..=) Core.<$> p4ServiceAccount,
            ("patchRevision" Core..=) Core.<$> patchRevision,
            ("privateInstance" Core..=) Core.<$> privateInstance,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("serviceEndpoint" Core..=) Core.<$> serviceEndpoint,
            ("state" Core..=) Core.<$> state,
            ("stateMessage" Core..=) Core.<$> stateMessage,
            ("tenantProjectId" Core..=) Core.<$> tenantProjectId,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime,
            ("version" Core..=) Core.<$> version,
            ("workforceIdentityServiceEndpoint" Core..=)
              Core.<$> workforceIdentityServiceEndpoint,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character \'=\' is not allowed to be used within the labels.
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Labels
newInstance_Labels additional =
  Instance_Labels {additional = additional}

instance Core.FromJSON Instance_Labels where
  parseJSON =
    Core.withObject
      "Instance_Labels"
      (\o -> Instance_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Instance_Labels where
  toJSON Instance_Labels {..} = Core.toJSON additional

-- | Map of additional options used to configure the behavior of Data Fusion instance.
--
-- /See:/ 'newInstance_Options' smart constructor.
newtype Instance_Options = Instance_Options
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Options' with the minimum fields required to make a request.
newInstance_Options ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Options
newInstance_Options additional =
  Instance_Options {additional = additional}

instance Core.FromJSON Instance_Options where
  parseJSON =
    Core.withObject
      "Instance_Options"
      (\o -> Instance_Options Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Instance_Options where
  toJSON Instance_Options {..} = Core.toJSON additional

-- | Response message for the list available versions request.
--
-- /See:/ 'newListAvailableVersionsResponse' smart constructor.
data ListAvailableVersionsResponse = ListAvailableVersionsResponse
  { -- | Represents a list of versions that are supported. Deprecated: Use versions field instead.
    availableVersions :: (Core.Maybe [Version]),
    -- | Token to retrieve the next page of results or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Represents a list of all versions.
    versions :: (Core.Maybe [Version])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAvailableVersionsResponse' with the minimum fields required to make a request.
newListAvailableVersionsResponse ::
  ListAvailableVersionsResponse
newListAvailableVersionsResponse =
  ListAvailableVersionsResponse
    { availableVersions = Core.Nothing,
      nextPageToken = Core.Nothing,
      versions = Core.Nothing
    }

instance Core.FromJSON ListAvailableVersionsResponse where
  parseJSON =
    Core.withObject
      "ListAvailableVersionsResponse"
      ( \o ->
          ListAvailableVersionsResponse
            Core.<$> (o Core..:? "availableVersions")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "versions")
      )

instance Core.ToJSON ListAvailableVersionsResponse where
  toJSON ListAvailableVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableVersions" Core..=) Core.<$> availableVersions,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("versions" Core..=) Core.<$> versions
          ]
      )

-- | Response message for list DNS peerings.
--
-- /See:/ 'newListDnsPeeringsResponse' smart constructor.
data ListDnsPeeringsResponse = ListDnsPeeringsResponse
  { -- | List of dns peering.
    dnsPeerings :: (Core.Maybe [DnsPeering]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDnsPeeringsResponse' with the minimum fields required to make a request.
newListDnsPeeringsResponse ::
  ListDnsPeeringsResponse
newListDnsPeeringsResponse =
  ListDnsPeeringsResponse
    { dnsPeerings = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDnsPeeringsResponse where
  parseJSON =
    Core.withObject
      "ListDnsPeeringsResponse"
      ( \o ->
          ListDnsPeeringsResponse
            Core.<$> (o Core..:? "dnsPeerings")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDnsPeeringsResponse where
  toJSON ListDnsPeeringsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dnsPeerings" Core..=) Core.<$> dnsPeerings,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for the list instance request.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | Represents a list of Data Fusion instances.
    instances :: (Core.Maybe [Instance]),
    -- | Token to retrieve the next page of results or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse ::
  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { instances = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
  parseJSON =
    Core.withObject
      "ListInstancesResponse"
      ( \o ->
          ListInstancesResponse
            Core.<$> (o Core..:? "instances")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable")
      )

instance Core.ToJSON ListInstancesResponse where
  toJSON ListInstancesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("instances" Core..=) Core.<$> instances,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
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
  ListLocationsResponse
    { locations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

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

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | A resource that represents a Google Cloud location.
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
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional =
  Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      (\o -> Location_Labels Core.<$> (Core.parseJSONObject o))

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
newLocation_Metadata additional =
  Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      (\o -> Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Maintenance policy of the instance.
--
-- /See:/ 'newMaintenancePolicy' smart constructor.
data MaintenancePolicy = MaintenancePolicy
  { -- | Optional. The maintenance exclusion window of the instance.
    maintenanceExclusionWindow :: (Core.Maybe TimeWindow),
    -- | Optional. The maintenance window of the instance.
    maintenanceWindow :: (Core.Maybe MaintenanceWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
newMaintenancePolicy ::
  MaintenancePolicy
newMaintenancePolicy =
  MaintenancePolicy
    { maintenanceExclusionWindow = Core.Nothing,
      maintenanceWindow = Core.Nothing
    }

instance Core.FromJSON MaintenancePolicy where
  parseJSON =
    Core.withObject
      "MaintenancePolicy"
      ( \o ->
          MaintenancePolicy
            Core.<$> (o Core..:? "maintenanceExclusionWindow")
            Core.<*> (o Core..:? "maintenanceWindow")
      )

instance Core.ToJSON MaintenancePolicy where
  toJSON MaintenancePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("maintenanceExclusionWindow" Core..=)
              Core.<$> maintenanceExclusionWindow,
            ("maintenanceWindow" Core..=) Core.<$> maintenanceWindow
          ]
      )

-- | Maintenance window of the instance.
--
-- /See:/ 'newMaintenanceWindow' smart constructor.
newtype MaintenanceWindow = MaintenanceWindow
  { -- | Required. The recurring time window of the maintenance window.
    recurringTimeWindow :: (Core.Maybe RecurringTimeWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
newMaintenanceWindow ::
  MaintenanceWindow
newMaintenanceWindow =
  MaintenanceWindow {recurringTimeWindow = Core.Nothing}

instance Core.FromJSON MaintenanceWindow where
  parseJSON =
    Core.withObject
      "MaintenanceWindow"
      ( \o ->
          MaintenanceWindow Core.<$> (o Core..:? "recurringTimeWindow")
      )

instance Core.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [("recurringTimeWindow" Core..=) Core.<$> recurringTimeWindow]
      )

-- | Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
  { -- | Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
    connectionType :: (Core.Maybe NetworkConfig_ConnectionType),
    -- | Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. This is required only when using connection type VPC_PEERING. Format: a.b.c.d\/22 Example: 192.168.0.0\/22
    ipAllocation :: (Core.Maybe Core.Text),
    -- | Optional. Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. In case of shared VPC where the network resides in another host project the network should specified in the form of projects\/{host-project-id}\/global\/networks\/{network}. This is only required for connectivity type VPC_PEERING.
    network :: (Core.Maybe Core.Text),
    -- | Optional. Configuration for Private Service Connect. This is required only when using connection type PRIVATE/SERVICE/CONNECT_INTERFACES.
    privateServiceConnectConfig :: (Core.Maybe PrivateServiceConnectConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
newNetworkConfig ::
  NetworkConfig
newNetworkConfig =
  NetworkConfig
    { connectionType = Core.Nothing,
      ipAllocation = Core.Nothing,
      network = Core.Nothing,
      privateServiceConnectConfig = Core.Nothing
    }

instance Core.FromJSON NetworkConfig where
  parseJSON =
    Core.withObject
      "NetworkConfig"
      ( \o ->
          NetworkConfig
            Core.<$> (o Core..:? "connectionType")
            Core.<*> (o Core..:? "ipAllocation")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "privateServiceConnectConfig")
      )

instance Core.ToJSON NetworkConfig where
  toJSON NetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectionType" Core..=) Core.<$> connectionType,
            ("ipAllocation" Core..=) Core.<$> ipAllocation,
            ("network" Core..=) Core.<$> network,
            ("privateServiceConnectConfig" Core..=)
              Core.<$> privateServiceConnectConfig
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | Represents the metadata of a long-running operation.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Map to hold any additional status info for the operation If there is an accelerator being enabled\/disabled\/deleted, this will be populated with accelerator name as key and status as ENABLING, DISABLING or DELETING
    additionalStatus :: (Core.Maybe OperationMetadata_AdditionalStatus),
    -- | API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    requestedCancellation :: (Core.Maybe Core.Bool),
    -- | Human-readable status of the operation if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { additionalStatus = Core.Nothing,
      apiVersion = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      requestedCancellation = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "additionalStatus")
            Core.<*> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "requestedCancellation")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalStatus" Core..=) Core.<$> additionalStatus,
            ("apiVersion" Core..=) Core.<$> apiVersion,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("requestedCancellation" Core..=) Core.<$> requestedCancellation,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | Map to hold any additional status info for the operation If there is an accelerator being enabled\/disabled\/deleted, this will be populated with accelerator name as key and status as ENABLING, DISABLING or DELETING
--
-- /See:/ 'newOperationMetadata_AdditionalStatus' smart constructor.
newtype OperationMetadata_AdditionalStatus = OperationMetadata_AdditionalStatus
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata_AdditionalStatus' with the minimum fields required to make a request.
newOperationMetadata_AdditionalStatus ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  OperationMetadata_AdditionalStatus
newOperationMetadata_AdditionalStatus additional =
  OperationMetadata_AdditionalStatus {additional = additional}

instance Core.FromJSON OperationMetadata_AdditionalStatus where
  parseJSON =
    Core.withObject
      "OperationMetadata_AdditionalStatus"
      ( \o ->
          OperationMetadata_AdditionalStatus
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON OperationMetadata_AdditionalStatus where
  toJSON OperationMetadata_AdditionalStatus {..} =
    Core.toJSON additional

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__
-- @{ \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\", \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 }@ __YAML example:__
-- @bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3@ For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
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

-- | Configuration for using Private Service Connect to establish connectivity between the Data Fusion consumer project and the corresponding tenant project.
--
-- /See:/ 'newPrivateServiceConnectConfig' smart constructor.
data PrivateServiceConnectConfig = PrivateServiceConnectConfig
  { -- | Output only. The CIDR block to which the CDF instance can\'t route traffic to in the consumer project VPC. The size of this block is \/25. The format of this field is governed by RFC 4632. Example: 240.0.0.0\/25
    effectiveUnreachableCidrBlock :: (Core.Maybe Core.Text),
    -- | Required. The reference to the network attachment used to establish private connectivity. It will be of the form projects\/{project-id}\/regions\/{region}\/networkAttachments\/{network-attachment-id}.
    networkAttachment :: (Core.Maybe Core.Text),
    -- | Optional. Input only. The CIDR block to which the CDF instance can\'t route traffic to in the consumer project VPC. The size of this block should be at least \/25. This range should not overlap with the primary address range of any subnetwork used by the network attachment. This range can be used for other purposes in the consumer VPC as long as there is no requirement for CDF to reach destinations using these addresses. If this value is not provided, the server chooses a non RFC 1918 address range. The format of this field is governed by RFC 4632. Example: 192.168.0.0\/25
    unreachableCidrBlock :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateServiceConnectConfig' with the minimum fields required to make a request.
newPrivateServiceConnectConfig ::
  PrivateServiceConnectConfig
newPrivateServiceConnectConfig =
  PrivateServiceConnectConfig
    { effectiveUnreachableCidrBlock =
        Core.Nothing,
      networkAttachment = Core.Nothing,
      unreachableCidrBlock = Core.Nothing
    }

instance Core.FromJSON PrivateServiceConnectConfig where
  parseJSON =
    Core.withObject
      "PrivateServiceConnectConfig"
      ( \o ->
          PrivateServiceConnectConfig
            Core.<$> (o Core..:? "effectiveUnreachableCidrBlock")
            Core.<*> (o Core..:? "networkAttachment")
            Core.<*> (o Core..:? "unreachableCidrBlock")
      )

instance Core.ToJSON PrivateServiceConnectConfig where
  toJSON PrivateServiceConnectConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("effectiveUnreachableCidrBlock" Core..=)
              Core.<$> effectiveUnreachableCidrBlock,
            ("networkAttachment" Core..=) Core.<$> networkAttachment,
            ("unreachableCidrBlock" Core..=) Core.<$> unreachableCidrBlock
          ]
      )

-- | Represents an arbitrary window of time that recurs.
--
-- /See:/ 'newRecurringTimeWindow' smart constructor.
data RecurringTimeWindow = RecurringTimeWindow
  { -- | Required. An RRULE with format <https://tools.ietf.org/html/rfc5545#section-3.8.5.3 RFC-5545> for how this window reccurs. They go on for the span of time between the start and end time. The only supported FREQ value is \"WEEKLY\". To have something repeat every weekday, use: \"FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR\". This specifies how frequently the window starts. To have a 9 am - 5 pm UTC-4 window every weekday, use something like: @start time = 2019-01-01T09:00:00-0400 end time = 2019-01-01T17:00:00-0400 recurrence = FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR@
    recurrence :: (Core.Maybe Core.Text),
    -- | Required. The window representing the start and end time of recurrences. This field ignores the date components of the provided timestamps. Only the time of day and duration between start and end time are relevant.
    window :: (Core.Maybe TimeWindow)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecurringTimeWindow' with the minimum fields required to make a request.
newRecurringTimeWindow ::
  RecurringTimeWindow
newRecurringTimeWindow =
  RecurringTimeWindow
    { recurrence = Core.Nothing,
      window = Core.Nothing
    }

instance Core.FromJSON RecurringTimeWindow where
  parseJSON =
    Core.withObject
      "RecurringTimeWindow"
      ( \o ->
          RecurringTimeWindow
            Core.<$> (o Core..:? "recurrence")
            Core.<*> (o Core..:? "window")
      )

instance Core.ToJSON RecurringTimeWindow where
  toJSON RecurringTimeWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("recurrence" Core..=) Core.<$> recurrence,
            ("window" Core..=) Core.<$> window
          ]
      )

-- | Request message for restarting a Data Fusion instance.
--
-- /See:/ 'newRestartInstanceRequest' smart constructor.
data RestartInstanceRequest = RestartInstanceRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestartInstanceRequest' with the minimum fields required to make a request.
newRestartInstanceRequest ::
  RestartInstanceRequest
newRestartInstanceRequest = RestartInstanceRequest

instance Core.FromJSON RestartInstanceRequest where
  parseJSON =
    Core.withObject
      "RestartInstanceRequest"
      (\o -> Core.pure RestartInstanceRequest)

instance Core.ToJSON RestartInstanceRequest where
  toJSON = Core.const Core.emptyObject

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest
    { policy = Core.Nothing,
      updateMask = Core.Nothing
    }

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

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
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
          TestIamPermissionsRequest Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

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
          TestIamPermissionsResponse Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      (Core.catMaybes [("permissions" Core..=) Core.<$> permissions])

-- | Represents an arbitrary window of time.
--
-- /See:/ 'newTimeWindow' smart constructor.
data TimeWindow = TimeWindow
  { -- | Required. The end time of the time window provided in <https://www.ietf.org/rfc/rfc3339.txt RFC 3339> format. The end time should take place after the start time. Example: \"2024-01-02T12:04:06-06:00\"
    endTime :: (Core.Maybe Core.DateTime),
    -- | Required. The start time of the time window provided in <https://www.ietf.org/rfc/rfc3339.txt RFC 3339> format. Example: \"2024-01-01T12:04:06-04:00\"
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeWindow' with the minimum fields required to make a request.
newTimeWindow ::
  TimeWindow
newTimeWindow =
  TimeWindow {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeWindow where
  parseJSON =
    Core.withObject
      "TimeWindow"
      ( \o ->
          TimeWindow
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimeWindow where
  toJSON TimeWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.
--
-- /See:/ 'newVersion' smart constructor.
data Version = Version
  { -- | Represents a list of available feature names for a given version.
    availableFeatures :: (Core.Maybe [Core.Text]),
    -- | Whether this is currently the default version for Cloud Data Fusion
    defaultVersion :: (Core.Maybe Core.Bool),
    -- | Type represents the release availability of the version
    type' :: (Core.Maybe Version_Type),
    -- | The version number of the Data Fusion instance, such as \'6.0.1.0\'.
    versionNumber :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
newVersion ::
  Version
newVersion =
  Version
    { availableFeatures = Core.Nothing,
      defaultVersion = Core.Nothing,
      type' = Core.Nothing,
      versionNumber = Core.Nothing
    }

instance Core.FromJSON Version where
  parseJSON =
    Core.withObject
      "Version"
      ( \o ->
          Version
            Core.<$> (o Core..:? "availableFeatures")
            Core.<*> (o Core..:? "defaultVersion")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "versionNumber")
      )

instance Core.ToJSON Version where
  toJSON Version {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableFeatures" Core..=) Core.<$> availableFeatures,
            ("defaultVersion" Core..=) Core.<$> defaultVersion,
            ("type" Core..=) Core.<$> type',
            ("versionNumber" Core..=) Core.<$> versionNumber
          ]
      )
