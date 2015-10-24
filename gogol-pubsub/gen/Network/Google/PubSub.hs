{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PubSub
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides reliable, many-to-many, asynchronous messaging between
-- applications.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference>
module Network.Google.PubSub
    (
    -- * Service Configuration
      pubSubService

    -- * API Declaration
    , PubSubAPI

    -- * Resources

    -- ** pubsub.projects.subscriptions.acknowledge
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge

    -- ** pubsub.projects.subscriptions.create
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Create

    -- ** pubsub.projects.subscriptions.delete
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Delete

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

    -- ** pubsub.projects.subscriptions.pull
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Pull

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

    -- ** pubsub.projects.topics.publish
    , module Network.Google.Resource.PubSub.Projects.Topics.Publish

    -- ** pubsub.projects.topics.setIamPolicy
    , module Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy

    -- ** pubsub.projects.topics.subscriptions.list
    , module Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List

    -- ** pubsub.projects.topics.testIamPermissions
    , module Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions

    -- * Types

    -- ** PushConfig
    , PushConfig
    , pushConfig
    , pcAttributes
    , pcPushEndpoint

    -- ** ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage

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
    , pmAttributes
    , pmMessageId

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

    -- ** PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** Topic
    , Topic
    , topic
    , tName

    -- ** PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- ** PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

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

    -- ** PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes
    , pcaAddtional

    -- ** Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- ** ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types
import           Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge
import           Network.Google.Resource.PubSub.Projects.Subscriptions.Create
import           Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
import           Network.Google.Resource.PubSub.Projects.Subscriptions.Get
import           Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy
import           Network.Google.Resource.PubSub.Projects.Subscriptions.List
import           Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
import           Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig
import           Network.Google.Resource.PubSub.Projects.Subscriptions.Pull
import           Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy
import           Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions
import           Network.Google.Resource.PubSub.Projects.Topics.Create
import           Network.Google.Resource.PubSub.Projects.Topics.Delete
import           Network.Google.Resource.PubSub.Projects.Topics.Get
import           Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy
import           Network.Google.Resource.PubSub.Projects.Topics.List
import           Network.Google.Resource.PubSub.Projects.Topics.Publish
import           Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy
import           Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List
import           Network.Google.Resource.PubSub.Projects.Topics.TestIAMPermissions

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Pub/Sub API service.
type PubSubAPI =
     ProjectsTopicsSubscriptionsListResource :<|>
       ProjectsTopicsListResource
       :<|> ProjectsTopicsGetIAMPolicyResource
       :<|> ProjectsTopicsGetResource
       :<|> ProjectsTopicsCreateResource
       :<|> ProjectsTopicsSetIAMPolicyResource
       :<|> ProjectsTopicsTestIAMPermissionsResource
       :<|> ProjectsTopicsDeleteResource
       :<|> ProjectsTopicsPublishResource
       :<|> ProjectsSubscriptionsListResource
       :<|> ProjectsSubscriptionsAcknowledgeResource
       :<|> ProjectsSubscriptionsGetIAMPolicyResource
       :<|> ProjectsSubscriptionsModifyAckDeadlineResource
       :<|> ProjectsSubscriptionsGetResource
       :<|> ProjectsSubscriptionsModifyPushConfigResource
       :<|> ProjectsSubscriptionsCreateResource
       :<|> ProjectsSubscriptionsSetIAMPolicyResource
       :<|> ProjectsSubscriptionsPullResource
       :<|> ProjectsSubscriptionsTestIAMPermissionsResource
       :<|> ProjectsSubscriptionsDeleteResource
