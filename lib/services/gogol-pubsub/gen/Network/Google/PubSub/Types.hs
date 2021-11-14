{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PubSub.Types
    (
    -- * Service Configuration
      pubSubService

    -- * OAuth Scopes
    , cloudPlatformScope
    , pubSubScope

    -- * PushConfig
    , PushConfig
    , pushConfig
    , pcOidcToken
    , pcAttributes
    , pcPushEndpoint

    -- * ValidateSchemaResponse
    , ValidateSchemaResponse
    , validateSchemaResponse

    -- * SchemaSettings
    , SchemaSettings
    , schemaSettings
    , ssSchema
    , ssEncoding

    -- * ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage
    , rmDeliveryAttempt

    -- * Snapshot
    , Snapshot
    , snapshot
    , sTopic
    , sName
    , sLabels
    , sExpireTime

    -- * ProjectsSchemasGetView
    , ProjectsSchemasGetView (..)

    -- * ListTopicSnapshotsResponse
    , ListTopicSnapshotsResponse
    , listTopicSnapshotsResponse
    , ltsrNextPageToken
    , ltsrSnapshots

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ValidateMessageRequestEncoding
    , ValidateMessageRequestEncoding (..)

    -- * OidcToken
    , OidcToken
    , oidcToken
    , otAudience
    , otServiceAccountEmail

    -- * ModifyAckDeadlineRequest
    , ModifyAckDeadlineRequest
    , modifyAckDeadlineRequest
    , madrAckIds
    , madrAckDeadlineSeconds

    -- * ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- * Empty
    , Empty
    , empty

    -- * PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmPublishTime
    , pmAttributes
    , pmMessageId
    , pmOrderingKey

    -- * ListTopicSubscriptionsResponse
    , ListTopicSubscriptionsResponse
    , listTopicSubscriptionsResponse
    , lNextPageToken
    , lSubscriptions

    -- * ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- * ListSchemasResponse
    , ListSchemasResponse
    , listSchemasResponse
    , lsrNextPageToken
    , lsrSchemas

    -- * PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- * ValidateMessageResponse
    , ValidateMessageResponse
    , validateMessageResponse

    -- * ListSnapshotsResponse
    , ListSnapshotsResponse
    , listSnapshotsResponse
    , lisNextPageToken
    , lisSnapshots

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * CreateSnapshotRequest
    , CreateSnapshotRequest
    , createSnapshotRequest
    , csrLabels
    , csrSubscription

    -- * SeekRequest
    , SeekRequest
    , seekRequest
    , srSnapshot
    , srTime

    -- * Schema
    , Schema
    , schema
    , schDefinition
    , schName
    , schType

    -- * Topic
    , Topic
    , topic
    , tSchemaSettings
    , tSatisfiesPzs
    , tName
    , tMessageStoragePolicy
    , tLabels
    , tKmsKeyName

    -- * TopicLabels
    , TopicLabels
    , topicLabels
    , tlAddtional

    -- * CreateSnapshotRequestLabels
    , CreateSnapshotRequestLabels
    , createSnapshotRequestLabels
    , csrlAddtional

    -- * UpdateSnapshotRequest
    , UpdateSnapshotRequest
    , updateSnapshotRequest
    , usrSnapshot
    , usrUpdateMask

    -- * ValidateMessageRequest
    , ValidateMessageRequest
    , validateMessageRequest
    , vmrSchema
    , vmrName
    , vmrMessage
    , vmrEncoding

    -- * PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- * SchemaSettingsEncoding
    , SchemaSettingsEncoding (..)

    -- * DetachSubscriptionResponse
    , DetachSubscriptionResponse
    , detachSubscriptionResponse

    -- * PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * DeadLetterPolicy
    , DeadLetterPolicy
    , deadLetterPolicy
    , dlpDeadLetterTopic
    , dlpMaxDeliveryAttempts

    -- * MessageStoragePolicy
    , MessageStoragePolicy
    , messageStoragePolicy
    , mspAllowedPersistenceRegions

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- * RetryPolicy
    , RetryPolicy
    , retryPolicy
    , rpMinimumBackoff
    , rpMaximumBackoff

    -- * PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * SeekResponse
    , SeekResponse
    , seekResponse

    -- * ExpirationPolicy
    , ExpirationPolicy
    , expirationPolicy
    , epTtl

    -- * PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes
    , pcaAddtional

    -- * Subscription
    , Subscription
    , subscription
    , subPushConfig
    , subEnableMessageOrdering
    , subDetached
    , subMessageRetentionDuration
    , subTopic
    , subName
    , subDeadLetterPolicy
    , subLabels
    , subRetainAckedMessages
    , subFilter
    , subAckDeadlineSeconds
    , subRetryPolicy
    , subExpirationPolicy

    -- * ProjectsSchemasListView
    , ProjectsSchemasListView (..)

    -- * UpdateSubscriptionRequest
    , UpdateSubscriptionRequest
    , updateSubscriptionRequest
    , uUpdateMask
    , uSubscription

    -- * SubscriptionLabels
    , SubscriptionLabels
    , subscriptionLabels
    , slAddtional

    -- * ValidateSchemaRequest
    , ValidateSchemaRequest
    , validateSchemaRequest
    , vsrSchema

    -- * SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , sAddtional

    -- * ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrsNextPageToken
    , lsrsSubscriptions

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * UpdateTopicRequest
    , UpdateTopicRequest
    , updateTopicRequest
    , utrUpdateMask
    , utrTopic

    -- * SchemaType
    , SchemaType (..)

    -- * AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types.Product
import Network.Google.PubSub.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Pub/Sub API. This contains the host and root path used as a starting point for constructing service requests.
pubSubService :: ServiceConfig
pubSubService
  = defaultService (ServiceId "pubsub:v1")
      "pubsub.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and manage Pub\/Sub topics and subscriptions
pubSubScope :: Proxy '["https://www.googleapis.com/auth/pubsub"]
pubSubScope = Proxy
