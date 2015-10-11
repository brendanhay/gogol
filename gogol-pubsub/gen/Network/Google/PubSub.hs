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
-- | Provides reliable, many-to-many, asynchronous messaging between
-- applications.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference>
module Network.Google.PubSub
    (
    -- * API Declaration
      PubSubAPI

    -- * Resources

    -- ** PubsubProjectsSubscriptionsAcknowledge
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge

    -- ** PubsubProjectsSubscriptionsCreate
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Create

    -- ** PubsubProjectsSubscriptionsDelete
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Delete

    -- ** PubsubProjectsSubscriptionsGet
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Get

    -- ** PubsubProjectsSubscriptionsGetIAMPolicy
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.GetIAMPolicy

    -- ** PubsubProjectsSubscriptionsList
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.List

    -- ** PubsubProjectsSubscriptionsModifyAckDeadline
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline

    -- ** PubsubProjectsSubscriptionsModifyPushConfig
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig

    -- ** PubsubProjectsSubscriptionsPull
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.Pull

    -- ** PubsubProjectsSubscriptionsSetIAMPolicy
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.SetIAMPolicy

    -- ** PubsubProjectsSubscriptionsTestIAMPermissions
    , module Network.Google.Resource.PubSub.Projects.Subscriptions.TestIAMPermissions

    -- ** PubsubProjectsTopicsCreate
    , module Network.Google.Resource.PubSub.Projects.Topics.Create

    -- ** PubsubProjectsTopicsDelete
    , module Network.Google.Resource.PubSub.Projects.Topics.Delete

    -- ** PubsubProjectsTopicsGet
    , module Network.Google.Resource.PubSub.Projects.Topics.Get

    -- ** PubsubProjectsTopicsGetIAMPolicy
    , module Network.Google.Resource.PubSub.Projects.Topics.GetIAMPolicy

    -- ** PubsubProjectsTopicsList
    , module Network.Google.Resource.PubSub.Projects.Topics.List

    -- ** PubsubProjectsTopicsPublish
    , module Network.Google.Resource.PubSub.Projects.Topics.Publish

    -- ** PubsubProjectsTopicsSetIAMPolicy
    , module Network.Google.Resource.PubSub.Projects.Topics.SetIAMPolicy

    -- ** PubsubProjectsTopicsSubscriptionsList
    , module Network.Google.Resource.PubSub.Projects.Topics.Subscriptions.List

    -- ** PubsubProjectsTopicsTestIAMPermissions
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
    , pmaProperties

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
    , pcaProperties

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
