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
-- Module      : Gogol.PubSub
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    cloudPlatformScope,
    pubSubScope,

    -- * Resources

    -- ** pubsub.projects.schemas.create
    PubSubProjectsSchemasCreateResource,
    newPubSubProjectsSchemasCreate,
    PubSubProjectsSchemasCreate,

    -- ** pubsub.projects.schemas.delete
    PubSubProjectsSchemasDeleteResource,
    newPubSubProjectsSchemasDelete,
    PubSubProjectsSchemasDelete,

    -- ** pubsub.projects.schemas.get
    PubSubProjectsSchemasGetResource,
    newPubSubProjectsSchemasGet,
    PubSubProjectsSchemasGet,

    -- ** pubsub.projects.schemas.getIamPolicy
    PubSubProjectsSchemasGetIamPolicyResource,
    newPubSubProjectsSchemasGetIamPolicy,
    PubSubProjectsSchemasGetIamPolicy,

    -- ** pubsub.projects.schemas.list
    PubSubProjectsSchemasListResource,
    newPubSubProjectsSchemasList,
    PubSubProjectsSchemasList,

    -- ** pubsub.projects.schemas.setIamPolicy
    PubSubProjectsSchemasSetIamPolicyResource,
    newPubSubProjectsSchemasSetIamPolicy,
    PubSubProjectsSchemasSetIamPolicy,

    -- ** pubsub.projects.schemas.testIamPermissions
    PubSubProjectsSchemasTestIamPermissionsResource,
    newPubSubProjectsSchemasTestIamPermissions,
    PubSubProjectsSchemasTestIamPermissions,

    -- ** pubsub.projects.schemas.validate
    PubSubProjectsSchemasValidateResource,
    newPubSubProjectsSchemasValidate,
    PubSubProjectsSchemasValidate,

    -- ** pubsub.projects.schemas.validateMessage
    PubSubProjectsSchemasValidateMessageResource,
    newPubSubProjectsSchemasValidateMessage,
    PubSubProjectsSchemasValidateMessage,

    -- ** pubsub.projects.snapshots.create
    PubSubProjectsSnapshotsCreateResource,
    newPubSubProjectsSnapshotsCreate,
    PubSubProjectsSnapshotsCreate,

    -- ** pubsub.projects.snapshots.delete
    PubSubProjectsSnapshotsDeleteResource,
    newPubSubProjectsSnapshotsDelete,
    PubSubProjectsSnapshotsDelete,

    -- ** pubsub.projects.snapshots.get
    PubSubProjectsSnapshotsGetResource,
    newPubSubProjectsSnapshotsGet,
    PubSubProjectsSnapshotsGet,

    -- ** pubsub.projects.snapshots.getIamPolicy
    PubSubProjectsSnapshotsGetIamPolicyResource,
    newPubSubProjectsSnapshotsGetIamPolicy,
    PubSubProjectsSnapshotsGetIamPolicy,

    -- ** pubsub.projects.snapshots.list
    PubSubProjectsSnapshotsListResource,
    newPubSubProjectsSnapshotsList,
    PubSubProjectsSnapshotsList,

    -- ** pubsub.projects.snapshots.patch
    PubSubProjectsSnapshotsPatchResource,
    newPubSubProjectsSnapshotsPatch,
    PubSubProjectsSnapshotsPatch,

    -- ** pubsub.projects.snapshots.setIamPolicy
    PubSubProjectsSnapshotsSetIamPolicyResource,
    newPubSubProjectsSnapshotsSetIamPolicy,
    PubSubProjectsSnapshotsSetIamPolicy,

    -- ** pubsub.projects.snapshots.testIamPermissions
    PubSubProjectsSnapshotsTestIamPermissionsResource,
    newPubSubProjectsSnapshotsTestIamPermissions,
    PubSubProjectsSnapshotsTestIamPermissions,

    -- ** pubsub.projects.subscriptions.acknowledge
    PubSubProjectsSubscriptionsAcknowledgeResource,
    newPubSubProjectsSubscriptionsAcknowledge,
    PubSubProjectsSubscriptionsAcknowledge,

    -- ** pubsub.projects.subscriptions.create
    PubSubProjectsSubscriptionsCreateResource,
    newPubSubProjectsSubscriptionsCreate,
    PubSubProjectsSubscriptionsCreate,

    -- ** pubsub.projects.subscriptions.delete
    PubSubProjectsSubscriptionsDeleteResource,
    newPubSubProjectsSubscriptionsDelete,
    PubSubProjectsSubscriptionsDelete,

    -- ** pubsub.projects.subscriptions.detach
    PubSubProjectsSubscriptionsDetachResource,
    newPubSubProjectsSubscriptionsDetach,
    PubSubProjectsSubscriptionsDetach,

    -- ** pubsub.projects.subscriptions.get
    PubSubProjectsSubscriptionsGetResource,
    newPubSubProjectsSubscriptionsGet,
    PubSubProjectsSubscriptionsGet,

    -- ** pubsub.projects.subscriptions.getIamPolicy
    PubSubProjectsSubscriptionsGetIamPolicyResource,
    newPubSubProjectsSubscriptionsGetIamPolicy,
    PubSubProjectsSubscriptionsGetIamPolicy,

    -- ** pubsub.projects.subscriptions.list
    PubSubProjectsSubscriptionsListResource,
    newPubSubProjectsSubscriptionsList,
    PubSubProjectsSubscriptionsList,

    -- ** pubsub.projects.subscriptions.modifyAckDeadline
    PubSubProjectsSubscriptionsModifyAckDeadlineResource,
    newPubSubProjectsSubscriptionsModifyAckDeadline,
    PubSubProjectsSubscriptionsModifyAckDeadline,

    -- ** pubsub.projects.subscriptions.modifyPushConfig
    PubSubProjectsSubscriptionsModifyPushConfigResource,
    newPubSubProjectsSubscriptionsModifyPushConfig,
    PubSubProjectsSubscriptionsModifyPushConfig,

    -- ** pubsub.projects.subscriptions.patch
    PubSubProjectsSubscriptionsPatchResource,
    newPubSubProjectsSubscriptionsPatch,
    PubSubProjectsSubscriptionsPatch,

    -- ** pubsub.projects.subscriptions.pull
    PubSubProjectsSubscriptionsPullResource,
    newPubSubProjectsSubscriptionsPull,
    PubSubProjectsSubscriptionsPull,

    -- ** pubsub.projects.subscriptions.seek
    PubSubProjectsSubscriptionsSeekResource,
    newPubSubProjectsSubscriptionsSeek,
    PubSubProjectsSubscriptionsSeek,

    -- ** pubsub.projects.subscriptions.setIamPolicy
    PubSubProjectsSubscriptionsSetIamPolicyResource,
    newPubSubProjectsSubscriptionsSetIamPolicy,
    PubSubProjectsSubscriptionsSetIamPolicy,

    -- ** pubsub.projects.subscriptions.testIamPermissions
    PubSubProjectsSubscriptionsTestIamPermissionsResource,
    newPubSubProjectsSubscriptionsTestIamPermissions,
    PubSubProjectsSubscriptionsTestIamPermissions,

    -- ** pubsub.projects.topics.create
    PubSubProjectsTopicsCreateResource,
    newPubSubProjectsTopicsCreate,
    PubSubProjectsTopicsCreate,

    -- ** pubsub.projects.topics.delete
    PubSubProjectsTopicsDeleteResource,
    newPubSubProjectsTopicsDelete,
    PubSubProjectsTopicsDelete,

    -- ** pubsub.projects.topics.get
    PubSubProjectsTopicsGetResource,
    newPubSubProjectsTopicsGet,
    PubSubProjectsTopicsGet,

    -- ** pubsub.projects.topics.getIamPolicy
    PubSubProjectsTopicsGetIamPolicyResource,
    newPubSubProjectsTopicsGetIamPolicy,
    PubSubProjectsTopicsGetIamPolicy,

    -- ** pubsub.projects.topics.list
    PubSubProjectsTopicsListResource,
    newPubSubProjectsTopicsList,
    PubSubProjectsTopicsList,

    -- ** pubsub.projects.topics.patch
    PubSubProjectsTopicsPatchResource,
    newPubSubProjectsTopicsPatch,
    PubSubProjectsTopicsPatch,

    -- ** pubsub.projects.topics.publish
    PubSubProjectsTopicsPublishResource,
    newPubSubProjectsTopicsPublish,
    PubSubProjectsTopicsPublish,

    -- ** pubsub.projects.topics.setIamPolicy
    PubSubProjectsTopicsSetIamPolicyResource,
    newPubSubProjectsTopicsSetIamPolicy,
    PubSubProjectsTopicsSetIamPolicy,

    -- ** pubsub.projects.topics.snapshots.list
    PubSubProjectsTopicsSnapshotsListResource,
    newPubSubProjectsTopicsSnapshotsList,
    PubSubProjectsTopicsSnapshotsList,

    -- ** pubsub.projects.topics.subscriptions.list
    PubSubProjectsTopicsSubscriptionsListResource,
    newPubSubProjectsTopicsSubscriptionsList,
    PubSubProjectsTopicsSubscriptionsList,

    -- ** pubsub.projects.topics.testIamPermissions
    PubSubProjectsTopicsTestIamPermissionsResource,
    newPubSubProjectsTopicsTestIamPermissions,
    PubSubProjectsTopicsTestIamPermissions,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcknowledgeRequest
    AcknowledgeRequest (..),
    newAcknowledgeRequest,

    -- ** Binding
    Binding (..),
    newBinding,

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

    -- ** ModifyAckDeadlineRequest
    ModifyAckDeadlineRequest (..),
    newModifyAckDeadlineRequest,

    -- ** ModifyPushConfigRequest
    ModifyPushConfigRequest (..),
    newModifyPushConfigRequest,

    -- ** OidcToken
    OidcToken (..),
    newOidcToken,

    -- ** Policy
    Policy (..),
    newPolicy,

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

    -- ** Topic
    Topic (..),
    newTopic,

    -- ** Topic_Labels
    Topic_Labels (..),
    newTopic_Labels,

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
  )
where

import Gogol.PubSub.Projects.Schemas.Create
import Gogol.PubSub.Projects.Schemas.Delete
import Gogol.PubSub.Projects.Schemas.Get
import Gogol.PubSub.Projects.Schemas.GetIamPolicy
import Gogol.PubSub.Projects.Schemas.List
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
