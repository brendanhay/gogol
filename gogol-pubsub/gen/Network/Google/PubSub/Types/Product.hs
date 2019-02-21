{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PubSub.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
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
data PushConfig =
  PushConfig'
    { _pcAttributes   :: !(Maybe PushConfigAttributes)
    , _pcPushEndpoint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PushConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcAttributes'
--
-- * 'pcPushEndpoint'
pushConfig
    :: PushConfig
pushConfig = PushConfig' {_pcAttributes = Nothing, _pcPushEndpoint = Nothing}


-- | Endpoint configuration attributes. Every endpoint has a set of API
-- supported attributes that can be used to control different aspects of
-- the message delivery. The currently supported attribute is
-- \`x-goog-version\`, which you can use to change the format of the pushed
-- message. This attribute indicates the version of the data expected by
-- the endpoint. This controls the shape of the pushed message (i.e., its
-- fields and metadata). The endpoint version is based on the version of
-- the Pub\/Sub API. If not present during the \`CreateSubscription\` call,
-- it will default to the version of the API used to make such call. If not
-- present during a \`ModifyPushConfig\` call, its value will not be
-- changed. \`GetSubscription\` calls will always return a valid version,
-- even if the subscription was created without this attribute. The
-- possible values for this attribute are: * \`v1beta1\`: uses the push
-- format defined in the v1beta1 Pub\/Sub API. * \`v1\` or \`v1beta2\`:
-- uses the push format defined in the v1 Pub\/Sub API.
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
                 PushConfig' <$>
                   (o .:? "attributes") <*> (o .:? "pushEndpoint"))

instance ToJSON PushConfig where
        toJSON PushConfig'{..}
          = object
              (catMaybes
                 [("attributes" .=) <$> _pcAttributes,
                  ("pushEndpoint" .=) <$> _pcPushEndpoint])

-- | A message and its corresponding acknowledgment ID.
--
-- /See:/ 'receivedMessage' smart constructor.
data ReceivedMessage =
  ReceivedMessage'
    { _rmAckId   :: !(Maybe Text)
    , _rmMessage :: !(Maybe PubsubMessage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReceivedMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmAckId'
--
-- * 'rmMessage'
receivedMessage
    :: ReceivedMessage
receivedMessage = ReceivedMessage' {_rmAckId = Nothing, _rmMessage = Nothing}


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
                 ReceivedMessage' <$>
                   (o .:? "ackId") <*> (o .:? "message"))

instance ToJSON ReceivedMessage where
        toJSON ReceivedMessage'{..}
          = object
              (catMaybes
                 [("ackId" .=) <$> _rmAckId,
                  ("message" .=) <$> _rmMessage])

-- | A snapshot resource. Snapshots are used in
-- <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations,
-- which allow you to manage message acknowledgments in bulk. That is, you
-- can set the acknowledgment state of messages in an existing subscription
-- to the state captured by a snapshot.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot =
  Snapshot'
    { _sTopic      :: !(Maybe Text)
    , _sName       :: !(Maybe Text)
    , _sLabels     :: !(Maybe SnapshotLabels)
    , _sExpireTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTopic'
--
-- * 'sName'
--
-- * 'sLabels'
--
-- * 'sExpireTime'
snapshot
    :: Snapshot
snapshot =
  Snapshot'
    { _sTopic = Nothing
    , _sName = Nothing
    , _sLabels = Nothing
    , _sExpireTime = Nothing
    }


-- | The name of the topic from which this snapshot is retaining messages.
sTopic :: Lens' Snapshot (Maybe Text)
sTopic = lens _sTopic (\ s a -> s{_sTopic = a})

-- | The name of the snapshot.
sName :: Lens' Snapshot (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
sLabels :: Lens' Snapshot (Maybe SnapshotLabels)
sLabels = lens _sLabels (\ s a -> s{_sLabels = a})

-- | The snapshot is guaranteed to exist up until this time. A newly-created
-- snapshot expires no later than 7 days from the time of its creation. Its
-- exact lifetime is determined at creation by the existing backlog in the
-- source subscription. Specifically, the lifetime of the snapshot is \`7
-- days - (age of oldest unacked message in the subscription)\`. For
-- example, consider a subscription whose oldest unacked message is 3 days
-- old. If a snapshot is created from this subscription, the snapshot --
-- which will always capture this 3-day-old backlog as long as the snapshot
-- exists -- will expire in 4 days. The service will refuse to create a
-- snapshot that would expire in less than 1 hour after creation.
sExpireTime :: Lens' Snapshot (Maybe UTCTime)
sExpireTime
  = lens _sExpireTime (\ s a -> s{_sExpireTime = a}) .
      mapping _DateTime

instance FromJSON Snapshot where
        parseJSON
          = withObject "Snapshot"
              (\ o ->
                 Snapshot' <$>
                   (o .:? "topic") <*> (o .:? "name") <*>
                     (o .:? "labels")
                     <*> (o .:? "expireTime"))

instance ToJSON Snapshot where
        toJSON Snapshot'{..}
          = object
              (catMaybes
                 [("topic" .=) <$> _sTopic, ("name" .=) <$> _sName,
                  ("labels" .=) <$> _sLabels,
                  ("expireTime" .=) <$> _sExpireTime])

-- | Response for the \`ListTopicSnapshots\` method.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
--
-- /See:/ 'listTopicSnapshotsResponse' smart constructor.
data ListTopicSnapshotsResponse =
  ListTopicSnapshotsResponse'
    { _ltsrNextPageToken :: !(Maybe Text)
    , _ltsrSnapshots     :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTopicSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltsrNextPageToken'
--
-- * 'ltsrSnapshots'
listTopicSnapshotsResponse
    :: ListTopicSnapshotsResponse
listTopicSnapshotsResponse =
  ListTopicSnapshotsResponse'
    {_ltsrNextPageToken = Nothing, _ltsrSnapshots = Nothing}


-- | If not empty, indicates that there may be more snapshots that match the
-- request; this value should be passed in a new
-- \`ListTopicSnapshotsRequest\` to get more snapshots.
ltsrNextPageToken :: Lens' ListTopicSnapshotsResponse (Maybe Text)
ltsrNextPageToken
  = lens _ltsrNextPageToken
      (\ s a -> s{_ltsrNextPageToken = a})

-- | The names of the snapshots that match the request.
ltsrSnapshots :: Lens' ListTopicSnapshotsResponse [Text]
ltsrSnapshots
  = lens _ltsrSnapshots
      (\ s a -> s{_ltsrSnapshots = a})
      . _Default
      . _Coerce

instance FromJSON ListTopicSnapshotsResponse where
        parseJSON
          = withObject "ListTopicSnapshotsResponse"
              (\ o ->
                 ListTopicSnapshotsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "snapshots" .!= mempty))

instance ToJSON ListTopicSnapshotsResponse where
        toJSON ListTopicSnapshotsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltsrNextPageToken,
                  ("snapshots" .=) <$> _ltsrSnapshots])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | Request for the ModifyAckDeadline method.
--
-- /See:/ 'modifyAckDeadlineRequest' smart constructor.
data ModifyAckDeadlineRequest =
  ModifyAckDeadlineRequest'
    { _madrAckIds             :: !(Maybe [Text])
    , _madrAckDeadlineSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyAckDeadlineRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'madrAckIds'
--
-- * 'madrAckDeadlineSeconds'
modifyAckDeadlineRequest
    :: ModifyAckDeadlineRequest
modifyAckDeadlineRequest =
  ModifyAckDeadlineRequest'
    {_madrAckIds = Nothing, _madrAckDeadlineSeconds = Nothing}


-- | List of acknowledgment IDs.
madrAckIds :: Lens' ModifyAckDeadlineRequest [Text]
madrAckIds
  = lens _madrAckIds (\ s a -> s{_madrAckIds = a}) .
      _Default
      . _Coerce

-- | The new ack deadline with respect to the time this request was sent to
-- the Pub\/Sub system. For example, if the value is 10, the new ack
-- deadline will expire 10 seconds after the \`ModifyAckDeadline\` call was
-- made. Specifying zero might immediately make the message available for
-- delivery to another subscriber client. This typically results in an
-- increase in the rate of message redeliveries (that is, duplicates). The
-- minimum deadline you can specify is 0 seconds. The maximum deadline you
-- can specify is 600 seconds (10 minutes).
madrAckDeadlineSeconds :: Lens' ModifyAckDeadlineRequest (Maybe Int32)
madrAckDeadlineSeconds
  = lens _madrAckDeadlineSeconds
      (\ s a -> s{_madrAckDeadlineSeconds = a})
      . mapping _Coerce

instance FromJSON ModifyAckDeadlineRequest where
        parseJSON
          = withObject "ModifyAckDeadlineRequest"
              (\ o ->
                 ModifyAckDeadlineRequest' <$>
                   (o .:? "ackIds" .!= mempty) <*>
                     (o .:? "ackDeadlineSeconds"))

instance ToJSON ModifyAckDeadlineRequest where
        toJSON ModifyAckDeadlineRequest'{..}
          = object
              (catMaybes
                 [("ackIds" .=) <$> _madrAckIds,
                  ("ackDeadlineSeconds" .=) <$>
                    _madrAckDeadlineSeconds])

-- | Request for the ModifyPushConfig method.
--
-- /See:/ 'modifyPushConfigRequest' smart constructor.
newtype ModifyPushConfigRequest =
  ModifyPushConfigRequest'
    { _mpcrPushConfig :: Maybe PushConfig
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyPushConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpcrPushConfig'
modifyPushConfigRequest
    :: ModifyPushConfigRequest
modifyPushConfigRequest = ModifyPushConfigRequest' {_mpcrPushConfig = Nothing}


-- | The push configuration for future deliveries. An empty \`pushConfig\`
-- indicates that the Pub\/Sub system should stop pushing messages from the
-- given subscription and allow messages to be pulled and acknowledged -
-- effectively pausing the subscription if \`Pull\` or \`StreamingPull\` is
-- not called.
mpcrPushConfig :: Lens' ModifyPushConfigRequest (Maybe PushConfig)
mpcrPushConfig
  = lens _mpcrPushConfig
      (\ s a -> s{_mpcrPushConfig = a})

instance FromJSON ModifyPushConfigRequest where
        parseJSON
          = withObject "ModifyPushConfigRequest"
              (\ o ->
                 ModifyPushConfigRequest' <$> (o .:? "pushConfig"))

instance ToJSON ModifyPushConfigRequest where
        toJSON ModifyPushConfigRequest'{..}
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
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A message that is published by publishers and consumed by subscribers.
-- The message must contain either a non-empty data field or at least one
-- attribute. Note that client libraries represent this object differently
-- depending on the language. See the corresponding
-- <https://cloud.google.com/pubsub/docs/reference/libraries client library documentation>
-- for more information. See
-- <https://cloud.google.com/pubsub/quotas Quotas and limits> for more
-- information about message limits.
--
-- /See:/ 'pubsubMessage' smart constructor.
data PubsubMessage =
  PubsubMessage'
    { _pmData        :: !(Maybe Bytes)
    , _pmPublishTime :: !(Maybe DateTime')
    , _pmAttributes  :: !(Maybe PubsubMessageAttributes)
    , _pmMessageId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmData'
--
-- * 'pmPublishTime'
--
-- * 'pmAttributes'
--
-- * 'pmMessageId'
pubsubMessage
    :: PubsubMessage
pubsubMessage =
  PubsubMessage'
    { _pmData = Nothing
    , _pmPublishTime = Nothing
    , _pmAttributes = Nothing
    , _pmMessageId = Nothing
    }


-- | The message data field. If this field is empty, the message must contain
-- at least one attribute.
pmData :: Lens' PubsubMessage (Maybe ByteString)
pmData
  = lens _pmData (\ s a -> s{_pmData = a}) .
      mapping _Bytes

-- | The time at which the message was published, populated by the server
-- when it receives the \`Publish\` call. It must not be populated by the
-- publisher in a \`Publish\` call.
pmPublishTime :: Lens' PubsubMessage (Maybe UTCTime)
pmPublishTime
  = lens _pmPublishTime
      (\ s a -> s{_pmPublishTime = a})
      . mapping _DateTime

-- | Optional attributes for this message.
pmAttributes :: Lens' PubsubMessage (Maybe PubsubMessageAttributes)
pmAttributes
  = lens _pmAttributes (\ s a -> s{_pmAttributes = a})

-- | ID of this message, assigned by the server when the message is
-- published. Guaranteed to be unique within the topic. This value may be
-- read by a subscriber that receives a \`PubsubMessage\` via a \`Pull\`
-- call or a push delivery. It must not be populated by the publisher in a
-- \`Publish\` call.
pmMessageId :: Lens' PubsubMessage (Maybe Text)
pmMessageId
  = lens _pmMessageId (\ s a -> s{_pmMessageId = a})

instance FromJSON PubsubMessage where
        parseJSON
          = withObject "PubsubMessage"
              (\ o ->
                 PubsubMessage' <$>
                   (o .:? "data") <*> (o .:? "publishTime") <*>
                     (o .:? "attributes")
                     <*> (o .:? "messageId"))

instance ToJSON PubsubMessage where
        toJSON PubsubMessage'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _pmData,
                  ("publishTime" .=) <$> _pmPublishTime,
                  ("attributes" .=) <$> _pmAttributes,
                  ("messageId" .=) <$> _pmMessageId])

-- | Response for the \`ListTopicSubscriptions\` method.
--
-- /See:/ 'listTopicSubscriptionsResponse' smart constructor.
data ListTopicSubscriptionsResponse =
  ListTopicSubscriptionsResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lSubscriptions :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTopicSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lSubscriptions'
listTopicSubscriptionsResponse
    :: ListTopicSubscriptionsResponse
listTopicSubscriptionsResponse =
  ListTopicSubscriptionsResponse'
    {_lNextPageToken = Nothing, _lSubscriptions = Nothing}


-- | If not empty, indicates that there may be more subscriptions that match
-- the request; this value should be passed in a new
-- \`ListTopicSubscriptionsRequest\` to get more subscriptions.
lNextPageToken :: Lens' ListTopicSubscriptionsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | The names of the subscriptions that match the request.
lSubscriptions :: Lens' ListTopicSubscriptionsResponse [Text]
lSubscriptions
  = lens _lSubscriptions
      (\ s a -> s{_lSubscriptions = a})
      . _Default
      . _Coerce

instance FromJSON ListTopicSubscriptionsResponse
         where
        parseJSON
          = withObject "ListTopicSubscriptionsResponse"
              (\ o ->
                 ListTopicSubscriptionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "subscriptions" .!= mempty))

instance ToJSON ListTopicSubscriptionsResponse where
        toJSON ListTopicSubscriptionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("subscriptions" .=) <$> _lSubscriptions])

-- | Response for the \`ListTopics\` method.
--
-- /See:/ 'listTopicsResponse' smart constructor.
data ListTopicsResponse =
  ListTopicsResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTopics        :: !(Maybe [Topic])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListTopicsResponse' {_ltrNextPageToken = Nothing, _ltrTopics = Nothing}


-- | If not empty, indicates that there may be more topics that match the
-- request; this value should be passed in a new \`ListTopicsRequest\`.
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
                 ListTopicsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "topics" .!= mempty))

instance ToJSON ListTopicsResponse where
        toJSON ListTopicsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("topics" .=) <$> _ltrTopics])

-- | Response for the \`Pull\` method.
--
-- /See:/ 'pullResponse' smart constructor.
newtype PullResponse =
  PullResponse'
    { _prReceivedMessages :: Maybe [ReceivedMessage]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PullResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prReceivedMessages'
pullResponse
    :: PullResponse
pullResponse = PullResponse' {_prReceivedMessages = Nothing}


-- | Received Pub\/Sub messages. The list will be empty if there are no more
-- messages available in the backlog. For JSON, the response can be
-- entirely empty. The Pub\/Sub system may return fewer than the
-- \`maxMessages\` requested even if there are more messages available in
-- the backlog.
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
                 PullResponse' <$>
                   (o .:? "receivedMessages" .!= mempty))

instance ToJSON PullResponse where
        toJSON PullResponse'{..}
          = object
              (catMaybes
                 [("receivedMessages" .=) <$> _prReceivedMessages])

-- | Response for the \`ListSnapshots\` method.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
--
-- /See:/ 'listSnapshotsResponse' smart constructor.
data ListSnapshotsResponse =
  ListSnapshotsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSnapshots     :: !(Maybe [Snapshot])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSnapshots'
listSnapshotsResponse
    :: ListSnapshotsResponse
listSnapshotsResponse =
  ListSnapshotsResponse' {_lsrNextPageToken = Nothing, _lsrSnapshots = Nothing}


-- | If not empty, indicates that there may be more snapshot that match the
-- request; this value should be passed in a new \`ListSnapshotsRequest\`.
lsrNextPageToken :: Lens' ListSnapshotsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The resulting snapshots.
lsrSnapshots :: Lens' ListSnapshotsResponse [Snapshot]
lsrSnapshots
  = lens _lsrSnapshots (\ s a -> s{_lsrSnapshots = a})
      . _Default
      . _Coerce

instance FromJSON ListSnapshotsResponse where
        parseJSON
          = withObject "ListSnapshotsResponse"
              (\ o ->
                 ListSnapshotsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "snapshots" .!= mempty))

instance ToJSON ListSnapshotsResponse where
        toJSON ListSnapshotsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("snapshots" .=) <$> _lsrSnapshots])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}


-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | Request for the \`CreateSnapshot\` method.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
--
-- /See:/ 'createSnapshotRequest' smart constructor.
data CreateSnapshotRequest =
  CreateSnapshotRequest'
    { _csrLabels       :: !(Maybe CreateSnapshotRequestLabels)
    , _csrSubscription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateSnapshotRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrLabels'
--
-- * 'csrSubscription'
createSnapshotRequest
    :: CreateSnapshotRequest
createSnapshotRequest =
  CreateSnapshotRequest' {_csrLabels = Nothing, _csrSubscription = Nothing}


-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
csrLabels :: Lens' CreateSnapshotRequest (Maybe CreateSnapshotRequestLabels)
csrLabels
  = lens _csrLabels (\ s a -> s{_csrLabels = a})

-- | The subscription whose backlog the snapshot retains. Specifically, the
-- created snapshot is guaranteed to retain: (a) The existing backlog on
-- the subscription. More precisely, this is defined as the messages in the
-- subscription\'s backlog that are unacknowledged upon the successful
-- completion of the \`CreateSnapshot\` request; as well as: (b) Any
-- messages published to the subscription\'s topic following the successful
-- completion of the CreateSnapshot request. Format is
-- \`projects\/{project}\/subscriptions\/{sub}\`.
csrSubscription :: Lens' CreateSnapshotRequest (Maybe Text)
csrSubscription
  = lens _csrSubscription
      (\ s a -> s{_csrSubscription = a})

instance FromJSON CreateSnapshotRequest where
        parseJSON
          = withObject "CreateSnapshotRequest"
              (\ o ->
                 CreateSnapshotRequest' <$>
                   (o .:? "labels") <*> (o .:? "subscription"))

instance ToJSON CreateSnapshotRequest where
        toJSON CreateSnapshotRequest'{..}
          = object
              (catMaybes
                 [("labels" .=) <$> _csrLabels,
                  ("subscription" .=) <$> _csrSubscription])

-- | Request for the \`Seek\` method.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
--
-- /See:/ 'seekRequest' smart constructor.
data SeekRequest =
  SeekRequest'
    { _srSnapshot :: !(Maybe Text)
    , _srTime     :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeekRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srSnapshot'
--
-- * 'srTime'
seekRequest
    :: SeekRequest
seekRequest = SeekRequest' {_srSnapshot = Nothing, _srTime = Nothing}


-- | The snapshot to seek to. The snapshot\'s topic must be the same as that
-- of the provided subscription. Format is
-- \`projects\/{project}\/snapshots\/{snap}\`.
srSnapshot :: Lens' SeekRequest (Maybe Text)
srSnapshot
  = lens _srSnapshot (\ s a -> s{_srSnapshot = a})

-- | The time to seek to. Messages retained in the subscription that were
-- published before this time are marked as acknowledged, and messages
-- retained in the subscription that were published after this time are
-- marked as unacknowledged. Note that this operation affects only those
-- messages retained in the subscription (configured by the combination of
-- \`message_retention_duration\` and \`retain_acked_messages\`). For
-- example, if \`time\` corresponds to a point before the message retention
-- window (or to a point before the system\'s notion of the subscription
-- creation time), only retained messages will be marked as unacknowledged,
-- and already-expunged messages will not be restored.
srTime :: Lens' SeekRequest (Maybe UTCTime)
srTime
  = lens _srTime (\ s a -> s{_srTime = a}) .
      mapping _DateTime

instance FromJSON SeekRequest where
        parseJSON
          = withObject "SeekRequest"
              (\ o ->
                 SeekRequest' <$>
                   (o .:? "snapshot") <*> (o .:? "time"))

instance ToJSON SeekRequest where
        toJSON SeekRequest'{..}
          = object
              (catMaybes
                 [("snapshot" .=) <$> _srSnapshot,
                  ("time" .=) <$> _srTime])

-- | A topic resource.
--
-- /See:/ 'topic' smart constructor.
data Topic =
  Topic'
    { _tName   :: !(Maybe Text)
    , _tLabels :: !(Maybe TopicLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Topic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
--
-- * 'tLabels'
topic
    :: Topic
topic = Topic' {_tName = Nothing, _tLabels = Nothing}


-- | The name of the topic. It must have the format
-- \`\"projects\/{project}\/topics\/{topic}\"\`. \`{topic}\` must start
-- with a letter, and contain only letters (\`[A-Za-z]\`), numbers
-- (\`[0-9]\`), dashes (\`-\`), underscores (\`_\`), periods (\`.\`),
-- tildes (\`~\`), plus (\`+\`) or percent signs (\`%\`). It must be
-- between 3 and 255 characters in length, and it must not start with
-- \`\"goog\"\`.
tName :: Lens' Topic (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
tLabels :: Lens' Topic (Maybe TopicLabels)
tLabels = lens _tLabels (\ s a -> s{_tLabels = a})

instance FromJSON Topic where
        parseJSON
          = withObject "Topic"
              (\ o ->
                 Topic' <$> (o .:? "name") <*> (o .:? "labels"))

instance ToJSON Topic where
        toJSON Topic'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tName, ("labels" .=) <$> _tLabels])

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
--
-- /See:/ 'topicLabels' smart constructor.
newtype TopicLabels =
  TopicLabels'
    { _tlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TopicLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlAddtional'
topicLabels
    :: HashMap Text Text -- ^ 'tlAddtional'
    -> TopicLabels
topicLabels pTlAddtional_ =
  TopicLabels' {_tlAddtional = _Coerce # pTlAddtional_}


tlAddtional :: Lens' TopicLabels (HashMap Text Text)
tlAddtional
  = lens _tlAddtional (\ s a -> s{_tlAddtional = a}) .
      _Coerce

instance FromJSON TopicLabels where
        parseJSON
          = withObject "TopicLabels"
              (\ o -> TopicLabels' <$> (parseJSONObject o))

instance ToJSON TopicLabels where
        toJSON = toJSON . _tlAddtional

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
--
-- /See:/ 'createSnapshotRequestLabels' smart constructor.
newtype CreateSnapshotRequestLabels =
  CreateSnapshotRequestLabels'
    { _csrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateSnapshotRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrlAddtional'
createSnapshotRequestLabels
    :: HashMap Text Text -- ^ 'csrlAddtional'
    -> CreateSnapshotRequestLabels
createSnapshotRequestLabels pCsrlAddtional_ =
  CreateSnapshotRequestLabels' {_csrlAddtional = _Coerce # pCsrlAddtional_}


csrlAddtional :: Lens' CreateSnapshotRequestLabels (HashMap Text Text)
csrlAddtional
  = lens _csrlAddtional
      (\ s a -> s{_csrlAddtional = a})
      . _Coerce

instance FromJSON CreateSnapshotRequestLabels where
        parseJSON
          = withObject "CreateSnapshotRequestLabels"
              (\ o ->
                 CreateSnapshotRequestLabels' <$> (parseJSONObject o))

instance ToJSON CreateSnapshotRequestLabels where
        toJSON = toJSON . _csrlAddtional

-- | Request for the UpdateSnapshot method.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
--
-- /See:/ 'updateSnapshotRequest' smart constructor.
data UpdateSnapshotRequest =
  UpdateSnapshotRequest'
    { _usrSnapshot   :: !(Maybe Snapshot)
    , _usrUpdateMask :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateSnapshotRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrSnapshot'
--
-- * 'usrUpdateMask'
updateSnapshotRequest
    :: UpdateSnapshotRequest
updateSnapshotRequest =
  UpdateSnapshotRequest' {_usrSnapshot = Nothing, _usrUpdateMask = Nothing}


-- | The updated snapshot object.
usrSnapshot :: Lens' UpdateSnapshotRequest (Maybe Snapshot)
usrSnapshot
  = lens _usrSnapshot (\ s a -> s{_usrSnapshot = a})

-- | Indicates which fields in the provided snapshot to update. Must be
-- specified and non-empty.
usrUpdateMask :: Lens' UpdateSnapshotRequest (Maybe GFieldMask)
usrUpdateMask
  = lens _usrUpdateMask
      (\ s a -> s{_usrUpdateMask = a})

instance FromJSON UpdateSnapshotRequest where
        parseJSON
          = withObject "UpdateSnapshotRequest"
              (\ o ->
                 UpdateSnapshotRequest' <$>
                   (o .:? "snapshot") <*> (o .:? "updateMask"))

instance ToJSON UpdateSnapshotRequest where
        toJSON UpdateSnapshotRequest'{..}
          = object
              (catMaybes
                 [("snapshot" .=) <$> _usrSnapshot,
                  ("updateMask" .=) <$> _usrUpdateMask])

-- | Request for the \`Pull\` method.
--
-- /See:/ 'pullRequest' smart constructor.
data PullRequest =
  PullRequest'
    { _prMaxMessages       :: !(Maybe (Textual Int32))
    , _prReturnImmediately :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  PullRequest' {_prMaxMessages = Nothing, _prReturnImmediately = Nothing}


-- | The maximum number of messages returned for this request. The Pub\/Sub
-- system may return fewer than the number specified.
prMaxMessages :: Lens' PullRequest (Maybe Int32)
prMaxMessages
  = lens _prMaxMessages
      (\ s a -> s{_prMaxMessages = a})
      . mapping _Coerce

-- | If this field set to true, the system will respond immediately even if
-- it there are no messages available to return in the \`Pull\` response.
-- Otherwise, the system may wait (for a bounded amount of time) until at
-- least one message is available, rather than returning no messages.
prReturnImmediately :: Lens' PullRequest (Maybe Bool)
prReturnImmediately
  = lens _prReturnImmediately
      (\ s a -> s{_prReturnImmediately = a})

instance FromJSON PullRequest where
        parseJSON
          = withObject "PullRequest"
              (\ o ->
                 PullRequest' <$>
                   (o .:? "maxMessages") <*>
                     (o .:? "returnImmediately"))

instance ToJSON PullRequest where
        toJSON PullRequest'{..}
          = object
              (catMaybes
                 [("maxMessages" .=) <$> _prMaxMessages,
                  ("returnImmediately" .=) <$> _prReturnImmediately])

-- | Optional attributes for this message.
--
-- /See:/ 'pubsubMessageAttributes' smart constructor.
newtype PubsubMessageAttributes =
  PubsubMessageAttributes'
    { _pmaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubMessageAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmaAddtional'
pubsubMessageAttributes
    :: HashMap Text Text -- ^ 'pmaAddtional'
    -> PubsubMessageAttributes
pubsubMessageAttributes pPmaAddtional_ =
  PubsubMessageAttributes' {_pmaAddtional = _Coerce # pPmaAddtional_}


pmaAddtional :: Lens' PubsubMessageAttributes (HashMap Text Text)
pmaAddtional
  = lens _pmaAddtional (\ s a -> s{_pmaAddtional = a})
      . _Coerce

instance FromJSON PubsubMessageAttributes where
        parseJSON
          = withObject "PubsubMessageAttributes"
              (\ o ->
                 PubsubMessageAttributes' <$> (parseJSONObject o))

instance ToJSON PubsubMessageAttributes where
        toJSON = toJSON . _pmaAddtional

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
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
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Response for the \`Publish\` method.
--
-- /See:/ 'publishResponse' smart constructor.
newtype PublishResponse =
  PublishResponse'
    { _prMessageIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublishResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prMessageIds'
publishResponse
    :: PublishResponse
publishResponse = PublishResponse' {_prMessageIds = Nothing}


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
                 PublishResponse' <$> (o .:? "messageIds" .!= mempty))

instance ToJSON PublishResponse where
        toJSON PublishResponse'{..}
          = object
              (catMaybes [("messageIds" .=) <$> _prMessageIds])

-- | Request for the Publish method.
--
-- /See:/ 'publishRequest' smart constructor.
newtype PublishRequest =
  PublishRequest'
    { _prMessages :: Maybe [PubsubMessage]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublishRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prMessages'
publishRequest
    :: PublishRequest
publishRequest = PublishRequest' {_prMessages = Nothing}


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
                 PublishRequest' <$> (o .:? "messages" .!= mempty))

instance ToJSON PublishRequest where
        toJSON PublishRequest'{..}
          = object
              (catMaybes [("messages" .=) <$> _prMessages])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


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
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag     :: !(Maybe Bytes)
    , _pVersion  :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
policy = Policy' {_pEtag = Nothing, _pVersion = Nothing, _pBindings = Nothing}


-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Response for the \`Seek\` method (this response is empty).
--
-- /See:/ 'seekResponse' smart constructor.
data SeekResponse =
  SeekResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeekResponse' with the minimum fields required to make a request.
--
seekResponse
    :: SeekResponse
seekResponse = SeekResponse'


instance FromJSON SeekResponse where
        parseJSON
          = withObject "SeekResponse"
              (\ o -> pure SeekResponse')

instance ToJSON SeekResponse where
        toJSON = const emptyObject

-- | A policy that specifies the conditions for resource expiration (i.e.,
-- automatic resource deletion).
--
-- /See:/ 'expirationPolicy' smart constructor.
newtype ExpirationPolicy =
  ExpirationPolicy'
    { _epTtl :: Maybe GDuration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExpirationPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epTtl'
expirationPolicy
    :: ExpirationPolicy
expirationPolicy = ExpirationPolicy' {_epTtl = Nothing}


-- | Specifies the \"time-to-live\" duration for an associated resource. The
-- resource expires if it is not active for a period of \`ttl\`. The
-- definition of \"activity\" depends on the type of the associated
-- resource. The minimum and maximum allowed values for \`ttl\` depend on
-- the type of the associated resource, as well. If \`ttl\` is not set, the
-- associated resource never expires.
epTtl :: Lens' ExpirationPolicy (Maybe Scientific)
epTtl
  = lens _epTtl (\ s a -> s{_epTtl = a}) .
      mapping _GDuration

instance FromJSON ExpirationPolicy where
        parseJSON
          = withObject "ExpirationPolicy"
              (\ o -> ExpirationPolicy' <$> (o .:? "ttl"))

instance ToJSON ExpirationPolicy where
        toJSON ExpirationPolicy'{..}
          = object (catMaybes [("ttl" .=) <$> _epTtl])

-- | Endpoint configuration attributes. Every endpoint has a set of API
-- supported attributes that can be used to control different aspects of
-- the message delivery. The currently supported attribute is
-- \`x-goog-version\`, which you can use to change the format of the pushed
-- message. This attribute indicates the version of the data expected by
-- the endpoint. This controls the shape of the pushed message (i.e., its
-- fields and metadata). The endpoint version is based on the version of
-- the Pub\/Sub API. If not present during the \`CreateSubscription\` call,
-- it will default to the version of the API used to make such call. If not
-- present during a \`ModifyPushConfig\` call, its value will not be
-- changed. \`GetSubscription\` calls will always return a valid version,
-- even if the subscription was created without this attribute. The
-- possible values for this attribute are: * \`v1beta1\`: uses the push
-- format defined in the v1beta1 Pub\/Sub API. * \`v1\` or \`v1beta2\`:
-- uses the push format defined in the v1 Pub\/Sub API.
--
-- /See:/ 'pushConfigAttributes' smart constructor.
newtype PushConfigAttributes =
  PushConfigAttributes'
    { _pcaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PushConfigAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcaAddtional'
pushConfigAttributes
    :: HashMap Text Text -- ^ 'pcaAddtional'
    -> PushConfigAttributes
pushConfigAttributes pPcaAddtional_ =
  PushConfigAttributes' {_pcaAddtional = _Coerce # pPcaAddtional_}


pcaAddtional :: Lens' PushConfigAttributes (HashMap Text Text)
pcaAddtional
  = lens _pcaAddtional (\ s a -> s{_pcaAddtional = a})
      . _Coerce

instance FromJSON PushConfigAttributes where
        parseJSON
          = withObject "PushConfigAttributes"
              (\ o ->
                 PushConfigAttributes' <$> (parseJSONObject o))

instance ToJSON PushConfigAttributes where
        toJSON = toJSON . _pcaAddtional

-- | A subscription resource.
--
-- /See:/ 'subscription' smart constructor.
data Subscription =
  Subscription'
    { _subPushConfig               :: !(Maybe PushConfig)
    , _subMessageRetentionDuration :: !(Maybe GDuration)
    , _subTopic                    :: !(Maybe Text)
    , _subName                     :: !(Maybe Text)
    , _subLabels                   :: !(Maybe SubscriptionLabels)
    , _subRetainAckedMessages      :: !(Maybe Bool)
    , _subAckDeadlineSeconds       :: !(Maybe (Textual Int32))
    , _subExpirationPolicy         :: !(Maybe ExpirationPolicy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subPushConfig'
--
-- * 'subMessageRetentionDuration'
--
-- * 'subTopic'
--
-- * 'subName'
--
-- * 'subLabels'
--
-- * 'subRetainAckedMessages'
--
-- * 'subAckDeadlineSeconds'
--
-- * 'subExpirationPolicy'
subscription
    :: Subscription
subscription =
  Subscription'
    { _subPushConfig = Nothing
    , _subMessageRetentionDuration = Nothing
    , _subTopic = Nothing
    , _subName = Nothing
    , _subLabels = Nothing
    , _subRetainAckedMessages = Nothing
    , _subAckDeadlineSeconds = Nothing
    , _subExpirationPolicy = Nothing
    }


-- | If push delivery is used with this subscription, this field is used to
-- configure it. An empty \`pushConfig\` signifies that the subscriber will
-- pull and ack messages using API methods.
subPushConfig :: Lens' Subscription (Maybe PushConfig)
subPushConfig
  = lens _subPushConfig
      (\ s a -> s{_subPushConfig = a})

-- | How long to retain unacknowledged messages in the subscription\'s
-- backlog, from the moment a message is published. If
-- \`retain_acked_messages\` is true, then this also configures the
-- retention of acknowledged messages, and thus configures how far back in
-- time a \`Seek\` can be done. Defaults to 7 days. Cannot be more than 7
-- days or less than 10 minutes.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
subMessageRetentionDuration :: Lens' Subscription (Maybe Scientific)
subMessageRetentionDuration
  = lens _subMessageRetentionDuration
      (\ s a -> s{_subMessageRetentionDuration = a})
      . mapping _GDuration

-- | The name of the topic from which this subscription is receiving
-- messages. Format is \`projects\/{project}\/topics\/{topic}\`. The value
-- of this field will be \`_deleted-topic_\` if the topic has been deleted.
subTopic :: Lens' Subscription (Maybe Text)
subTopic = lens _subTopic (\ s a -> s{_subTopic = a})

-- | The name of the subscription. It must have the format
-- \`\"projects\/{project}\/subscriptions\/{subscription}\"\`.
-- \`{subscription}\` must start with a letter, and contain only letters
-- (\`[A-Za-z]\`), numbers (\`[0-9]\`), dashes (\`-\`), underscores
-- (\`_\`), periods (\`.\`), tildes (\`~\`), plus (\`+\`) or percent signs
-- (\`%\`). It must be between 3 and 255 characters in length, and it must
-- not start with \`\"goog\"\`.
subName :: Lens' Subscription (Maybe Text)
subName = lens _subName (\ s a -> s{_subName = a})

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
subLabels :: Lens' Subscription (Maybe SubscriptionLabels)
subLabels
  = lens _subLabels (\ s a -> s{_subLabels = a})

-- | Indicates whether to retain acknowledged messages. If true, then
-- messages are not expunged from the subscription\'s backlog, even if they
-- are acknowledged, until they fall out of the
-- \`message_retention_duration\` window. This must be true if you would
-- like to
-- <https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time Seek to a timestamp>.
-- __BETA:__ This feature is part of a beta release. This API might be
-- changed in backward-incompatible ways and is not recommended for
-- production use. It is not subject to any SLA or deprecation policy.
subRetainAckedMessages :: Lens' Subscription (Maybe Bool)
subRetainAckedMessages
  = lens _subRetainAckedMessages
      (\ s a -> s{_subRetainAckedMessages = a})

-- | The approximate amount of time (on a best-effort basis) Pub\/Sub waits
-- for the subscriber to acknowledge receipt before resending the message.
-- In the interval after the message is delivered and before it is
-- acknowledged, it is considered to be /outstanding/. During that time
-- period, the message will not be redelivered (on a best-effort basis).
-- For pull subscriptions, this value is used as the initial value for the
-- ack deadline. To override this value for a given message, call
-- \`ModifyAckDeadline\` with the corresponding \`ack_id\` if using
-- non-streaming pull or send the \`ack_id\` in a
-- \`StreamingModifyAckDeadlineRequest\` if using streaming pull. The
-- minimum custom deadline you can specify is 10 seconds. The maximum
-- custom deadline you can specify is 600 seconds (10 minutes). If this
-- parameter is 0, a default value of 10 seconds is used. For push
-- delivery, this value is also used to set the request timeout for the
-- call to the push endpoint. If the subscriber never acknowledges the
-- message, the Pub\/Sub system will eventually redeliver the message.
subAckDeadlineSeconds :: Lens' Subscription (Maybe Int32)
subAckDeadlineSeconds
  = lens _subAckDeadlineSeconds
      (\ s a -> s{_subAckDeadlineSeconds = a})
      . mapping _Coerce

-- | A policy that specifies the conditions for this subscription\'s
-- expiration. A subscription is considered active as long as any connected
-- subscriber is successfully consuming messages from the subscription or
-- is issuing operations on the subscription. If \`expiration_policy\` is
-- not set, a *default policy* with \`ttl\` of 31 days will be used. The
-- minimum allowed value for \`expiration_policy.ttl\` is 1 day. __BETA:__
-- This feature is part of a beta release. This API might be changed in
-- backward-incompatible ways and is not recommended for production use. It
-- is not subject to any SLA or deprecation policy.
subExpirationPolicy :: Lens' Subscription (Maybe ExpirationPolicy)
subExpirationPolicy
  = lens _subExpirationPolicy
      (\ s a -> s{_subExpirationPolicy = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription' <$>
                   (o .:? "pushConfig") <*>
                     (o .:? "messageRetentionDuration")
                     <*> (o .:? "topic")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "retainAckedMessages")
                     <*> (o .:? "ackDeadlineSeconds")
                     <*> (o .:? "expirationPolicy"))

instance ToJSON Subscription where
        toJSON Subscription'{..}
          = object
              (catMaybes
                 [("pushConfig" .=) <$> _subPushConfig,
                  ("messageRetentionDuration" .=) <$>
                    _subMessageRetentionDuration,
                  ("topic" .=) <$> _subTopic, ("name" .=) <$> _subName,
                  ("labels" .=) <$> _subLabels,
                  ("retainAckedMessages" .=) <$>
                    _subRetainAckedMessages,
                  ("ackDeadlineSeconds" .=) <$> _subAckDeadlineSeconds,
                  ("expirationPolicy" .=) <$> _subExpirationPolicy])

-- | Request for the UpdateSubscription method.
--
-- /See:/ 'updateSubscriptionRequest' smart constructor.
data UpdateSubscriptionRequest =
  UpdateSubscriptionRequest'
    { _uUpdateMask   :: !(Maybe GFieldMask)
    , _uSubscription :: !(Maybe Subscription)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateSubscriptionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uUpdateMask'
--
-- * 'uSubscription'
updateSubscriptionRequest
    :: UpdateSubscriptionRequest
updateSubscriptionRequest =
  UpdateSubscriptionRequest' {_uUpdateMask = Nothing, _uSubscription = Nothing}


-- | Indicates which fields in the provided subscription to update. Must be
-- specified and non-empty.
uUpdateMask :: Lens' UpdateSubscriptionRequest (Maybe GFieldMask)
uUpdateMask
  = lens _uUpdateMask (\ s a -> s{_uUpdateMask = a})

-- | The updated subscription object.
uSubscription :: Lens' UpdateSubscriptionRequest (Maybe Subscription)
uSubscription
  = lens _uSubscription
      (\ s a -> s{_uSubscription = a})

instance FromJSON UpdateSubscriptionRequest where
        parseJSON
          = withObject "UpdateSubscriptionRequest"
              (\ o ->
                 UpdateSubscriptionRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "subscription"))

instance ToJSON UpdateSubscriptionRequest where
        toJSON UpdateSubscriptionRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _uUpdateMask,
                  ("subscription" .=) <$> _uSubscription])

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
--
-- /See:/ 'subscriptionLabels' smart constructor.
newtype SubscriptionLabels =
  SubscriptionLabels'
    { _slAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slAddtional'
subscriptionLabels
    :: HashMap Text Text -- ^ 'slAddtional'
    -> SubscriptionLabels
subscriptionLabels pSlAddtional_ =
  SubscriptionLabels' {_slAddtional = _Coerce # pSlAddtional_}


slAddtional :: Lens' SubscriptionLabels (HashMap Text Text)
slAddtional
  = lens _slAddtional (\ s a -> s{_slAddtional = a}) .
      _Coerce

instance FromJSON SubscriptionLabels where
        parseJSON
          = withObject "SubscriptionLabels"
              (\ o -> SubscriptionLabels' <$> (parseJSONObject o))

instance ToJSON SubscriptionLabels where
        toJSON = toJSON . _slAddtional

-- | See
-- <https://cloud.google.com/pubsub/docs/labels Creating and managing labels>.
--
-- /See:/ 'snapshotLabels' smart constructor.
newtype SnapshotLabels =
  SnapshotLabels'
    { _sAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAddtional'
snapshotLabels
    :: HashMap Text Text -- ^ 'sAddtional'
    -> SnapshotLabels
snapshotLabels pSAddtional_ =
  SnapshotLabels' {_sAddtional = _Coerce # pSAddtional_}


sAddtional :: Lens' SnapshotLabels (HashMap Text Text)
sAddtional
  = lens _sAddtional (\ s a -> s{_sAddtional = a}) .
      _Coerce

instance FromJSON SnapshotLabels where
        parseJSON
          = withObject "SnapshotLabels"
              (\ o -> SnapshotLabels' <$> (parseJSONObject o))

instance ToJSON SnapshotLabels where
        toJSON = toJSON . _sAddtional

-- | Response for the \`ListSubscriptions\` method.
--
-- /See:/ 'listSubscriptionsResponse' smart constructor.
data ListSubscriptionsResponse =
  ListSubscriptionsResponse'
    { _lisNextPageToken :: !(Maybe Text)
    , _lisSubscriptions :: !(Maybe [Subscription])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisNextPageToken'
--
-- * 'lisSubscriptions'
listSubscriptionsResponse
    :: ListSubscriptionsResponse
listSubscriptionsResponse =
  ListSubscriptionsResponse'
    {_lisNextPageToken = Nothing, _lisSubscriptions = Nothing}


-- | If not empty, indicates that there may be more subscriptions that match
-- the request; this value should be passed in a new
-- \`ListSubscriptionsRequest\` to get more subscriptions.
lisNextPageToken :: Lens' ListSubscriptionsResponse (Maybe Text)
lisNextPageToken
  = lens _lisNextPageToken
      (\ s a -> s{_lisNextPageToken = a})

-- | The subscriptions that match the request.
lisSubscriptions :: Lens' ListSubscriptionsResponse [Subscription]
lisSubscriptions
  = lens _lisSubscriptions
      (\ s a -> s{_lisSubscriptions = a})
      . _Default
      . _Coerce

instance FromJSON ListSubscriptionsResponse where
        parseJSON
          = withObject "ListSubscriptionsResponse"
              (\ o ->
                 ListSubscriptionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "subscriptions" .!= mempty))

instance ToJSON ListSubscriptionsResponse where
        toJSON ListSubscriptionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lisNextPageToken,
                  ("subscriptions" .=) <$> _lisSubscriptions])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | Request for the UpdateTopic method.
--
-- /See:/ 'updateTopicRequest' smart constructor.
data UpdateTopicRequest =
  UpdateTopicRequest'
    { _utrUpdateMask :: !(Maybe GFieldMask)
    , _utrTopic      :: !(Maybe Topic)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateTopicRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrUpdateMask'
--
-- * 'utrTopic'
updateTopicRequest
    :: UpdateTopicRequest
updateTopicRequest =
  UpdateTopicRequest' {_utrUpdateMask = Nothing, _utrTopic = Nothing}


-- | Indicates which fields in the provided topic to update. Must be
-- specified and non-empty. Note that if \`update_mask\` contains
-- \"message_storage_policy\" then the new value will be determined based
-- on the policy configured at the project or organization level. The
-- \`message_storage_policy\` must not be set in the \`topic\` provided
-- above.
utrUpdateMask :: Lens' UpdateTopicRequest (Maybe GFieldMask)
utrUpdateMask
  = lens _utrUpdateMask
      (\ s a -> s{_utrUpdateMask = a})

-- | The updated topic object.
utrTopic :: Lens' UpdateTopicRequest (Maybe Topic)
utrTopic = lens _utrTopic (\ s a -> s{_utrTopic = a})

instance FromJSON UpdateTopicRequest where
        parseJSON
          = withObject "UpdateTopicRequest"
              (\ o ->
                 UpdateTopicRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "topic"))

instance ToJSON UpdateTopicRequest where
        toJSON UpdateTopicRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _utrUpdateMask,
                  ("topic" .=) <$> _utrTopic])

-- | Request for the Acknowledge method.
--
-- /See:/ 'acknowledgeRequest' smart constructor.
newtype AcknowledgeRequest =
  AcknowledgeRequest'
    { _arAckIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arAckIds'
acknowledgeRequest
    :: AcknowledgeRequest
acknowledgeRequest = AcknowledgeRequest' {_arAckIds = Nothing}


-- | The acknowledgment ID for the messages being acknowledged that was
-- returned by the Pub\/Sub system in the \`Pull\` response. Must not be
-- empty.
arAckIds :: Lens' AcknowledgeRequest [Text]
arAckIds
  = lens _arAckIds (\ s a -> s{_arAckIds = a}) .
      _Default
      . _Coerce

instance FromJSON AcknowledgeRequest where
        parseJSON
          = withObject "AcknowledgeRequest"
              (\ o ->
                 AcknowledgeRequest' <$> (o .:? "ackIds" .!= mempty))

instance ToJSON AcknowledgeRequest where
        toJSON AcknowledgeRequest'{..}
          = object (catMaybes [("ackIds" .=) <$> _arAckIds])
