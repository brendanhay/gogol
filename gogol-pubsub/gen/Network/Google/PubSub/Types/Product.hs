{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PubSub.Types.Product where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types.Sum

-- | Configuration for a push delivery endpoint.
--
-- /See:/ 'pushConfig' smart constructor.
data PushConfig = PushConfig
    { _pcAttributes   :: !(Maybe PushConfigAttributes)
    , _pcPushEndpoint :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcAttributes'
--
-- * 'pcPushEndpoint'
pushConfig
    :: PushConfig
pushConfig =
    PushConfig
    { _pcAttributes = Nothing
    , _pcPushEndpoint = Nothing
    }

-- | Endpoint configuration attributes. Every endpoint has a set of API
-- supported attributes that can be used to control different aspects of
-- the message delivery. The currently supported attribute is
-- \`x-goog-version\`, which you can use to change the format of the push
-- message. This attribute indicates the version of the data expected by
-- the endpoint. This controls the shape of the envelope (i.e. its fields
-- and metadata). The endpoint version is based on the version of the
-- Pub\/Sub API. If not present during the CreateSubscription call, it will
-- default to the version of the API used to make such call. If not present
-- during a ModifyPushConfig call, its value will not be changed.
-- GetSubscription calls will always return a valid version, even if the
-- subscription was created without this attribute. The possible values for
-- this attribute are: * \`v1beta1\`: uses the push format defined in the
-- v1beta1 Pub\/Sub API. * \`v1\` or \`v1beta2\`: uses the push format
-- defined in the v1 Pub\/Sub API.
pcAttributes :: Lens' PushConfig (Maybe PushConfigAttributes)
pcAttributes
  = lens _pcAttributes (\ s a -> s{_pcAttributes = a})

-- | A URL locating the endpoint to which messages should be pushed. For
-- example, a Webhook endpoint might use \"https:\/\/example.com\/push\".
pcPushEndpoint :: Lens' PushConfig (Maybe Text)
pcPushEndpoint
  = lens _pcPushEndpoint
      (\ s a -> s{_pcPushEndpoint = a})

instance FromJSON PushConfig where
        parseJSON
          = withObject "PushConfig"
              (\ o ->
                 PushConfig <$>
                   (o .:? "attributes") <*> (o .:? "pushEndpoint"))

instance ToJSON PushConfig where
        toJSON PushConfig{..}
          = object
              (catMaybes
                 [("attributes" .=) <$> _pcAttributes,
                  ("pushEndpoint" .=) <$> _pcPushEndpoint])

-- | A message and its corresponding acknowledgment ID.
--
-- /See:/ 'receivedMessage' smart constructor.
data ReceivedMessage = ReceivedMessage
    { _rmAckId   :: !(Maybe Text)
    , _rmMessage :: !(Maybe PubsubMessage)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReceivedMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmAckId'
--
-- * 'rmMessage'
receivedMessage
    :: ReceivedMessage
receivedMessage =
    ReceivedMessage
    { _rmAckId = Nothing
    , _rmMessage = Nothing
    }

-- | This ID can be used to acknowledge the received message.
rmAckId :: Lens' ReceivedMessage (Maybe Text)
rmAckId = lens _rmAckId (\ s a -> s{_rmAckId = a})

-- | The message.
rmMessage :: Lens' ReceivedMessage (Maybe PubsubMessage)
rmMessage
  = lens _rmMessage (\ s a -> s{_rmMessage = a})

instance FromJSON ReceivedMessage where
        parseJSON
          = withObject "ReceivedMessage"
              (\ o ->
                 ReceivedMessage <$>
                   (o .:? "ackId") <*> (o .:? "message"))

instance ToJSON ReceivedMessage where
        toJSON ReceivedMessage{..}
          = object
              (catMaybes
                 [("ackId" .=) <$> _rmAckId,
                  ("message" .=) <$> _rmMessage])

-- | Request for the ModifyAckDeadline method.
--
-- /See:/ 'modifyAckDeadlineRequest' smart constructor.
data ModifyAckDeadlineRequest = ModifyAckDeadlineRequest
    { _madrAckIds             :: !(Maybe [Text])
    , _madrAckId              :: !(Maybe Text)
    , _madrAckDeadlineSeconds :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModifyAckDeadlineRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'madrAckIds'
--
-- * 'madrAckId'
--
-- * 'madrAckDeadlineSeconds'
modifyAckDeadlineRequest
    :: ModifyAckDeadlineRequest
modifyAckDeadlineRequest =
    ModifyAckDeadlineRequest
    { _madrAckIds = Nothing
    , _madrAckId = Nothing
    , _madrAckDeadlineSeconds = Nothing
    }

-- | List of acknowledgment IDs.
madrAckIds :: Lens' ModifyAckDeadlineRequest [Text]
madrAckIds
  = lens _madrAckIds (\ s a -> s{_madrAckIds = a}) .
      _Default
      . _Coerce

-- | The acknowledgment ID. Either this or ack_ids must be populated, but not
-- both.
madrAckId :: Lens' ModifyAckDeadlineRequest (Maybe Text)
madrAckId
  = lens _madrAckId (\ s a -> s{_madrAckId = a})

-- | The new ack deadline with respect to the time this request was sent to
-- the Pub\/Sub system. Must be >= 0. For example, if the value is 10, the
-- new ack deadline will expire 10 seconds after the ModifyAckDeadline call
-- was made. Specifying zero may immediately make the message available for
-- another pull request.
madrAckDeadlineSeconds :: Lens' ModifyAckDeadlineRequest (Maybe Int32)
madrAckDeadlineSeconds
  = lens _madrAckDeadlineSeconds
      (\ s a -> s{_madrAckDeadlineSeconds = a})

instance FromJSON ModifyAckDeadlineRequest where
        parseJSON
          = withObject "ModifyAckDeadlineRequest"
              (\ o ->
                 ModifyAckDeadlineRequest <$>
                   (o .:? "ackIds" .!= mempty) <*> (o .:? "ackId") <*>
                     (o .:? "ackDeadlineSeconds"))

instance ToJSON ModifyAckDeadlineRequest where
        toJSON ModifyAckDeadlineRequest{..}
          = object
              (catMaybes
                 [("ackIds" .=) <$> _madrAckIds,
                  ("ackId" .=) <$> _madrAckId,
                  ("ackDeadlineSeconds" .=) <$>
                    _madrAckDeadlineSeconds])

-- | Request for the ModifyPushConfig method.
--
-- /See:/ 'modifyPushConfigRequest' smart constructor.
newtype ModifyPushConfigRequest = ModifyPushConfigRequest
    { _mpcrPushConfig :: Maybe PushConfig
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModifyPushConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpcrPushConfig'
modifyPushConfigRequest
    :: ModifyPushConfigRequest
modifyPushConfigRequest =
    ModifyPushConfigRequest
    { _mpcrPushConfig = Nothing
    }

-- | The push configuration for future deliveries. An empty pushConfig
-- indicates that the Pub\/Sub system should stop pushing messages from the
-- given subscription and allow messages to be pulled and acknowledged -
-- effectively pausing the subscription if Pull is not called.
mpcrPushConfig :: Lens' ModifyPushConfigRequest (Maybe PushConfig)
mpcrPushConfig
  = lens _mpcrPushConfig
      (\ s a -> s{_mpcrPushConfig = a})

instance FromJSON ModifyPushConfigRequest where
        parseJSON
          = withObject "ModifyPushConfigRequest"
              (\ o ->
                 ModifyPushConfigRequest <$> (o .:? "pushConfig"))

instance ToJSON ModifyPushConfigRequest where
        toJSON ModifyPushConfigRequest{..}
          = object
              (catMaybes [("pushConfig" .=) <$> _mpcrPushConfig])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty)

instance ToJSON Empty where
        toJSON = const (Object mempty)

-- | Response for the ListTopicSubscriptions method.
--
-- /See:/ 'listTopicSubscriptionsResponse' smart constructor.
data ListTopicSubscriptionsResponse = ListTopicSubscriptionsResponse
    { _ltsrNextPageToken :: !(Maybe Text)
    , _ltsrSubscriptions :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTopicSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltsrNextPageToken'
--
-- * 'ltsrSubscriptions'
listTopicSubscriptionsResponse
    :: ListTopicSubscriptionsResponse
listTopicSubscriptionsResponse =
    ListTopicSubscriptionsResponse
    { _ltsrNextPageToken = Nothing
    , _ltsrSubscriptions = Nothing
    }

-- | If not empty, indicates that there may be more subscriptions that match
-- the request; this value should be passed in a new
-- ListTopicSubscriptionsRequest to get more subscriptions.
ltsrNextPageToken :: Lens' ListTopicSubscriptionsResponse (Maybe Text)
ltsrNextPageToken
  = lens _ltsrNextPageToken
      (\ s a -> s{_ltsrNextPageToken = a})

-- | The names of the subscriptions that match the request.
ltsrSubscriptions :: Lens' ListTopicSubscriptionsResponse [Text]
ltsrSubscriptions
  = lens _ltsrSubscriptions
      (\ s a -> s{_ltsrSubscriptions = a})
      . _Default
      . _Coerce

instance FromJSON ListTopicSubscriptionsResponse
         where
        parseJSON
          = withObject "ListTopicSubscriptionsResponse"
              (\ o ->
                 ListTopicSubscriptionsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "subscriptions" .!= mempty))

instance ToJSON ListTopicSubscriptionsResponse where
        toJSON ListTopicSubscriptionsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltsrNextPageToken,
                  ("subscriptions" .=) <$> _ltsrSubscriptions])

-- | A message data and its attributes. The message payload must not be
-- empty; it must contain either a non-empty data field, or at least one
-- attribute.
--
-- /See:/ 'pubsubMessage' smart constructor.
data PubsubMessage = PubsubMessage
    { _pmData       :: !(Maybe Word8)
    , _pmAttributes :: !(Maybe PubsubMessageAttributes)
    , _pmMessageId  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PubsubMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmData'
--
-- * 'pmAttributes'
--
-- * 'pmMessageId'
pubsubMessage
    :: PubsubMessage
pubsubMessage =
    PubsubMessage
    { _pmData = Nothing
    , _pmAttributes = Nothing
    , _pmMessageId = Nothing
    }

-- | The message payload. For JSON requests, the value of this field must be
-- base64-encoded.
pmData :: Lens' PubsubMessage (Maybe Word8)
pmData = lens _pmData (\ s a -> s{_pmData = a})

-- | Optional attributes for this message.
pmAttributes :: Lens' PubsubMessage (Maybe PubsubMessageAttributes)
pmAttributes
  = lens _pmAttributes (\ s a -> s{_pmAttributes = a})

-- | ID of this message assigned by the server at publication time.
-- Guaranteed to be unique within the topic. This value may be read by a
-- subscriber that receives a PubsubMessage via a Pull call or a push
-- delivery. It must not be populated by a publisher in a Publish call.
pmMessageId :: Lens' PubsubMessage (Maybe Text)
pmMessageId
  = lens _pmMessageId (\ s a -> s{_pmMessageId = a})

instance FromJSON PubsubMessage where
        parseJSON
          = withObject "PubsubMessage"
              (\ o ->
                 PubsubMessage <$>
                   (o .:? "data") <*> (o .:? "attributes") <*>
                     (o .:? "messageId"))

instance ToJSON PubsubMessage where
        toJSON PubsubMessage{..}
          = object
              (catMaybes
                 [("data" .=) <$> _pmData,
                  ("attributes" .=) <$> _pmAttributes,
                  ("messageId" .=) <$> _pmMessageId])

-- | Response for the ListTopics method.
--
-- /See:/ 'listTopicsResponse' smart constructor.
data ListTopicsResponse = ListTopicsResponse
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTopics        :: !(Maybe [Topic])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTopicsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTopics'
listTopicsResponse
    :: ListTopicsResponse
listTopicsResponse =
    ListTopicsResponse
    { _ltrNextPageToken = Nothing
    , _ltrTopics = Nothing
    }

-- | If not empty, indicates that there may be more topics that match the
-- request; this value should be passed in a new ListTopicsRequest.
ltrNextPageToken :: Lens' ListTopicsResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | The resulting topics.
ltrTopics :: Lens' ListTopicsResponse [Topic]
ltrTopics
  = lens _ltrTopics (\ s a -> s{_ltrTopics = a}) .
      _Default
      . _Coerce

instance FromJSON ListTopicsResponse where
        parseJSON
          = withObject "ListTopicsResponse"
              (\ o ->
                 ListTopicsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "topics" .!= mempty))

instance ToJSON ListTopicsResponse where
        toJSON ListTopicsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("topics" .=) <$> _ltrTopics])

-- | Response for the Pull method.
--
-- /See:/ 'pullResponse' smart constructor.
newtype PullResponse = PullResponse
    { _prReceivedMessages :: Maybe [ReceivedMessage]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PullResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prReceivedMessages'
pullResponse
    :: PullResponse
pullResponse =
    PullResponse
    { _prReceivedMessages = Nothing
    }

-- | Received Pub\/Sub messages. The Pub\/Sub system will return zero
-- messages if there are no more available in the backlog. The Pub\/Sub
-- system may return fewer than the maxMessages requested even if there are
-- more messages available in the backlog.
prReceivedMessages :: Lens' PullResponse [ReceivedMessage]
prReceivedMessages
  = lens _prReceivedMessages
      (\ s a -> s{_prReceivedMessages = a})
      . _Default
      . _Coerce

instance FromJSON PullResponse where
        parseJSON
          = withObject "PullResponse"
              (\ o ->
                 PullResponse <$>
                   (o .:? "receivedMessages" .!= mempty))

instance ToJSON PullResponse where
        toJSON PullResponse{..}
          = object
              (catMaybes
                 [("receivedMessages" .=) <$> _prReceivedMessages])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest = SetIAMPolicyRequest
    { _siprPolicy :: Maybe Policy
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
    SetIAMPolicyRequest
    { _siprPolicy = Nothing
    }

-- | REQUIRED: The complete policy to be applied to the \'resource\'. The
-- size of the policy is limited to a few 10s of KB. An empty policy is in
-- general a valid policy but certain services (like Projects) might reject
-- them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | A topic resource.
--
-- /See:/ 'topic' smart constructor.
newtype Topic = Topic
    { _tName :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Topic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
topic
    :: Topic
topic =
    Topic
    { _tName = Nothing
    }

-- | The name of the topic. It must have the format
-- \`\"projects\/{project}\/topics\/{topic}\"\`. \`{topic}\` must start
-- with a letter, and contain only letters (\`[A-Za-z]\`), numbers
-- (\`[0-9]\`), dashes (\`-\`), underscores (\`_\`), periods (\`.\`),
-- tildes (\`~\`), plus (\`+\`) or percent signs (\`%\`). It must be
-- between 3 and 255 characters in length, and it must not start with
-- \`\"goog\"\`.
tName :: Lens' Topic (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

instance FromJSON Topic where
        parseJSON
          = withObject "Topic"
              (\ o -> Topic <$> (o .:? "name"))

instance ToJSON Topic where
        toJSON Topic{..}
          = object (catMaybes [("name" .=) <$> _tName])

-- | Request for the Pull method.
--
-- /See:/ 'pullRequest' smart constructor.
data PullRequest = PullRequest
    { _prMaxMessages       :: !(Maybe Int32)
    , _prReturnImmediately :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prMaxMessages'
--
-- * 'prReturnImmediately'
pullRequest
    :: PullRequest
pullRequest =
    PullRequest
    { _prMaxMessages = Nothing
    , _prReturnImmediately = Nothing
    }

-- | The maximum number of messages returned for this request. The Pub\/Sub
-- system may return fewer than the number specified.
prMaxMessages :: Lens' PullRequest (Maybe Int32)
prMaxMessages
  = lens _prMaxMessages
      (\ s a -> s{_prMaxMessages = a})

-- | If this is specified as true the system will respond immediately even if
-- it is not able to return a message in the Pull response. Otherwise the
-- system is allowed to wait until at least one message is available rather
-- than returning no messages. The client may cancel the request if it does
-- not wish to wait any longer for the response.
prReturnImmediately :: Lens' PullRequest (Maybe Bool)
prReturnImmediately
  = lens _prReturnImmediately
      (\ s a -> s{_prReturnImmediately = a})

instance FromJSON PullRequest where
        parseJSON
          = withObject "PullRequest"
              (\ o ->
                 PullRequest <$>
                   (o .:? "maxMessages") <*>
                     (o .:? "returnImmediately"))

instance ToJSON PullRequest where
        toJSON PullRequest{..}
          = object
              (catMaybes
                 [("maxMessages" .=) <$> _prMaxMessages,
                  ("returnImmediately" .=) <$> _prReturnImmediately])

-- | Optional attributes for this message.
--
-- /See:/ 'pubsubMessageAttributes' smart constructor.
data PubsubMessageAttributes =
    PubsubMessageAttributes
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PubsubMessageAttributes' with the minimum fields required to make a request.
--
pubsubMessageAttributes
    :: PubsubMessageAttributes
pubsubMessageAttributes = PubsubMessageAttributes

instance FromJSON PubsubMessageAttributes where
        parseJSON
          = withObject "PubsubMessageAttributes"
              (\ o -> pure PubsubMessageAttributes)

instance ToJSON PubsubMessageAttributes where
        toJSON = const (Object mempty)

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest = TestIAMPermissionsRequest
    { _tiprPermissions :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
    TestIAMPermissionsRequest
    { _tiprPermissions = Nothing
    }

-- | The set of permissions to check for the \'resource\'. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed.
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Response for the Publish method.
--
-- /See:/ 'publishResponse' smart constructor.
newtype PublishResponse = PublishResponse
    { _prMessageIds :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prMessageIds'
publishResponse
    :: PublishResponse
publishResponse =
    PublishResponse
    { _prMessageIds = Nothing
    }

-- | The server-assigned ID of each published message, in the same order as
-- the messages in the request. IDs are guaranteed to be unique within the
-- topic.
prMessageIds :: Lens' PublishResponse [Text]
prMessageIds
  = lens _prMessageIds (\ s a -> s{_prMessageIds = a})
      . _Default
      . _Coerce

instance FromJSON PublishResponse where
        parseJSON
          = withObject "PublishResponse"
              (\ o ->
                 PublishResponse <$> (o .:? "messageIds" .!= mempty))

instance ToJSON PublishResponse where
        toJSON PublishResponse{..}
          = object
              (catMaybes [("messageIds" .=) <$> _prMessageIds])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse = TestIAMPermissionsResponse
    { _tiamprPermissions :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
    TestIAMPermissionsResponse
    { _tiamprPermissions = Nothing
    }

-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | Request for the Publish method.
--
-- /See:/ 'publishRequest' smart constructor.
newtype PublishRequest = PublishRequest
    { _prMessages :: Maybe [PubsubMessage]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prMessages'
publishRequest
    :: PublishRequest
publishRequest =
    PublishRequest
    { _prMessages = Nothing
    }

-- | The messages to publish.
prMessages :: Lens' PublishRequest [PubsubMessage]
prMessages
  = lens _prMessages (\ s a -> s{_prMessages = a}) .
      _Default
      . _Coerce

instance FromJSON PublishRequest where
        parseJSON
          = withObject "PublishRequest"
              (\ o ->
                 PublishRequest <$> (o .:? "messages" .!= mempty))

instance ToJSON PublishRequest where
        toJSON PublishRequest{..}
          = object
              (catMaybes [("messages" .=) <$> _prMessages])

-- | # Overview The \`Policy\` defines an access control policy language. It
-- is used to define policies that are attached to resources like files,
-- folders, VMs, etc. # Policy structure A \`Policy\` consists of a list of
-- bindings. A \`Binding\` binds a set of members to a role, where the
-- members include user accounts, user groups, user domains, and service
-- accounts. A \'role\' is a named set of permissions, defined by IAM. The
-- definition of a role is outside the policy. A permission check first
-- determines the roles that include the specified permission, and then
-- determines if the principal specified is a member of a binding to at
-- least one of these roles. The membership check is recursive when a group
-- is bound to a role. Policy examples: \`\`\` { \"bindings\": [ {
-- \"role\": \"roles\/owner\", \"members\": [ \"user:mike\'example.com\",
-- \"group:admins\'example.com\", \"domain:google.com\",
-- \"serviceAccount:frontend\'example.iam.gserviceaccounts.com\"] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } \`\`\`
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy
    { _pEtag     :: !(Maybe Word8)
    , _pVersion  :: !(Maybe Int32)
    , _pBindings :: !(Maybe [Binding])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
    Policy
    { _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }

-- | Can be used to perform a read-modify-write.
pEtag :: Lens' Policy (Maybe Word8)
pEtag = lens _pEtag (\ s a -> s{_pEtag = a})

-- | The policy language version. The version of the policy is represented by
-- the etag. The default version is 0.
pVersion :: Lens' Policy (Maybe Int32)
pVersion = lens _pVersion (\ s a -> s{_pVersion = a})

-- | It is an error to specify multiple bindings for the same role. It is an
-- error to specify a binding with no members.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | A subscription resource.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription
    { _sPushConfig         :: !(Maybe PushConfig)
    , _sTopic              :: !(Maybe Text)
    , _sName               :: !(Maybe Text)
    , _sAckDeadlineSeconds :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPushConfig'
--
-- * 'sTopic'
--
-- * 'sName'
--
-- * 'sAckDeadlineSeconds'
subscription
    :: Subscription
subscription =
    Subscription
    { _sPushConfig = Nothing
    , _sTopic = Nothing
    , _sName = Nothing
    , _sAckDeadlineSeconds = Nothing
    }

-- | If push delivery is used with this subscription, this field is used to
-- configure it. An empty pushConfig signifies that the subscriber will
-- pull and ack messages using API methods.
sPushConfig :: Lens' Subscription (Maybe PushConfig)
sPushConfig
  = lens _sPushConfig (\ s a -> s{_sPushConfig = a})

-- | The name of the topic from which this subscription is receiving
-- messages. The value of this field will be \`_deleted-topic_\` if the
-- topic has been deleted.
sTopic :: Lens' Subscription (Maybe Text)
sTopic = lens _sTopic (\ s a -> s{_sTopic = a})

-- | The name of the subscription. It must have the format
-- \`\"projects\/{project}\/subscriptions\/{subscription}\"\`.
-- \`{subscription}\` must start with a letter, and contain only letters
-- (\`[A-Za-z]\`), numbers (\`[0-9]\`), dashes (\`-\`), underscores
-- (\`_\`), periods (\`.\`), tildes (\`~\`), plus (\`+\`) or percent signs
-- (\`%\`). It must be between 3 and 255 characters in length, and it must
-- not start with \`\"goog\"\`.
sName :: Lens' Subscription (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | This value is the maximum time after a subscriber receives a message
-- before the subscriber should acknowledge the message. After message
-- delivery but before the ack deadline expires and before the message is
-- acknowledged, it is an outstanding message and will not be delivered
-- again during that time (on a best-effort basis). For pull delivery this
-- value is used as the initial value for the ack deadline. To override
-- this value for a given message, call ModifyAckDeadline with the
-- corresponding ack_id. For push delivery, this value is also used to set
-- the request timeout for the call to the push endpoint. If the subscriber
-- never acknowledges the message, the Pub\/Sub system will eventually
-- redeliver the message. If this parameter is not set, the default value
-- of 10 seconds is used.
sAckDeadlineSeconds :: Lens' Subscription (Maybe Int32)
sAckDeadlineSeconds
  = lens _sAckDeadlineSeconds
      (\ s a -> s{_sAckDeadlineSeconds = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription <$>
                   (o .:? "pushConfig") <*> (o .:? "topic") <*>
                     (o .:? "name")
                     <*> (o .:? "ackDeadlineSeconds"))

instance ToJSON Subscription where
        toJSON Subscription{..}
          = object
              (catMaybes
                 [("pushConfig" .=) <$> _sPushConfig,
                  ("topic" .=) <$> _sTopic, ("name" .=) <$> _sName,
                  ("ackDeadlineSeconds" .=) <$> _sAckDeadlineSeconds])

-- | Endpoint configuration attributes. Every endpoint has a set of API
-- supported attributes that can be used to control different aspects of
-- the message delivery. The currently supported attribute is
-- \`x-goog-version\`, which you can use to change the format of the push
-- message. This attribute indicates the version of the data expected by
-- the endpoint. This controls the shape of the envelope (i.e. its fields
-- and metadata). The endpoint version is based on the version of the
-- Pub\/Sub API. If not present during the CreateSubscription call, it will
-- default to the version of the API used to make such call. If not present
-- during a ModifyPushConfig call, its value will not be changed.
-- GetSubscription calls will always return a valid version, even if the
-- subscription was created without this attribute. The possible values for
-- this attribute are: * \`v1beta1\`: uses the push format defined in the
-- v1beta1 Pub\/Sub API. * \`v1\` or \`v1beta2\`: uses the push format
-- defined in the v1 Pub\/Sub API.
--
-- /See:/ 'pushConfigAttributes' smart constructor.
data PushConfigAttributes =
    PushConfigAttributes
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushConfigAttributes' with the minimum fields required to make a request.
--
pushConfigAttributes
    :: PushConfigAttributes
pushConfigAttributes = PushConfigAttributes

instance FromJSON PushConfigAttributes where
        parseJSON
          = withObject "PushConfigAttributes"
              (\ o -> pure PushConfigAttributes)

instance ToJSON PushConfigAttributes where
        toJSON = const (Object mempty)

-- | Associates members with roles. See below for allowed formats of members.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding
    { _bMembers :: !(Maybe [Text])
    , _bRole    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
binding
    :: Binding
binding =
    Binding
    { _bMembers = Nothing
    , _bRole = Nothing
    }

-- | Format of member entries: 1. allUsers Matches any requesting principal
-- (users, service accounts or anonymous). 2. allAuthenticatedUsers Matches
-- any requesting authenticated principal (users or service accounts). 3.
-- user:{emailid} A google user account using an email address. For example
-- alice\'gmail.com, joe\'example.com 4. serviceAccount:{emailid} An
-- service account email. 5. group:{emailid} A google group with an email
-- address. For example auth-ti-cloud\'google.com 6. domain:{domain} A
-- Google Apps domain name. For example google.com, example.com
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | The name of the role to which the members should be bound. Examples:
-- \"roles\/viewer\", \"roles\/editor\", \"roles\/owner\". Required
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role"))

instance ToJSON Binding where
        toJSON Binding{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole])

-- | Request for the Acknowledge method.
--
-- /See:/ 'acknowledgeRequest' smart constructor.
newtype AcknowledgeRequest = AcknowledgeRequest
    { _arAckIds :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arAckIds'
acknowledgeRequest
    :: AcknowledgeRequest
acknowledgeRequest =
    AcknowledgeRequest
    { _arAckIds = Nothing
    }

-- | The acknowledgment ID for the messages being acknowledged that was
-- returned by the Pub\/Sub system in the Pull response. Must not be empty.
arAckIds :: Lens' AcknowledgeRequest [Text]
arAckIds
  = lens _arAckIds (\ s a -> s{_arAckIds = a}) .
      _Default
      . _Coerce

instance FromJSON AcknowledgeRequest where
        parseJSON
          = withObject "AcknowledgeRequest"
              (\ o ->
                 AcknowledgeRequest <$> (o .:? "ackIds" .!= mempty))

instance ToJSON AcknowledgeRequest where
        toJSON AcknowledgeRequest{..}
          = object (catMaybes [("ackIds" .=) <$> _arAckIds])

-- | Response for the ListSubscriptions method.
--
-- /See:/ 'listSubscriptionsResponse' smart constructor.
data ListSubscriptionsResponse = ListSubscriptionsResponse
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSubscriptions :: !(Maybe [Subscription])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSubscriptions'
listSubscriptionsResponse
    :: ListSubscriptionsResponse
listSubscriptionsResponse =
    ListSubscriptionsResponse
    { _lsrNextPageToken = Nothing
    , _lsrSubscriptions = Nothing
    }

-- | If not empty, indicates that there may be more subscriptions that match
-- the request; this value should be passed in a new
-- ListSubscriptionsRequest to get more subscriptions.
lsrNextPageToken :: Lens' ListSubscriptionsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The subscriptions that match the request.
lsrSubscriptions :: Lens' ListSubscriptionsResponse [Subscription]
lsrSubscriptions
  = lens _lsrSubscriptions
      (\ s a -> s{_lsrSubscriptions = a})
      . _Default
      . _Coerce

instance FromJSON ListSubscriptionsResponse where
        parseJSON
          = withObject "ListSubscriptionsResponse"
              (\ o ->
                 ListSubscriptionsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "subscriptions" .!= mempty))

instance ToJSON ListSubscriptionsResponse where
        toJSON ListSubscriptionsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("subscriptions" .=) <$> _lsrSubscriptions])
