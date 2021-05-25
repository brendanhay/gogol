{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTrace.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTrace.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Optional. Distinguishes between spans generated in a particular context.
-- For example, two spans with the same name may be distinguished using
-- \`CLIENT\` (caller) and \`SERVER\` (callee) to identify an RPC call.
data SpanSpanKind
    = SpanKindUnspecified
      -- ^ @SPAN_KIND_UNSPECIFIED@
      -- Unspecified. Do NOT use as default. Implementations MAY assume
      -- SpanKind.INTERNAL to be default.
    | Internal
      -- ^ @INTERNAL@
      -- Indicates that the span is used internally. Default value.
    | Server
      -- ^ @SERVER@
      -- Indicates that the span covers server-side handling of an RPC or other
      -- remote network request.
    | Client
      -- ^ @CLIENT@
      -- Indicates that the span covers the client-side wrapper around an RPC or
      -- other remote request.
    | Producer
      -- ^ @PRODUCER@
      -- Indicates that the span describes producer sending a message to a
      -- broker. Unlike client and server, there is no direct critical path
      -- latency relationship between producer and consumer spans (e.g.
      -- publishing a message to a pubsub service).
    | Consumer
      -- ^ @CONSUMER@
      -- Indicates that the span describes consumer receiving a message from a
      -- broker. Unlike client and server, there is no direct critical path
      -- latency relationship between producer and consumer spans (e.g. receiving
      -- a message from a pubsub service subscription).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpanSpanKind

instance FromHttpApiData SpanSpanKind where
    parseQueryParam = \case
        "SPAN_KIND_UNSPECIFIED" -> Right SpanKindUnspecified
        "INTERNAL" -> Right Internal
        "SERVER" -> Right Server
        "CLIENT" -> Right Client
        "PRODUCER" -> Right Producer
        "CONSUMER" -> Right Consumer
        x -> Left ("Unable to parse SpanSpanKind from: " <> x)

instance ToHttpApiData SpanSpanKind where
    toQueryParam = \case
        SpanKindUnspecified -> "SPAN_KIND_UNSPECIFIED"
        Internal -> "INTERNAL"
        Server -> "SERVER"
        Client -> "CLIENT"
        Producer -> "PRODUCER"
        Consumer -> "CONSUMER"

instance FromJSON SpanSpanKind where
    parseJSON = parseJSONText "SpanSpanKind"

instance ToJSON SpanSpanKind where
    toJSON = toJSONText

-- | Type of MessageEvent. Indicates whether the message was sent or
-- received.
data MessageEventType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unknown event type.
    | Sent
      -- ^ @SENT@
      -- Indicates a sent message.
    | Received
      -- ^ @RECEIVED@
      -- Indicates a received message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MessageEventType

instance FromHttpApiData MessageEventType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "SENT" -> Right Sent
        "RECEIVED" -> Right Received
        x -> Left ("Unable to parse MessageEventType from: " <> x)

instance ToHttpApiData MessageEventType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Sent -> "SENT"
        Received -> "RECEIVED"

instance FromJSON MessageEventType where
    parseJSON = parseJSONText "MessageEventType"

instance ToJSON MessageEventType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The relationship of the current span relative to the linked span.
data LinkType
    = LTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The relationship of the two spans is unknown.
    | LTChildLinkedSpan
      -- ^ @CHILD_LINKED_SPAN@
      -- The linked span is a child of the current span.
    | LTParentLinkedSpan
      -- ^ @PARENT_LINKED_SPAN@
      -- The linked span is a parent of the current span.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LinkType

instance FromHttpApiData LinkType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right LTTypeUnspecified
        "CHILD_LINKED_SPAN" -> Right LTChildLinkedSpan
        "PARENT_LINKED_SPAN" -> Right LTParentLinkedSpan
        x -> Left ("Unable to parse LinkType from: " <> x)

instance ToHttpApiData LinkType where
    toQueryParam = \case
        LTTypeUnspecified -> "TYPE_UNSPECIFIED"
        LTChildLinkedSpan -> "CHILD_LINKED_SPAN"
        LTParentLinkedSpan -> "PARENT_LINKED_SPAN"

instance FromJSON LinkType where
    parseJSON = parseJSONText "LinkType"

instance ToJSON LinkType where
    toJSON = toJSONText
