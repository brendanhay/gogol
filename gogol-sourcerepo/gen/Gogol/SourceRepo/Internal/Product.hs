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
-- Module      : Gogol.SourceRepo.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SourceRepo.Internal.Product
  ( -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Expr
    Expr (..),
    newExpr,

    -- * ListReposResponse
    ListReposResponse (..),
    newListReposResponse,

    -- * MirrorConfig
    MirrorConfig (..),
    newMirrorConfig,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * ProjectConfig
    ProjectConfig (..),
    newProjectConfig,

    -- * ProjectConfig_PubsubConfigs
    ProjectConfig_PubsubConfigs (..),
    newProjectConfig_PubsubConfigs,

    -- * PubsubConfig
    PubsubConfig (..),
    newPubsubConfig,

    -- * Repo
    Repo (..),
    newRepo,

    -- * Repo_PubsubConfigs
    Repo_PubsubConfigs (..),
    newRepo_PubsubConfigs,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * SyncRepoMetadata
    SyncRepoMetadata (..),
    newSyncRepoMetadata,

    -- * SyncRepoRequest
    SyncRepoRequest (..),
    newSyncRepoRequest,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * UpdateProjectConfigRequest
    UpdateProjectConfigRequest (..),
    newUpdateProjectConfigRequest,

    -- * UpdateRepoRequest
    UpdateRepoRequest (..),
    newUpdateRepoRequest,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SourceRepo.Internal.Sum

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

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

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

-- | Response for ListRepos. The size is not set in the returned repositories.
--
-- /See:/ 'newListReposResponse' smart constructor.
data ListReposResponse = ListReposResponse
  { -- | If non-empty, additional repositories exist within the project. These can be retrieved by including this value in the next ListReposRequest\'s page_token field.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The listed repos.
    repos :: (Core.Maybe [Repo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListReposResponse' with the minimum fields required to make a request.
newListReposResponse ::
  ListReposResponse
newListReposResponse =
  ListReposResponse {nextPageToken = Core.Nothing, repos = Core.Nothing}

instance Core.FromJSON ListReposResponse where
  parseJSON =
    Core.withObject
      "ListReposResponse"
      ( \o ->
          ListReposResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "repos" Core..!= Core.mempty)
      )

instance Core.ToJSON ListReposResponse where
  toJSON ListReposResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("repos" Core..=) Core.<$> repos
          ]
      )

-- | Configuration to automatically mirror a repository from another hosting service, for example GitHub or Bitbucket.
--
-- /See:/ 'newMirrorConfig' smart constructor.
data MirrorConfig = MirrorConfig
  { -- | ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
    deployKeyId :: (Core.Maybe Core.Text),
    -- | URL of the main repository at the other hosting service.
    url :: (Core.Maybe Core.Text),
    -- | ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
    webhookId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MirrorConfig' with the minimum fields required to make a request.
newMirrorConfig ::
  MirrorConfig
newMirrorConfig =
  MirrorConfig
    { deployKeyId = Core.Nothing,
      url = Core.Nothing,
      webhookId = Core.Nothing
    }

instance Core.FromJSON MirrorConfig where
  parseJSON =
    Core.withObject
      "MirrorConfig"
      ( \o ->
          MirrorConfig
            Core.<$> (o Core..:? "deployKeyId")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "webhookId")
      )

instance Core.ToJSON MirrorConfig where
  toJSON MirrorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployKeyId" Core..=) Core.<$> deployKeyId,
            ("url" Core..=) Core.<$> url,
            ("webhookId" Core..=) Core.<$> webhookId
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

-- | Cloud Source Repositories configuration of a project.
--
-- /See:/ 'newProjectConfig' smart constructor.
data ProjectConfig = ProjectConfig
  { -- | Reject a Git push that contains a private key.
    enablePrivateKeyCheck :: (Core.Maybe Core.Bool),
    -- | The name of the project. Values are of the form @projects\/@.
    name :: (Core.Maybe Core.Text),
    -- | How this project publishes a change in the repositories through Cloud Pub\/Sub. Keyed by the topic names.
    pubsubConfigs :: (Core.Maybe ProjectConfig_PubsubConfigs)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectConfig' with the minimum fields required to make a request.
newProjectConfig ::
  ProjectConfig
newProjectConfig =
  ProjectConfig
    { enablePrivateKeyCheck = Core.Nothing,
      name = Core.Nothing,
      pubsubConfigs = Core.Nothing
    }

instance Core.FromJSON ProjectConfig where
  parseJSON =
    Core.withObject
      "ProjectConfig"
      ( \o ->
          ProjectConfig
            Core.<$> (o Core..:? "enablePrivateKeyCheck")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pubsubConfigs")
      )

instance Core.ToJSON ProjectConfig where
  toJSON ProjectConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enablePrivateKeyCheck" Core..=)
              Core.<$> enablePrivateKeyCheck,
            ("name" Core..=) Core.<$> name,
            ("pubsubConfigs" Core..=) Core.<$> pubsubConfigs
          ]
      )

