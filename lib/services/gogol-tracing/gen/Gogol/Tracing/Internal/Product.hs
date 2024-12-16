{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Tracing.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Tracing.Internal.Product
  (

    -- * Annotation
    Annotation (..),
    newAnnotation,

    -- * AttributeValue
    AttributeValue (..),
    newAttributeValue,

    -- * Attributes
    Attributes (..),
    newAttributes,

    -- * Attributes_AttributeMap
    Attributes_AttributeMap (..),
    newAttributes_AttributeMap,

    -- * BatchWriteSpansRequest
    BatchWriteSpansRequest (..),
    newBatchWriteSpansRequest,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Link
    Link (..),
    newLink,

    -- * Links
    Links (..),
    newLinks,

    -- * ListSpansResponse
    ListSpansResponse (..),
    newListSpansResponse,

    -- * ListTracesResponse
    ListTracesResponse (..),
    newListTracesResponse,

    -- * Module
    Module (..),
    newModule,

    -- * NetworkEvent
    NetworkEvent (..),
    newNetworkEvent,

    -- * Span
    Span (..),
    newSpan,

    -- * StackFrame
    StackFrame (..),
    newStackFrame,

    -- * StackFrames
    StackFrames (..),
    newStackFrames,

    -- * StackTrace
    StackTrace (..),
    newStackTrace,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TimeEvent
    TimeEvent (..),
    newTimeEvent,

    -- * TimeEvents
    TimeEvents (..),
    newTimeEvents,

    -- * Trace
    Trace (..),
    newTrace,

    -- * TruncatableString
    TruncatableString (..),
    newTruncatableString,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Tracing.Internal.Sum

-- | Text annotation with a set of attributes. A maximum of 32 annotations are allowed per Span.
--
-- /See:/ 'newAnnotation' smart constructor.
data Annotation = Annotation
    {
      -- | A set of attributes on the annotation. A maximum of 4 attributes are allowed per Annotation.
      attributes :: (Core.Maybe Attributes)
      -- | A user-supplied message describing the event. The maximum length for the description is 256 bytes.
    , description :: (Core.Maybe TruncatableString)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
newAnnotation 
    ::  Annotation
newAnnotation =
  Annotation {attributes = Core.Nothing, description = Core.Nothing}

instance Core.FromJSON Annotation where
        parseJSON
          = Core.withObject "Annotation"
              (\ o ->
                 Annotation Core.<$>
                   (o Core..:? "attributes") Core.<*>
                     (o Core..:? "description"))

instance Core.ToJSON Annotation where
        toJSON Annotation{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("description" Core..=) Core.<$> description])


-- | The allowed types for the value side of an attribute key:value pair.
--
-- /See:/ 'newAttributeValue' smart constructor.
data AttributeValue = AttributeValue
    {
      -- | A boolean value.
      boolValue :: (Core.Maybe Core.Bool)
      -- | An integer value.
    , intValue :: (Core.Maybe Core.Int64)
      -- | A string value (up to 256 bytes).
    , stringValue :: (Core.Maybe TruncatableString)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeValue' with the minimum fields required to make a request.
newAttributeValue 
    ::  AttributeValue
newAttributeValue =
  AttributeValue
    { boolValue = Core.Nothing
    , intValue = Core.Nothing
    , stringValue = Core.Nothing
    }

instance Core.FromJSON AttributeValue where
        parseJSON
          = Core.withObject "AttributeValue"
              (\ o ->
                 AttributeValue Core.<$>
                   (o Core..:? "boolValue") Core.<*>
                     (o Core..:? "intValue" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "stringValue"))

instance Core.ToJSON AttributeValue where
        toJSON AttributeValue{..}
          = Core.object
              (Core.catMaybes
                 [("boolValue" Core..=) Core.<$> boolValue,
                  ("intValue" Core..=) Core.. Core.AsText Core.<$>
                    intValue,
                  ("stringValue" Core..=) Core.<$> stringValue])


-- | Attributes of a span with a key:value format.
--
-- /See:/ 'newAttributes' smart constructor.
data Attributes = Attributes
    {
      -- | The maximum key length is 128 bytes (attributes are dropped if the key size is larger than the maximum allowed). The value can be a string (up to 256 bytes), integer, or boolean (true\/false). Some common pair examples:
      -- 
      -- > "/instance_id": "my-instance"
      -- > "/zone": "us-central1-a"
      -- > "/grpc/peer_address": "ip:port" (dns, etc.)
      -- > "/grpc/deadline": "Duration"
      -- > "/http/user_agent"
      -- > "/http/request_bytes": 300
      -- > "/http/response_bytes": 1200
      -- > "/http/url": google.com/apis
      -- > "abc.com/myattribute": true
      attributeMap :: (Core.Maybe Attributes_AttributeMap)
      -- | The number of dropped attributes after the maximum size was enforced. If 0 then no attributes were dropped.
    , droppedAttributesCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attributes' with the minimum fields required to make a request.
newAttributes 
    ::  Attributes
newAttributes =
  Attributes
    {attributeMap = Core.Nothing, droppedAttributesCount = Core.Nothing}

instance Core.FromJSON Attributes where
        parseJSON
          = Core.withObject "Attributes"
              (\ o ->
                 Attributes Core.<$>
                   (o Core..:? "attributeMap") Core.<*>
                     (o Core..:? "droppedAttributesCount"))

instance Core.ToJSON Attributes where
        toJSON Attributes{..}
          = Core.object
              (Core.catMaybes
                 [("attributeMap" Core..=) Core.<$> attributeMap,
                  ("droppedAttributesCount" Core..=) Core.<$>
                    droppedAttributesCount])


-- | The maximum key length is 128 bytes (attributes are dropped if the key size is larger than the maximum allowed). The value can be a string (up to 256 bytes), integer, or boolean (true\/false). Some common pair examples:
-- 
-- > "/instance_id": "my-instance"
-- > "/zone": "us-central1-a"
-- > "/grpc/peer_address": "ip:port" (dns, etc.)
-- > "/grpc/deadline": "Duration"
-- > "/http/user_agent"
-- > "/http/request_bytes": 300
-- > "/http/response_bytes": 1200
-- > "/http/url": google.com/apis
-- > "abc.com/myattribute": true
--
-- /See:/ 'newAttributes_AttributeMap' smart constructor.
newtype Attributes_AttributeMap = Attributes_AttributeMap
    {
      -- | 
      additional :: (Core.HashMap Core.Text AttributeValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attributes_AttributeMap' with the minimum fields required to make a request.
newAttributes_AttributeMap 
    ::  Core.HashMap Core.Text AttributeValue
       -- ^  See 'additional'.
    -> Attributes_AttributeMap
newAttributes_AttributeMap additional =
  Attributes_AttributeMap {additional = additional}

instance Core.FromJSON Attributes_AttributeMap where
        parseJSON
          = Core.withObject "Attributes_AttributeMap"
              (\ o ->
                 Attributes_AttributeMap Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON Attributes_AttributeMap where
        toJSON Attributes_AttributeMap{..}
          = Core.toJSON additional


-- | The request message for the @BatchWriteSpans@ method.
--
-- /See:/ 'newBatchWriteSpansRequest' smart constructor.
newtype BatchWriteSpansRequest = BatchWriteSpansRequest
    {
      -- | A collection of spans.
      spans :: (Core.Maybe [Span])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchWriteSpansRequest' with the minimum fields required to make a request.
newBatchWriteSpansRequest 
    ::  BatchWriteSpansRequest
newBatchWriteSpansRequest = BatchWriteSpansRequest {spans = Core.Nothing}

instance Core.FromJSON BatchWriteSpansRequest where
        parseJSON
          = Core.withObject "BatchWriteSpansRequest"
              (\ o ->
                 BatchWriteSpansRequest Core.<$> (o Core..:? "spans"))

instance Core.ToJSON BatchWriteSpansRequest where
        toJSON BatchWriteSpansRequest{..}
          = Core.object
              (Core.catMaybes [("spans" Core..=) Core.<$> spans])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance:
-- 
-- > service Foo {
-- >   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
-- > }
-- 
-- The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | A pointer from this span to another span in a different @Trace@ within the same service project or within a different service project. Used (for example) in batching operations, where a single batch handler processes multiple requests from different traces or when receives a request from a different service project.
--
-- /See:/ 'newLink' smart constructor.
data Link = Link
    {
      -- | @SPAN_ID@ is a unique identifier for a span within a trace. It is a base16-encoded, case-insensitive string of a 8-bytes array and is required to be 16 char long.
      spanId :: (Core.Maybe Core.Text)
      -- | @TRACE_ID@ is a unique identifier for a trace within a project. It is a base16-encoded, case-insensitive string of a 16-bytes array and is required to be 32 char long.
    , traceId :: (Core.Maybe Core.Text)
      -- | The relationship of the current span relative to the linked span.
    , type' :: (Core.Maybe Link_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
newLink 
    ::  Link
newLink =
  Link {spanId = Core.Nothing, traceId = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Link where
        parseJSON
          = Core.withObject "Link"
              (\ o ->
                 Link Core.<$>
                   (o Core..:? "spanId") Core.<*> (o Core..:? "traceId")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Link where
        toJSON Link{..}
          = Core.object
              (Core.catMaybes
                 [("spanId" Core..=) Core.<$> spanId,
                  ("traceId" Core..=) Core.<$> traceId,
                  ("type" Core..=) Core.<$> type'])


-- | A collection of links, which are references from this span to a span in the same or different trace.
--
-- /See:/ 'newLinks' smart constructor.
data Links = Links
    {
      -- | The number of dropped links after the maximum size was enforced. If 0 then no links were dropped.
      droppedLinksCount :: (Core.Maybe Core.Int32)
      -- | A collection of links.
    , link :: (Core.Maybe [Link])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Links' with the minimum fields required to make a request.
newLinks 
    ::  Links
newLinks = Links {droppedLinksCount = Core.Nothing, link = Core.Nothing}

instance Core.FromJSON Links where
        parseJSON
          = Core.withObject "Links"
              (\ o ->
                 Links Core.<$>
                   (o Core..:? "droppedLinksCount") Core.<*>
                     (o Core..:? "link"))

instance Core.ToJSON Links where
        toJSON Links{..}
          = Core.object
              (Core.catMaybes
                 [("droppedLinksCount" Core..=) Core.<$>
                    droppedLinksCount,
                  ("link" Core..=) Core.<$> link])


-- | The response message for the @ListSpans@ method.
--
-- /See:/ 'newListSpansResponse' smart constructor.
data ListSpansResponse = ListSpansResponse
    {
      -- | If defined, indicates that there are more spans that match the request. Pass this as the value of @pageToken@ in a subsequent request to retrieve additional spans.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The requested spans if there are any in the specified trace.
    , spans :: (Core.Maybe [Span])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSpansResponse' with the minimum fields required to make a request.
newListSpansResponse 
    ::  ListSpansResponse
newListSpansResponse =
  ListSpansResponse {nextPageToken = Core.Nothing, spans = Core.Nothing}

instance Core.FromJSON ListSpansResponse where
        parseJSON
          = Core.withObject "ListSpansResponse"
              (\ o ->
                 ListSpansResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "spans"))

instance Core.ToJSON ListSpansResponse where
        toJSON ListSpansResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("spans" Core..=) Core.<$> spans])


-- | The response message for the @ListTraces@ method.
--
-- /See:/ 'newListTracesResponse' smart constructor.
data ListTracesResponse = ListTracesResponse
    {
      -- | If defined, indicates that there are more traces that match the request and that this value should be passed to the next request to continue retrieving additional traces.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | List of trace records returned.
    , traces :: (Core.Maybe [Trace])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTracesResponse' with the minimum fields required to make a request.
newListTracesResponse 
    ::  ListTracesResponse
newListTracesResponse =
  ListTracesResponse {nextPageToken = Core.Nothing, traces = Core.Nothing}

instance Core.FromJSON ListTracesResponse where
        parseJSON
          = Core.withObject "ListTracesResponse"
              (\ o ->
                 ListTracesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "traces"))

instance Core.ToJSON ListTracesResponse where
        toJSON ListTracesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("traces" Core..=) Core.<$> traces])


-- | Binary module.
--
-- /See:/ 'newModule' smart constructor.
data Module = Module
    {
      -- | Build_id is a unique identifier for the module, usually a hash of its contents (up to 128 characters).
      buildId :: (Core.Maybe TruncatableString)
      -- | E.g. main binary, kernel modules, and dynamic libraries such as libc.so, sharedlib.so (up to 256 characters).
    , module' :: (Core.Maybe TruncatableString)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Module' with the minimum fields required to make a request.
newModule 
    ::  Module
newModule = Module {buildId = Core.Nothing, module' = Core.Nothing}

instance Core.FromJSON Module where
        parseJSON
          = Core.withObject "Module"
              (\ o ->
                 Module Core.<$>
                   (o Core..:? "buildId") Core.<*>
                     (o Core..:? "module"))

instance Core.ToJSON Module where
        toJSON Module{..}
          = Core.object
              (Core.catMaybes
                 [("buildId" Core..=) Core.<$> buildId,
                  ("module" Core..=) Core.<$> module'])


-- | An event describing an RPC message sent\/received on the network. A maximum of 128 network events are allowed per Span.
--
-- /See:/ 'newNetworkEvent' smart constructor.
data NetworkEvent = NetworkEvent
    {
      -- | An identifier for the message, which must be unique in this span.
      messageId :: (Core.Maybe Core.Word64)
      -- | The number of bytes sent or received.
    , messageSize :: (Core.Maybe Core.Word64)
      -- | If available, this is the kernel time:
      -- 
      -- -   For sent messages, this is the time at which the first bit was sent.
      -- -   For received messages, this is the time at which the last bit was received.
    , time :: (Core.Maybe Core.DateTime)
      -- | Type of NetworkEvent. Indicates whether the RPC message was sent or received.
    , type' :: (Core.Maybe NetworkEvent_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkEvent' with the minimum fields required to make a request.
newNetworkEvent 
    ::  NetworkEvent
newNetworkEvent =
  NetworkEvent
    { messageId = Core.Nothing
    , messageSize = Core.Nothing
    , time = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON NetworkEvent where
        parseJSON
          = Core.withObject "NetworkEvent"
              (\ o ->
                 NetworkEvent Core.<$>
                   (o Core..:? "messageId" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "messageSize" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "time")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON NetworkEvent where
        toJSON NetworkEvent{..}
          = Core.object
              (Core.catMaybes
                 [("messageId" Core..=) Core.. Core.AsText Core.<$>
                    messageId,
                  ("messageSize" Core..=) Core.. Core.AsText Core.<$>
                    messageSize,
                  ("time" Core..=) Core.<$> time,
                  ("type" Core..=) Core.<$> type'])


-- | A span represents a single operation within a trace. Spans can be nested to form a trace tree. Often, a trace contains a root span that describes the end-to-end latency and, optionally, one or more subspans for its sub-operations. (A trace could alternatively contain multiple root spans, or none at all.) Spans do not need to be contiguous. There may be gaps and\/or overlaps between spans in a trace.
--
-- /See:/ 'newSpan' smart constructor.
data Span = Span
    {
      -- | A set of attributes on the span. A maximum of 32 attributes are allowed per Span.
      attributes :: (Core.Maybe Attributes)
      -- | Description of the operation in the span. It is sanitized and displayed in the Stackdriver Trace tool in the {% dynamic print site/values.console/name %}. The display/name may be a method name or some other per-call site name. For the same executable and the same call point, a best practice is to use a consistent operation name, which makes it easier to correlate cross-trace spans. The maximum length for the display/name is 128 bytes.
    , displayName :: (Core.Maybe TruncatableString)
      -- | End time of the span. On the client side, this is the local machine clock time at which the span execution was ended; on the server side, this is the time at which the server application handler stopped running.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | A maximum of 128 links are allowed per Span.
    , links :: (Core.Maybe Links)
      -- | The resource name of Span in the format @projects\/PROJECT_ID\/traces\/TRACE_ID\/spans\/SPAN_ID@. @TRACE_ID@ is a unique identifier for a trace within a project and is a base16-encoded, case-insensitive string and is required to be 32 char long. @SPAN_ID@ is a unique identifier for a span within a trace. It is a base 16-encoded, case-insensitive string of a 8-bytes array and is required to be 16 char long.
    , name :: (Core.Maybe Core.Text)
      -- | ID of parent span which is a base 16-encoded, case-insensitive string of a 8-bytes array and is required to be 16 char long. If this is a root span, the value must be empty.
    , parentSpanId :: (Core.Maybe Core.Text)
      -- | Unique identifier for a span within a trace. It is a base 16-encoded, case-insensitive string of a 8-bytes array and is required.
    , spanId :: (Core.Maybe Core.Text)
      -- | Stack trace captured at the start of the span.
    , stackTrace :: (Core.Maybe StackTrace)
      -- | Start time of the span. On the client side, this is the local machine clock time at which the span execution was started; on the server side, this is the time at which the server application handler started running.
    , startTime :: (Core.Maybe Core.DateTime)
      -- | An optional final status for this span.
    , status :: (Core.Maybe Status)
      -- | A maximum of 32 annotations and 128 network events are allowed per Span.
    , timeEvents :: (Core.Maybe TimeEvents)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Span' with the minimum fields required to make a request.
newSpan 
    ::  Span
newSpan =
  Span
    { attributes = Core.Nothing
    , displayName = Core.Nothing
    , endTime = Core.Nothing
    , links = Core.Nothing
    , name = Core.Nothing
    , parentSpanId = Core.Nothing
    , spanId = Core.Nothing
    , stackTrace = Core.Nothing
    , startTime = Core.Nothing
    , status = Core.Nothing
    , timeEvents = Core.Nothing
    }

instance Core.FromJSON Span where
        parseJSON
          = Core.withObject "Span"
              (\ o ->
                 Span Core.<$>
                   (o Core..:? "attributes") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "links")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "parentSpanId")
                     Core.<*> (o Core..:? "spanId")
                     Core.<*> (o Core..:? "stackTrace")
                     Core.<*> (o Core..:? "startTime")
                     Core.<*> (o Core..:? "status")
                     Core.<*> (o Core..:? "timeEvents"))

instance Core.ToJSON Span where
        toJSON Span{..}
          = Core.object
              (Core.catMaybes
                 [("attributes" Core..=) Core.<$> attributes,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("links" Core..=) Core.<$> links,
                  ("name" Core..=) Core.<$> name,
                  ("parentSpanId" Core..=) Core.<$> parentSpanId,
                  ("spanId" Core..=) Core.<$> spanId,
                  ("stackTrace" Core..=) Core.<$> stackTrace,
                  ("startTime" Core..=) Core.<$> startTime,
                  ("status" Core..=) Core.<$> status,
                  ("timeEvents" Core..=) Core.<$> timeEvents])


-- | Represents a single stack frame in a stack trace.
--
-- /See:/ 'newStackFrame' smart constructor.
data StackFrame = StackFrame
    {
      -- | Column number is important in JavaScript (anonymous functions). May not be available in some languages.
      columnNumber :: (Core.Maybe Core.Int64)
      -- | The filename of the file containing this frame (up to 256 characters).
    , fileName :: (Core.Maybe TruncatableString)
      -- | The fully-qualified name that uniquely identifies this function or method (up to 1024 characters).
    , functionName :: (Core.Maybe TruncatableString)
      -- | Line number of the frame.
    , lineNumber :: (Core.Maybe Core.Int64)
      -- | Binary module the code is loaded from.
    , loadModule :: (Core.Maybe Module)
      -- | Used when the function name is <http://www.avabodh.com/cxxin/namemangling.html mangled>. May be fully-qualified (up to 1024 characters).
    , originalFunctionName :: (Core.Maybe TruncatableString)
      -- | The version of the deployed source code (up to 128 characters).
    , sourceVersion :: (Core.Maybe TruncatableString)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackFrame' with the minimum fields required to make a request.
newStackFrame 
    ::  StackFrame
newStackFrame =
  StackFrame
    { columnNumber = Core.Nothing
    , fileName = Core.Nothing
    , functionName = Core.Nothing
    , lineNumber = Core.Nothing
    , loadModule = Core.Nothing
    , originalFunctionName = Core.Nothing
    , sourceVersion = Core.Nothing
    }

instance Core.FromJSON StackFrame where
        parseJSON
          = Core.withObject "StackFrame"
              (\ o ->
                 StackFrame Core.<$>
                   (o Core..:? "columnNumber" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "fileName")
                     Core.<*> (o Core..:? "functionName")
                     Core.<*>
                     (o Core..:? "lineNumber" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "loadModule")
                     Core.<*> (o Core..:? "originalFunctionName")
                     Core.<*> (o Core..:? "sourceVersion"))

instance Core.ToJSON StackFrame where
        toJSON StackFrame{..}
          = Core.object
              (Core.catMaybes
                 [("columnNumber" Core..=) Core.. Core.AsText Core.<$>
                    columnNumber,
                  ("fileName" Core..=) Core.<$> fileName,
                  ("functionName" Core..=) Core.<$> functionName,
                  ("lineNumber" Core..=) Core.. Core.AsText Core.<$>
                    lineNumber,
                  ("loadModule" Core..=) Core.<$> loadModule,
                  ("originalFunctionName" Core..=) Core.<$>
                    originalFunctionName,
                  ("sourceVersion" Core..=) Core.<$> sourceVersion])


-- | Represents collection of StackFrames that can be truncated.
--
-- /See:/ 'newStackFrames' smart constructor.
data StackFrames = StackFrames
    {
      -- | The number of dropped stack frames after the maximum size was enforced. If 0 then no frames were dropped.
      droppedFramesCount :: (Core.Maybe Core.Int32)
      -- | Stack frames in this stack trace.
    , frame :: (Core.Maybe [StackFrame])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackFrames' with the minimum fields required to make a request.
newStackFrames 
    ::  StackFrames
newStackFrames =
  StackFrames {droppedFramesCount = Core.Nothing, frame = Core.Nothing}

instance Core.FromJSON StackFrames where
        parseJSON
          = Core.withObject "StackFrames"
              (\ o ->
                 StackFrames Core.<$>
                   (o Core..:? "droppedFramesCount") Core.<*>
                     (o Core..:? "frame"))

instance Core.ToJSON StackFrames where
        toJSON StackFrames{..}
          = Core.object
              (Core.catMaybes
                 [("droppedFramesCount" Core..=) Core.<$>
                    droppedFramesCount,
                  ("frame" Core..=) Core.<$> frame])


-- | StackTrace collected in a trace.
--
-- /See:/ 'newStackTrace' smart constructor.
data StackTrace = StackTrace
    {
      -- | Stack frames in this stack trace. A maximum of 128 frames are allowed.
      stackFrames :: (Core.Maybe StackFrames)
      -- | The hash ID is used to conserve network bandwidth for duplicate stack traces within a single trace.
      -- 
      -- Often multiple spans will have identical stack traces. The first occurrence of a stack trace should contain both the @stackFrame@ content and a value in @stackTraceHashId@.
      -- 
      -- Subsequent spans within the same request can refer to that stack trace by only setting @stackTraceHashId@.
    , stackTraceHashId :: (Core.Maybe Core.Word64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackTrace' with the minimum fields required to make a request.
newStackTrace 
    ::  StackTrace
newStackTrace =
  StackTrace {stackFrames = Core.Nothing, stackTraceHashId = Core.Nothing}

instance Core.FromJSON StackTrace where
        parseJSON
          = Core.withObject "StackTrace"
              (\ o ->
                 StackTrace Core.<$>
                   (o Core..:? "stackFrames") Core.<*>
                     (o Core..:? "stackTraceHashId" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON StackTrace where
        toJSON StackTrace{..}
          = Core.object
              (Core.catMaybes
                 [("stackFrames" Core..=) Core.<$> stackFrames,
                  ("stackTraceHashId" Core..=) Core.. Core.AsText
                    Core.<$> stackTraceHashId])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. The error model is designed to be:
-- 
-- -   Simple to use and understand for most users
-- -   Flexible enough to meet unexpected needs
-- 
-- = Overview
-- 
-- The @Status@ message contains three pieces of data: error code, error message, and error details. The error code should be an enum value of google.rpc.Code, but it may accept additional error codes if needed. The error message should be a developer-facing English message that helps developers /understand/ and /resolve/ the error. If a localized user-facing error message is needed, put the localized message in the error details or localize it in the client. The optional error details may contain arbitrary information about the error. There is a predefined set of error detail types in the package @google.rpc@ that can be used for common error conditions.
-- 
-- = Language mapping
-- 
-- The @Status@ message is the logical representation of the error model, but it is not necessarily the actual wire format. When the @Status@ message is exposed in different client libraries and different wire protocols, it can be mapped differently. For example, it will likely be mapped to some exceptions in Java, but more likely mapped to some error codes in C.
-- 
-- = Other uses
-- 
-- The error model and the @Status@ message can be used in a variety of environments, either with or without APIs, to provide a consistent developer experience across different environments.
-- 
-- Example uses of this error model include:
-- 
-- -   Partial errors. If a service needs to return partial errors to the client, it may embed the @Status@ in the normal response to indicate the partial errors.
-- 
-- -   Workflow errors. A typical workflow has multiple steps. Each step may have a @Status@ message for error reporting.
-- 
-- -   Batch operations. If a client uses batch request and batch response, the @Status@ message should be used directly inside batch response, one for each error sub-response.
-- 
-- -   Asynchronous operations. If an API call embeds asynchronous operation results in its response, the status of those operations should be represented directly using the @Status@ message.
-- 
-- -   Logging. If some API errors are stored in logs, the message @Status@ could be used directly after any stripping needed for security\/privacy reasons.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There will be a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | A time-stamped annotation in the Span.
--
-- /See:/ 'newTimeEvent' smart constructor.
data TimeEvent = TimeEvent
    {
      -- | One or more key:value pairs.
      annotation :: (Core.Maybe Annotation)
      -- | An event describing an RPC message sent\/received on the network.
    , networkEvent :: (Core.Maybe NetworkEvent)
      -- | The timestamp indicating the time the event occurred.
    , time :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeEvent' with the minimum fields required to make a request.
newTimeEvent 
    ::  TimeEvent
newTimeEvent =
  TimeEvent
    { annotation = Core.Nothing
    , networkEvent = Core.Nothing
    , time = Core.Nothing
    }

instance Core.FromJSON TimeEvent where
        parseJSON
          = Core.withObject "TimeEvent"
              (\ o ->
                 TimeEvent Core.<$>
                   (o Core..:? "annotation") Core.<*>
                     (o Core..:? "networkEvent")
                     Core.<*> (o Core..:? "time"))

instance Core.ToJSON TimeEvent where
        toJSON TimeEvent{..}
          = Core.object
              (Core.catMaybes
                 [("annotation" Core..=) Core.<$> annotation,
                  ("networkEvent" Core..=) Core.<$> networkEvent,
                  ("time" Core..=) Core.<$> time])


-- | A collection of @TimeEvent@s. A @TimeEvent@ is a time-stamped annotation on the span, consisting of either user-supplied key:value pairs, or details of an RPC message sent\/received on the network.
--
-- /See:/ 'newTimeEvents' smart constructor.
data TimeEvents = TimeEvents
    {
      -- | The number of dropped annotations after the maximum size was enforced. If 0 then no annotations were dropped.
      droppedAnnotationsCount :: (Core.Maybe Core.Int32)
      -- | The number of dropped network events after the maximum size was enforced. If 0 then no annotations were dropped.
    , droppedNetworkEventsCount :: (Core.Maybe Core.Int32)
      -- | A collection of @TimeEvent@s.
    , timeEvent :: (Core.Maybe [TimeEvent])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeEvents' with the minimum fields required to make a request.
newTimeEvents 
    ::  TimeEvents
newTimeEvents =
  TimeEvents
    { droppedAnnotationsCount = Core.Nothing
    , droppedNetworkEventsCount = Core.Nothing
    , timeEvent = Core.Nothing
    }

instance Core.FromJSON TimeEvents where
        parseJSON
          = Core.withObject "TimeEvents"
              (\ o ->
                 TimeEvents Core.<$>
                   (o Core..:? "droppedAnnotationsCount") Core.<*>
                     (o Core..:? "droppedNetworkEventsCount")
                     Core.<*> (o Core..:? "timeEvent"))

instance Core.ToJSON TimeEvents where
        toJSON TimeEvents{..}
          = Core.object
              (Core.catMaybes
                 [("droppedAnnotationsCount" Core..=) Core.<$>
                    droppedAnnotationsCount,
                  ("droppedNetworkEventsCount" Core..=) Core.<$>
                    droppedNetworkEventsCount,
                  ("timeEvent" Core..=) Core.<$> timeEvent])


-- | A trace describes how long it takes for an application to perform some operations. It consists of a set of spans, each representing an operation and including time information and operation details.
--
-- /See:/ 'newTrace' smart constructor.
newtype Trace = Trace
    {
      -- | The resource name of Trace in the format @projects\/PROJECT_ID\/traces\/TRACE_ID@. @TRACE_ID@ is a unique identifier for a trace within a project and is a base16-encoded, case-insensitive string and is required to be 32 char long.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Trace' with the minimum fields required to make a request.
newTrace 
    ::  Trace
newTrace = Trace {name = Core.Nothing}

instance Core.FromJSON Trace where
        parseJSON
          = Core.withObject "Trace"
              (\ o -> Trace Core.<$> (o Core..:? "name"))

instance Core.ToJSON Trace where
        toJSON Trace{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | Represents a string value that might be truncated.
--
-- /See:/ 'newTruncatableString' smart constructor.
data TruncatableString = TruncatableString
    {
      -- | The number of characters truncated from the original string value. If 0 it means that the string value was not truncated.
      truncatedCharacterCount :: (Core.Maybe Core.Int32)
      -- | The truncated string value. E.g. for a string attribute this may have up to 256 bytes.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TruncatableString' with the minimum fields required to make a request.
newTruncatableString 
    ::  TruncatableString
newTruncatableString =
  TruncatableString
    {truncatedCharacterCount = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON TruncatableString where
        parseJSON
          = Core.withObject "TruncatableString"
              (\ o ->
                 TruncatableString Core.<$>
                   (o Core..:? "truncatedCharacterCount") Core.<*>
                     (o Core..:? "value"))

instance Core.ToJSON TruncatableString where
        toJSON TruncatableString{..}
          = Core.object
              (Core.catMaybes
                 [("truncatedCharacterCount" Core..=) Core.<$>
                    truncatedCharacterCount,
                  ("value" Core..=) Core.<$> value])

