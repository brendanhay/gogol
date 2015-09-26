{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudPubSub
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
module Network.Google.CloudPubSub
    (
    -- * Resources
      CloudPubSub
    , ProjectsAPI
    , TopicsAPI
    , SubscriptionsAPI
    , SubscriptionsList
    , SubscriptionsAPI
    , SubscriptionsList
    , SubscriptionsAcknowledge
    , SubscriptionsGetIamPolicy
    , SubscriptionsModifyAckDeadline
    , SubscriptionsGet
    , SubscriptionsModifyPushConfig
    , SubscriptionsCreate
    , SubscriptionsSetIamPolicy
    , SubscriptionsPull
    , SubscriptionsTestIamPermissions
    , SubscriptionsDelete

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

import           Network.Google.CloudPubSub.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type CloudPubSub = ProjectsAPI

type ProjectsAPI = SubscriptionsAPI :<|> TopicsAPI

type TopicsAPI = SubscriptionsAPI

type SubscriptionsAPI = SubscriptionsList

-- | Lists the name of the subscriptions for this topic.
type SubscriptionsList =
     "v1beta2" :> "{+topic}" :> "subscriptions" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type SubscriptionsAPI =
     SubscriptionsAcknowledge :<|>
       SubscriptionsGetIamPolicy :<|>
         SubscriptionsModifyAckDeadline :<|>
           SubscriptionsGet :<|>
             SubscriptionsModifyPushConfig :<|>
               SubscriptionsCreate :<|>
                 SubscriptionsSetIamPolicy :<|>
                   SubscriptionsPull :<|>
                     SubscriptionsTestIamPermissions :<|>
                       SubscriptionsDelete :<|> SubscriptionsList

-- | Lists matching subscriptions.
type SubscriptionsList =
     "v1beta2" :> "{+project}" :> "subscriptions" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Acknowledges the messages associated with the ack tokens in the
-- AcknowledgeRequest. The Pub\/Sub system can remove the relevant messages
-- from the subscription. Acknowledging a message whose ack deadline has
-- expired may succeed, but such a message may be redelivered later.
-- Acknowledging a message more than once will not result in an error.
type SubscriptionsAcknowledge =
     "v1beta2" :> "{+subscription}:acknowledge" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets the access control policy for a resource. Is empty if the policy or
-- the resource does not exist.
type SubscriptionsGetIamPolicy =
     "v1beta2" :> "{+resource}:getIamPolicy" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
type SubscriptionsModifyAckDeadline =
     "v1beta2" :> "{+subscription}:modifyAckDeadline" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets the configuration details of a subscription.
type SubscriptionsGet =
     "v1beta2" :> "{+subscription}" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Modifies the PushConfig for a specified subscription. This may be used
-- to change a push subscription to a pull one (signified by an empty
-- PushConfig) or vice versa, or change the endpoint URL and other
-- attributes of a push subscription. Messages will accumulate for delivery
-- continuously through the call regardless of changes to the PushConfig.
type SubscriptionsModifyPushConfig =
     "v1beta2" :> "{+subscription}:modifyPushConfig" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Creates a subscription to a given topic for a given subscriber. If the
-- subscription already exists, returns ALREADY_EXISTS. If the
-- corresponding topic doesn\'t exist, returns NOT_FOUND. If the name is
-- not provided in the request, the server will assign a random name for
-- this subscription on the same project as the topic.
type SubscriptionsCreate =
     "v1beta2" :> "{+name}" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
type SubscriptionsSetIamPolicy =
     "v1beta2" :> "{+resource}:setIamPolicy" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Pulls messages from the server. Returns an empty list if there are no
-- messages available in the backlog. The server may return UNAVAILABLE if
-- there are too many concurrent pull requests pending for the given
-- subscription.
type SubscriptionsPull =
     "v1beta2" :> "{+subscription}:pull" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Returns permissions that a caller has on the specified resource.
type SubscriptionsTestIamPermissions =
     "v1beta2" :> "{+resource}:testIamPermissions" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Deletes an existing subscription. All pending messages in the
-- subscription are immediately dropped. Calls to Pull after deletion will
-- return NOT_FOUND. After a subscription is deleted, a new one may be
-- created with the same name, but the new one has no association with the
-- old subscription, or its topic unless the same topic is specified.
type SubscriptionsDelete =
     "v1beta2" :> "{+subscription}" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
