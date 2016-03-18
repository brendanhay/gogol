{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types
-- Copyright   : (c) 2015 Brendan Hay
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
    , pubsubScope

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
    , ltsrNextPageToken
    , ltsrSubscriptions

    -- * ListTopicsResponse
    , ListTopicsResponse
    , listTopicsResponse
    , ltrNextPageToken
    , ltrTopics

    -- * PullResponse
    , PullResponse
    , pullResponse
    , prReceivedMessages

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * Topic
    , Topic
    , topic
    , tName

    -- * PullRequest
    , PullRequest
    , pullRequest
    , prMaxMessages
    , prReturnImmediately

    -- * PubsubMessageAttributes
    , PubsubMessageAttributes
    , pubsubMessageAttributes
    , pmaAddtional

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

    -- * PushConfigAttributes
    , PushConfigAttributes
    , pushConfigAttributes
    , pcaAddtional

    -- * Subscription
    , Subscription
    , subscription
    , sPushConfig
    , sTopic
    , sName
    , sAckDeadlineSeconds

    -- * ListSubscriptionsResponse
    , ListSubscriptionsResponse
    , listSubscriptionsResponse
    , lsrNextPageToken
    , lsrSubscriptions

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- * AcknowledgeRequest
    , AcknowledgeRequest
    , acknowledgeRequest
    , arAckIds
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types.Product
import           Network.Google.PubSub.Types.Sum

-- | Default request referring to version 'v1' of the Google Cloud Pub/Sub API. This contains the host and root path used as a starting point for constructing service requests.
pubSubService :: ServiceConfig
pubSubService
  = defaultService (ServiceId "pubsub:v1")
      "pubsub.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

-- | View and manage Pub\/Sub topics and subscriptions
pubsubScope :: OAuthScope
pubsubScope = "https://www.googleapis.com/auth/pubsub";
