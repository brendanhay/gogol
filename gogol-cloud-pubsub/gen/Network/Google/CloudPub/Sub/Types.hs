{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.CloudPub/Sub.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudPub/Sub.Types
    (
    -- * API Definition
      pubsub


    -- * AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- * Empty
    , Empty
    , empty

    -- * ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions

    -- * ListTopicSubscriptionsResponse
    , ListTopicSubscriptionsResponse
    , listTopicSubscriptionsResponse
    , ltsrNextPageToken
    , ltsrSubscriptions

    -- * ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- * ModifyAckDeadlineRequest
    , ModifyAckDeadlineRequest
    , modifyAckDeadlineRequest
    , madrAckIds
    , madrAckId
    , madrAckDeadlineSeconds

    -- * ModifyPushConfigRequest
    , ModifyPushConfigRequest
    , modifyPushConfigRequest
    , mpcrPushConfig

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * PublishRequest
    , PublishRequest
    , publishRequest
    , prMessages

    -- * PublishResponse
    , PublishResponse
    , publishResponse
    , prMessageIds

    -- * PubsubMessage
    , PubsubMessage
    , pubsubMessage
    , pmData
    , pmAttributes
    , pmMessageId

    -- * PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes

    -- * PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- * PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- * PushConfig
    , PushConfig
    , pushConfig
    , pcAttributes
    , pcPushEndpoint

    -- * PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes

    -- * ReceivedMessage
    , ReceivedMessage
    , receivedMessage
    , rmAckId
    , rmMessage

    -- * SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- * Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- * TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- * TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions

    -- * Topic
    , Topic
    , topic
    , tName
    ) where

import Network.Google.Prelude
import Network.Google.CloudPub/Sub.Types.Product
import Network.Google.CloudPub/Sub.Types.Sum

pubsub :: a
pubsub = error "pubsub"
