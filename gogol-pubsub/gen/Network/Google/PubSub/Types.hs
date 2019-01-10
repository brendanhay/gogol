{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , pcAttributes
    , pcPushEndpoint

    -- * ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage

    -- * Snapshot
    , Snapshot
    , snapshot
    , sTopic
    , sName
    , sLabels
    , sExpireTime

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

    -- * PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- * ListSnapshotsResponse
    , ListSnapshotsResponse
    , listSnapshotsResponse
    , lsrNextPageToken
    , lsrSnapshots

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

    -- * Topic
    , Topic
    , topic
    , tName
    , tLabels

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

    -- * PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- * PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

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
    , subMessageRetentionDuration
    , subTopic
    , subName
    , subLabels
    , subRetainAckedMessages
    , subAckDeadlineSeconds
    , subExpirationPolicy

    -- * UpdateSubscriptionRequest
    , UpdateSubscriptionRequest
    , updateSubscriptionRequest
    , uUpdateMask
    , uSubscription

    -- * SubscriptionLabels
    , SubscriptionLabels
    , subscriptionLabels
    , slAddtional

    -- * SnapshotLabels
    , SnapshotLabels
    , snapshotLabels
    , sAddtional

    -- * ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lisNextPageToken
    , lisSubscriptions

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

    -- * AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types.Product
import           Network.Google.PubSub.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Pub/Sub API. This contains the host and root path used as a starting point for constructing service requests.
pubSubService :: ServiceConfig
pubSubService
  = defaultService (ServiceId "pubsub:v1")
      "pubsub.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage Pub\/Sub topics and subscriptions
pubSubScope :: Proxy '["https://www.googleapis.com/auth/pubsub"]
pubSubScope = Proxy;
