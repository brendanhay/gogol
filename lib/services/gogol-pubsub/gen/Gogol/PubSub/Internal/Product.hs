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
-- Module      : Gogol.PubSub.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PubSub.Internal.Product
  ( -- * AcknowledgeRequest
    AcknowledgeRequest (..),
    newAcknowledgeRequest,

    -- * BigQueryConfig
    BigQueryConfig (..),
    newBigQueryConfig,

    -- * Binding
    Binding (..),
    newBinding,

    -- * CommitSchemaRequest
    CommitSchemaRequest (..),
    newCommitSchemaRequest,

    -- * CreateSnapshotRequest
    CreateSnapshotRequest (..),
    newCreateSnapshotRequest,

    -- * CreateSnapshotRequest_Labels
    CreateSnapshotRequest_Labels (..),
    newCreateSnapshotRequest_Labels,

    -- * DeadLetterPolicy
    DeadLetterPolicy (..),
    newDeadLetterPolicy,

    -- * DetachSubscriptionResponse
    DetachSubscriptionResponse (..),
    newDetachSubscriptionResponse,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * ExpirationPolicy
    ExpirationPolicy (..),
    newExpirationPolicy,

    -- * Expr
    Expr (..),
    newExpr,

    -- * ListSchemaRevisionsResponse
    ListSchemaRevisionsResponse (..),
    newListSchemaRevisionsResponse,

    -- * ListSchemasResponse
    ListSchemasResponse (..),
    newListSchemasResponse,

    -- * ListSnapshotsResponse
    ListSnapshotsResponse (..),
    newListSnapshotsResponse,

    -- * ListSubscriptionsResponse
    ListSubscriptionsResponse (..),
    newListSubscriptionsResponse,

    -- * ListTopicSnapshotsResponse
    ListTopicSnapshotsResponse (..),
    newListTopicSnapshotsResponse,

    -- * ListTopicSubscriptionsResponse
    ListTopicSubscriptionsResponse (..),
    newListTopicSubscriptionsResponse,

    -- * ListTopicsResponse
    ListTopicsResponse (..),
    newListTopicsResponse,

    -- * MessageStoragePolicy
    MessageStoragePolicy (..),
    newMessageStoragePolicy,

    -- * ModifyAckDeadlineRequest
    ModifyAckDeadlineRequest (..),
    newModifyAckDeadlineRequest,

    -- * ModifyPushConfigRequest
    ModifyPushConfigRequest (..),
    newModifyPushConfigRequest,

    -- * OidcToken
    OidcToken (..),
    newOidcToken,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PublishRequest
    PublishRequest (..),
    newPublishRequest,

    -- * PublishResponse
    PublishResponse (..),
    newPublishResponse,

    -- * PubsubMessage
    PubsubMessage (..),
    newPubsubMessage,

    -- * PubsubMessage_Attributes
    PubsubMessage_Attributes (..),
    newPubsubMessage_Attributes,

    -- * PullRequest
    PullRequest (..),
    newPullRequest,

    -- * PullResponse
    PullResponse (..),
    newPullResponse,

    -- * PushConfig
    PushConfig (..),
    newPushConfig,

    -- * PushConfig_Attributes
    PushConfig_Attributes (..),
    newPushConfig_Attributes,

    -- * ReceivedMessage
    ReceivedMessage (..),
    newReceivedMessage,

    -- * RetryPolicy
    RetryPolicy (..),
    newRetryPolicy,

    -- * RollbackSchemaRequest
    RollbackSchemaRequest (..),
    newRollbackSchemaRequest,

    -- * Schema
    Schema (..),
    newSchema,

    -- * SchemaSettings
    SchemaSettings (..),
    newSchemaSettings,

    -- * SeekRequest
    SeekRequest (..),
    newSeekRequest,

    -- * SeekResponse
    SeekResponse (..),
    newSeekResponse,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,

    -- * Snapshot_Labels
    Snapshot_Labels (..),
    newSnapshot_Labels,

    -- * Subscription
    Subscription (..),
    newSubscription,

    -- * Subscription_Labels
    Subscription_Labels (..),
    newSubscription_Labels,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * Topic
    Topic (..),
    newTopic,

    -- * Topic_Labels
    Topic_Labels (..),
    newTopic_Labels,

    -- * UpdateSnapshotRequest
    UpdateSnapshotRequest (..),
    newUpdateSnapshotRequest,

    -- * UpdateSubscriptionRequest
    UpdateSubscriptionRequest (..),
    newUpdateSubscriptionRequest,

    -- * UpdateTopicRequest
    UpdateTopicRequest (..),
    newUpdateTopicRequest,

    -- * ValidateMessageRequest
    ValidateMessageRequest (..),
    newValidateMessageRequest,

    -- * ValidateMessageResponse
    ValidateMessageResponse (..),
    newValidateMessageResponse,

    -- * ValidateSchemaRequest
    ValidateSchemaRequest (..),
    newValidateSchemaRequest,

    -- * ValidateSchemaResponse
    ValidateSchemaResponse (..),
    newValidateSchemaResponse,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Internal.Sum

-- | Request for the Acknowledge method.
--
-- /See:/ 'newAcknowledgeRequest' smart constructor.
newtype AcknowledgeRequest = AcknowledgeRequest
  { -- | Required. The acknowledgment ID for the messages being acknowledged that was returned by the Pub\/Sub system in the @Pull@ response. Must not be empty.
    ackIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcknowledgeRequest' with the minimum fields required to make a request.
newAcknowledgeRequest ::
  AcknowledgeRequest
newAcknowledgeRequest = AcknowledgeRequest {ackIds = Core.Nothing}

instance Core.FromJSON AcknowledgeRequest where
  parseJSON =
    Core.withObject
      "AcknowledgeRequest"
      ( \o ->
          AcknowledgeRequest Core.<$> (o Core..:? "ackIds")
      )

instance Core.ToJSON AcknowledgeRequest where
  toJSON AcknowledgeRequest {..} =
    Core.object
      (Core.catMaybes [("ackIds" Core..=) Core.<$> ackIds])

-- | Configuration for a BigQuery subscription.
--
-- /See:/ 'newBigQueryConfig' smart constructor.
data BigQueryConfig = BigQueryConfig
  { -- | When true and use/topic/schema is true, any fields that are a part of the topic schema that are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync and any messages with extra fields are not written and remain in the subscription\'s backlog.
    dropUnknownFields :: (Core.Maybe Core.Bool),
    -- | Output only. An output-only field that indicates whether or not the subscription can receive messages.
    state :: (Core.Maybe BigQueryConfig_State),
    -- | The name of the table to which to write data, of the form {projectId}.{datasetId}.{tableId}
    table :: (Core.Maybe Core.Text),
    -- | When true, use the topic\'s schema as the columns to write to in BigQuery, if it exists.
    useTopicSchema :: (Core.Maybe Core.Bool),
    -- | When true, write the subscription name, message/id, publish/time, attributes, and ordering/key to additional columns in the table. The subscription name, message/id, and publish_time fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column.
    writeMetadata :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryConfig' with the minimum fields required to make a request.
newBigQueryConfig ::
  BigQueryConfig
newBigQueryConfig =
  BigQueryConfig
    { dropUnknownFields = Core.Nothing,
      state = Core.Nothing,
      table = Core.Nothing,
      useTopicSchema = Core.Nothing,
      writeMetadata = Core.Nothing
    }

instance Core.FromJSON BigQueryConfig where
  parseJSON =
    Core.withObject
      "BigQueryConfig"
      ( \o ->
          BigQueryConfig
            Core.<$> (o Core..:? "dropUnknownFields")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "useTopicSchema")
            Core.<*> (o Core..:? "writeMetadata")
      )

instance Core.ToJSON BigQueryConfig where
  toJSON BigQueryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dropUnknownFields" Core..=)
              Core.<$> dropUnknownFields,
            ("state" Core..=) Core.<$> state,
            ("table" Core..=) Core.<$> table,
            ("useTopicSchema" Core..=) Core.<$> useTopicSchema,
            ("writeMetadata" Core..=) Core.<$> writeMetadata
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus
    -- unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
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

-- | Request for CommitSchema method.
--
-- /See:/ 'newCommitSchemaRequest' smart constructor.
newtype CommitSchemaRequest = CommitSchemaRequest
  { -- | Required. The schema revision to commit.
    schema :: (Core.Maybe Schema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommitSchemaRequest' with the minimum fields required to make a request.
newCommitSchemaRequest ::
  CommitSchemaRequest
newCommitSchemaRequest = CommitSchemaRequest {schema = Core.Nothing}

instance Core.FromJSON CommitSchemaRequest where
  parseJSON =
    Core.withObject
      "CommitSchemaRequest"
      ( \o ->
          CommitSchemaRequest Core.<$> (o Core..:? "schema")
      )

instance Core.ToJSON CommitSchemaRequest where
  toJSON CommitSchemaRequest {..} =
    Core.object
      (Core.catMaybes [("schema" Core..=) Core.<$> schema])

-- | Request for the @CreateSnapshot@ method.
--
-- /See:/ 'newCreateSnapshotRequest' smart constructor.
data CreateSnapshotRequest = CreateSnapshotRequest
  { -- | See <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
    labels :: (Core.Maybe CreateSnapshotRequest_Labels),
    -- | Required. The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription\'s backlog that are unacknowledged upon the successful completion of the @CreateSnapshot@ request; as well as: (b) Any messages published to the subscription\'s topic following the successful completion of the CreateSnapshot request. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSnapshotRequest' with the minimum fields required to make a request.
newCreateSnapshotRequest ::
  CreateSnapshotRequest
newCreateSnapshotRequest =
  CreateSnapshotRequest {labels = Core.Nothing, subscription = Core.Nothing}

instance Core.FromJSON CreateSnapshotRequest where
  parseJSON =
    Core.withObject
      "CreateSnapshotRequest"
      ( \o ->
          CreateSnapshotRequest
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "subscription")
      )

instance Core.ToJSON CreateSnapshotRequest where
  toJSON CreateSnapshotRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("subscription" Core..=) Core.<$> subscription
          ]
      )

-- | See <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
--
-- /See:/ 'newCreateSnapshotRequest_Labels' smart constructor.
newtype CreateSnapshotRequest_Labels = CreateSnapshotRequest_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSnapshotRequest_Labels' with the minimum fields required to make a request.
newCreateSnapshotRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CreateSnapshotRequest_Labels
newCreateSnapshotRequest_Labels additional =
  CreateSnapshotRequest_Labels {additional = additional}

instance Core.FromJSON CreateSnapshotRequest_Labels where
  parseJSON =
    Core.withObject
      "CreateSnapshotRequest_Labels"
      ( \o ->
          CreateSnapshotRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CreateSnapshotRequest_Labels where
  toJSON CreateSnapshotRequest_Labels {..} =
    Core.toJSON additional

-- | Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation\/updation, the create\/update subscription request will fail.
--
-- /See:/ 'newDeadLetterPolicy' smart constructor.
data DeadLetterPolicy = DeadLetterPolicy
  { -- | The name of the topic to which dead letter messages should be published. Format is @projects\/{project}\/topics\/{topic}@.The Cloud Pub\/Sub service account associated with the enclosing subscription\'s parent project (i.e., service-{project_number}\@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Publish() to this topic. The operation will fail if the topic does not exist. Users should ensure that there is a subscription attached to this topic since messages published to a topic with no subscriptions are lost.
    deadLetterTopic :: (Core.Maybe Core.Text),
    -- | The maximum number of delivery attempts for any message. The value must be between 5 and 100. The number of delivery attempts is defined as 1 + (the sum of number of NACKs and number of times the acknowledgement deadline has been exceeded for the message). A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that client libraries may automatically extend ack_deadlines. This field will be honored on a best effort basis. If this parameter is 0, a default value of 5 is used.
    maxDeliveryAttempts :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeadLetterPolicy' with the minimum fields required to make a request.
newDeadLetterPolicy ::
  DeadLetterPolicy
newDeadLetterPolicy =
  DeadLetterPolicy
    { deadLetterTopic = Core.Nothing,
      maxDeliveryAttempts = Core.Nothing
    }

instance Core.FromJSON DeadLetterPolicy where
  parseJSON =
    Core.withObject
      "DeadLetterPolicy"
      ( \o ->
          DeadLetterPolicy
            Core.<$> (o Core..:? "deadLetterTopic")
            Core.<*> (o Core..:? "maxDeliveryAttempts")
      )

instance Core.ToJSON DeadLetterPolicy where
  toJSON DeadLetterPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("deadLetterTopic" Core..=)
              Core.<$> deadLetterTopic,
            ("maxDeliveryAttempts" Core..=)
              Core.<$> maxDeliveryAttempts
          ]
      )

-- | Response for the DetachSubscription method. Reserved for future use.
--
-- /See:/ 'newDetachSubscriptionResponse' smart constructor.
data DetachSubscriptionResponse = DetachSubscriptionResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetachSubscriptionResponse' with the minimum fields required to make a request.
newDetachSubscriptionResponse ::
  DetachSubscriptionResponse
newDetachSubscriptionResponse = DetachSubscriptionResponse

instance Core.FromJSON DetachSubscriptionResponse where
  parseJSON =
    Core.withObject
      "DetachSubscriptionResponse"
      (\o -> Core.pure DetachSubscriptionResponse)

instance Core.ToJSON DetachSubscriptionResponse where
  toJSON = Core.const Core.emptyObject

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
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion).
--
-- /See:/ 'newExpirationPolicy' smart constructor.
newtype ExpirationPolicy = ExpirationPolicy
  { -- | Specifies the \"time-to-live\" duration for an associated resource. The resource expires if it is not active for a period of @ttl@. The definition of \"activity\" depends on the type of the associated resource. The minimum and maximum allowed values for @ttl@ depend on the type of the associated resource, as well. If @ttl@ is not set, the associated resource never expires.
    ttl :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExpirationPolicy' with the minimum fields required to make a request.
newExpirationPolicy ::
  ExpirationPolicy
newExpirationPolicy = ExpirationPolicy {ttl = Core.Nothing}

instance Core.FromJSON ExpirationPolicy where
  parseJSON =
    Core.withObject
      "ExpirationPolicy"
      (\o -> ExpirationPolicy Core.<$> (o Core..:? "ttl"))

instance Core.ToJSON ExpirationPolicy where
  toJSON ExpirationPolicy {..} =
    Core.object
      (Core.catMaybes [("ttl" Core..=) Core.<$> ttl])

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

-- | Response for the @ListSchemaRevisions@ method.
--
-- /See:/ 'newListSchemaRevisionsResponse' smart constructor.
data ListSchemaRevisionsResponse = ListSchemaRevisionsResponse
  { -- | A token that can be sent as @page_token@ to retrieve the next page. If this field is empty, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The revisions of the schema.
    schemas :: (Core.Maybe [Schema])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSchemaRevisionsResponse' with the minimum fields required to make a request.
newListSchemaRevisionsResponse ::
  ListSchemaRevisionsResponse
newListSchemaRevisionsResponse =
  ListSchemaRevisionsResponse
    { nextPageToken = Core.Nothing,
      schemas = Core.Nothing
    }

instance Core.FromJSON ListSchemaRevisionsResponse where
  parseJSON =
    Core.withObject
      "ListSchemaRevisionsResponse"
      ( \o ->
          ListSchemaRevisionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "schemas")
      )

instance Core.ToJSON ListSchemaRevisionsResponse where
  toJSON ListSchemaRevisionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("schemas" Core..=) Core.<$> schemas
          ]
      )