-- | How this project publishes a change in the repositories through Cloud Pub\/Sub. Keyed by the topic names.
--
-- /See:/ 'newProjectConfig_PubsubConfigs' smart constructor.
newtype ProjectConfig_PubsubConfigs = ProjectConfig_PubsubConfigs
  { -- |
    addtional :: (Core.HashMap Core.Text PubsubConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectConfig_PubsubConfigs' with the minimum fields required to make a request.
newProjectConfig_PubsubConfigs ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text PubsubConfig ->
  ProjectConfig_PubsubConfigs
newProjectConfig_PubsubConfigs addtional =
  ProjectConfig_PubsubConfigs {addtional = addtional}

instance Core.FromJSON ProjectConfig_PubsubConfigs where
  parseJSON =
    Core.withObject
      "ProjectConfig_PubsubConfigs"
      ( \o ->
          ProjectConfig_PubsubConfigs
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ProjectConfig_PubsubConfigs where
  toJSON ProjectConfig_PubsubConfigs {..} =
    Core.toJSON addtional

-- | Configuration to publish a Cloud Pub\/Sub message.
--
-- /See:/ 'newPubsubConfig' smart constructor.
data PubsubConfig = PubsubConfig
  { -- | The format of the Cloud Pub\/Sub messages.
    messageFormat :: (Core.Maybe PubsubConfig_MessageFormat),
    -- | Email address of the service account used for publishing Cloud Pub\/Sub messages. This service account needs to be in the same project as the PubsubConfig. When added, the caller needs to have iam.serviceAccounts.actAs permission on this service account. If unspecified, it defaults to the compute engine default service account.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | A topic of Cloud Pub\/Sub. Values are of the form @projects\/\/topics\/@. The project needs to be the same project as this config is in.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubConfig' with the minimum fields required to make a request.
newPubsubConfig ::
  PubsubConfig
newPubsubConfig =
  PubsubConfig
    { messageFormat = Core.Nothing,
      serviceAccountEmail = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON PubsubConfig where
  parseJSON =
    Core.withObject
      "PubsubConfig"
      ( \o ->
          PubsubConfig
            Core.<$> (o Core..:? "messageFormat")
            Core.<*> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON PubsubConfig where
  toJSON PubsubConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("messageFormat" Core..=) Core.<$> messageFormat,
            ("serviceAccountEmail" Core..=)
              Core.<$> serviceAccountEmail,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | A repository (or repo) is a Git repository storing versioned source content.
--
-- /See:/ 'newRepo' smart constructor.
data Repo = Repo
  { -- | How this repository mirrors a repository managed by another service. Read-only field.
    mirrorConfig :: (Core.Maybe MirrorConfig),
    -- | Resource name of the repository, of the form @projects\/\/repos\/@. The repo name may contain slashes. eg, @projects\/myproject\/repos\/name\/with\/slash@
    name :: (Core.Maybe Core.Text),
    -- | How this repository publishes a change in the repository through Cloud Pub\/Sub. Keyed by the topic names.
    pubsubConfigs :: (Core.Maybe Repo_PubsubConfigs),
    -- | The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
    size :: (Core.Maybe Core.Int64),
    -- | URL to clone the repository from Google Cloud Source Repositories. Read-only field.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Repo' with the minimum fields required to make a request.
newRepo ::
  Repo
newRepo =
  Repo
    { mirrorConfig = Core.Nothing,
      name = Core.Nothing,
      pubsubConfigs = Core.Nothing,
      size = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Repo where
  parseJSON =
    Core.withObject
      "Repo"
      ( \o ->
          Repo
            Core.<$> (o Core..:? "mirrorConfig")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pubsubConfigs")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Repo where
  toJSON Repo {..} =
    Core.object
      ( Core.catMaybes
          [ ("mirrorConfig" Core..=) Core.<$> mirrorConfig,
            ("name" Core..=) Core.<$> name,
            ("pubsubConfigs" Core..=) Core.<$> pubsubConfigs,
            ("size" Core..=) Core.. Core.AsText Core.<$> size,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | How this repository publishes a change in the repository through Cloud Pub\/Sub. Keyed by the topic names.
--
-- /See:/ 'newRepo_PubsubConfigs' smart constructor.
newtype Repo_PubsubConfigs = Repo_PubsubConfigs
  { -- |
    addtional :: (Core.HashMap Core.Text PubsubConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Repo_PubsubConfigs' with the minimum fields required to make a request.
newRepo_PubsubConfigs ::
  -- |  See 'addtional'.
  Core.HashMap Core.Text PubsubConfig ->
  Repo_PubsubConfigs
newRepo_PubsubConfigs addtional = Repo_PubsubConfigs {addtional = addtional}

instance Core.FromJSON Repo_PubsubConfigs where
  parseJSON =
    Core.withObject
      "Repo_PubsubConfigs"
      ( \o ->
          Repo_PubsubConfigs Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Repo_PubsubConfigs where
  toJSON Repo_PubsubConfigs {..} = Core.toJSON addtional

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

-- | Metadata of SyncRepo. This message is in the metadata field of Operation.
--
-- /See:/ 'newSyncRepoMetadata' smart constructor.
data SyncRepoMetadata = SyncRepoMetadata
  { -- | The name of the repo being synchronized. Values are of the form @projects\/\/repos\/@.
    name :: (Core.Maybe Core.Text),
    -- | The time this operation is started.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | The latest status message on syncing the repository.
    statusMessage :: (Core.Maybe Core.Text),
    -- | The time this operation\'s status message is updated.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SyncRepoMetadata' with the minimum fields required to make a request.
newSyncRepoMetadata ::
  SyncRepoMetadata
newSyncRepoMetadata =
  SyncRepoMetadata
    { name = Core.Nothing,
      startTime = Core.Nothing,
      statusMessage = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON SyncRepoMetadata where
  parseJSON =
    Core.withObject
      "SyncRepoMetadata"
      ( \o ->
          SyncRepoMetadata
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON SyncRepoMetadata where
  toJSON SyncRepoMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("startTime" Core..=) Core.<$> startTime,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Request for SyncRepo.
--
-- /See:/ 'newSyncRepoRequest' smart constructor.
data SyncRepoRequest = SyncRepoRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SyncRepoRequest' with the minimum fields required to make a request.
newSyncRepoRequest ::
  SyncRepoRequest
newSyncRepoRequest = SyncRepoRequest

instance Core.FromJSON SyncRepoRequest where
  parseJSON =
    Core.withObject
      "SyncRepoRequest"
      (\o -> Core.pure SyncRepoRequest)

instance Core.ToJSON SyncRepoRequest where
  toJSON = Core.const Core.emptyObject

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

-- | Request for UpdateProjectConfig.
--
-- /See:/ 'newUpdateProjectConfigRequest' smart constructor.
data UpdateProjectConfigRequest = UpdateProjectConfigRequest
  { -- | The new configuration for the project.
    projectConfig :: (Core.Maybe ProjectConfig),
    -- | A FieldMask specifying which fields of the project_config to modify. Only the fields in the mask will be modified. If no mask is provided, this request is no-op.
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateProjectConfigRequest' with the minimum fields required to make a request.
newUpdateProjectConfigRequest ::
  UpdateProjectConfigRequest
newUpdateProjectConfigRequest =
  UpdateProjectConfigRequest
    { projectConfig = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON UpdateProjectConfigRequest where
  parseJSON =
    Core.withObject
      "UpdateProjectConfigRequest"
      ( \o ->
          UpdateProjectConfigRequest
            Core.<$> (o Core..:? "projectConfig")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdateProjectConfigRequest where
  toJSON UpdateProjectConfigRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectConfig" Core..=) Core.<$> projectConfig,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request for UpdateRepo.
--
-- /See:/ 'newUpdateRepoRequest' smart constructor.
data UpdateRepoRequest = UpdateRepoRequest
  { -- | The new configuration for the repository.
    repo :: (Core.Maybe Repo),
    -- | A FieldMask specifying which fields of the repo to modify. Only the fields in the mask will be modified. If no mask is provided, this request is no-op.
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateRepoRequest' with the minimum fields required to make a request.
newUpdateRepoRequest ::
  UpdateRepoRequest
newUpdateRepoRequest =
  UpdateRepoRequest {repo = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON UpdateRepoRequest where
  parseJSON =
    Core.withObject
      "UpdateRepoRequest"
      ( \o ->
          UpdateRepoRequest
            Core.<$> (o Core..:? "repo")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdateRepoRequest where
  toJSON UpdateRepoRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("repo" Core..=) Core.<$> repo,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )
