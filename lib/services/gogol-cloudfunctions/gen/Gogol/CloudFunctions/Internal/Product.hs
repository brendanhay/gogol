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
-- Module      : Gogol.CloudFunctions.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudFunctions.Internal.Product
  ( -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * BuildConfig
    BuildConfig (..),
    newBuildConfig,

    -- * BuildConfig_EnvironmentVariables
    BuildConfig_EnvironmentVariables (..),
    newBuildConfig_EnvironmentVariables,

    -- * EventFilter
    EventFilter (..),
    newEventFilter,

    -- * EventTrigger
    EventTrigger (..),
    newEventTrigger,

    -- * Expr
    Expr (..),
    newExpr,

    -- * Function
    Function (..),
    newFunction,

    -- * Function_Labels
    Function_Labels (..),
    newFunction_Labels,

    -- * GenerateDownloadUrlRequest
    GenerateDownloadUrlRequest (..),
    newGenerateDownloadUrlRequest,

    -- * GenerateDownloadUrlResponse
    GenerateDownloadUrlResponse (..),
    newGenerateDownloadUrlResponse,

    -- * GenerateUploadUrlRequest
    GenerateUploadUrlRequest (..),
    newGenerateUploadUrlRequest,

    -- * GenerateUploadUrlResponse
    GenerateUploadUrlResponse (..),
    newGenerateUploadUrlResponse,

    -- * GoogleCloudFunctionsV2alphaOperationMetadata
    GoogleCloudFunctionsV2alphaOperationMetadata (..),
    newGoogleCloudFunctionsV2alphaOperationMetadata,

    -- * GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
    GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource (..),
    newGoogleCloudFunctionsV2alphaOperationMetadata_RequestResource,

    -- * GoogleCloudFunctionsV2alphaStage
    GoogleCloudFunctionsV2alphaStage (..),
    newGoogleCloudFunctionsV2alphaStage,

    -- * GoogleCloudFunctionsV2alphaStateMessage
    GoogleCloudFunctionsV2alphaStateMessage (..),
    newGoogleCloudFunctionsV2alphaStateMessage,

    -- * GoogleCloudFunctionsV2betaOperationMetadata
    GoogleCloudFunctionsV2betaOperationMetadata (..),
    newGoogleCloudFunctionsV2betaOperationMetadata,

    -- * GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
    GoogleCloudFunctionsV2betaOperationMetadata_RequestResource (..),
    newGoogleCloudFunctionsV2betaOperationMetadata_RequestResource,

    -- * GoogleCloudFunctionsV2betaStage
    GoogleCloudFunctionsV2betaStage (..),
    newGoogleCloudFunctionsV2betaStage,

    -- * GoogleCloudFunctionsV2betaStateMessage
    GoogleCloudFunctionsV2betaStateMessage (..),
    newGoogleCloudFunctionsV2betaStateMessage,

    -- * ListFunctionsResponse
    ListFunctionsResponse (..),
    newListFunctionsResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListRuntimesResponse
    ListRuntimesResponse (..),
    newListRuntimesResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadataV1
    OperationMetadataV1 (..),
    newOperationMetadataV1,

    -- * OperationMetadataV1_Request
    OperationMetadataV1_Request (..),
    newOperationMetadataV1_Request,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * RepoSource
    RepoSource (..),
    newRepoSource,

    -- * Runtime
    Runtime (..),
    newRuntime,

    -- * ServiceConfig
    ServiceConfig (..),
    newServiceConfig,

    -- * ServiceConfig_EnvironmentVariables
    ServiceConfig_EnvironmentVariables (..),
    newServiceConfig_EnvironmentVariables,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Source
    Source (..),
    newSource,

    -- * SourceProvenance
    SourceProvenance (..),
    newSourceProvenance,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StorageSource
    StorageSource (..),
    newStorageSource,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
  )
where

import Gogol.CloudFunctions.Internal.Sum
import qualified Gogol.Prelude as Core

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
            Core.<$> (o Core..:? "auditLogConfigs" Core..!= Core.mempty)
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
            Core.<$> (o Core..:? "exemptedMembers" Core..!= Core.mempty)
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
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
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

-- | Describes the Build step of the function that builds a container from the given source.
--
-- /See:/ 'newBuildConfig' smart constructor.
data BuildConfig = BuildConfig
  { -- | Output only. The Cloud Build name of the latest successful deployment of the function.
    build :: (Core.Maybe Core.Text),
    -- | Optional. User managed repository created in Artifact Registry optionally with a customer managed encryption key. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. If unspecified, GCF will create and use a repository named \'gcf-artifacts\' for every deployed region. It must match the pattern @projects\/{project}\/locations\/{location}\/repositories\/{repository}@. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be \'DOCKER\'.
    dockerRepository :: (Core.Maybe Core.Text),
    -- | The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named \"function\". For Node.js this is name of a function exported by the module specified in @source_location@.
    entryPoint :: (Core.Maybe Core.Text),
    -- | User-provided build-time environment variables for the function
    environmentVariables :: (Core.Maybe BuildConfig_EnvironmentVariables),
    -- | The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the <https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime gcloud command reference>.
    runtime :: (Core.Maybe Core.Text),
    -- | The location of the function source code.
    source :: (Core.Maybe Source),
    -- | Output only. A permanent fixed identifier for source.
    sourceProvenance :: (Core.Maybe SourceProvenance),
    -- | Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is @projects\/{project}\/locations\/{region}\/workerPools\/{workerPool}@ where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (service-\@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role Cloud Build Custom Workers Builder (roles\/cloudbuild.customworkers.builder) in the project.
    workerPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildConfig' with the minimum fields required to make a request.
newBuildConfig ::
  BuildConfig
newBuildConfig =
  BuildConfig
    { build = Core.Nothing,
      dockerRepository = Core.Nothing,
      entryPoint = Core.Nothing,
      environmentVariables = Core.Nothing,
      runtime = Core.Nothing,
      source = Core.Nothing,
      sourceProvenance = Core.Nothing,
      workerPool = Core.Nothing
    }

instance Core.FromJSON BuildConfig where
  parseJSON =
    Core.withObject
      "BuildConfig"
      ( \o ->
          BuildConfig
            Core.<$> (o Core..:? "build")
            Core.<*> (o Core..:? "dockerRepository")
            Core.<*> (o Core..:? "entryPoint")
            Core.<*> (o Core..:? "environmentVariables")
            Core.<*> (o Core..:? "runtime")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "sourceProvenance")
            Core.<*> (o Core..:? "workerPool")
      )

instance Core.ToJSON BuildConfig where
  toJSON BuildConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("build" Core..=) Core.<$> build,
            ("dockerRepository" Core..=)
              Core.<$> dockerRepository,
            ("entryPoint" Core..=) Core.<$> entryPoint,
            ("environmentVariables" Core..=)
              Core.<$> environmentVariables,
            ("runtime" Core..=) Core.<$> runtime,
            ("source" Core..=) Core.<$> source,
            ("sourceProvenance" Core..=)
              Core.<$> sourceProvenance,
            ("workerPool" Core..=) Core.<$> workerPool
          ]
      )