-- | Response for the @ListSchemas@ method.
--
-- /See:/ 'newListSchemasResponse' smart constructor.
data ListSchemasResponse = ListSchemasResponse
  { -- | If not empty, indicates that there may be more schemas that match the request; this value should be passed in a new @ListSchemasRequest@.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The resulting schemas.
    schemas :: (Core.Maybe [Schema])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSchemasResponse' with the minimum fields required to make a request.
newListSchemasResponse ::
  ListSchemasResponse
newListSchemasResponse =
  ListSchemasResponse {nextPageToken = Core.Nothing, schemas = Core.Nothing}

instance Core.FromJSON ListSchemasResponse where
  parseJSON =
    Core.withObject
      "ListSchemasResponse"
      ( \o ->
          ListSchemasResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "schemas")
      )

instance Core.ToJSON ListSchemasResponse where
  toJSON ListSchemasResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("schemas" Core..=) Core.<$> schemas
          ]
      )

-- | Response for the @ListSnapshots@ method.
--
-- /See:/ 'newListSnapshotsResponse' smart constructor.
data ListSnapshotsResponse = ListSnapshotsResponse
  { -- | If not empty, indicates that there may be more snapshot that match the request; this value should be passed in a new @ListSnapshotsRequest@.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The resulting snapshots.
    snapshots :: (Core.Maybe [Snapshot])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSnapshotsResponse' with the minimum fields required to make a request.
newListSnapshotsResponse ::
  ListSnapshotsResponse
newListSnapshotsResponse =
  ListSnapshotsResponse {nextPageToken = Core.Nothing, snapshots = Core.Nothing}

instance Core.FromJSON ListSnapshotsResponse where
  parseJSON =
    Core.withObject
      "ListSnapshotsResponse"
      ( \o ->
          ListSnapshotsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "snapshots")
      )

