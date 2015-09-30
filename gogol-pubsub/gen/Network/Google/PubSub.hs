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
    -- * API
      PubSubAPI
    , pubSubAPI
    , pubSubURL

    -- * Service Methods

    -- * REST Resources

    -- ** PubsubProjectsSubscriptionsAcknowledge
    , module PubSub.Projects.Subscriptions.Acknowledge

    -- ** PubsubProjectsSubscriptionsCreate
    , module PubSub.Projects.Subscriptions.Create

    -- ** PubsubProjectsSubscriptionsDelete
    , module PubSub.Projects.Subscriptions.Delete

    -- ** PubsubProjectsSubscriptionsGet
    , module PubSub.Projects.Subscriptions.Get

    -- ** PubsubProjectsSubscriptionsGetIAMPolicy
    , module PubSub.Projects.Subscriptions.GetIAMPolicy

    -- ** PubsubProjectsSubscriptionsList
    , module PubSub.Projects.Subscriptions.List

    -- ** PubsubProjectsSubscriptionsModifyAckDeadline
    , module PubSub.Projects.Subscriptions.ModifyAckDeadline

    -- ** PubsubProjectsSubscriptionsModifyPushConfig
    , module PubSub.Projects.Subscriptions.ModifyPushConfig

    -- ** PubsubProjectsSubscriptionsPull
    , module PubSub.Projects.Subscriptions.Pull

    -- ** PubsubProjectsSubscriptionsSetIAMPolicy
    , module PubSub.Projects.Subscriptions.SetIAMPolicy

    -- ** PubsubProjectsSubscriptionsTestIAMPermissions
    , module PubSub.Projects.Subscriptions.TestIAMPermissions

    -- ** PubsubProjectsTopicsCreate
    , module PubSub.Projects.Topics.Create

    -- ** PubsubProjectsTopicsDelete
    , module PubSub.Projects.Topics.Delete

    -- ** PubsubProjectsTopicsGet
    , module PubSub.Projects.Topics.Get

    -- ** PubsubProjectsTopicsGetIAMPolicy
    , module PubSub.Projects.Topics.GetIAMPolicy

    -- ** PubsubProjectsTopicsList
    , module PubSub.Projects.Topics.List

    -- ** PubsubProjectsTopicsPublish
    , module PubSub.Projects.Topics.Publish

    -- ** PubsubProjectsTopicsSetIAMPolicy
    , module PubSub.Projects.Topics.SetIAMPolicy

    -- ** PubsubProjectsTopicsSubscriptionsList
    , module PubSub.Projects.Topics.Subscriptions.List

    -- ** PubsubProjectsTopicsTestIAMPermissions
    , module PubSub.Projects.Topics.TestIAMPermissions

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
    , madrAckId
    , madrAckDeadlineSeconds

    -- ** ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- ** Empty
    , Empty
    , empty

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

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds

    -- ** ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions
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

type PubSubAPI = Projects

pubSubAPI :: Proxy PubSubAPI
pubSubAPI = Proxy