-- | User-provided build-time environment variables for the function
--
-- /See:/ 'newBuildConfig_EnvironmentVariables' smart constructor.
newtype BuildConfig_EnvironmentVariables = BuildConfig_EnvironmentVariables
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildConfig_EnvironmentVariables' with the minimum fields required to make a request.
newBuildConfig_EnvironmentVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  BuildConfig_EnvironmentVariables
newBuildConfig_EnvironmentVariables addtional =
  BuildConfig_EnvironmentVariables {addtional = addtional}

instance
  Core.FromJSON
    BuildConfig_EnvironmentVariables
  where
  parseJSON =
    Core.withObject
      "BuildConfig_EnvironmentVariables"
      ( \o ->
          BuildConfig_EnvironmentVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BuildConfig_EnvironmentVariables where
  toJSON BuildConfig_EnvironmentVariables {..} =
    Core.toJSON addtional

-- | Filters events based on exact matches on the CloudEvents attributes.
--
-- /See:/ 'newEventFilter' smart constructor.
data EventFilter = EventFilter
  { -- | Required. The name of a CloudEvents attribute.
    attribute :: (Core.Maybe Core.Text),
    -- | Required. The value for the attribute.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventFilter' with the minimum fields required to make a request.
newEventFilter ::
  EventFilter
newEventFilter = EventFilter {attribute = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON EventFilter where
  parseJSON =
    Core.withObject
      "EventFilter"
      ( \o ->
          EventFilter
            Core.<$> (o Core..:? "attribute")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON EventFilter where
  toJSON EventFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribute" Core..=) Core.<$> attribute,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Describes EventTrigger, used to request events to be sent from another service.
--
-- /See:/ 'newEventTrigger' smart constructor.
data EventTrigger = EventTrigger
  { -- | Criteria used to filter events.
    eventFilters :: (Core.Maybe [EventFilter]),
    -- | Required. The type of event to observe. For example: @google.cloud.audit.log.v1.written@ or @google.cloud.pubsub.topic.v1.messagePublished@.
    eventType :: (Core.Maybe Core.Text),
    -- | Optional. The name of a Pub\/Sub topic in the same project that will be used as the transport topic for the event delivery. Format: @projects\/{project}\/topics\/{topic}@. This is only valid for events of type @google.cloud.pubsub.topic.v1.messagePublished@. The topic provided here will not be deleted at function deletion.
    pubsubTopic :: (Core.Maybe Core.Text),
    -- | Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
    retryPolicy :: (Core.Maybe EventTrigger_RetryPolicy),
    -- | Optional. The email of the trigger\'s service account. The service account must have permission to invoke Cloud Run services, the permission is @run.routes.invoke@. If empty, defaults to the Compute Engine default service account: @{project_number}-compute\@developer.gserviceaccount.com@.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the Eventarc trigger. The format of this field is @projects\/{project}\/locations\/{region}\/triggers\/{trigger}@.
    trigger :: (Core.Maybe Core.Text),
    -- | The region that the trigger will be in. The trigger will only receive events originating in this region. It can be the same region as the function, a different region or multi-region, or the global region. If not provided, defaults to the same region as the function.
    triggerRegion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EventTrigger' with the minimum fields required to make a request.
newEventTrigger ::
  EventTrigger
newEventTrigger =
  EventTrigger
    { eventFilters = Core.Nothing,
      eventType = Core.Nothing,
      pubsubTopic = Core.Nothing,
      retryPolicy = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      trigger = Core.Nothing,
      triggerRegion = Core.Nothing
    }

instance Core.FromJSON EventTrigger where
  parseJSON =
    Core.withObject
      "EventTrigger"
      ( \o ->
          EventTrigger
            Core.<$> (o Core..:? "eventFilters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "pubsubTopic")
            Core.<*> (o Core..:? "retryPolicy")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "trigger")
            Core.<*> (o Core..:? "triggerRegion")
      )

instance Core.ToJSON EventTrigger where
  toJSON EventTrigger {..} =
    Core.object
      ( Core.catMaybes
          [ ("eventFilters" Core..=) Core.<$> eventFilters,
            ("eventType" Core..=) Core.<$> eventType,
            ("pubsubTopic" Core..=) Core.<$> pubsubTopic,
            ("retryPolicy" Core..=) Core.<$> retryPolicy,
            ("serviceAccountEmail" Core..=)
              Core.<$> serviceAccountEmail,
            ("trigger" Core..=) Core.<$> trigger,
            ("triggerRegion" Core..=) Core.<$> triggerRegion
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

-- | Describes a Cloud Function that contains user computation executed in response to an event. It encapsulate function and triggers configurations.
--
-- /See:/ 'newFunction' smart constructor.
data Function = Function
  { -- | Describes the Build step of the function that builds a container from the given source.
    buildConfig :: (Core.Maybe BuildConfig),
    -- | User-provided description of a function.
    description :: (Core.Maybe Core.Text),
    -- | Describe whether the function is gen1 or gen2.
    environment :: (Core.Maybe Function_Environment),
    -- | An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
    eventTrigger :: (Core.Maybe EventTrigger),
    -- | Labels associated with this Cloud Function.
    labels :: (Core.Maybe Function_Labels),
    -- | A user-defined name of the function. Function names must be unique globally and match pattern @projects\/*\/locations\/*\/functions\/*@
    name :: (Core.Maybe Core.Text),
    -- | Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
    serviceConfig :: (Core.Maybe ServiceConfig),
    -- | Output only. State of the function.
    state :: (Core.Maybe Function_State),
    -- | Output only. State Messages for this Cloud Function.
    stateMessages :: (Core.Maybe [GoogleCloudFunctionsV2betaStateMessage]),
    -- | Output only. The last update timestamp of a Cloud Function.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Function' with the minimum fields required to make a request.
newFunction ::
  Function
newFunction =
  Function
    { buildConfig = Core.Nothing,
      description = Core.Nothing,
      environment = Core.Nothing,
      eventTrigger = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      serviceConfig = Core.Nothing,
      state = Core.Nothing,
      stateMessages = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON Function where
  parseJSON =
    Core.withObject
      "Function"
      ( \o ->
          Function
            Core.<$> (o Core..:? "buildConfig")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "eventTrigger")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "serviceConfig")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateMessages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON Function where
  toJSON Function {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildConfig" Core..=) Core.<$> buildConfig,
            ("description" Core..=) Core.<$> description,
            ("environment" Core..=) Core.<$> environment,
            ("eventTrigger" Core..=) Core.<$> eventTrigger,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("serviceConfig" Core..=) Core.<$> serviceConfig,
            ("state" Core..=) Core.<$> state,
            ("stateMessages" Core..=) Core.<$> stateMessages,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Labels associated with this Cloud Function.
--
-- /See:/ 'newFunction_Labels' smart constructor.
newtype Function_Labels = Function_Labels
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Function_Labels' with the minimum fields required to make a request.
newFunction_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Function_Labels
newFunction_Labels addtional = Function_Labels {addtional = addtional}

instance Core.FromJSON Function_Labels where
  parseJSON =
    Core.withObject
      "Function_Labels"
      ( \o ->
          Function_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Function_Labels where
  toJSON Function_Labels {..} = Core.toJSON addtional

-- | Request of @GenerateDownloadUrl@ method.
--
-- /See:/ 'newGenerateDownloadUrlRequest' smart constructor.
data GenerateDownloadUrlRequest = GenerateDownloadUrlRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateDownloadUrlRequest' with the minimum fields required to make a request.
newGenerateDownloadUrlRequest ::
  GenerateDownloadUrlRequest
newGenerateDownloadUrlRequest = GenerateDownloadUrlRequest

instance Core.FromJSON GenerateDownloadUrlRequest where
  parseJSON =
    Core.withObject
      "GenerateDownloadUrlRequest"
      (\o -> Core.pure GenerateDownloadUrlRequest)

instance Core.ToJSON GenerateDownloadUrlRequest where
  toJSON = Core.const Core.emptyObject

-- | Response of @GenerateDownloadUrl@ method.
--
-- /See:/ 'newGenerateDownloadUrlResponse' smart constructor.
newtype GenerateDownloadUrlResponse = GenerateDownloadUrlResponse
  { -- | The generated Google Cloud Storage signed URL that should be used for function source code download.
    downloadUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateDownloadUrlResponse' with the minimum fields required to make a request.
newGenerateDownloadUrlResponse ::
  GenerateDownloadUrlResponse
newGenerateDownloadUrlResponse =
  GenerateDownloadUrlResponse {downloadUrl = Core.Nothing}

instance Core.FromJSON GenerateDownloadUrlResponse where
  parseJSON =
    Core.withObject
      "GenerateDownloadUrlResponse"
      ( \o ->
          GenerateDownloadUrlResponse
            Core.<$> (o Core..:? "downloadUrl")
      )

instance Core.ToJSON GenerateDownloadUrlResponse where
  toJSON GenerateDownloadUrlResponse {..} =
    Core.object
      ( Core.catMaybes
          [("downloadUrl" Core..=) Core.<$> downloadUrl]
      )

-- | Request of @GenerateSourceUploadUrl@ method.
--
-- /See:/ 'newGenerateUploadUrlRequest' smart constructor.
data GenerateUploadUrlRequest = GenerateUploadUrlRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateUploadUrlRequest' with the minimum fields required to make a request.
newGenerateUploadUrlRequest ::
  GenerateUploadUrlRequest
newGenerateUploadUrlRequest = GenerateUploadUrlRequest

instance Core.FromJSON GenerateUploadUrlRequest where
  parseJSON =
    Core.withObject
      "GenerateUploadUrlRequest"
      (\o -> Core.pure GenerateUploadUrlRequest)

instance Core.ToJSON GenerateUploadUrlRequest where
  toJSON = Core.const Core.emptyObject

-- | Response of @GenerateSourceUploadUrl@ method.
--
-- /See:/ 'newGenerateUploadUrlResponse' smart constructor.
data GenerateUploadUrlResponse = GenerateUploadUrlResponse
  { -- | The location of the source code in the upload bucket. Once the archive is uploaded using the @upload_url@ use this field to set the @function.build_config.source.storage_source@ during CreateFunction and UpdateFunction. Generation defaults to 0, as Cloud Storage provides a new generation only upon uploading a new object or version of an object.
    storageSource :: (Core.Maybe StorageSource),
    -- | The generated Google Cloud Storage signed URL that should be used for a function source code upload. The uploaded file should be a zip archive which contains a function.
    uploadUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateUploadUrlResponse' with the minimum fields required to make a request.
newGenerateUploadUrlResponse ::
  GenerateUploadUrlResponse
newGenerateUploadUrlResponse =
  GenerateUploadUrlResponse
    { storageSource = Core.Nothing,
      uploadUrl = Core.Nothing
    }

instance Core.FromJSON GenerateUploadUrlResponse where
  parseJSON =
    Core.withObject
      "GenerateUploadUrlResponse"
      ( \o ->
          GenerateUploadUrlResponse
            Core.<$> (o Core..:? "storageSource")
            Core.<*> (o Core..:? "uploadUrl")
      )

instance Core.ToJSON GenerateUploadUrlResponse where
  toJSON GenerateUploadUrlResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("storageSource" Core..=) Core.<$> storageSource,
            ("uploadUrl" Core..=) Core.<$> uploadUrl
          ]
      )

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newGoogleCloudFunctionsV2alphaOperationMetadata' smart constructor.
data GoogleCloudFunctionsV2alphaOperationMetadata = GoogleCloudFunctionsV2alphaOperationMetadata
  { -- | API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The original request that started the operation.
    requestResource ::
      ( Core.Maybe
          GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
      ),
    -- | Mechanism for reporting in-progress stages
    stages :: (Core.Maybe [GoogleCloudFunctionsV2alphaStage]),
    -- | Human-readable status of the operation, if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2alphaOperationMetadata' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2alphaOperationMetadata ::
  GoogleCloudFunctionsV2alphaOperationMetadata
newGoogleCloudFunctionsV2alphaOperationMetadata =
  GoogleCloudFunctionsV2alphaOperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      requestResource = Core.Nothing,
      stages = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2alphaOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2alphaOperationMetadata"
      ( \o ->
          GoogleCloudFunctionsV2alphaOperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "requestResource")
            Core.<*> (o Core..:? "stages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance
  Core.ToJSON
    GoogleCloudFunctionsV2alphaOperationMetadata
  where
  toJSON
    GoogleCloudFunctionsV2alphaOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("apiVersion" Core..=) Core.<$> apiVersion,
              ("cancelRequested" Core..=) Core.<$> cancelRequested,
              ("createTime" Core..=) Core.<$> createTime,
              ("endTime" Core..=) Core.<$> endTime,
              ("requestResource" Core..=) Core.<$> requestResource,
              ("stages" Core..=) Core.<$> stages,
              ("statusDetail" Core..=) Core.<$> statusDetail,
              ("target" Core..=) Core.<$> target,
              ("verb" Core..=) Core.<$> verb
            ]
        )

-- | The original request that started the operation.
--
-- /See:/ 'newGoogleCloudFunctionsV2alphaOperationMetadata_RequestResource' smart constructor.
newtype GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource = GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2alphaOperationMetadata_RequestResource ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
newGoogleCloudFunctionsV2alphaOperationMetadata_RequestResource addtional =
  GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
    { addtional = addtional
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource"
      ( \o ->
          GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource
  where
  toJSON
    GoogleCloudFunctionsV2alphaOperationMetadata_RequestResource {..} =
      Core.toJSON addtional

-- | Each Stage of the deployment process
--
-- /See:/ 'newGoogleCloudFunctionsV2alphaStage' smart constructor.
data GoogleCloudFunctionsV2alphaStage = GoogleCloudFunctionsV2alphaStage
  { -- | Message describing the Stage
    message :: (Core.Maybe Core.Text),
    -- | Name of the Stage. This will be unique for each Stage.
    name :: (Core.Maybe GoogleCloudFunctionsV2alphaStage_Name),
    -- | Resource of the Stage
    resource :: (Core.Maybe Core.Text),
    -- | Link to the current Stage resource
    resourceUri :: (Core.Maybe Core.Text),
    -- | Current state of the Stage
    state :: (Core.Maybe GoogleCloudFunctionsV2alphaStage_State),
    -- | State messages from the current Stage.
    stateMessages :: (Core.Maybe [GoogleCloudFunctionsV2alphaStateMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2alphaStage' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2alphaStage ::
  GoogleCloudFunctionsV2alphaStage
newGoogleCloudFunctionsV2alphaStage =
  GoogleCloudFunctionsV2alphaStage
    { message = Core.Nothing,
      name = Core.Nothing,
      resource = Core.Nothing,
      resourceUri = Core.Nothing,
      state = Core.Nothing,
      stateMessages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2alphaStage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2alphaStage"
      ( \o ->
          GoogleCloudFunctionsV2alphaStage
            Core.<$> (o Core..:? "message")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateMessages" Core..!= Core.mempty)
      )

instance Core.ToJSON GoogleCloudFunctionsV2alphaStage where
  toJSON GoogleCloudFunctionsV2alphaStage {..} =
    Core.object
      ( Core.catMaybes
          [ ("message" Core..=) Core.<$> message,
            ("name" Core..=) Core.<$> name,
            ("resource" Core..=) Core.<$> resource,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("state" Core..=) Core.<$> state,
            ("stateMessages" Core..=) Core.<$> stateMessages
          ]
      )

-- | Informational messages about the state of the Cloud Function or Operation.
--
-- /See:/ 'newGoogleCloudFunctionsV2alphaStateMessage' smart constructor.
data GoogleCloudFunctionsV2alphaStateMessage = GoogleCloudFunctionsV2alphaStateMessage
  { -- | The message.
    message :: (Core.Maybe Core.Text),
    -- | Severity of the state message.
    severity :: (Core.Maybe GoogleCloudFunctionsV2alphaStateMessage_Severity),
    -- | One-word CamelCase type of the state message.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2alphaStateMessage' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2alphaStateMessage ::
  GoogleCloudFunctionsV2alphaStateMessage
newGoogleCloudFunctionsV2alphaStateMessage =
  GoogleCloudFunctionsV2alphaStateMessage
    { message = Core.Nothing,
      severity = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2alphaStateMessage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2alphaStateMessage"
      ( \o ->
          GoogleCloudFunctionsV2alphaStateMessage
            Core.<$> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudFunctionsV2alphaStateMessage
  where
  toJSON GoogleCloudFunctionsV2alphaStateMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newGoogleCloudFunctionsV2betaOperationMetadata' smart constructor.
data GoogleCloudFunctionsV2betaOperationMetadata = GoogleCloudFunctionsV2betaOperationMetadata
  { -- | API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | The original request that started the operation.
    requestResource ::
      ( Core.Maybe
          GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
      ),
    -- | Mechanism for reporting in-progress stages
    stages :: (Core.Maybe [GoogleCloudFunctionsV2betaStage]),
    -- | Human-readable status of the operation, if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2betaOperationMetadata' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2betaOperationMetadata ::
  GoogleCloudFunctionsV2betaOperationMetadata
newGoogleCloudFunctionsV2betaOperationMetadata =
  GoogleCloudFunctionsV2betaOperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      requestResource = Core.Nothing,
      stages = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2betaOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2betaOperationMetadata"
      ( \o ->
          GoogleCloudFunctionsV2betaOperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "requestResource")
            Core.<*> (o Core..:? "stages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance
  Core.ToJSON
    GoogleCloudFunctionsV2betaOperationMetadata
  where
  toJSON
    GoogleCloudFunctionsV2betaOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("apiVersion" Core..=) Core.<$> apiVersion,
              ("cancelRequested" Core..=) Core.<$> cancelRequested,
              ("createTime" Core..=) Core.<$> createTime,
              ("endTime" Core..=) Core.<$> endTime,
              ("requestResource" Core..=) Core.<$> requestResource,
              ("stages" Core..=) Core.<$> stages,
              ("statusDetail" Core..=) Core.<$> statusDetail,
              ("target" Core..=) Core.<$> target,
              ("verb" Core..=) Core.<$> verb
            ]
        )

-- | The original request that started the operation.
--
-- /See:/ 'newGoogleCloudFunctionsV2betaOperationMetadata_RequestResource' smart constructor.
newtype GoogleCloudFunctionsV2betaOperationMetadata_RequestResource = GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2betaOperationMetadata_RequestResource' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2betaOperationMetadata_RequestResource ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
newGoogleCloudFunctionsV2betaOperationMetadata_RequestResource addtional =
  GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
    { addtional = addtional
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2betaOperationMetadata_RequestResource"
      ( \o ->
          GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudFunctionsV2betaOperationMetadata_RequestResource
  where
  toJSON
    GoogleCloudFunctionsV2betaOperationMetadata_RequestResource {..} =
      Core.toJSON addtional

-- | Each Stage of the deployment process
--
-- /See:/ 'newGoogleCloudFunctionsV2betaStage' smart constructor.
data GoogleCloudFunctionsV2betaStage = GoogleCloudFunctionsV2betaStage
  { -- | Message describing the Stage
    message :: (Core.Maybe Core.Text),
    -- | Name of the Stage. This will be unique for each Stage.
    name :: (Core.Maybe GoogleCloudFunctionsV2betaStage_Name),
    -- | Resource of the Stage
    resource :: (Core.Maybe Core.Text),
    -- | Link to the current Stage resource
    resourceUri :: (Core.Maybe Core.Text),
    -- | Current state of the Stage
    state :: (Core.Maybe GoogleCloudFunctionsV2betaStage_State),
    -- | State messages from the current Stage.
    stateMessages :: (Core.Maybe [GoogleCloudFunctionsV2betaStateMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2betaStage' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2betaStage ::
  GoogleCloudFunctionsV2betaStage
newGoogleCloudFunctionsV2betaStage =
  GoogleCloudFunctionsV2betaStage
    { message = Core.Nothing,
      name = Core.Nothing,
      resource = Core.Nothing,
      resourceUri = Core.Nothing,
      state = Core.Nothing,
      stateMessages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2betaStage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2betaStage"
      ( \o ->
          GoogleCloudFunctionsV2betaStage
            Core.<$> (o Core..:? "message")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "resourceUri")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "stateMessages" Core..!= Core.mempty)
      )

instance Core.ToJSON GoogleCloudFunctionsV2betaStage where
  toJSON GoogleCloudFunctionsV2betaStage {..} =
    Core.object
      ( Core.catMaybes
          [ ("message" Core..=) Core.<$> message,
            ("name" Core..=) Core.<$> name,
            ("resource" Core..=) Core.<$> resource,
            ("resourceUri" Core..=) Core.<$> resourceUri,
            ("state" Core..=) Core.<$> state,
            ("stateMessages" Core..=) Core.<$> stateMessages
          ]
      )

-- | Informational messages about the state of the Cloud Function or Operation.
--
-- /See:/ 'newGoogleCloudFunctionsV2betaStateMessage' smart constructor.
data GoogleCloudFunctionsV2betaStateMessage = GoogleCloudFunctionsV2betaStateMessage
  { -- | The message.
    message :: (Core.Maybe Core.Text),
    -- | Severity of the state message.
    severity :: (Core.Maybe GoogleCloudFunctionsV2betaStateMessage_Severity),
    -- | One-word CamelCase type of the state message.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudFunctionsV2betaStateMessage' with the minimum fields required to make a request.
newGoogleCloudFunctionsV2betaStateMessage ::
  GoogleCloudFunctionsV2betaStateMessage
newGoogleCloudFunctionsV2betaStateMessage =
  GoogleCloudFunctionsV2betaStateMessage
    { message = Core.Nothing,
      severity = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudFunctionsV2betaStateMessage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudFunctionsV2betaStateMessage"
      ( \o ->
          GoogleCloudFunctionsV2betaStateMessage
            Core.<$> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudFunctionsV2betaStateMessage
  where
  toJSON GoogleCloudFunctionsV2betaStateMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Response for the @ListFunctions@ method.
--
-- /See:/ 'newListFunctionsResponse' smart constructor.
data ListFunctionsResponse = ListFunctionsResponse
  { -- | The functions that match the request.
    functions :: (Core.Maybe [Function]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached. The response does not include any functions from these locations.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFunctionsResponse' with the minimum fields required to make a request.
newListFunctionsResponse ::
  ListFunctionsResponse
newListFunctionsResponse =
  ListFunctionsResponse
    { functions = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListFunctionsResponse where
  parseJSON =
    Core.withObject
      "ListFunctionsResponse"
      ( \o ->
          ListFunctionsResponse
            Core.<$> (o Core..:? "functions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable" Core..!= Core.mempty)
      )

instance Core.ToJSON ListFunctionsResponse where
  toJSON ListFunctionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("functions" Core..=) Core.<$> functions,
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
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations" Core..!= Core.mempty)
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
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response for the @ListRuntimes@ method.
--
-- /See:/ 'newListRuntimesResponse' smart constructor.
newtype ListRuntimesResponse = ListRuntimesResponse
  { -- | The runtimes that match the request.
    runtimes :: (Core.Maybe [Runtime])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRuntimesResponse' with the minimum fields required to make a request.
newListRuntimesResponse ::
  ListRuntimesResponse
newListRuntimesResponse = ListRuntimesResponse {runtimes = Core.Nothing}

instance Core.FromJSON ListRuntimesResponse where
  parseJSON =
    Core.withObject
      "ListRuntimesResponse"
      ( \o ->
          ListRuntimesResponse
            Core.<$> (o Core..:? "runtimes" Core..!= Core.mempty)
      )

instance Core.ToJSON ListRuntimesResponse where
  toJSON ListRuntimesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("runtimes" Core..=) Core.<$> runtimes]
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
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels addtional = Location_Labels {addtional = addtional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON addtional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata addtional = Location_Metadata {addtional = addtional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON addtional

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
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata addtional = Operation_Metadata {addtional = addtional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response addtional = Operation_Response {addtional = addtional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON addtional

-- | Metadata describing an Operation
--
-- /See:/ 'newOperationMetadataV1' smart constructor.
data OperationMetadataV1 = OperationMetadataV1
  { -- | The Cloud Build ID of the function created or updated by an API call. This field is only populated for Create and Update operations.
    buildId :: (Core.Maybe Core.Text),
    -- | The Cloud Build Name of the function deployment. This field is only populated for Create and Update operations. @projects\/\/locations\/\/builds\/@.
    buildName :: (Core.Maybe Core.Text),
    -- | The original request that started the operation.
    request' :: (Core.Maybe OperationMetadataV1_Request),
    -- | An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
    sourceToken :: (Core.Maybe Core.Text),
    -- | Target of the operation - for example @projects\/project-1\/locations\/region-1\/functions\/function-1@
    target :: (Core.Maybe Core.Text),
    -- | Type of operation.
    type' :: (Core.Maybe OperationMetadataV1_Type),
    -- | The last update timestamp of the operation.
    updateTime :: (Core.Maybe Core.DateTime'),
    -- | Version id of the function created or updated by an API call. This field is only populated for Create and Update operations.
    versionId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadataV1' with the minimum fields required to make a request.
newOperationMetadataV1 ::
  OperationMetadataV1
newOperationMetadataV1 =
  OperationMetadataV1
    { buildId = Core.Nothing,
      buildName = Core.Nothing,
      request' = Core.Nothing,
      sourceToken = Core.Nothing,
      target = Core.Nothing,
      type' = Core.Nothing,
      updateTime = Core.Nothing,
      versionId = Core.Nothing
    }

instance Core.FromJSON OperationMetadataV1 where
  parseJSON =
    Core.withObject
      "OperationMetadataV1"
      ( \o ->
          OperationMetadataV1
            Core.<$> (o Core..:? "buildId")
            Core.<*> (o Core..:? "buildName")
            Core.<*> (o Core..:? "request")
            Core.<*> (o Core..:? "sourceToken")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "versionId")
      )

instance Core.ToJSON OperationMetadataV1 where
  toJSON OperationMetadataV1 {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildId" Core..=) Core.<$> buildId,
            ("buildName" Core..=) Core.<$> buildName,
            ("request" Core..=) Core.<$> request',
            ("sourceToken" Core..=) Core.<$> sourceToken,
            ("target" Core..=) Core.<$> target,
            ("type" Core..=) Core.<$> type',
            ("updateTime" Core..=) Core.<$> updateTime,
            ("versionId" Core..=) Core.. Core.AsText
              Core.<$> versionId
          ]
      )

-- | The original request that started the operation.
--
-- /See:/ 'newOperationMetadataV1_Request' smart constructor.
newtype OperationMetadataV1_Request = OperationMetadataV1_Request
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadataV1_Request' with the minimum fields required to make a request.
newOperationMetadataV1_Request ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  OperationMetadataV1_Request
newOperationMetadataV1_Request addtional =
  OperationMetadataV1_Request {addtional = addtional}

instance Core.FromJSON OperationMetadataV1_Request where
  parseJSON =
    Core.withObject
      "OperationMetadataV1_Request"
      ( \o ->
          OperationMetadataV1_Request
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON OperationMetadataV1_Request where
  toJSON OperationMetadataV1_Request {..} =
    Core.toJSON addtional

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
            Core.<$> (o Core..:? "auditConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bindings" Core..!= Core.mempty)
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

-- | Location of the source in a Google Cloud Source Repository.
--
-- /See:/ 'newRepoSource' smart constructor.
data RepoSource = RepoSource
  { -- | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    branchName :: (Core.Maybe Core.Text),
    -- | Explicit commit SHA to build.
    commitSha :: (Core.Maybe Core.Text),
    -- | Directory, relative to the source root, in which to run the build. This must be a relative path. If a step\'s @dir@ is specified and is an absolute path, this value is ignored for that step\'s execution. eg. helloworld (no leading slash allowed)
    dir :: (Core.Maybe Core.Text),
    -- | Only trigger a build if the revision regex does NOT match the revision regex.
    invertRegex :: (Core.Maybe Core.Bool),
    -- | ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
    projectId :: (Core.Maybe Core.Text),
    -- | Name of the Cloud Source Repository.
    repoName :: (Core.Maybe Core.Text),
    -- | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    tagName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepoSource' with the minimum fields required to make a request.
newRepoSource ::
  RepoSource
newRepoSource =
  RepoSource
    { branchName = Core.Nothing,
      commitSha = Core.Nothing,
      dir = Core.Nothing,
      invertRegex = Core.Nothing,
      projectId = Core.Nothing,
      repoName = Core.Nothing,
      tagName = Core.Nothing
    }

instance Core.FromJSON RepoSource where
  parseJSON =
    Core.withObject
      "RepoSource"
      ( \o ->
          RepoSource
            Core.<$> (o Core..:? "branchName")
            Core.<*> (o Core..:? "commitSha")
            Core.<*> (o Core..:? "dir")
            Core.<*> (o Core..:? "invertRegex")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "repoName")
            Core.<*> (o Core..:? "tagName")
      )

instance Core.ToJSON RepoSource where
  toJSON RepoSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("branchName" Core..=) Core.<$> branchName,
            ("commitSha" Core..=) Core.<$> commitSha,
            ("dir" Core..=) Core.<$> dir,
            ("invertRegex" Core..=) Core.<$> invertRegex,
            ("projectId" Core..=) Core.<$> projectId,
            ("repoName" Core..=) Core.<$> repoName,
            ("tagName" Core..=) Core.<$> tagName
          ]
      )

-- | Describes a runtime and any special information (e.g., deprecation status) related to it.
--
-- /See:/ 'newRuntime' smart constructor.
data Runtime = Runtime
  { -- | The user facing name, eg \'Go 1.13\', \'Node.js 12\', etc.
    displayName :: (Core.Maybe Core.Text),
    -- | The environment for the runtime.
    environment :: (Core.Maybe Runtime_Environment),
    -- | The name of the runtime, e.g., \'go113\', \'nodejs12\', etc.
    name :: (Core.Maybe Core.Text),
    -- | The stage of life this runtime is in, e.g., BETA, GA, etc.
    stage :: (Core.Maybe Runtime_Stage),
    -- | Warning messages, e.g., a deprecation warning.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Runtime' with the minimum fields required to make a request.
newRuntime ::
  Runtime
newRuntime =
  Runtime
    { displayName = Core.Nothing,
      environment = Core.Nothing,
      name = Core.Nothing,
      stage = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON Runtime where
  parseJSON =
    Core.withObject
      "Runtime"
      ( \o ->
          Runtime
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "environment")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stage")
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
      )

instance Core.ToJSON Runtime where
  toJSON Runtime {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("environment" Core..=) Core.<$> environment,
            ("name" Core..=) Core.<$> name,
            ("stage" Core..=) Core.<$> stage,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Describes the Service being deployed. Currently Supported : Cloud Run (fully managed).
--
-- /See:/ 'newServiceConfig' smart constructor.
data ServiceConfig = ServiceConfig
  { -- | Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
    allTrafficOnLatestRevision :: (Core.Maybe Core.Bool),
    -- | The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https:\/\/github.com\/kubernetes\/kubernetes\/blob\/master\/staging\/src\/k8s.io\/apimachinery\/pkg\/api\/resource\/quantity.go a full description.
    availableMemory :: (Core.Maybe Core.Text),
    -- | Environment variables that shall be available during function execution.
    environmentVariables :: (Core.Maybe ServiceConfig_EnvironmentVariables),
    -- | The ingress settings for the function, controlling what traffic can reach it.
    ingressSettings :: (Core.Maybe ServiceConfig_IngressSettings),
    -- | The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the <https://cloud.google.com/functions/docs/max-instances Max Instances> Guide for more details.
    maxInstanceCount :: (Core.Maybe Core.Int32),
    -- | The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
    minInstanceCount :: (Core.Maybe Core.Int32),
    -- | Output only. Name of the service associated with a Function. The format of this field is @projects\/{project}\/locations\/{region}\/services\/{service}@
    service :: (Core.Maybe Core.Text),
    -- | The email of the service\'s service account. If empty, defaults to @{project_number}-compute\@developer.gserviceaccount.com@.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
    timeoutSeconds :: (Core.Maybe Core.Int32),
    -- | Output only. URI of the Service deployed.
    uri :: (Core.Maybe Core.Text),
    -- | The Serverless VPC Access connector that this cloud function can connect to. The format of this field is @projects\/*\/locations\/*\/connectors\/*@.
    vpcConnector :: (Core.Maybe Core.Text),
    -- | The egress settings for the connector, controlling what traffic is diverted through it.
    vpcConnectorEgressSettings :: (Core.Maybe ServiceConfig_VpcConnectorEgressSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConfig' with the minimum fields required to make a request.
newServiceConfig ::
  ServiceConfig
newServiceConfig =
  ServiceConfig
    { allTrafficOnLatestRevision = Core.Nothing,
      availableMemory = Core.Nothing,
      environmentVariables = Core.Nothing,
      ingressSettings = Core.Nothing,
      maxInstanceCount = Core.Nothing,
      minInstanceCount = Core.Nothing,
      service = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      timeoutSeconds = Core.Nothing,
      uri = Core.Nothing,
      vpcConnector = Core.Nothing,
      vpcConnectorEgressSettings = Core.Nothing
    }

instance Core.FromJSON ServiceConfig where
  parseJSON =
    Core.withObject
      "ServiceConfig"
      ( \o ->
          ServiceConfig
            Core.<$> (o Core..:? "allTrafficOnLatestRevision")
            Core.<*> (o Core..:? "availableMemory")
            Core.<*> (o Core..:? "environmentVariables")
            Core.<*> (o Core..:? "ingressSettings")
            Core.<*> (o Core..:? "maxInstanceCount")
            Core.<*> (o Core..:? "minInstanceCount")
            Core.<*> (o Core..:? "service")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "timeoutSeconds")
            Core.<*> (o Core..:? "uri")
            Core.<*> (o Core..:? "vpcConnector")
            Core.<*> (o Core..:? "vpcConnectorEgressSettings")
      )

instance Core.ToJSON ServiceConfig where
  toJSON ServiceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("allTrafficOnLatestRevision" Core..=)
              Core.<$> allTrafficOnLatestRevision,
            ("availableMemory" Core..=) Core.<$> availableMemory,
            ("environmentVariables" Core..=)
              Core.<$> environmentVariables,
            ("ingressSettings" Core..=) Core.<$> ingressSettings,
            ("maxInstanceCount" Core..=)
              Core.<$> maxInstanceCount,
            ("minInstanceCount" Core..=)
              Core.<$> minInstanceCount,
            ("service" Core..=) Core.<$> service,
            ("serviceAccountEmail" Core..=)
              Core.<$> serviceAccountEmail,
            ("timeoutSeconds" Core..=) Core.<$> timeoutSeconds,
            ("uri" Core..=) Core.<$> uri,
            ("vpcConnector" Core..=) Core.<$> vpcConnector,
            ("vpcConnectorEgressSettings" Core..=)
              Core.<$> vpcConnectorEgressSettings
          ]
      )

-- | Environment variables that shall be available during function execution.
--
-- /See:/ 'newServiceConfig_EnvironmentVariables' smart constructor.
newtype ServiceConfig_EnvironmentVariables = ServiceConfig_EnvironmentVariables
  { -- |
    addtional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceConfig_EnvironmentVariables' with the minimum fields required to make a request.
newServiceConfig_EnvironmentVariables ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text Core.Text ->
  ServiceConfig_EnvironmentVariables
newServiceConfig_EnvironmentVariables addtional =
  ServiceConfig_EnvironmentVariables {addtional = addtional}

instance
  Core.FromJSON
    ServiceConfig_EnvironmentVariables
  where
  parseJSON =
    Core.withObject
      "ServiceConfig_EnvironmentVariables"
      ( \o ->
          ServiceConfig_EnvironmentVariables
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ServiceConfig_EnvironmentVariables
  where
  toJSON ServiceConfig_EnvironmentVariables {..} =
    Core.toJSON addtional

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.GFieldMask)
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

-- | The location of the function source code.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | If provided, get the source from this location in a Cloud Source Repository.
    repoSource :: (Core.Maybe RepoSource),
    -- | If provided, get the source from this location in Google Cloud Storage.
    storageSource :: (Core.Maybe StorageSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource = Source {repoSource = Core.Nothing, storageSource = Core.Nothing}

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "repoSource")
            Core.<*> (o Core..:? "storageSource")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("repoSource" Core..=) Core.<$> repoSource,
            ("storageSource" Core..=) Core.<$> storageSource
          ]
      )

-- | Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
--
-- /See:/ 'newSourceProvenance' smart constructor.
data SourceProvenance = SourceProvenance
  { -- | A copy of the build\'s @source.repo_source@, if exists, with any revisions resolved.
    resolvedRepoSource :: (Core.Maybe RepoSource),
    -- | A copy of the build\'s @source.storage_source@, if exists, with any generations resolved.
    resolvedStorageSource :: (Core.Maybe StorageSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceProvenance' with the minimum fields required to make a request.
newSourceProvenance ::
  SourceProvenance
newSourceProvenance =
  SourceProvenance
    { resolvedRepoSource = Core.Nothing,
      resolvedStorageSource = Core.Nothing
    }

instance Core.FromJSON SourceProvenance where
  parseJSON =
    Core.withObject
      "SourceProvenance"
      ( \o ->
          SourceProvenance
            Core.<$> (o Core..:? "resolvedRepoSource")
            Core.<*> (o Core..:? "resolvedStorageSource")
      )

instance Core.ToJSON SourceProvenance where
  toJSON SourceProvenance {..} =
    Core.object
      ( Core.catMaybes
          [ ("resolvedRepoSource" Core..=)
              Core.<$> resolvedRepoSource,
            ("resolvedStorageSource" Core..=)
              Core.<$> resolvedStorageSource
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
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
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
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem addtional = Status_DetailsItem {addtional = addtional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON addtional

-- | Location of the source in an archive file in Google Cloud Storage.
--
-- /See:/ 'newStorageSource' smart constructor.
data StorageSource = StorageSource
  { -- | Google Cloud Storage bucket containing the source (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
    bucket :: (Core.Maybe Core.Text),
    -- | Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    generation :: (Core.Maybe Core.Int64),
    -- | Google Cloud Storage object containing the source. This object must be a gzipped archive file (@.tar.gz@) containing source to build.
    object :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageSource' with the minimum fields required to make a request.
newStorageSource ::
  StorageSource
newStorageSource =
  StorageSource
    { bucket = Core.Nothing,
      generation = Core.Nothing,
      object = Core.Nothing
    }

instance Core.FromJSON StorageSource where
  parseJSON =
    Core.withObject
      "StorageSource"
      ( \o ->
          StorageSource
            Core.<$> (o Core..:? "bucket")
            Core.<*> (o Core..:? "generation")
            Core.<*> (o Core..:? "object")
      )

instance Core.ToJSON StorageSource where
  toJSON StorageSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucket" Core..=) Core.<$> bucket,
            ("generation" Core..=) Core.. Core.AsText
              Core.<$> generation,
            ("object" Core..=) Core.<$> object
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
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
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
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )
