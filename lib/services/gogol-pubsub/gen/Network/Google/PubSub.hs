{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PubSub
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides reliable, many-to-many, asynchronous messaging between
-- applications.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference>
module Network.Google.PubSub
    (
    -- * Service Configuration
      pubSubService

    -- * OAuth Scopes
    , cloudPlatformScope
    , pubSubScope

    -- * API Declaration
    , PubSubAPI

    -- * Resources

    -- ** pubsub.projects.schemas.create
    , module Network.Google.Resource.PubSub.Projects.Schemas.Create

    -- ** pubsub.projects.schemas.delete
    , module Network.Google.Resource.PubSub.Projects.Schemas.Delete

    -- ** pubsub.projects.schemas.get
    , module Network.Google.Resource.PubSub.Projects.Schemas.Get

    -- ** pubsub.projects.schemas.getIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Schemas.GetIAMPolicy

    -- ** pubsub.projects.schemas.list
    , module Network.Google.Resource.PubSub.Projects.Schemas.List

    -- ** pubsub.projects.schemas.setIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Schemas.SetIAMPolicy

    -- ** pubsub.projects.schemas.testIamPermissions
    , module Network.Google.Resource.PubSub.Projects.Schemas.TestIAMPermissions

    -- ** pubsub.projects.schemas.validate
    , module Network.Google.Resource.PubSub.Projects.Schemas.Validate

    -- ** pubsub.projects.schemas.validateMessage
    , module Network.Google.Resource.PubSub.Projects.Schemas.ValidateMessage

    -- ** pubsub.projects.snapshots.create
    , module Network.Google.Resource.PubSub.Projects.Snapshots.Create

    -- ** pubsub.projects.snapshots.delete
    , module Network.Google.Resource.PubSub.Projects.Snapshots.Delete

    -- ** pubsub.projects.snapshots.get
    , module Network.Google.Resource.PubSub.Projects.Snapshots.Get

    -- ** pubsub.projects.snapshots.getIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Snapshots.GetIAMPolicy

    -- ** pubsub.projects.snapshots.list
    , module Network.Google.Resource.PubSub.Projects.Snapshots.List

    -- ** pubsub.projects.snapshots.patch
    , module Network.Google.Resource.PubSub.Projects.Snapshots.Patch

    -- ** pubsub.projects.snapshots.setIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Snapshots.SetIAMPolicy

    -- ** pubsub.projects.snapshots.testIamPermissions
    , module Network.Google.Resource.PubSub.Projects.Snapshots.TestIAMPermissions

    -- ** pubsub.projects.subscriptions.acknowledge
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge

    -- ** pubsub.projects.subscriptions.create
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Create

    -- ** pubsub.projects.subscriptions.delete
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Delete

    -- ** pubsub.projects.subscriptions.detach
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Detach

    -- ** pubsub.projects.subscriptions.get
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Get

    -- ** pubsub.projects.subscriptions.getIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy

    -- ** pubsub.projects.subscriptions.list
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.List

    -- ** pubsub.projects.subscriptions.modifyAckDeadline
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline

    -- ** pubsub.projects.subscriptions.modifyPushConfig
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig

    -- ** pubsub.projects.subscriptions.patch
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Patch

    -- ** pubsub.projects.subscriptions.pull
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Pull

    -- ** pubsub.projects.subscriptions.seek
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Seek

    -- ** pubsub.projects.subscriptions.setIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy

    -- ** pubsub.projects.subscriptions.testIamPermissions
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions

    -- ** pubsub.projects.topics.create
    , module Network.Google.Resource.PubSub.Projects.Topics.Create

    -- ** pubsub.projects.topics.delete
    , module Network.Google.Resource.PubSub.Projects.Topics.Delete

    -- ** pubsub.projects.topics.get
    , module Network.Google.Resource.PubSub.Projects.Topics.Get

    -- ** pubsub.projects.topics.getIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy

    -- ** pubsub.projects.topics.list
    , module Network.Google.Resource.PubSub.Projects.Topics.List

    -- ** pubsub.projects.topics.patch
    , module Network.Google.Resource.PubSub.Projects.Topics.Patch

    -- ** pubsub.projects.topics.publish
    , module Network.Google.Resource.PubSub.Projects.Topics.Publish

    -- ** pubsub.projects.topics.setIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy

    -- ** pubsub.projects.topics.snapshots.list
    , module Network.Google.Resource.PubSub.Projects.Topics.Snapshots.List

    -- ** pubsub.projects.topics.subscriptions.list
    , module Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List

    -- ** pubsub.projects.topics.testIamPermissions
    , module Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions

    -- * Types

    -- ** PushConfig
    , PushConfig
    , pushConfig
    , pcOidcToken
    , pcAttributes
    , pcPushEndpoint

    -- ** ValidateSchemaResponse
    , ValidateSchemaResponse
    , validateSchemaResponse

    -- ** SchemaSettings
    , SchemaSettings
    , schemaSettings
    , ssSchema
    , ssEncoding

    -- ** ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage
    , rmDeliveryAttempt

    -- ** Snapshot
    , Snapshot
    , snapshot
    , sTopic
    , sName
    , sLabels
    , sExpireTime

    -- ** ProjectsSchemasGetView
    , ProjectsSchemasGetView (..)

    -- ** ListTopicSnapshotsResponse
    , ListTopicSnapshotsResponse
    , listTopicSnapshotsResponse
    , ltsrNextPageToken
    , ltsrSnapshots

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ValidateMessageRequestEncoding
    , ValidateMessageRequestEncoding (..)

    -- ** OidcToken
    , OidcToken
    , oidcToken
    , otAudience
    , otServiceAccountEmail

    -- ** ModifyAckDeadlineRequest
    , ModifyAckDeadlineRequest
    , modifyAckDeadlineRequest
    , madrAckIds
    , madrAckDeadlineSeconds

    -- ** ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- ** Empty
    , Empty
    , empty

    -- ** PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmPublishTime
    , pmAttributes
    , pmMessageId
    , pmOrderingKey

    -- ** ListTopicSubscriptionsResponse
    , ListTopicSubscriptionsResponse
    , listTopicSubscriptionsResponse
    , lNextPageToken
    , lSubscriptions

    -- ** ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- ** ListSchemasResponse
    , ListSchemasResponse
    , listSchemasResponse
    , lsrNextPageToken
    , lsrSchemas

    -- ** PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- ** ValidateMessageResponse
    , ValidateMessageResponse
    , validateMessageResponse

    -- ** ListSnapshotsResponse
    , ListSnapshotsResponse
    , listSnapshotsResponse
    , lisNextPageToken
    , lisSnapshots

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** CreateSnapshotRequest
    , CreateSnapshotRequest
    , createSnapshotRequest
    , csrLabels
    , csrSubscription

    -- ** SeekRequest
    , SeekRequest
    , seekRequest
    , srSnapshot
    , srTime

    -- ** Schema
    , Schema
    , schema
    , schDefinition
    , schName
    , schType

    -- ** Topic
    , Topic
    , topic
    , tSchemaSettings
    , tSatisfiesPzs
    , tName
    , tMessageStoragePolicy
    , tLabels
    , tKmsKeyName

    -- ** TopicLabels
    , TopicLabels
    , topicLabels
    , tlAddtional

    -- ** CreateSnapshotRequestLabels
    , CreateSnapshotRequestLabels
    , createSnapshotRequestLabels
    , csrlAddtional

    -- ** UpdateSnapshotRequest
    , UpdateSnapshotRequest
    , updateSnapshotRequest
    , usrSnapshot
    , usrUpdateMask

    -- ** ValidateMessageRequest
    , ValidateMessageRequest
    , validateMessageRequest
    , vmrSchema
    , vmrName
    , vmrMessage
    , vmrEncoding

    -- ** PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- ** SchemaSettingsEncoding
    , SchemaSettingsEncoding (..)

    -- ** DetachSubscriptionResponse
    , DetachSubscriptionResponse
    , detachSubscriptionResponse

    -- ** PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** DeadLetterPolicy
    , DeadLetterPolicy
    , deadLetterPolicy
    , dlpDeadLetterTopic
    , dlpMaxDeliveryAttempts

    -- ** MessageStoragePolicy
    , MessageStoragePolicy
    , messageStoragePolicy
    , mspAllowedPersistenceRegions

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- ** RetryPolicy
    , RetryPolicy
    , retryPolicy
    , rpMinimumBackoff
    , rpMaximumBackoff

    -- ** PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** SeekResponse
    , SeekResponse
    , seekResponse

    -- ** ExpirationPolicy
    , ExpirationPolicy
    , expirationPolicy
    , epTtl

    -- ** PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes
    , pcaAddtional

    -- ** Subscription
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

    -- ** ProjectsSchemasListView
    , ProjectsSchemasListView (..)

    -- ** UpdateSubscriptionRequest
    , UpdateSubscriptionRequest
    , updateSubscriptionRequest
    , uUpdateMask
    , uSubscription

    -- ** SubscriptionLabels
    , SubscriptionLabels
    , subscriptionLabels
    , slAddtional

    -- ** ValidateSchemaRequest
    , ValidateSchemaRequest
    , validateSchemaRequest
    , vsrSchema

    -- ** SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , sAddtional

    -- ** ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrsNextPageToken
    , lsrsSubscriptions

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** UpdateTopicRequest
    , UpdateTopicRequest
    , updateTopicRequest
    , utrUpdateMask
    , utrTopic

    -- ** SchemaType
    , SchemaType (..)

    -- ** AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types
import Network.Google.Resource.PubSub.Projects.Schemas.Create
import Network.Google.Resource.PubSub.Projects.Schemas.Delete
import Network.Google.Resource.PubSub.Projects.Schemas.Get
import Network.Google.Resource.PubSub.Projects.Schemas.GetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Schemas.List
import Network.Google.Resource.PubSub.Projects.Schemas.SetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Schemas.TestIAMPermissions
import Network.Google.Resource.PubSub.Projects.Schemas.Validate
import Network.Google.Resource.PubSub.Projects.Schemas.ValidateMessage
import Network.Google.Resource.PubSub.Projects.Snapshots.Create
import Network.Google.Resource.PubSub.Projects.Snapshots.Delete
import Network.Google.Resource.PubSub.Projects.Snapshots.Get
import Network.Google.Resource.PubSub.Projects.Snapshots.GetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Snapshots.List
import Network.Google.Resource.PubSub.Projects.Snapshots.Patch
import Network.Google.Resource.PubSub.Projects.Snapshots.SetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Snapshots.TestIAMPermissions
import Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge
import Network.Google.Resource.PubSub.Projects.Subscriptions.Create
import Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
import Network.Google.Resource.PubSub.Projects.Subscriptions.Detach
import Network.Google.Resource.PubSub.Projects.Subscriptions.Get
import Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Subscriptions.List
import Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
import Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig
import Network.Google.Resource.PubSub.Projects.Subscriptions.Patch
import Network.Google.Resource.PubSub.Projects.Subscriptions.Pull
import Network.Google.Resource.PubSub.Projects.Subscriptions.Seek
import Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
import Network.Google.Resource.PubSub.Projects.Topics.Create
import Network.Google.Resource.PubSub.Projects.Topics.Delete
import Network.Google.Resource.PubSub.Projects.Topics.Get
import Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Topics.List
import Network.Google.Resource.PubSub.Projects.Topics.Patch
import Network.Google.Resource.PubSub.Projects.Topics.Publish
import Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy
import Network.Google.Resource.PubSub.Projects.Topics.Snapshots.List
import Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List
import Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Pub/Sub API service.
type PubSubAPI =
     ProjectsTopicsSnapshotsListResource :<|>
       ProjectsTopicsSubscriptionsListResource
       :<|> ProjectsTopicsListResource
       :<|> ProjectsTopicsGetIAMPolicyResource
       :<|> ProjectsTopicsPatchResource
       :<|> ProjectsTopicsGetResource
       :<|> ProjectsTopicsCreateResource
       :<|> ProjectsTopicsSetIAMPolicyResource
       :<|> ProjectsTopicsTestIAMPermissionsResource
       :<|> ProjectsTopicsDeleteResource
       :<|> ProjectsTopicsPublishResource
       :<|> ProjectsSchemasListResource
       :<|> ProjectsSchemasGetIAMPolicyResource
       :<|> ProjectsSchemasGetResource
       :<|> ProjectsSchemasCreateResource
       :<|> ProjectsSchemasSetIAMPolicyResource
       :<|> ProjectsSchemasValidateMessageResource
       :<|> ProjectsSchemasTestIAMPermissionsResource
       :<|> ProjectsSchemasValidateResource
       :<|> ProjectsSchemasDeleteResource
       :<|> ProjectsSnapshotsListResource
       :<|> ProjectsSnapshotsGetIAMPolicyResource
       :<|> ProjectsSnapshotsPatchResource
       :<|> ProjectsSnapshotsGetResource
       :<|> ProjectsSnapshotsCreateResource
       :<|> ProjectsSnapshotsSetIAMPolicyResource
       :<|> ProjectsSnapshotsTestIAMPermissionsResource
       :<|> ProjectsSnapshotsDeleteResource
       :<|> ProjectsSubscriptionsDetachResource
       :<|> ProjectsSubscriptionsListResource
       :<|> ProjectsSubscriptionsAcknowledgeResource
       :<|> ProjectsSubscriptionsGetIAMPolicyResource
       :<|> ProjectsSubscriptionsModifyAckDeadlineResource
       :<|> ProjectsSubscriptionsPatchResource
       :<|> ProjectsSubscriptionsGetResource
       :<|> ProjectsSubscriptionsModifyPushConfigResource
       :<|> ProjectsSubscriptionsCreateResource
       :<|> ProjectsSubscriptionsSetIAMPolicyResource
       :<|> ProjectsSubscriptionsPullResource
       :<|> ProjectsSubscriptionsSeekResource
       :<|> ProjectsSubscriptionsTestIAMPermissionsResource
       :<|> ProjectsSubscriptionsDeleteResource