instance Core.ToJSON ListSnapshotsResponse where
  toJSON ListSnapshotsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("snapshots" Core..=) Core.<$> snapshots
          ]
      )

-- | Response for the @ListSubscriptions@ method.
--
-- /See:/ 'newListSubscriptionsResponse' smart constructor.
data ListSubscriptionsResponse = ListSubscriptionsResponse
  { -- | If not empty, indicates that there may be more subscriptions that match the request; this value should be passed in a new @ListSubscriptionsRequest@ to get more subscriptions.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The subscriptions that match the request.
    subscriptions :: (Core.Maybe [Subscription])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSubscriptionsResponse' with the minimum fields required to make a request.
newListSubscriptionsResponse ::
  ListSubscriptionsResponse
newListSubscriptionsResponse =
  ListSubscriptionsResponse
    { nextPageToken = Core.Nothing,
      subscriptions = Core.Nothing
    }

instance Core.FromJSON ListSubscriptionsResponse where
  parseJSON =
    Core.withObject
      "ListSubscriptionsResponse"
      ( \o ->
          ListSubscriptionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "subscriptions")
      )

instance Core.ToJSON ListSubscriptionsResponse where
  toJSON ListSubscriptionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("subscriptions" Core..=) Core.<$> subscriptions
          ]
      )

-- | Response for the @ListTopicSnapshots@ method.
--
-- /See:/ 'newListTopicSnapshotsResponse' smart constructor.
data ListTopicSnapshotsResponse = ListTopicSnapshotsResponse
  { -- | If not empty, indicates that there may be more snapshots that match the request; this value should be passed in a new @ListTopicSnapshotsRequest@ to get more snapshots.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The names of the snapshots that match the request.
    snapshots :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTopicSnapshotsResponse' with the minimum fields required to make a request.
newListTopicSnapshotsResponse ::
  ListTopicSnapshotsResponse
newListTopicSnapshotsResponse =
  ListTopicSnapshotsResponse
    { nextPageToken = Core.Nothing,
      snapshots = Core.Nothing
    }

instance Core.FromJSON ListTopicSnapshotsResponse where
  parseJSON =
    Core.withObject
      "ListTopicSnapshotsResponse"
      ( \o ->
          ListTopicSnapshotsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "snapshots")
      )

instance Core.ToJSON ListTopicSnapshotsResponse where
  toJSON ListTopicSnapshotsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("snapshots" Core..=) Core.<$> snapshots
          ]
      )

-- | Response for the @ListTopicSubscriptions@ method.
--
-- /See:/ 'newListTopicSubscriptionsResponse' smart constructor.
data ListTopicSubscriptionsResponse = ListTopicSubscriptionsResponse
  { -- | If not empty, indicates that there may be more subscriptions that match the request; this value should be passed in a new @ListTopicSubscriptionsRequest@ to get more subscriptions.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The names of subscriptions attached to the topic specified in the request.
    subscriptions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTopicSubscriptionsResponse' with the minimum fields required to make a request.
newListTopicSubscriptionsResponse ::
  ListTopicSubscriptionsResponse
newListTopicSubscriptionsResponse =
  ListTopicSubscriptionsResponse
    { nextPageToken = Core.Nothing,
      subscriptions = Core.Nothing
    }

instance Core.FromJSON ListTopicSubscriptionsResponse where
  parseJSON =
    Core.withObject
      "ListTopicSubscriptionsResponse"
      ( \o ->
          ListTopicSubscriptionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "subscriptions")
      )

instance Core.ToJSON ListTopicSubscriptionsResponse where
  toJSON ListTopicSubscriptionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("subscriptions" Core..=) Core.<$> subscriptions
          ]
      )

-- | Response for the @ListTopics@ method.
--
-- /See:/ 'newListTopicsResponse' smart constructor.
data ListTopicsResponse = ListTopicsResponse
  { -- | If not empty, indicates that there may be more topics that match the request; this value should be passed in a new @ListTopicsRequest@.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The resulting topics.
    topics :: (Core.Maybe [Topic])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTopicsResponse' with the minimum fields required to make a request.
newListTopicsResponse ::
  ListTopicsResponse
newListTopicsResponse =
  ListTopicsResponse {nextPageToken = Core.Nothing, topics = Core.Nothing}

instance Core.FromJSON ListTopicsResponse where
  parseJSON =
    Core.withObject
      "ListTopicsResponse"
      ( \o ->
          ListTopicsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "topics")
      )

instance Core.ToJSON ListTopicsResponse where
  toJSON ListTopicsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("topics" Core..=) Core.<$> topics
          ]
      )

-- | A policy constraining the storage of messages published to the topic.
--
-- /See:/ 'newMessageStoragePolicy' smart constructor.
newtype MessageStoragePolicy = MessageStoragePolicy
  { -- | A list of IDs of GCP regions where messages that are published to the topic may be persisted in storage. Messages published by publishers running in non-allowed GCP regions (or running outside of GCP altogether) will be routed for storage in one of the allowed regions. An empty list means that no regions are allowed, and is not a valid configuration.
    allowedPersistenceRegions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageStoragePolicy' with the minimum fields required to make a request.
newMessageStoragePolicy ::
  MessageStoragePolicy
newMessageStoragePolicy =
  MessageStoragePolicy {allowedPersistenceRegions = Core.Nothing}

instance Core.FromJSON MessageStoragePolicy where
  parseJSON =
    Core.withObject
      "MessageStoragePolicy"
      ( \o ->
          MessageStoragePolicy
            Core.<$> (o Core..:? "allowedPersistenceRegions")
      )

instance Core.ToJSON MessageStoragePolicy where
  toJSON MessageStoragePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedPersistenceRegions" Core..=)
              Core.<$> allowedPersistenceRegions
          ]
      )

-- | Request for the ModifyAckDeadline method.
--
-- /See:/ 'newModifyAckDeadlineRequest' smart constructor.
data ModifyAckDeadlineRequest = ModifyAckDeadlineRequest
  { -- | Required. The new ack deadline with respect to the time this request was sent to the Pub\/Sub system. For example, if the value is 10, the new ack deadline will expire 10 seconds after the @ModifyAckDeadline@ call was made. Specifying zero might immediately make the message available for delivery to another subscriber client. This typically results in an increase in the rate of message redeliveries (that is, duplicates). The minimum deadline you can specify is 0 seconds. The maximum deadline you can specify is 600 seconds (10 minutes).
    ackDeadlineSeconds :: (Core.Maybe Core.Int32),
    -- | Required. List of acknowledgment IDs.
    ackIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyAckDeadlineRequest' with the minimum fields required to make a request.
newModifyAckDeadlineRequest ::
  ModifyAckDeadlineRequest
newModifyAckDeadlineRequest =
  ModifyAckDeadlineRequest
    { ackDeadlineSeconds = Core.Nothing,
      ackIds = Core.Nothing
    }

instance Core.FromJSON ModifyAckDeadlineRequest where
  parseJSON =
    Core.withObject
      "ModifyAckDeadlineRequest"
      ( \o ->
          ModifyAckDeadlineRequest
            Core.<$> (o Core..:? "ackDeadlineSeconds")
            Core.<*> (o Core..:? "ackIds")
      )

instance Core.ToJSON ModifyAckDeadlineRequest where
  toJSON ModifyAckDeadlineRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("ackDeadlineSeconds" Core..=)
              Core.<$> ackDeadlineSeconds,
            ("ackIds" Core..=) Core.<$> ackIds
          ]
      )

