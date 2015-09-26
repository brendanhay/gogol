-- |
-- Module      : Network.Google.CloudPub/Sub
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides reliable, many-to-many, asynchronous messaging between applications.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference>
module Network.Google.CloudPub/Sub
    (
    -- * API Definition
      CloudPub/Sub



    -- * Types

    -- ** AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** Empty
    , Empty
    , empty

    -- ** ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions

    -- ** ListTopicSubscriptionsResponse
    , ListTopicSubscriptionsResponse
    , listTopicSubscriptionsResponse
    , ltsrNextPageToken
    , ltsrSubscriptions

    -- ** ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- ** ModifyAckDeadlineRequest
    , ModifyAckDeadlineRequest
    , modifyAckDeadlineRequest
    , madrAckIds
    , madrAckId
    , madrAckDeadlineSeconds

    -- ** ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- ** PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- ** PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmAttributes
    , pmMessageId

    -- ** PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes

    -- ** PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- ** PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- ** PushConfig
    , PushConfig
    , pushConfig
    , pcAttributes
    , pcPushEndpoint

    -- ** PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes

    -- ** ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- ** Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions

    -- ** Topic
    , Topic
    , topic
    , tName
    ) where

import Network.Google.CloudPub/Sub.Types

{- $resources
TODO
-}

type CloudPub/Sub = ()

cloudPub/Sub :: Proxy CloudPub/Sub
cloudPub/Sub = Proxy




