{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudTrace.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudTrace.Internal.Product
  ( -- * Annotation
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

    -- * MessageEvent
    MessageEvent (..),
    newMessageEvent,

    -- * Module
    Module (..),
    newModule,

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

    -- * TruncatableString
    TruncatableString (..),
    newTruncatableString,
  )
where

import Gogol.CloudTrace.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Text annotation with a set of attributes.
--
-- /See:/ 'newAnnotation' smart constructor.
data Annotation = Annotation
  { -- | A set of attributes on the annotation. You can have up to 4 attributes per Annotation.
    attributes :: (Core.Maybe Attributes),
    -- | A user-supplied message describing the event. The maximum length for the description is 256 bytes.
    description :: (Core.Maybe TruncatableString)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
newAnnotation ::
  Annotation
newAnnotation =
  Annotation {attributes = Core.Nothing, description = Core.Nothing}

instance Core.FromJSON Annotation where
  parseJSON =
    Core.withObject
      "Annotation"
      ( \o ->
          Annotation
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "description")
      )

instance Core.ToJSON Annotation where
  toJSON Annotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("description" Core..=) Core.<$> description
          ]
      )

-- | The allowed types for @[VALUE]@ in a @[KEY]:[VALUE]@ attribute.
--
-- /See:/ 'newAttributeValue' smart constructor.
data AttributeValue = AttributeValue
  { -- | A Boolean value represented by @true@ or @false@.
    boolValue :: (Core.Maybe Core.Bool),
    -- | A 64-bit signed integer.
    intValue :: (Core.Maybe Core.Int64),
    -- | A string up to 256 bytes long.
    stringValue :: (Core.Maybe TruncatableString)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttributeValue' with the minimum fields required to make a request.
newAttributeValue ::
  AttributeValue
newAttributeValue =
  AttributeValue
    { boolValue = Core.Nothing,
      intValue = Core.Nothing,
      stringValue = Core.Nothing
    }

instance Core.FromJSON AttributeValue where
  parseJSON =
    Core.withObject
      "AttributeValue"
      ( \o ->
          AttributeValue
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "intValue")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON AttributeValue where
  toJSON AttributeValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("intValue" Core..=) Core.. Core.AsText
              Core.<$> intValue,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | A set of attributes as key-value pairs.
--
-- /See:/ 'newAttributes' smart constructor.
data Attributes = Attributes
  { -- | A set of attributes. Each attribute\'s key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the boolean values @true@ or @false@. For example: \"\/instance/id\": { \"string/value\": { \"value\": \"my-instance\" } } \"\/http\/request/bytes\": { \"int/value\": 300 } \"abc.com\/myattribute\": { \"bool_value\": false }
    attributeMap :: (Core.Maybe Attributes_AttributeMap),
    -- | The number of attributes that were discarded. Attributes can be discarded because their keys are too long or because there are too many attributes. If this value is 0 then all attributes are valid.
    droppedAttributesCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attributes' with the minimum fields required to make a request.
newAttributes ::
  Attributes
newAttributes =
  Attributes
    { attributeMap = Core.Nothing,
      droppedAttributesCount = Core.Nothing
    }

instance Core.FromJSON Attributes where
  parseJSON =
    Core.withObject
      "Attributes"
      ( \o ->
          Attributes
            Core.<$> (o Core..:? "attributeMap")
            Core.<*> (o Core..:? "droppedAttributesCount")
      )

instance Core.ToJSON Attributes where
  toJSON Attributes {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeMap" Core..=) Core.<$> attributeMap,
            ("droppedAttributesCount" Core..=)
              Core.<$> droppedAttributesCount
          ]
      )

-- | A set of attributes. Each attribute\'s key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the boolean values @true@ or @false@. For example: \"\/instance/id\": { \"string/value\": { \"value\": \"my-instance\" } } \"\/http\/request/bytes\": { \"int/value\": 300 } \"abc.com\/myattribute\": { \"bool_value\": false }
--
-- /See:/ 'newAttributes_AttributeMap' smart constructor.
newtype Attributes_AttributeMap = Attributes_AttributeMap
  { -- |
    additional :: (Core.HashMap Core.Text AttributeValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attributes_AttributeMap' with the minimum fields required to make a request.
newAttributes_AttributeMap ::
  -- |  See 'additional'.
  Core.HashMap Core.Text AttributeValue ->
  Attributes_AttributeMap
newAttributes_AttributeMap additional =
  Attributes_AttributeMap {additional = additional}

instance Core.FromJSON Attributes_AttributeMap where
  parseJSON =
    Core.withObject
      "Attributes_AttributeMap"
      ( \o ->
          Attributes_AttributeMap
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Attributes_AttributeMap where
  toJSON Attributes_AttributeMap {..} =
    Core.toJSON additional

-- | The request message for the @BatchWriteSpans@ method.
--
-- /See:/ 'newBatchWriteSpansRequest' smart constructor.
newtype BatchWriteSpansRequest = BatchWriteSpansRequest
  { -- | Required. A list of new spans. The span names must not match existing spans, otherwise the results are undefined.
    spans :: (Core.Maybe [Span])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchWriteSpansRequest' with the minimum fields required to make a request.
newBatchWriteSpansRequest ::
  BatchWriteSpansRequest
newBatchWriteSpansRequest = BatchWriteSpansRequest {spans = Core.Nothing}

instance Core.FromJSON BatchWriteSpansRequest where
  parseJSON =
    Core.withObject
      "BatchWriteSpansRequest"
      ( \o ->
          BatchWriteSpansRequest
            Core.<$> (o Core..:? "spans" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchWriteSpansRequest where
  toJSON BatchWriteSpansRequest {..} =
    Core.object
      (Core.catMaybes [("spans" Core..=) Core.<$> spans])

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A pointer from the current span to another span in the same trace or in a different trace. For example, this can be used in batching operations, where a single batch handler processes multiple requests from different traces or when the handler receives a request from a different project.
--
-- /See:/ 'newLink' smart constructor.
data Link = Link
  { -- | A set of attributes on the link. Up to 32 attributes can be specified per link.
    attributes :: (Core.Maybe Attributes),
    -- | The @[SPAN_ID]@ for a span within a trace.
    spanId :: (Core.Maybe Core.Text),
    -- | The @[TRACE_ID]@ for a trace within a project.
    traceId :: (Core.Maybe Core.Text),
    -- | The relationship of the current span relative to the linked span.
    type' :: (Core.Maybe Link_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
newLink ::
  Link
newLink =
  Link
    { attributes = Core.Nothing,
      spanId = Core.Nothing,
      traceId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Link where
  parseJSON =
    Core.withObject
      "Link"
      ( \o ->
          Link
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "spanId")
            Core.<*> (o Core..:? "traceId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Link where
  toJSON Link {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("spanId" Core..=) Core.<$> spanId,
            ("traceId" Core..=) Core.<$> traceId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A collection of links, which are references from this span to a span in the same or different trace.
--
-- /See:/ 'newLinks' smart constructor.
data Links = Links
  { -- | The number of dropped links after the maximum size was enforced. If this value is 0, then no links were dropped.
    droppedLinksCount :: (Core.Maybe Core.Int32),
    -- | A collection of links.
    link :: (Core.Maybe [Link])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Links' with the minimum fields required to make a request.
newLinks ::
  Links
newLinks = Links {droppedLinksCount = Core.Nothing, link = Core.Nothing}

instance Core.FromJSON Links where
  parseJSON =
    Core.withObject
      "Links"
      ( \o ->
          Links
            Core.<$> (o Core..:? "droppedLinksCount")
            Core.<*> (o Core..:? "link" Core..!= Core.mempty)
      )

instance Core.ToJSON Links where
  toJSON Links {..} =
    Core.object
      ( Core.catMaybes
          [ ("droppedLinksCount" Core..=)
              Core.<$> droppedLinksCount,
            ("link" Core..=) Core.<$> link
          ]
      )

-- | An event describing a message sent\/received between Spans.
--
-- /See:/ 'newMessageEvent' smart constructor.
data MessageEvent = MessageEvent
  { -- | The number of compressed bytes sent or received. If missing, the compressed size is assumed to be the same size as the uncompressed size.
    compressedSizeBytes :: (Core.Maybe Core.Int64),
    -- | An identifier for the MessageEvent\'s message that can be used to match @SENT@ and @RECEIVED@ MessageEvents.
    id :: (Core.Maybe Core.Int64),
    -- | Type of MessageEvent. Indicates whether the message was sent or received.
    type' :: (Core.Maybe MessageEvent_Type),
    -- | The number of uncompressed bytes sent or received.
    uncompressedSizeBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessageEvent' with the minimum fields required to make a request.
newMessageEvent ::
  MessageEvent
newMessageEvent =
  MessageEvent
    { compressedSizeBytes = Core.Nothing,
      id = Core.Nothing,
      type' = Core.Nothing,
      uncompressedSizeBytes = Core.Nothing
    }

instance Core.FromJSON MessageEvent where
  parseJSON =
    Core.withObject
      "MessageEvent"
      ( \o ->
          MessageEvent
            Core.<$> (o Core..:? "compressedSizeBytes")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "uncompressedSizeBytes")
      )

instance Core.ToJSON MessageEvent where
  toJSON MessageEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("compressedSizeBytes" Core..=) Core.. Core.AsText
              Core.<$> compressedSizeBytes,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("type" Core..=) Core.<$> type',
            ("uncompressedSizeBytes" Core..=) Core.. Core.AsText
              Core.<$> uncompressedSizeBytes
          ]
      )

-- | Binary module.
--
-- /See:/ 'newModule' smart constructor.
data Module = Module
  { -- | A unique identifier for the module, usually a hash of its contents (up to 128 bytes).
    buildId :: (Core.Maybe TruncatableString),
    -- | For example: main binary, kernel modules, and dynamic libraries such as libc.so, sharedlib.so (up to 256 bytes).
    module' :: (Core.Maybe TruncatableString)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Module' with the minimum fields required to make a request.
newModule ::
  Module
newModule = Module {buildId = Core.Nothing, module' = Core.Nothing}

instance Core.FromJSON Module where
  parseJSON =
    Core.withObject
      "Module"
      ( \o ->
          Module
            Core.<$> (o Core..:? "buildId")
            Core.<*> (o Core..:? "module")
      )

instance Core.ToJSON Module where
  toJSON Module {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildId" Core..=) Core.<$> buildId,
            ("module" Core..=) Core.<$> module'
          ]
      )

-- | A span represents a single operation within a trace. Spans can be nested to form a trace tree. Often, a trace contains a root span that describes the end-to-end latency, and one or more subspans for its sub-operations. A trace can also contain multiple root spans, or none at all. Spans do not need to be contiguous—there might be gaps or overlaps between spans in a trace.
--
-- /See:/ 'newSpan' smart constructor.
data Span = Span
  { -- | A set of attributes on the span. You can have up to 32 attributes per span.
    attributes :: (Core.Maybe Attributes),
    -- | Optional. The number of child spans that were generated while this span was active. If set, allows implementation to detect missing child spans.
    childSpanCount :: (Core.Maybe Core.Int32),
    -- | Required. A description of the span\'s operation (up to 128 bytes). Cloud Trace displays the description in the Cloud Console. For example, the display name can be a qualified method name or a file name and a line number where the operation is called. A best practice is to use the same display name within an application and at the same call point. This makes it easier to correlate spans in different traces.
    displayName :: (Core.Maybe TruncatableString),
    -- | Required. The end time of the span. On the client side, this is the time kept by the local machine where the span execution ends. On the server side, this is the time when the server application handler stops running.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Links associated with the span. You can have up to 128 links per Span.
    links :: (Core.Maybe Links),
    -- | Required. The resource name of the span in the following format: * @projects\/[PROJECT_ID]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]@ @[TRACE_ID]@ is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. @[SPAN_ID]@ is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. .
    name :: (Core.Maybe Core.Text),
    -- | The @[SPAN_ID]@ of this span\'s parent span. If this is a root span, then this field must be empty.
    parentSpanId :: (Core.Maybe Core.Text),
    -- | Optional. Set this parameter to indicate whether this span is in the same process as its parent. If you do not set this parameter, Trace is unable to take advantage of this helpful information.
    sameProcessAsParentSpan :: (Core.Maybe Core.Bool),
    -- | Required. The @[SPAN_ID]@ portion of the span\'s resource name.
    spanId :: (Core.Maybe Core.Text),
    -- | Optional. Distinguishes between spans generated in a particular context. For example, two spans with the same name may be distinguished using @CLIENT@ (caller) and @SERVER@ (callee) to identify an RPC call.
    spanKind :: (Core.Maybe Span_SpanKind),
    -- | Stack trace captured at the start of the span.
    stackTrace :: (Core.Maybe StackTrace),
    -- | Required. The start time of the span. On the client side, this is the time kept by the local machine where the span execution starts. On the server side, this is the time when the server\'s application handler starts running.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. The final status for this span.
    status :: (Core.Maybe Status),
    -- | A set of time events. You can have up to 32 annotations and 128 message events per span.
    timeEvents :: (Core.Maybe TimeEvents)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Span' with the minimum fields required to make a request.
newSpan ::
  Span
newSpan =
  Span
    { attributes = Core.Nothing,
      childSpanCount = Core.Nothing,
      displayName = Core.Nothing,
      endTime = Core.Nothing,
      links = Core.Nothing,
      name = Core.Nothing,
      parentSpanId = Core.Nothing,
      sameProcessAsParentSpan = Core.Nothing,
      spanId = Core.Nothing,
      spanKind = Core.Nothing,
      stackTrace = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      timeEvents = Core.Nothing
    }

instance Core.FromJSON Span where
  parseJSON =
    Core.withObject
      "Span"
      ( \o ->
          Span
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "childSpanCount")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "links")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parentSpanId")
            Core.<*> (o Core..:? "sameProcessAsParentSpan")
            Core.<*> (o Core..:? "spanId")
            Core.<*> (o Core..:? "spanKind")
            Core.<*> (o Core..:? "stackTrace")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "timeEvents")
      )

instance Core.ToJSON Span where
  toJSON Span {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("childSpanCount" Core..=) Core.<$> childSpanCount,
            ("displayName" Core..=) Core.<$> displayName,
            ("endTime" Core..=) Core.<$> endTime,
            ("links" Core..=) Core.<$> links,
            ("name" Core..=) Core.<$> name,
            ("parentSpanId" Core..=) Core.<$> parentSpanId,
            ("sameProcessAsParentSpan" Core..=)
              Core.<$> sameProcessAsParentSpan,
            ("spanId" Core..=) Core.<$> spanId,
            ("spanKind" Core..=) Core.<$> spanKind,
            ("stackTrace" Core..=) Core.<$> stackTrace,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("timeEvents" Core..=) Core.<$> timeEvents
          ]
      )

-- | Represents a single stack frame in a stack trace.
--
-- /See:/ 'newStackFrame' smart constructor.
data StackFrame = StackFrame
  { -- | The column number where the function call appears, if available. This is important in JavaScript because of its anonymous functions.
    columnNumber :: (Core.Maybe Core.Int64),
    -- | The name of the source file where the function call appears (up to 256 bytes).
    fileName :: (Core.Maybe TruncatableString),
    -- | The fully-qualified name that uniquely identifies the function or method that is active in this frame (up to 1024 bytes).
    functionName :: (Core.Maybe TruncatableString),
    -- | The line number in @file_name@ where the function call appears.
    lineNumber :: (Core.Maybe Core.Int64),
    -- | The binary module from where the code was loaded.
    loadModule :: (Core.Maybe Module),
    -- | An un-mangled function name, if @function_name@ is <http://www.avabodh.com/cxxin/namemangling.html mangled>. The name can be fully-qualified (up to 1024 bytes).
    originalFunctionName :: (Core.Maybe TruncatableString),
    -- | The version of the deployed source code (up to 128 bytes).
    sourceVersion :: (Core.Maybe TruncatableString)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackFrame' with the minimum fields required to make a request.
newStackFrame ::
  StackFrame
newStackFrame =
  StackFrame
    { columnNumber = Core.Nothing,
      fileName = Core.Nothing,
      functionName = Core.Nothing,
      lineNumber = Core.Nothing,
      loadModule = Core.Nothing,
      originalFunctionName = Core.Nothing,
      sourceVersion = Core.Nothing
    }

instance Core.FromJSON StackFrame where
  parseJSON =
    Core.withObject
      "StackFrame"
      ( \o ->
          StackFrame
            Core.<$> (o Core..:? "columnNumber")
            Core.<*> (o Core..:? "fileName")
            Core.<*> (o Core..:? "functionName")
            Core.<*> (o Core..:? "lineNumber")
            Core.<*> (o Core..:? "loadModule")
            Core.<*> (o Core..:? "originalFunctionName")
            Core.<*> (o Core..:? "sourceVersion")
      )

instance Core.ToJSON StackFrame where
  toJSON StackFrame {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnNumber" Core..=) Core.. Core.AsText
              Core.<$> columnNumber,
            ("fileName" Core..=) Core.<$> fileName,
            ("functionName" Core..=) Core.<$> functionName,
            ("lineNumber" Core..=) Core.. Core.AsText
              Core.<$> lineNumber,
            ("loadModule" Core..=) Core.<$> loadModule,
            ("originalFunctionName" Core..=)
              Core.<$> originalFunctionName,
            ("sourceVersion" Core..=) Core.<$> sourceVersion
          ]
      )

-- | A collection of stack frames, which can be truncated.
--
-- /See:/ 'newStackFrames' smart constructor.
data StackFrames = StackFrames
  { -- | The number of stack frames that were dropped because there were too many stack frames. If this value is 0, then no stack frames were dropped.
    droppedFramesCount :: (Core.Maybe Core.Int32),
    -- | Stack frames in this call stack.
    frame :: (Core.Maybe [StackFrame])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackFrames' with the minimum fields required to make a request.
newStackFrames ::
  StackFrames
newStackFrames =
  StackFrames {droppedFramesCount = Core.Nothing, frame = Core.Nothing}

instance Core.FromJSON StackFrames where
  parseJSON =
    Core.withObject
      "StackFrames"
      ( \o ->
          StackFrames
            Core.<$> (o Core..:? "droppedFramesCount")
            Core.<*> (o Core..:? "frame" Core..!= Core.mempty)
      )

instance Core.ToJSON StackFrames where
  toJSON StackFrames {..} =
    Core.object
      ( Core.catMaybes
          [ ("droppedFramesCount" Core..=)
              Core.<$> droppedFramesCount,
            ("frame" Core..=) Core.<$> frame
          ]
      )

-- | A call stack appearing in a trace.
--
-- /See:/ 'newStackTrace' smart constructor.
data StackTrace = StackTrace
  { -- | Stack frames in this stack trace. A maximum of 128 frames are allowed.
    stackFrames :: (Core.Maybe StackFrames),
    -- | The hash ID is used to conserve network bandwidth for duplicate stack traces within a single trace. Often multiple spans will have identical stack traces. The first occurrence of a stack trace should contain both the @stackFrame@ content and a value in @stackTraceHashId@. Subsequent spans within the same request can refer to that stack trace by only setting @stackTraceHashId@.
    stackTraceHashId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StackTrace' with the minimum fields required to make a request.
newStackTrace ::
  StackTrace
newStackTrace =
  StackTrace {stackFrames = Core.Nothing, stackTraceHashId = Core.Nothing}

instance Core.FromJSON StackTrace where
  parseJSON =
    Core.withObject
      "StackTrace"
      ( \o ->
          StackTrace
            Core.<$> (o Core..:? "stackFrames")
            Core.<*> (o Core..:? "stackTraceHashId")
      )

instance Core.ToJSON StackTrace where
  toJSON StackTrace {..} =
    Core.object
      ( Core.catMaybes
          [ ("stackFrames" Core..=) Core.<$> stackFrames,
            ("stackTraceHashId" Core..=) Core.. Core.AsText
              Core.<$> stackTraceHashId
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | A time-stamped annotation or message event in the Span.
--
-- /See:/ 'newTimeEvent' smart constructor.
data TimeEvent = TimeEvent
  { -- | Text annotation with a set of attributes.
    annotation :: (Core.Maybe Annotation),
    -- | An event describing a message sent\/received between Spans.
    messageEvent :: (Core.Maybe MessageEvent),
    -- | The timestamp indicating the time the event occurred.
    time :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeEvent' with the minimum fields required to make a request.
newTimeEvent ::
  TimeEvent
newTimeEvent =
  TimeEvent
    { annotation = Core.Nothing,
      messageEvent = Core.Nothing,
      time = Core.Nothing
    }

instance Core.FromJSON TimeEvent where
  parseJSON =
    Core.withObject
      "TimeEvent"
      ( \o ->
          TimeEvent
            Core.<$> (o Core..:? "annotation")
            Core.<*> (o Core..:? "messageEvent")
            Core.<*> (o Core..:? "time")
      )

instance Core.ToJSON TimeEvent where
  toJSON TimeEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotation" Core..=) Core.<$> annotation,
            ("messageEvent" Core..=) Core.<$> messageEvent,
            ("time" Core..=) Core.<$> time
          ]
      )

-- | A collection of @TimeEvent@s. A @TimeEvent@ is a time-stamped annotation on the span, consisting of either user-supplied key:value pairs, or details of a message sent\/received between Spans.
--
-- /See:/ 'newTimeEvents' smart constructor.
data TimeEvents = TimeEvents
  { -- | The number of dropped annotations in all the included time events. If the value is 0, then no annotations were dropped.
    droppedAnnotationsCount :: (Core.Maybe Core.Int32),
    -- | The number of dropped message events in all the included time events. If the value is 0, then no message events were dropped.
    droppedMessageEventsCount :: (Core.Maybe Core.Int32),
    -- | A collection of @TimeEvent@s.
    timeEvent :: (Core.Maybe [TimeEvent])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeEvents' with the minimum fields required to make a request.
newTimeEvents ::
  TimeEvents
newTimeEvents =
  TimeEvents
    { droppedAnnotationsCount = Core.Nothing,
      droppedMessageEventsCount = Core.Nothing,
      timeEvent = Core.Nothing
    }

instance Core.FromJSON TimeEvents where
  parseJSON =
    Core.withObject
      "TimeEvents"
      ( \o ->
          TimeEvents
            Core.<$> (o Core..:? "droppedAnnotationsCount")
            Core.<*> (o Core..:? "droppedMessageEventsCount")
            Core.<*> (o Core..:? "timeEvent" Core..!= Core.mempty)
      )

instance Core.ToJSON TimeEvents where
  toJSON TimeEvents {..} =
    Core.object
      ( Core.catMaybes
          [ ("droppedAnnotationsCount" Core..=)
              Core.<$> droppedAnnotationsCount,
            ("droppedMessageEventsCount" Core..=)
              Core.<$> droppedMessageEventsCount,
            ("timeEvent" Core..=) Core.<$> timeEvent
          ]
      )

-- | Represents a string that might be shortened to a specified length.
--
-- /See:/ 'newTruncatableString' smart constructor.
data TruncatableString = TruncatableString
  { -- | The number of bytes removed from the original string. If this value is 0, then the string was not shortened.
    truncatedByteCount :: (Core.Maybe Core.Int32),
    -- | The shortened string. For example, if the original string is 500 bytes long and the limit of the string is 128 bytes, then @value@ contains the first 128 bytes of the 500-byte string. Truncation always happens on a UTF8 character boundary. If there are multi-byte characters in the string, then the length of the shortened string might be less than the size limit.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TruncatableString' with the minimum fields required to make a request.
newTruncatableString ::
  TruncatableString
newTruncatableString =
  TruncatableString {truncatedByteCount = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON TruncatableString where
  parseJSON =
    Core.withObject
      "TruncatableString"
      ( \o ->
          TruncatableString
            Core.<$> (o Core..:? "truncatedByteCount")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON TruncatableString where
  toJSON TruncatableString {..} =
    Core.object
      ( Core.catMaybes
          [ ("truncatedByteCount" Core..=)
              Core.<$> truncatedByteCount,
            ("value" Core..=) Core.<$> value
          ]
      )