-- | Request for the ModifyPushConfig method.
--
-- /See:/ 'newModifyPushConfigRequest' smart constructor.
newtype ModifyPushConfigRequest = ModifyPushConfigRequest
  { -- | Required. The push configuration for future deliveries. An empty @pushConfig@ indicates that the Pub\/Sub system should stop pushing messages from the given subscription and allow messages to be pulled and acknowledged - effectively pausing the subscription if @Pull@ or @StreamingPull@ is not called.
    pushConfig :: (Core.Maybe PushConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyPushConfigRequest' with the minimum fields required to make a request.
newModifyPushConfigRequest ::
  ModifyPushConfigRequest
newModifyPushConfigRequest = ModifyPushConfigRequest {pushConfig = Core.Nothing}

instance Core.FromJSON ModifyPushConfigRequest where
  parseJSON =
    Core.withObject
      "ModifyPushConfigRequest"
      ( \o ->
          ModifyPushConfigRequest
            Core.<$> (o Core..:? "pushConfig")
      )

instance Core.ToJSON ModifyPushConfigRequest where
  toJSON ModifyPushConfigRequest {..} =
    Core.object
      ( Core.catMaybes
          [("pushConfig" Core..=) Core.<$> pushConfig]
      )

-- | Contains information needed for generating an <https://developers.google.com/identity/protocols/OpenIDConnect OpenID Connect token>. <https://cloud.google.com/iam/docs/service-accounts Service account email> used for generating the OIDC token. For more information on setting up authentication, see <https://cloud.google.com/pubsub/docs/push Push subscriptions>.
--
-- /See:/ 'newOidcToken' smart constructor.
data OidcToken = OidcToken
  { -- | Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https:\/\/tools.ietf.org\/html\/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used.
    audience :: (Core.Maybe Core.Text),
    -- |
    serviceAccountEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OidcToken' with the minimum fields required to make a request.
newOidcToken ::
  OidcToken
newOidcToken =
  OidcToken {audience = Core.Nothing, serviceAccountEmail = Core.Nothing}

instance Core.FromJSON OidcToken where
  parseJSON =
    Core.withObject
      "OidcToken"
      ( \o ->
          OidcToken
            Core.<$> (o Core..:? "audience")
            Core.<*> (o Core..:? "serviceAccountEmail")
      )

instance Core.ToJSON OidcToken where
  toJSON OidcToken {..} =
    Core.object
      ( Core.catMaybes
          [ ("audience" Core..=) Core.<$> audience,
            ("serviceAccountEmail" Core..=)
              Core.<$> serviceAccountEmail
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
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
  Policy {bindings = Core.Nothing, etag = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Request for the Publish method.
--
-- /See:/ 'newPublishRequest' smart constructor.
newtype PublishRequest = PublishRequest
  { -- | Required. The messages to publish.
    messages :: (Core.Maybe [PubsubMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublishRequest' with the minimum fields required to make a request.
newPublishRequest ::
  PublishRequest
newPublishRequest = PublishRequest {messages = Core.Nothing}

instance Core.FromJSON PublishRequest where
  parseJSON =
    Core.withObject
      "PublishRequest"
      ( \o ->
          PublishRequest Core.<$> (o Core..:? "messages")
      )

instance Core.ToJSON PublishRequest where
  toJSON PublishRequest {..} =
    Core.object
      ( Core.catMaybes
          [("messages" Core..=) Core.<$> messages]
      )

-- | Response for the @Publish@ method.
--
-- /See:/ 'newPublishResponse' smart constructor.
newtype PublishResponse = PublishResponse
  { -- | The server-assigned ID of each published message, in the same order as the messages in the request. IDs are guaranteed to be unique within the topic.
    messageIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublishResponse' with the minimum fields required to make a request.
newPublishResponse ::
  PublishResponse
newPublishResponse = PublishResponse {messageIds = Core.Nothing}

instance Core.FromJSON PublishResponse where
  parseJSON =
    Core.withObject
      "PublishResponse"
      ( \o ->
          PublishResponse Core.<$> (o Core..:? "messageIds")
      )

instance Core.ToJSON PublishResponse where
  toJSON PublishResponse {..} =
    Core.object
      ( Core.catMaybes
          [("messageIds" Core..=) Core.<$> messageIds]
      )

-- | A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding <https://cloud.google.com/pubsub/docs/reference/libraries client library documentation> for more information. See [quotas and limits] (https:\/\/cloud.google.com\/pubsub\/quotas) for more information about message limits.
--
-- /See:/ 'newPubsubMessage' smart constructor.
data PubsubMessage = PubsubMessage
  { -- | Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription.
    attributes :: (Core.Maybe PubsubMessage_Attributes),
    -- | The message data field. If this field is empty, the message must contain at least one attribute.
    data' :: (Core.Maybe Core.Base64),
    -- | ID of this message, assigned by the server when the message is published. Guaranteed to be unique within the topic. This value may be read by a subscriber that receives a @PubsubMessage@ via a @Pull@ call or a push delivery. It must not be populated by the publisher in a @Publish@ call.
    messageId :: (Core.Maybe Core.Text),
    -- | If non-empty, identifies related messages for which publish order should be respected. If a @Subscription@ has @enable_message_ordering@ set to @true@, messages published with the same non-empty @ordering_key@ value will be delivered to subscribers in the order in which they are received by the Pub\/Sub system. All @PubsubMessage@s published in a given @PublishRequest@ must specify the same @ordering_key@ value. For more information, see <https://cloud.google.com/pubsub/docs/ordering ordering messages>.
    orderingKey :: (Core.Maybe Core.Text),
    -- | The time at which the message was published, populated by the server when it receives the @Publish@ call. It must not be populated by the publisher in a @Publish@ call.
    publishTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubMessage' with the minimum fields required to make a request.
newPubsubMessage ::
  PubsubMessage
newPubsubMessage =
  PubsubMessage
    { attributes = Core.Nothing,
      data' = Core.Nothing,
      messageId = Core.Nothing,
      orderingKey = Core.Nothing,
      publishTime = Core.Nothing
    }

instance Core.FromJSON PubsubMessage where
  parseJSON =
    Core.withObject
      "PubsubMessage"
      ( \o ->
          PubsubMessage
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "messageId")
            Core.<*> (o Core..:? "orderingKey")
            Core.<*> (o Core..:? "publishTime")
      )

instance Core.ToJSON PubsubMessage where
  toJSON PubsubMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("data" Core..=) Core.<$> data',
            ("messageId" Core..=) Core.<$> messageId,
            ("orderingKey" Core..=) Core.<$> orderingKey,
            ("publishTime" Core..=) Core.<$> publishTime
          ]
      )

-- | Attributes for this message. If this field is empty, the message must contain non-empty data. This can be used to filter messages on the subscription.
--
-- /See:/ 'newPubsubMessage_Attributes' smart constructor.
newtype PubsubMessage_Attributes = PubsubMessage_Attributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubMessage_Attributes' with the minimum fields required to make a request.
newPubsubMessage_Attributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PubsubMessage_Attributes
newPubsubMessage_Attributes additional =
  PubsubMessage_Attributes {additional = additional}

instance Core.FromJSON PubsubMessage_Attributes where
  parseJSON =
    Core.withObject
      "PubsubMessage_Attributes"
      ( \o ->
          PubsubMessage_Attributes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PubsubMessage_Attributes where
  toJSON PubsubMessage_Attributes {..} =
    Core.toJSON additional

-- | Request for the @Pull@ method.
--
-- /See:/ 'newPullRequest' smart constructor.
data PullRequest = PullRequest
  { -- | Required. The maximum number of messages to return for this request. Must be a positive integer. The Pub\/Sub system may return fewer than the number specified.
    maxMessages :: (Core.Maybe Core.Int32),
    -- | Optional. If this field set to true, the system will respond immediately even if it there are no messages available to return in the @Pull@ response. Otherwise, the system may wait (for a bounded amount of time) until at least one message is available, rather than returning no messages. Warning: setting this field to @true@ is discouraged because it adversely impacts the performance of @Pull@ operations. We recommend that users do not set this field.
    returnImmediately :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PullRequest' with the minimum fields required to make a request.
newPullRequest ::
  PullRequest
newPullRequest =
  PullRequest {maxMessages = Core.Nothing, returnImmediately = Core.Nothing}

instance Core.FromJSON PullRequest where
  parseJSON =
    Core.withObject
      "PullRequest"
      ( \o ->
          PullRequest
            Core.<$> (o Core..:? "maxMessages")
            Core.<*> (o Core..:? "returnImmediately")
      )

instance Core.ToJSON PullRequest where
  toJSON PullRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxMessages" Core..=) Core.<$> maxMessages,
            ("returnImmediately" Core..=)
              Core.<$> returnImmediately
          ]
      )

-- | Response for the @Pull@ method.
--
-- /See:/ 'newPullResponse' smart constructor.
newtype PullResponse = PullResponse
  { -- | Received Pub\/Sub messages. The list will be empty if there are no more messages available in the backlog, or if no messages could be returned before the request timeout. For JSON, the response can be entirely empty. The Pub\/Sub system may return fewer than the @maxMessages@ requested even if there are more messages available in the backlog.
    receivedMessages :: (Core.Maybe [ReceivedMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PullResponse' with the minimum fields required to make a request.
newPullResponse ::
  PullResponse
newPullResponse = PullResponse {receivedMessages = Core.Nothing}

instance Core.FromJSON PullResponse where
  parseJSON =
    Core.withObject
      "PullResponse"
      ( \o ->
          PullResponse
            Core.<$> (o Core..:? "receivedMessages")
      )

instance Core.ToJSON PullResponse where
  toJSON PullResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("receivedMessages" Core..=)
              Core.<$> receivedMessages
          ]
      )

-- | Configuration for a push delivery endpoint.
--
-- /See:/ 'newPushConfig' smart constructor.
data PushConfig = PushConfig
  { -- | Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is @x-goog-version@, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the @CreateSubscription@ call, it will default to the version of the Pub\/Sub API used to make such call. If not present in a @ModifyPushConfig@ call, its value will not be changed. @GetSubscription@ calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the @x-goog-version@ attribute are: * @v1beta1@: uses the push format defined in the v1beta1 Pub\/Sub API. * @v1@ or @v1beta2@: uses the push format defined in the v1 Pub\/Sub API. For example: @attributes { \"x-goog-version\": \"v1\" }@
    attributes :: (Core.Maybe PushConfig_Attributes),
    -- | If specified, Pub\/Sub will generate and attach an OIDC JWT token as an @Authorization@ header in the HTTP request for every pushed message.
    oidcToken :: (Core.Maybe OidcToken),
    -- | A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use @https:\/\/example.com\/push@.
    pushEndpoint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PushConfig' with the minimum fields required to make a request.
newPushConfig ::
  PushConfig
newPushConfig =
  PushConfig
    { attributes = Core.Nothing,
      oidcToken = Core.Nothing,
      pushEndpoint = Core.Nothing
    }

instance Core.FromJSON PushConfig where
  parseJSON =
    Core.withObject
      "PushConfig"
      ( \o ->
          PushConfig
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "oidcToken")
            Core.<*> (o Core..:? "pushEndpoint")
      )

instance Core.ToJSON PushConfig where
  toJSON PushConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("oidcToken" Core..=) Core.<$> oidcToken,
            ("pushEndpoint" Core..=) Core.<$> pushEndpoint
          ]
      )

-- | Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is @x-goog-version@, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the @CreateSubscription@ call, it will default to the version of the Pub\/Sub API used to make such call. If not present in a @ModifyPushConfig@ call, its value will not be changed. @GetSubscription@ calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the @x-goog-version@ attribute are: * @v1beta1@: uses the push format defined in the v1beta1 Pub\/Sub API. * @v1@ or @v1beta2@: uses the push format defined in the v1 Pub\/Sub API. For example: @attributes { \"x-goog-version\": \"v1\" }@
--
-- /See:/ 'newPushConfig_Attributes' smart constructor.
newtype PushConfig_Attributes = PushConfig_Attributes
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PushConfig_Attributes' with the minimum fields required to make a request.
newPushConfig_Attributes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  PushConfig_Attributes
newPushConfig_Attributes additional =
  PushConfig_Attributes {additional = additional}

instance Core.FromJSON PushConfig_Attributes where
  parseJSON =
    Core.withObject
      "PushConfig_Attributes"
      ( \o ->
          PushConfig_Attributes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PushConfig_Attributes where
  toJSON PushConfig_Attributes {..} =
    Core.toJSON additional

-- | A message and its corresponding acknowledgment ID.
--
-- /See:/ 'newReceivedMessage' smart constructor.
data ReceivedMessage = ReceivedMessage
  { -- | This ID can be used to acknowledge the received message.
    ackId :: (Core.Maybe Core.Text),
    -- | The approximate number of times that Cloud Pub\/Sub has attempted to deliver the associated message to a subscriber. More precisely, this is 1 + (number of NACKs) + (number of ack/deadline exceeds) for this message. A NACK is any call to ModifyAckDeadline with a 0 deadline. An ack/deadline exceeds event is whenever a message is not acknowledged within ack/deadline. Note that ack/deadline is initially Subscription.ackDeadlineSeconds, but may get extended automatically by the client library. Upon the first delivery of a given message, @delivery_attempt@ will have a value of 1. The value is calculated at best effort and is approximate. If a DeadLetterPolicy is not set on the subscription, this will be 0.
    deliveryAttempt :: (Core.Maybe Core.Int32),
    -- | The message.
    message :: (Core.Maybe PubsubMessage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReceivedMessage' with the minimum fields required to make a request.
newReceivedMessage ::
  ReceivedMessage
newReceivedMessage =
  ReceivedMessage
    { ackId = Core.Nothing,
      deliveryAttempt = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON ReceivedMessage where
  parseJSON =
    Core.withObject
      "ReceivedMessage"
      ( \o ->
          ReceivedMessage
            Core.<$> (o Core..:? "ackId")
            Core.<*> (o Core..:? "deliveryAttempt")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON ReceivedMessage where
  toJSON ReceivedMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("ackId" Core..=) Core.<$> ackId,
            ("deliveryAttempt" Core..=) Core.<$> deliveryAttempt,
            ("message" Core..=) Core.<$> message
          ]
      )

-- | A policy that specifies how Cloud Pub\/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https:\/\/en.wikipedia.org\/wiki\/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.
--
-- /See:/ 'newRetryPolicy' smart constructor.
data RetryPolicy = RetryPolicy
  { -- | The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
    maximumBackoff :: (Core.Maybe Core.Duration),
    -- | The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
    minimumBackoff :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RetryPolicy' with the minimum fields required to make a request.
newRetryPolicy ::
  RetryPolicy
newRetryPolicy =
  RetryPolicy {maximumBackoff = Core.Nothing, minimumBackoff = Core.Nothing}

instance Core.FromJSON RetryPolicy where
  parseJSON =
    Core.withObject
      "RetryPolicy"
      ( \o ->
          RetryPolicy
            Core.<$> (o Core..:? "maximumBackoff")
            Core.<*> (o Core..:? "minimumBackoff")
      )

instance Core.ToJSON RetryPolicy where
  toJSON RetryPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("maximumBackoff" Core..=) Core.<$> maximumBackoff,
            ("minimumBackoff" Core..=) Core.<$> minimumBackoff
          ]
      )

-- | Request for the @RollbackSchema@ method.
--
-- /See:/ 'newRollbackSchemaRequest' smart constructor.
newtype RollbackSchemaRequest = RollbackSchemaRequest
  { -- | Required. The revision ID to roll back to. It must be a revision of the same schema. Example: c7cfa2a8
    revisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RollbackSchemaRequest' with the minimum fields required to make a request.
newRollbackSchemaRequest ::
  RollbackSchemaRequest
newRollbackSchemaRequest = RollbackSchemaRequest {revisionId = Core.Nothing}

instance Core.FromJSON RollbackSchemaRequest where
  parseJSON =
    Core.withObject
      "RollbackSchemaRequest"
      ( \o ->
          RollbackSchemaRequest
            Core.<$> (o Core..:? "revisionId")
      )

instance Core.ToJSON RollbackSchemaRequest where
  toJSON RollbackSchemaRequest {..} =
    Core.object
      ( Core.catMaybes
          [("revisionId" Core..=) Core.<$> revisionId]
      )

-- | A schema resource.
--
-- /See:/ 'newSchema' smart constructor.
data Schema = Schema
  { -- | The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in @type@.
    definition :: (Core.Maybe Core.Text),
    -- | Required. Name of the schema. Format is @projects\/{project}\/schemas\/{schema}@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The timestamp that the revision was created.
    revisionCreateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Immutable. The revision ID of the schema.
    revisionId :: (Core.Maybe Core.Text),
    -- | The type of the schema definition.
    type' :: (Core.Maybe Schema_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Schema' with the minimum fields required to make a request.
newSchema ::
  Schema
newSchema =
  Schema
    { definition = Core.Nothing,
      name = Core.Nothing,
      revisionCreateTime = Core.Nothing,
      revisionId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Schema where
  parseJSON =
    Core.withObject
      "Schema"
      ( \o ->
          Schema
            Core.<$> (o Core..:? "definition")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "revisionCreateTime")
            Core.<*> (o Core..:? "revisionId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Schema where
  toJSON Schema {..} =
    Core.object
      ( Core.catMaybes
          [ ("definition" Core..=) Core.<$> definition,
            ("name" Core..=) Core.<$> name,
            ("revisionCreateTime" Core..=)
              Core.<$> revisionCreateTime,
            ("revisionId" Core..=) Core.<$> revisionId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Settings for validating messages published against a schema.
--
-- /See:/ 'newSchemaSettings' smart constructor.
data SchemaSettings = SchemaSettings
  { -- | The encoding of messages validated against @schema@.
    encoding :: (Core.Maybe SchemaSettings_Encoding),
    -- | The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
    firstRevisionId :: (Core.Maybe Core.Text),
    -- | The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
    lastRevisionId :: (Core.Maybe Core.Text),
    -- | Required. The name of the schema that messages published should be validated against. Format is @projects\/{project}\/schemas\/{schema}@. The value of this field will be @_deleted-schema_@ if the schema has been deleted.
    schema :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaSettings' with the minimum fields required to make a request.
newSchemaSettings ::
  SchemaSettings
newSchemaSettings =
  SchemaSettings
    { encoding = Core.Nothing,
      firstRevisionId = Core.Nothing,
      lastRevisionId = Core.Nothing,
      schema = Core.Nothing
    }

instance Core.FromJSON SchemaSettings where
  parseJSON =
    Core.withObject
      "SchemaSettings"
      ( \o ->
          SchemaSettings
            Core.<$> (o Core..:? "encoding")
            Core.<*> (o Core..:? "firstRevisionId")
            Core.<*> (o Core..:? "lastRevisionId")
            Core.<*> (o Core..:? "schema")
      )

instance Core.ToJSON SchemaSettings where
  toJSON SchemaSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("encoding" Core..=) Core.<$> encoding,
            ("firstRevisionId" Core..=) Core.<$> firstRevisionId,
            ("lastRevisionId" Core..=) Core.<$> lastRevisionId,
            ("schema" Core..=) Core.<$> schema
          ]
      )

-- | Request for the @Seek@ method.
--
-- /See:/ 'newSeekRequest' smart constructor.
data SeekRequest = SeekRequest
  { -- | The snapshot to seek to. The snapshot\'s topic must be the same as that of the provided subscription. Format is @projects\/{project}\/snapshots\/{snap}@.
    snapshot :: (Core.Maybe Core.Text),
    -- | The time to seek to. Messages retained in the subscription that were published before this time are marked as acknowledged, and messages retained in the subscription that were published after this time are marked as unacknowledged. Note that this operation affects only those messages retained in the subscription (configured by the combination of @message_retention_duration@ and @retain_acked_messages@). For example, if @time@ corresponds to a point before the message retention window (or to a point before the system\'s notion of the subscription creation time), only retained messages will be marked as unacknowledged, and already-expunged messages will not be restored.
    time :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SeekRequest' with the minimum fields required to make a request.
newSeekRequest ::
  SeekRequest
newSeekRequest = SeekRequest {snapshot = Core.Nothing, time = Core.Nothing}

instance Core.FromJSON SeekRequest where
  parseJSON =
    Core.withObject
      "SeekRequest"
      ( \o ->
          SeekRequest
            Core.<$> (o Core..:? "snapshot") Core.<*> (o Core..:? "time")
      )

instance Core.ToJSON SeekRequest where
  toJSON SeekRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("snapshot" Core..=) Core.<$> snapshot,
            ("time" Core..=) Core.<$> time
          ]
      )

-- | Response for the @Seek@ method (this response is empty).
--
-- /See:/ 'newSeekResponse' smart constructor.
data SeekResponse = SeekResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SeekResponse' with the minimum fields required to make a request.
newSeekResponse ::
  SeekResponse
newSeekResponse = SeekResponse

instance Core.FromJSON SeekResponse where
  parseJSON =
    Core.withObject
      "SeekResponse"
      (\o -> Core.pure SeekResponse)

instance Core.ToJSON SeekResponse where
  toJSON = Core.const Core.emptyObject

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
newtype SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest = SetIamPolicyRequest {policy = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest Core.<$> (o Core..:? "policy")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      (Core.catMaybes [("policy" Core..=) Core.<$> policy])

-- | A snapshot resource. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ 'newSnapshot' smart constructor.
data Snapshot = Snapshot
  { -- | The snapshot is guaranteed to exist up until this time. A newly-created snapshot expires no later than 7 days from the time of its creation. Its exact lifetime is determined at creation by the existing backlog in the source subscription. Specifically, the lifetime of the snapshot is @7 days - (age of oldest unacked message in the subscription)@. For example, consider a subscription whose oldest unacked message is 3 days old. If a snapshot is created from this subscription, the snapshot -- which will always capture this 3-day-old backlog as long as the snapshot exists -- will expire in 4 days. The service will refuse to create a snapshot that would expire in less than 1 hour after creation.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | See [Creating and managing labels] (https:\/\/cloud.google.com\/pubsub\/docs\/labels).
    labels :: (Core.Maybe Snapshot_Labels),
    -- | The name of the snapshot.
    name :: (Core.Maybe Core.Text),
    -- | The name of the topic from which this snapshot is retaining messages.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
newSnapshot ::
  Snapshot
newSnapshot =
  Snapshot
    { expireTime = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON Snapshot where
  parseJSON =
    Core.withObject
      "Snapshot"
      ( \o ->
          Snapshot
            Core.<$> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON Snapshot where
  toJSON Snapshot {..} =
    Core.object
      ( Core.catMaybes
          [ ("expireTime" Core..=) Core.<$> expireTime,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | See [Creating and managing labels] (https:\/\/cloud.google.com\/pubsub\/docs\/labels).
--
-- /See:/ 'newSnapshot_Labels' smart constructor.
newtype Snapshot_Labels = Snapshot_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Snapshot_Labels' with the minimum fields required to make a request.
newSnapshot_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Snapshot_Labels
newSnapshot_Labels additional = Snapshot_Labels {additional = additional}

instance Core.FromJSON Snapshot_Labels where
  parseJSON =
    Core.withObject
      "Snapshot_Labels"
      ( \o ->
          Snapshot_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Snapshot_Labels where
  toJSON Snapshot_Labels {..} = Core.toJSON additional

-- | A subscription resource. If none of @push_config@ or @bigquery_config@ is set, then the subscriber will pull and ack messages using API methods. At most one of these fields may be set.
--
-- /See:/ 'newSubscription' smart constructor.
data Subscription = Subscription
  { -- | The approximate amount of time (on a best-effort basis) Pub\/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be /outstanding/. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call @ModifyAckDeadline@ with the corresponding @ack_id@ if using non-streaming pull or send the @ack_id@ in a @StreamingModifyAckDeadlineRequest@ if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub\/Sub system will
    -- eventually redeliver the message.
    ackDeadlineSeconds :: (Core.Maybe Core.Int32),
    -- | If delivery to BigQuery is used with this subscription, this field is used to configure it.
    bigqueryConfig :: (Core.Maybe BigQueryConfig),
    -- | A policy that specifies the conditions for dead lettering messages in this subscription. If dead/letter/policy is not set, dead lettering is disabled. The Cloud Pub\/Sub service account associated with this subscriptions\'s parent project (i.e., service-{project_number}\@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
    deadLetterPolicy :: (Core.Maybe DeadLetterPolicy),
    -- | Indicates whether the subscription is detached from its topic. Detached subscriptions don\'t receive messages from their topic and don\'t retain any backlog. @Pull@ and @StreamingPull@ requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
    detached :: (Core.Maybe Core.Bool),
    -- | If true, Pub\/Sub provides the following guarantees for the delivery of a message with a given value of @message_id@ on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message\'s acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when @enable_exactly_once_delivery@ is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub\/Sub and have distinct @message_id@ values.
    enableExactlyOnceDelivery :: (Core.Maybe Core.Bool),
    -- | If true, messages published with the same @ordering_key@ in @PubsubMessage@ will be delivered to the subscribers in the order in which they are received by the Pub\/Sub system. Otherwise, they may be delivered in any order.
    enableMessageOrdering :: (Core.Maybe Core.Bool),
    -- | A policy that specifies the conditions for this subscription\'s expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If @expiration_policy@ is not set, a /default policy/ with @ttl@ of 31 days will be used. The minimum allowed value for @expiration_policy.ttl@ is 1 day. If @expiration_policy@ is set, but @expiration_policy.ttl@ is not set, the subscription never expires.
    expirationPolicy :: (Core.Maybe ExpirationPolicy),
    -- | An expression written in the Pub\/Sub <https://cloud.google.com/pubsub/docs/filtering filter language>. If non-empty, then only @PubsubMessage@s whose @attributes@ field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
    filter :: (Core.Maybe Core.Text),
    -- | See <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
    labels :: (Core.Maybe Subscription_Labels),
    -- | How long to retain unacknowledged messages in the subscription\'s backlog, from the moment a message is published. If @retain_acked_messages@ is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a @Seek@ can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.
    messageRetentionDuration :: (Core.Maybe Core.Duration),
    -- | Required. The name of the subscription. It must have the format @\"projects\/{project}\/subscriptions\/{subscription}\"@. @{subscription}@ must start with a letter, and contain only letters (@[A-Za-z]@), numbers (@[0-9]@), dashes (@-@), underscores (@_@), periods (@.@), tildes (@~@), plus (@+@) or percent signs (@%@). It must be between 3 and 255 characters in length, and it must not start with @\"goog\"@.
    name :: (Core.Maybe Core.Text),
    -- | If push delivery is used with this subscription, this field is used to configure it.
    pushConfig :: (Core.Maybe PushConfig),
    -- | Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription\'s backlog, even if they are acknowledged, until they fall out of the @message_retention_duration@ window. This must be true if you would like to [@Seek@ to a timestamp] (https:\/\/cloud.google.com\/pubsub\/docs\/replay-overview#seek/to/a_time) in the past to replay previously-acknowledged messages.
    retainAckedMessages :: (Core.Maybe Core.Bool),
    -- | A policy that specifies how Pub\/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
    retryPolicy :: (Core.Maybe RetryPolicy),
    -- | Output only. An output-only field indicating whether or not the subscription can receive messages.
    state :: (Core.Maybe Subscription_State),
    -- | Required. The name of the topic from which this subscription is receiving messages. Format is @projects\/{project}\/topics\/{topic}@. The value of this field will be @_deleted-topic_@ if the topic has been deleted.
    topic :: (Core.Maybe Core.Text),
    -- | Output only. Indicates the minimum duration for which a message is retained after it is published to the subscription\'s topic. If this field is set, messages published to the subscription\'s topic in the last @topic_message_retention_duration@ are always available to subscribers. See the @message_retention_duration@ field in @Topic@. This field is set only in responses from the server; it is ignored if it is set in any requests.
    topicMessageRetentionDuration :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
newSubscription ::
  Subscription
newSubscription =
  Subscription
    { ackDeadlineSeconds = Core.Nothing,
      bigqueryConfig = Core.Nothing,
      deadLetterPolicy = Core.Nothing,
      detached = Core.Nothing,
      enableExactlyOnceDelivery = Core.Nothing,
      enableMessageOrdering = Core.Nothing,
      expirationPolicy = Core.Nothing,
      filter = Core.Nothing,
      labels = Core.Nothing,
      messageRetentionDuration = Core.Nothing,
      name = Core.Nothing,
      pushConfig = Core.Nothing,
      retainAckedMessages = Core.Nothing,
      retryPolicy = Core.Nothing,
      state = Core.Nothing,
      topic = Core.Nothing,
      topicMessageRetentionDuration = Core.Nothing
    }

instance Core.FromJSON Subscription where
  parseJSON =
    Core.withObject
      "Subscription"
      ( \o ->
          Subscription
            Core.<$> (o Core..:? "ackDeadlineSeconds")
            Core.<*> (o Core..:? "bigqueryConfig")
            Core.<*> (o Core..:? "deadLetterPolicy")
            Core.<*> (o Core..:? "detached")
            Core.<*> (o Core..:? "enableExactlyOnceDelivery")
            Core.<*> (o Core..:? "enableMessageOrdering")
            Core.<*> (o Core..:? "expirationPolicy")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "messageRetentionDuration")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pushConfig")
            Core.<*> (o Core..:? "retainAckedMessages")
            Core.<*> (o Core..:? "retryPolicy")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "topic")
            Core.<*> (o Core..:? "topicMessageRetentionDuration")
      )

instance Core.ToJSON Subscription where
  toJSON Subscription {..} =
    Core.object
      ( Core.catMaybes
          [ ("ackDeadlineSeconds" Core..=)
              Core.<$> ackDeadlineSeconds,
            ("bigqueryConfig" Core..=) Core.<$> bigqueryConfig,
            ("deadLetterPolicy" Core..=)
              Core.<$> deadLetterPolicy,
            ("detached" Core..=) Core.<$> detached,
            ("enableExactlyOnceDelivery" Core..=)
              Core.<$> enableExactlyOnceDelivery,
            ("enableMessageOrdering" Core..=)
              Core.<$> enableMessageOrdering,
            ("expirationPolicy" Core..=)
              Core.<$> expirationPolicy,
            ("filter" Core..=) Core.<$> filter,
            ("labels" Core..=) Core.<$> labels,
            ("messageRetentionDuration" Core..=)
              Core.<$> messageRetentionDuration,
            ("name" Core..=) Core.<$> name,
            ("pushConfig" Core..=) Core.<$> pushConfig,
            ("retainAckedMessages" Core..=)
              Core.<$> retainAckedMessages,
            ("retryPolicy" Core..=) Core.<$> retryPolicy,
            ("state" Core..=) Core.<$> state,
            ("topic" Core..=) Core.<$> topic,
            ("topicMessageRetentionDuration" Core..=)
              Core.<$> topicMessageRetentionDuration
          ]
      )

-- | See <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
--
-- /See:/ 'newSubscription_Labels' smart constructor.
newtype Subscription_Labels = Subscription_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription_Labels' with the minimum fields required to make a request.
newSubscription_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Subscription_Labels
newSubscription_Labels additional =
  Subscription_Labels {additional = additional}

instance Core.FromJSON Subscription_Labels where
  parseJSON =
    Core.withObject
      "Subscription_Labels"
      ( \o ->
          Subscription_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Subscription_Labels where
  toJSON Subscription_Labels {..} =
    Core.toJSON additional

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

-- | A topic resource.
--
-- /See:/ 'newTopic' smart constructor.
data Topic = Topic
  { -- | The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*@.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | See [Creating and managing labels] (https:\/\/cloud.google.com\/pubsub\/docs\/labels).
    labels :: (Core.Maybe Topic_Labels),
    -- | Indicates the minimum duration to retain a message after it is published to the topic. If this field is set, messages published to the topic in the last @message_retention_duration@ are always available to subscribers. For instance, it allows any attached subscription to <https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time seek to a timestamp> that is up to @message_retention_duration@ in the past. If this field is not set, message retention is controlled by settings on individual subscriptions. Cannot be more than 31 days or less than 10 minutes.
    messageRetentionDuration :: (Core.Maybe Core.Duration),
    -- | Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
    messageStoragePolicy :: (Core.Maybe MessageStoragePolicy),
    -- | Required. The name of the topic. It must have the format @\"projects\/{project}\/topics\/{topic}\"@. @{topic}@ must start with a letter, and contain only letters (@[A-Za-z]@), numbers (@[0-9]@), dashes (@-@), underscores (@_@), periods (@.@), tildes (@~@), plus (@+@) or percent signs (@%@). It must be between 3 and 255 characters in length, and it must not start with @\"goog\"@.
    name :: (Core.Maybe Core.Text),
    -- | Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | Settings for validating messages published against a schema.
    schemaSettings :: (Core.Maybe SchemaSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Topic' with the minimum fields required to make a request.
newTopic ::
  Topic
newTopic =
  Topic
    { kmsKeyName = Core.Nothing,
      labels = Core.Nothing,
      messageRetentionDuration = Core.Nothing,
      messageStoragePolicy = Core.Nothing,
      name = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      schemaSettings = Core.Nothing
    }

instance Core.FromJSON Topic where
  parseJSON =
    Core.withObject
      "Topic"
      ( \o ->
          Topic
            Core.<$> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "messageRetentionDuration")
            Core.<*> (o Core..:? "messageStoragePolicy")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "schemaSettings")
      )

instance Core.ToJSON Topic where
  toJSON Topic {..} =
    Core.object
      ( Core.catMaybes
          [ ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("labels" Core..=) Core.<$> labels,
            ("messageRetentionDuration" Core..=)
              Core.<$> messageRetentionDuration,
            ("messageStoragePolicy" Core..=)
              Core.<$> messageStoragePolicy,
            ("name" Core..=) Core.<$> name,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("schemaSettings" Core..=) Core.<$> schemaSettings
          ]
      )

-- | See [Creating and managing labels] (https:\/\/cloud.google.com\/pubsub\/docs\/labels).
--
-- /See:/ 'newTopic_Labels' smart constructor.
newtype Topic_Labels = Topic_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Topic_Labels' with the minimum fields required to make a request.
newTopic_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Topic_Labels
newTopic_Labels additional = Topic_Labels {additional = additional}

instance Core.FromJSON Topic_Labels where
  parseJSON =
    Core.withObject
      "Topic_Labels"
      ( \o ->
          Topic_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Topic_Labels where
  toJSON Topic_Labels {..} = Core.toJSON additional

-- | Request for the UpdateSnapshot method.
--
-- /See:/ 'newUpdateSnapshotRequest' smart constructor.
data UpdateSnapshotRequest = UpdateSnapshotRequest
  { -- | Required. The updated snapshot object.
    snapshot :: (Core.Maybe Snapshot),
    -- | Required. Indicates which fields in the provided snapshot to update. Must be specified and non-empty.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSnapshotRequest' with the minimum fields required to make a request.
newUpdateSnapshotRequest ::
  UpdateSnapshotRequest
newUpdateSnapshotRequest =
  UpdateSnapshotRequest {snapshot = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON UpdateSnapshotRequest where
  parseJSON =
    Core.withObject
      "UpdateSnapshotRequest"
      ( \o ->
          UpdateSnapshotRequest
            Core.<$> (o Core..:? "snapshot")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdateSnapshotRequest where
  toJSON UpdateSnapshotRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("snapshot" Core..=) Core.<$> snapshot,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request for the UpdateSubscription method.
--
-- /See:/ 'newUpdateSubscriptionRequest' smart constructor.
data UpdateSubscriptionRequest = UpdateSubscriptionRequest
  { -- | Required. The updated subscription object.
    subscription :: (Core.Maybe Subscription),
    -- | Required. Indicates which fields in the provided subscription to update. Must be specified and non-empty.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSubscriptionRequest' with the minimum fields required to make a request.
newUpdateSubscriptionRequest ::
  UpdateSubscriptionRequest
newUpdateSubscriptionRequest =
  UpdateSubscriptionRequest
    { subscription = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON UpdateSubscriptionRequest where
  parseJSON =
    Core.withObject
      "UpdateSubscriptionRequest"
      ( \o ->
          UpdateSubscriptionRequest
            Core.<$> (o Core..:? "subscription")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdateSubscriptionRequest where
  toJSON UpdateSubscriptionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("subscription" Core..=) Core.<$> subscription,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request for the UpdateTopic method.
--
-- /See:/ 'newUpdateTopicRequest' smart constructor.
data UpdateTopicRequest = UpdateTopicRequest
  { -- | Required. The updated topic object.
    topic :: (Core.Maybe Topic),
    -- | Required. Indicates which fields in the provided topic to update. Must be specified and non-empty. Note that if @update_mask@ contains \"message/storage/policy\" but the @message_storage_policy@ is not set in the @topic@ provided above, then the updated value is determined by the policy configured at the project or organization level.
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTopicRequest' with the minimum fields required to make a request.
newUpdateTopicRequest ::
  UpdateTopicRequest
newUpdateTopicRequest =
  UpdateTopicRequest {topic = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON UpdateTopicRequest where
  parseJSON =
    Core.withObject
      "UpdateTopicRequest"
      ( \o ->
          UpdateTopicRequest
            Core.<$> (o Core..:? "topic")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdateTopicRequest where
  toJSON UpdateTopicRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("topic" Core..=) Core.<$> topic,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request for the @ValidateMessage@ method.
--
-- /See:/ 'newValidateMessageRequest' smart constructor.
data ValidateMessageRequest = ValidateMessageRequest
  { -- | The encoding expected for messages
    encoding :: (Core.Maybe ValidateMessageRequest_Encoding),
    -- | Message to validate against the provided @schema_spec@.
    message :: (Core.Maybe Core.Base64),
    -- | Name of the schema against which to validate. Format is @projects\/{project}\/schemas\/{schema}@.
    name :: (Core.Maybe Core.Text),
    -- | Ad-hoc schema against which to validate
    schema :: (Core.Maybe Schema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateMessageRequest' with the minimum fields required to make a request.
newValidateMessageRequest ::
  ValidateMessageRequest
newValidateMessageRequest =
  ValidateMessageRequest
    { encoding = Core.Nothing,
      message = Core.Nothing,
      name = Core.Nothing,
      schema = Core.Nothing
    }

instance Core.FromJSON ValidateMessageRequest where
  parseJSON =
    Core.withObject
      "ValidateMessageRequest"
      ( \o ->
          ValidateMessageRequest
            Core.<$> (o Core..:? "encoding")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "schema")
      )

instance Core.ToJSON ValidateMessageRequest where
  toJSON ValidateMessageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("encoding" Core..=) Core.<$> encoding,
            ("message" Core..=) Core.<$> message,
            ("name" Core..=) Core.<$> name,
            ("schema" Core..=) Core.<$> schema
          ]
      )

-- | Response for the @ValidateMessage@ method. Empty for now.
--
-- /See:/ 'newValidateMessageResponse' smart constructor.
data ValidateMessageResponse = ValidateMessageResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateMessageResponse' with the minimum fields required to make a request.
newValidateMessageResponse ::
  ValidateMessageResponse
newValidateMessageResponse = ValidateMessageResponse

instance Core.FromJSON ValidateMessageResponse where
  parseJSON =
    Core.withObject
      "ValidateMessageResponse"
      (\o -> Core.pure ValidateMessageResponse)

instance Core.ToJSON ValidateMessageResponse where
  toJSON = Core.const Core.emptyObject

-- | Request for the @ValidateSchema@ method.
--
-- /See:/ 'newValidateSchemaRequest' smart constructor.
newtype ValidateSchemaRequest = ValidateSchemaRequest
  { -- | Required. The schema object to validate.
    schema :: (Core.Maybe Schema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateSchemaRequest' with the minimum fields required to make a request.
newValidateSchemaRequest ::
  ValidateSchemaRequest
newValidateSchemaRequest = ValidateSchemaRequest {schema = Core.Nothing}

instance Core.FromJSON ValidateSchemaRequest where
  parseJSON =
    Core.withObject
      "ValidateSchemaRequest"
      ( \o ->
          ValidateSchemaRequest Core.<$> (o Core..:? "schema")
      )

instance Core.ToJSON ValidateSchemaRequest where
  toJSON ValidateSchemaRequest {..} =
    Core.object
      (Core.catMaybes [("schema" Core..=) Core.<$> schema])

-- | Response for the @ValidateSchema@ method. Empty for now.
--
-- /See:/ 'newValidateSchemaResponse' smart constructor.
data ValidateSchemaResponse = ValidateSchemaResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValidateSchemaResponse' with the minimum fields required to make a request.
newValidateSchemaResponse ::
  ValidateSchemaResponse
newValidateSchemaResponse = ValidateSchemaResponse

instance Core.FromJSON ValidateSchemaResponse where
  parseJSON =
    Core.withObject
      "ValidateSchemaResponse"
      (\o -> Core.pure ValidateSchemaResponse)

instance Core.ToJSON ValidateSchemaResponse where
  toJSON = Core.const Core.emptyObject
