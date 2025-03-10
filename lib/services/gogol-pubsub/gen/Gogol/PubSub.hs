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
-- Module      : Gogol.PubSub
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides reliable, many-to-many, asynchronous messaging between applications.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference>
module Gogol.PubSub
  ( -- * Configuration
    pubSubService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Pubsub'FullControl,

    -- * Resources

    -- ** pubsub.projects.schemas.commit
    PubSubProjectsSchemasCommitResource,
    PubSubProjectsSchemasCommit (..),
    newPubSubProjectsSchemasCommit,

    -- ** pubsub.projects.schemas.create
    PubSubProjectsSchemasCreateResource,
    PubSubProjectsSchemasCreate (..),
    newPubSubProjectsSchemasCreate,

    -- ** pubsub.projects.schemas.delete
    PubSubProjectsSchemasDeleteResource,
    PubSubProjectsSchemasDelete (..),
    newPubSubProjectsSchemasDelete,

    -- ** pubsub.projects.schemas.deleteRevision
    PubSubProjectsSchemasDeleteRevisionResource,
    PubSubProjectsSchemasDeleteRevision (..),
    newPubSubProjectsSchemasDeleteRevision,

    -- ** pubsub.projects.schemas.get
    PubSubProjectsSchemasGetResource,
    PubSubProjectsSchemasGet (..),
    newPubSubProjectsSchemasGet,

    -- ** pubsub.projects.schemas.getIamPolicy
    PubSubProjectsSchemasGetIamPolicyResource,
    PubSubProjectsSchemasGetIamPolicy (..),
    newPubSubProjectsSchemasGetIamPolicy,

    -- ** pubsub.projects.schemas.list
    PubSubProjectsSchemasListResource,
    PubSubProjectsSchemasList (..),
    newPubSubProjectsSchemasList,

    -- ** pubsub.projects.schemas.listRevisions
    PubSubProjectsSchemasListRevisionsResource,
    PubSubProjectsSchemasListRevisions (..),
    newPubSubProjectsSchemasListRevisions,

    -- ** pubsub.projects.schemas.rollback
    PubSubProjectsSchemasRollbackResource,
    PubSubProjectsSchemasRollback (..),
    newPubSubProjectsSchemasRollback,

    -- ** pubsub.projects.schemas.setIamPolicy
    PubSubProjectsSchemasSetIamPolicyResource,
    PubSubProjectsSchemasSetIamPolicy (..),
    newPubSubProjectsSchemasSetIamPolicy,

    -- ** pubsub.projects.schemas.testIamPermissions
    PubSubProjectsSchemasTestIamPermissionsResource,
    PubSubProjectsSchemasTestIamPermissions (..),
    newPubSubProjectsSchemasTestIamPermissions,

    -- ** pubsub.projects.schemas.validate
    PubSubProjectsSchemasValidateResource,
    PubSubProjectsSchemasValidate (..),
    newPubSubProjectsSchemasValidate,

    -- ** pubsub.projects.schemas.validateMessage
    PubSubProjectsSchemasValidateMessageResource,
    PubSubProjectsSchemasValidateMessage (..),
    newPubSubProjectsSchemasValidateMessage,

    -- ** pubsub.projects.snapshots.create
    PubSubProjectsSnapshotsCreateResource,
    PubSubProjectsSnapshotsCreate (..),
    newPubSubProjectsSnapshotsCreate,

    -- ** pubsub.projects.snapshots.delete
    PubSubProjectsSnapshotsDeleteResource,
    PubSubProjectsSnapshotsDelete (..),
    newPubSubProjectsSnapshotsDelete,

    -- ** pubsub.projects.snapshots.get
    PubSubProjectsSnapshotsGetResource,
    PubSubProjectsSnapshotsGet (..),
    newPubSubProjectsSnapshotsGet,

    -- ** pubsub.projects.snapshots.getIamPolicy
    PubSubProjectsSnapshotsGetIamPolicyResource,
    PubSubProjectsSnapshotsGetIamPolicy (..),
    newPubSubProjectsSnapshotsGetIamPolicy,

    -- ** pubsub.projects.snapshots.list
    PubSubProjectsSnapshotsListResource,
    PubSubProjectsSnapshotsList (..),
    newPubSubProjectsSnapshotsList,

    -- ** pubsub.projects.snapshots.patch
    PubSubProjectsSnapshotsPatchResource,
    PubSubProjectsSnapshotsPatch (..),
    newPubSubProjectsSnapshotsPatch,

    -- ** pubsub.projects.snapshots.setIamPolicy
    PubSubProjectsSnapshotsSetIamPolicyResource,
    PubSubProjectsSnapshotsSetIamPolicy (..),
    newPubSubProjectsSnapshotsSetIamPolicy,

    -- ** pubsub.projects.snapshots.testIamPermissions
    PubSubProjectsSnapshotsTestIamPermissionsResource,
    PubSubProjectsSnapshotsTestIamPermissions (..),
    newPubSubProjectsSnapshotsTestIamPermissions,

    -- ** pubsub.projects.subscriptions.acknowledge
    PubSubProjectsSubscriptionsAcknowledgeResource,
    PubSubProjectsSubscriptionsAcknowledge (..),
    newPubSubProjectsSubscriptionsAcknowledge,

    -- ** pubsub.projects.subscriptions.create
    PubSubProjectsSubscriptionsCreateResource,
    PubSubProjectsSubscriptionsCreate (..),
    newPubSubProjectsSubscriptionsCreate,

    -- ** pubsub.projects.subscriptions.delete
    PubSubProjectsSubscriptionsDeleteResource,
    PubSubProjectsSubscriptionsDelete (..),
    newPubSubProjectsSubscriptionsDelete,

    -- ** pubsub.projects.subscriptions.detach
    PubSubProjectsSubscriptionsDetachResource,
    PubSubProjectsSubscriptionsDetach (..),
    newPubSubProjectsSubscriptionsDetach,

    -- ** pubsub.projects.subscriptions.get
    PubSubProjectsSubscriptionsGetResource,
    PubSubProjectsSubscriptionsGet (..),
    newPubSubProjectsSubscriptionsGet,

    -- ** pubsub.projects.subscriptions.getIamPolicy
    PubSubProjectsSubscriptionsGetIamPolicyResource,
    PubSubProjectsSubscriptionsGetIamPolicy (..),
    newPubSubProjectsSubscriptionsGetIamPolicy,

    -- ** pubsub.projects.subscriptions.list
    PubSubProjectsSubscriptionsListResource,
    PubSubProjectsSubscriptionsList (..),
    newPubSubProjectsSubscriptionsList,

    -- ** pubsub.projects.subscriptions.modifyAckDeadline
    PubSubProjectsSubscriptionsModifyAckDeadlineResource,
    PubSubProjectsSubscriptionsModifyAckDeadline (..),
    newPubSubProjectsSubscriptionsModifyAckDeadline,

    -- ** pubsub.projects.subscriptions.modifyPushConfig
    PubSubProjectsSubscriptionsModifyPushConfigResource,
    PubSubProjectsSubscriptionsModifyPushConfig (..),
    newPubSubProjectsSubscriptionsModifyPushConfig,

    -- ** pubsub.projects.subscriptions.patch
    PubSubProjectsSubscriptionsPatchResource,
    PubSubProjectsSubscriptionsPatch (..),
    newPubSubProjectsSubscriptionsPatch,

    -- ** pubsub.projects.subscriptions.pull
    PubSubProjectsSubscriptionsPullResource,
    PubSubProjectsSubscriptionsPull (..),
    newPubSubProjectsSubscriptionsPull,

    -- ** pubsub.projects.subscriptions.seek
    PubSubProjectsSubscriptionsSeekResource,
    PubSubProjectsSubscriptionsSeek (..),
    newPubSubProjectsSubscriptionsSeek,

    -- ** pubsub.projects.subscriptions.setIamPolicy
    PubSubProjectsSubscriptionsSetIamPolicyResource,
    PubSubProjectsSubscriptionsSetIamPolicy (..),
    newPubSubProjectsSubscriptionsSetIamPolicy,

    -- ** pubsub.projects.subscriptions.testIamPermissions
    PubSubProjectsSubscriptionsTestIamPermissionsResource,
    PubSubProjectsSubscriptionsTestIamPermissions (..),
    newPubSubProjectsSubscriptionsTestIamPermissions,

    -- ** pubsub.projects.topics.create
    PubSubProjectsTopicsCreateResource,
    PubSubProjectsTopicsCreate (..),
    newPubSubProjectsTopicsCreate,

    -- ** pubsub.projects.topics.delete
    PubSubProjectsTopicsDeleteResource,
    PubSubProjectsTopicsDelete (..),
    newPubSubProjectsTopicsDelete,

    -- ** pubsub.projects.topics.get
    PubSubProjectsTopicsGetResource,
    PubSubProjectsTopicsGet (..),
    newPubSubProjectsTopicsGet,

    -- ** pubsub.projects.topics.getIamPolicy
    PubSubProjectsTopicsGetIamPolicyResource,
    PubSubProjectsTopicsGetIamPolicy (..),
    newPubSubProjectsTopicsGetIamPolicy,

    -- ** pubsub.projects.topics.list
    PubSubProjectsTopicsListResource,
    PubSubProjectsTopicsList (..),
    newPubSubProjectsTopicsList,

    -- ** pubsub.projects.topics.patch
    PubSubProjectsTopicsPatchResource,
    PubSubProjectsTopicsPatch (..),
    newPubSubProjectsTopicsPatch,

    -- ** pubsub.projects.topics.publish
    PubSubProjectsTopicsPublishResource,
    PubSubProjectsTopicsPublish (..),
    newPubSubProjectsTopicsPublish,

    -- ** pubsub.projects.topics.setIamPolicy
    PubSubProjectsTopicsSetIamPolicyResource,
    PubSubProjectsTopicsSetIamPolicy (..),
    newPubSubProjectsTopicsSetIamPolicy,

    -- ** pubsub.projects.topics.snapshots.list
    PubSubProjectsTopicsSnapshotsListResource,
    PubSubProjectsTopicsSnapshotsList (..),
    newPubSubProjectsTopicsSnapshotsList,

    -- ** pubsub.projects.topics.subscriptions.list
    PubSubProjectsTopicsSubscriptionsListResource,
    PubSubProjectsTopicsSubscriptionsList (..),
    newPubSubProjectsTopicsSubscriptionsList,

    -- ** pubsub.projects.topics.testIamPermissions
    PubSubProjectsTopicsTestIamPermissionsResource,
    PubSubProjectsTopicsTestIamPermissions (..),
    newPubSubProjectsTopicsTestIamPermissions,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcknowledgeRequest
    AcknowledgeRequest (..),
    newAcknowledgeRequest,

    -- ** AnalyticsHubSubscriptionInfo
    AnalyticsHubSubscriptionInfo (..),
    newAnalyticsHubSubscriptionInfo,

    -- ** AvroConfig
    AvroConfig (..),
    newAvroConfig,

    -- ** AvroFormat
    AvroFormat (..),
    newAvroFormat,

    -- ** AwsKinesis
    AwsKinesis (..),
    newAwsKinesis,

    -- ** AwsKinesis_State
    AwsKinesis_State (..),

    -- ** AwsMsk
    AwsMsk (..),
    newAwsMsk,

    -- ** AwsMsk_State
    AwsMsk_State (..),

    -- ** AzureEventHubs
    AzureEventHubs (..),
    newAzureEventHubs,

    -- ** AzureEventHubs_State
    AzureEventHubs_State (..),

    -- ** BigQueryConfig
    BigQueryConfig (..),
    newBigQueryConfig,

    -- ** BigQueryConfig_State
    BigQueryConfig_State (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** CloudStorage
    CloudStorage (..),
    newCloudStorage,

    -- ** CloudStorage_State
    CloudStorage_State (..),

    -- ** CloudStorageConfig
    CloudStorageConfig (..),
    newCloudStorageConfig,

    -- ** CloudStorageConfig_State
    CloudStorageConfig_State (..),

    -- ** CommitSchemaRequest
    CommitSchemaRequest (..),
    newCommitSchemaRequest,

    -- ** ConfluentCloud
    ConfluentCloud (..),
    newConfluentCloud,

    -- ** ConfluentCloud_State
    ConfluentCloud_State (..),

    -- ** CreateSnapshotRequest
    CreateSnapshotRequest (..),
    newCreateSnapshotRequest,

    -- ** CreateSnapshotRequest_Labels
    CreateSnapshotRequest_Labels (..),
    newCreateSnapshotRequest_Labels,

    -- ** DeadLetterPolicy
    DeadLetterPolicy (..),
    newDeadLetterPolicy,

    -- ** DetachSubscriptionResponse
    DetachSubscriptionResponse (..),
    newDetachSubscriptionResponse,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ExpirationPolicy
    ExpirationPolicy (..),
    newExpirationPolicy,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** IngestionDataSourceSettings
    IngestionDataSourceSettings (..),
    newIngestionDataSourceSettings,

    -- ** JavaScriptUDF
    JavaScriptUDF (..),
    newJavaScriptUDF,

    -- ** ListSchemaRevisionsResponse
    ListSchemaRevisionsResponse (..),
    newListSchemaRevisionsResponse,

    -- ** ListSchemasResponse
    ListSchemasResponse (..),
    newListSchemasResponse,

    -- ** ListSnapshotsResponse
    ListSnapshotsResponse (..),
    newListSnapshotsResponse,

    -- ** ListSubscriptionsResponse
    ListSubscriptionsResponse (..),
    newListSubscriptionsResponse,

    -- ** ListTopicSnapshotsResponse
    ListTopicSnapshotsResponse (..),
    newListTopicSnapshotsResponse,

    -- ** ListTopicSubscriptionsResponse
    ListTopicSubscriptionsResponse (..),
    newListTopicSubscriptionsResponse,

    -- ** ListTopicsResponse
    ListTopicsResponse (..),
    newListTopicsResponse,

    -- ** MessageStoragePolicy
    MessageStoragePolicy (..),
    newMessageStoragePolicy,

    -- ** MessageTransform
    MessageTransform (..),
    newMessageTransform,

    -- ** ModifyAckDeadlineRequest
    ModifyAckDeadlineRequest (..),
    newModifyAckDeadlineRequest,

    -- ** ModifyPushConfigRequest
    ModifyPushConfigRequest (..),
    newModifyPushConfigRequest,

    -- ** NoWrapper
    NoWrapper (..),
    newNoWrapper,

    -- ** OidcToken
    OidcToken (..),
    newOidcToken,

    -- ** PlatformLogsSettings
    PlatformLogsSettings (..),
    newPlatformLogsSettings,

    -- ** PlatformLogsSettings_Severity
    PlatformLogsSettings_Severity (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PubSubAvroFormat
    PubSubAvroFormat (..),
    newPubSubAvroFormat,

    -- ** PublishRequest
    PublishRequest (..),
    newPublishRequest,

    -- ** PublishResponse
    PublishResponse (..),
    newPublishResponse,

    -- ** PubsubMessage
    PubsubMessage (..),
    newPubsubMessage,

    -- ** PubsubMessage_Attributes
    PubsubMessage_Attributes (..),
    newPubsubMessage_Attributes,

    -- ** PubsubWrapper
    PubsubWrapper (..),
    newPubsubWrapper,

    -- ** PullRequest
    PullRequest (..),
    newPullRequest,

    -- ** PullResponse
    PullResponse (..),
    newPullResponse,

    -- ** PushConfig
    PushConfig (..),
    newPushConfig,

    -- ** PushConfig_Attributes
    PushConfig_Attributes (..),
    newPushConfig_Attributes,

    -- ** ReceivedMessage
    ReceivedMessage (..),
    newReceivedMessage,

    -- ** RetryPolicy
    RetryPolicy (..),
    newRetryPolicy,

    -- ** RollbackSchemaRequest
    RollbackSchemaRequest (..),
    newRollbackSchemaRequest,

    -- ** Schema
    Schema (..),
    newSchema,

    -- ** Schema_Type
    Schema_Type (..),

    -- ** SchemaSettings
    SchemaSettings (..),
    newSchemaSettings,

    -- ** SchemaSettings_Encoding
    SchemaSettings_Encoding (..),

    -- ** SeekRequest
    SeekRequest (..),
    newSeekRequest,

    -- ** SeekResponse
    SeekResponse (..),
    newSeekResponse,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Snapshot
    Snapshot (..),
    newSnapshot,

    -- ** Snapshot_Labels
    Snapshot_Labels (..),
    newSnapshot_Labels,

    -- ** Subscription
    Subscription (..),
    newSubscription,

    -- ** Subscription_Labels
    Subscription_Labels (..),
    newSubscription_Labels,

    -- ** Subscription_State
    Subscription_State (..),

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TextConfig
    TextConfig (..),
    newTextConfig,

    -- ** TextFormat
    TextFormat (..),
    newTextFormat,

    -- ** Topic
    Topic (..),
    newTopic,

    -- ** Topic_Labels
    Topic_Labels (..),
    newTopic_Labels,

    -- ** Topic_State
    Topic_State (..),

    -- ** UpdateSnapshotRequest
    UpdateSnapshotRequest (..),
    newUpdateSnapshotRequest,

    -- ** UpdateSubscriptionRequest
    UpdateSubscriptionRequest (..),
    newUpdateSubscriptionRequest,

    -- ** UpdateTopicRequest
    UpdateTopicRequest (..),
    newUpdateTopicRequest,

    -- ** ValidateMessageRequest
    ValidateMessageRequest (..),
    newValidateMessageRequest,

    -- ** ValidateMessageRequest_Encoding
    ValidateMessageRequest_Encoding (..),

    -- ** ValidateMessageResponse
    ValidateMessageResponse (..),
    newValidateMessageResponse,

    -- ** ValidateSchemaRequest
    ValidateSchemaRequest (..),
    newValidateSchemaRequest,

    -- ** ValidateSchemaResponse
    ValidateSchemaResponse (..),
    newValidateSchemaResponse,

    -- ** ProjectsSchemasGetView
    ProjectsSchemasGetView (..),

    -- ** ProjectsSchemasListView
    ProjectsSchemasListView (..),

    -- ** ProjectsSchemasListRevisionsView
    ProjectsSchemasListRevisionsView (..),
  )
where

import Gogol.PubSub.Projects.Schemas.Commit
import Gogol.PubSub.Projects.Schemas.Create
import Gogol.PubSub.Projects.Schemas.Delete
import Gogol.PubSub.Projects.Schemas.DeleteRevision
import Gogol.PubSub.Projects.Schemas.Get
import Gogol.PubSub.Projects.Schemas.GetIamPolicy
import Gogol.PubSub.Projects.Schemas.List
import Gogol.PubSub.Projects.Schemas.ListRevisions
import Gogol.PubSub.Projects.Schemas.Rollback
import Gogol.PubSub.Projects.Schemas.SetIamPolicy
import Gogol.PubSub.Projects.Schemas.TestIamPermissions
import Gogol.PubSub.Projects.Schemas.Validate
import Gogol.PubSub.Projects.Schemas.ValidateMessage
import Gogol.PubSub.Projects.Snapshots.Create
import Gogol.PubSub.Projects.Snapshots.Delete
import Gogol.PubSub.Projects.Snapshots.Get
import Gogol.PubSub.Projects.Snapshots.GetIamPolicy
import Gogol.PubSub.Projects.Snapshots.List
import Gogol.PubSub.Projects.Snapshots.Patch
import Gogol.PubSub.Projects.Snapshots.SetIamPolicy
import Gogol.PubSub.Projects.Snapshots.TestIamPermissions
import Gogol.PubSub.Projects.Subscriptions.Acknowledge
import Gogol.PubSub.Projects.Subscriptions.Create
import Gogol.PubSub.Projects.Subscriptions.Delete
import Gogol.PubSub.Projects.Subscriptions.Detach
import Gogol.PubSub.Projects.Subscriptions.Get
import Gogol.PubSub.Projects.Subscriptions.GetIamPolicy
import Gogol.PubSub.Projects.Subscriptions.List
import Gogol.PubSub.Projects.Subscriptions.ModifyAckDeadline
import Gogol.PubSub.Projects.Subscriptions.ModifyPushConfig
import Gogol.PubSub.Projects.Subscriptions.Patch
import Gogol.PubSub.Projects.Subscriptions.Pull
import Gogol.PubSub.Projects.Subscriptions.Seek
import Gogol.PubSub.Projects.Subscriptions.SetIamPolicy
import Gogol.PubSub.Projects.Subscriptions.TestIamPermissions
import Gogol.PubSub.Projects.Topics.Create
import Gogol.PubSub.Projects.Topics.Delete
import Gogol.PubSub.Projects.Topics.Get
import Gogol.PubSub.Projects.Topics.GetIamPolicy
import Gogol.PubSub.Projects.Topics.List
import Gogol.PubSub.Projects.Topics.Patch
import Gogol.PubSub.Projects.Topics.Publish
import Gogol.PubSub.Projects.Topics.SetIamPolicy
import Gogol.PubSub.Projects.Topics.Snapshots.List
import Gogol.PubSub.Projects.Topics.Subscriptions.List
import Gogol.PubSub.Projects.Topics.TestIamPermissions
import Gogol.PubSub.Types
