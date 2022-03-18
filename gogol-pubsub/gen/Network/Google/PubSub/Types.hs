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
-- Module      : Network.Google.PubSub.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.PubSub.Types
  ( -- * Configuration
    pubSubService,

    -- * OAuth Scopes
    cloudPlatformScope,
    pubSubScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.PubSub.Internal.Product
import Network.Google.PubSub.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Pub/Sub API. This contains the host and root path used as a starting point for constructing service requests.
pubSubService :: Core.ServiceConfig
pubSubService =
  Core.defaultService
    (Core.ServiceId "pubsub:v1")
    "pubsub.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and manage Pub\/Sub topics and subscriptions
pubSubScope :: Core.Proxy '["https://www.googleapis.com/auth/pubsub"]
pubSubScope = Core.Proxy
