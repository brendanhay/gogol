{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Provides reliable, many-to-many, asynchronous messaging between
-- applications.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference>
module Network.Google.PubSub
    (
    -- * REST Resources

    -- ** Google Cloud Pub/Sub API
      PubSub
    , pubSub
    , pubSubURL

    -- ** pubsub.projects.subscriptions.acknowledge
    , module Network.Google.API.PubSub.Projects.Subscriptions.Acknowledge

    -- ** pubsub.projects.subscriptions.create
    , module Network.Google.API.PubSub.Projects.Subscriptions.Create

    -- ** pubsub.projects.subscriptions.delete
    , module Network.Google.API.PubSub.Projects.Subscriptions.Delete

    -- ** pubsub.projects.subscriptions.get
    , module Network.Google.API.PubSub.Projects.Subscriptions.Get

    -- ** pubsub.projects.subscriptions.getIamPolicy
    , module Network.Google.API.PubSub.Projects.Subscriptions.GetIAMPolicy

    -- ** pubsub.projects.subscriptions.list
    , module Network.Google.API.PubSub.Projects.Subscriptions.List

    -- ** pubsub.projects.subscriptions.modifyAckDeadline
    , module Network.Google.API.PubSub.Projects.Subscriptions.ModifyAckDeadline

    -- ** pubsub.projects.subscriptions.modifyPushConfig
    , module Network.Google.API.PubSub.Projects.Subscriptions.ModifyPushConfig

    -- ** pubsub.projects.subscriptions.pull
    , module Network.Google.API.PubSub.Projects.Subscriptions.Pull

    -- ** pubsub.projects.subscriptions.setIamPolicy
    , module Network.Google.API.PubSub.Projects.Subscriptions.SetIAMPolicy

    -- ** pubsub.projects.subscriptions.testIamPermissions
    , module Network.Google.API.PubSub.Projects.Subscriptions.TestIAMPermissions

    -- ** pubsub.projects.topics.subscriptions.list
    , module Network.Google.API.PubSub.Projects.Topics.Subscriptions.List

    -- * Types

    -- ** PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- ** ModifyAckDeadlineRequest
    , ModifyAckDeadlineRequest
    , modifyAckDeadlineRequest
    , madrAckIds
    , madrAckId
    , madrAckDeadlineSeconds

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions

    -- ** PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- ** Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- ** PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- ** AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions

    -- ** ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage

    -- ** PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes

    -- ** PushConfig
    , PushConfig
    , pushConfig
    , pcAttributes
    , pcPushEndpoint

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- ** PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- ** Empty
    , Empty
    , empty

    -- ** ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- ** ListTopicSubscriptionsResponse
    , ListTopicSubscriptionsResponse
    , listTopicSubscriptionsResponse
    , ltsrNextPageToken
    , ltsrSubscriptions

    -- ** PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmAttributes
    , pmMessageId

    -- ** ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- ** Topic
    , Topic
    , topic
    , tName
    ) where

import           Network.Google.API.PubSub.Projects.Subscriptions.Acknowledge
import           Network.Google.API.PubSub.Projects.Subscriptions.Create
import           Network.Google.API.PubSub.Projects.Subscriptions.Delete
import           Network.Google.API.PubSub.Projects.Subscriptions.Get
import           Network.Google.API.PubSub.Projects.Subscriptions.GetIAMPolicy
import           Network.Google.API.PubSub.Projects.Subscriptions.List
import           Network.Google.API.PubSub.Projects.Subscriptions.ModifyAckDeadline
import           Network.Google.API.PubSub.Projects.Subscriptions.ModifyPushConfig
import           Network.Google.API.PubSub.Projects.Subscriptions.Pull
import           Network.Google.API.PubSub.Projects.Subscriptions.SetIAMPolicy
import           Network.Google.API.PubSub.Projects.Subscriptions.TestIAMPermissions
import           Network.Google.API.PubSub.Projects.Topics.Subscriptions.List
import           Network.Google.Prelude
import           Network.Google.PubSub.Types

{- $resources
TODO
-}

type PubSub =
     ProjectsSubscriptionsTestIAMPermissionsAPI :<|>
       ProjectsSubscriptionsDeleteAPI
       :<|> ProjectsSubscriptionsSetIAMPolicyAPI
       :<|> ProjectsSubscriptionsGetAPI
       :<|> ProjectsSubscriptionsAcknowledgeAPI
       :<|> ProjectsSubscriptionsCreateAPI
       :<|> ProjectsSubscriptionsPullAPI
       :<|> ProjectsTopicsSubscriptionsListAPI
       :<|> ProjectsSubscriptionsListAPI
       :<|> ProjectsSubscriptionsModifyPushConfigAPI
       :<|> ProjectsSubscriptionsModifyAckDeadlineAPI
       :<|> ProjectsSubscriptionsGetIAMPolicyAPI

pubSub :: Proxy PubSub
pubSub = Proxy
