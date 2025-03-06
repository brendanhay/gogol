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
-- Module      : Gogol.PubSub.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PubSub.Types
  ( -- * Configuration
    pubSubService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Pubsub'FullControl,

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

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Internal.Product
import Gogol.PubSub.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Pub/Sub API. This contains the host and root path used as a starting point for constructing service requests.
pubSubService :: Core.ServiceConfig
pubSubService =
  Core.defaultService
    (Core.ServiceId "pubsub:v1")
    "pubsub.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View and manage Pub\/Sub topics and subscriptions
type Pubsub'FullControl = "https://www.googleapis.com/auth/pubsub"
