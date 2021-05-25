{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTrace.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTrace.Types.Product where

import Network.Google.CloudTrace.Types.Sum
import Network.Google.Prelude

-- | A span represents a single operation within a trace. Spans can be nested
-- to form a trace tree. Often, a trace contains a root span that describes
-- the end-to-end latency, and one or more subspans for its sub-operations.
-- A trace can also contain multiple root spans, or none at all. Spans do
-- not need to be contiguous—there may be gaps or overlaps between spans in
-- a trace.
--
-- /See:/ 'span' smart constructor.
data Span =
  Span'
    { _sSpanKind :: !(Maybe SpanSpanKind)
    , _sStatus :: !(Maybe Status)
    , _sStartTime :: !(Maybe DateTime')
    , _sChildSpanCount :: !(Maybe (Textual Int32))
    , _sSameProcessAsParentSpan :: !(Maybe Bool)
    , _sName :: !(Maybe Text)
    , _sStackTrace :: !(Maybe StackTrace)
    , _sAttributes :: !(Maybe Attributes)
    , _sEndTime :: !(Maybe DateTime')
    , _sTimeEvents :: !(Maybe TimeEvents)
    , _sDisplayName :: !(Maybe TruncatableString)
    , _sParentSpanId :: !(Maybe Text)
    , _sLinks :: !(Maybe Links)
    , _sSpanId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Span' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSpanKind'
--
-- * 'sStatus'
--
-- * 'sStartTime'
--
-- * 'sChildSpanCount'
--
-- * 'sSameProcessAsParentSpan'
--
-- * 'sName'
--
-- * 'sStackTrace'
--
-- * 'sAttributes'
--
-- * 'sEndTime'
--
-- * 'sTimeEvents'
--
-- * 'sDisplayName'
--
-- * 'sParentSpanId'
--
-- * 'sLinks'
--
-- * 'sSpanId'
span
    :: Span
span =
  Span'
    { _sSpanKind = Nothing
    , _sStatus = Nothing
    , _sStartTime = Nothing
    , _sChildSpanCount = Nothing
    , _sSameProcessAsParentSpan = Nothing
    , _sName = Nothing
    , _sStackTrace = Nothing
    , _sAttributes = Nothing
    , _sEndTime = Nothing
    , _sTimeEvents = Nothing
    , _sDisplayName = Nothing
    , _sParentSpanId = Nothing
    , _sLinks = Nothing
    , _sSpanId = Nothing
    }


-- | Optional. Distinguishes between spans generated in a particular context.
-- For example, two spans with the same name may be distinguished using
-- \`CLIENT\` (caller) and \`SERVER\` (callee) to identify an RPC call.
sSpanKind :: Lens' Span (Maybe SpanSpanKind)
sSpanKind
  = lens _sSpanKind (\ s a -> s{_sSpanKind = a})

-- | Optional. The final status for this span.
sStatus :: Lens' Span (Maybe Status)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | Required. The start time of the span. On the client side, this is the
-- time kept by the local machine where the span execution starts. On the
-- server side, this is the time when the server\'s application handler
-- starts running.
sStartTime :: Lens' Span (Maybe UTCTime)
sStartTime
  = lens _sStartTime (\ s a -> s{_sStartTime = a}) .
      mapping _DateTime

-- | Optional. The number of child spans that were generated while this span
-- was active. If set, allows implementation to detect missing child spans.
sChildSpanCount :: Lens' Span (Maybe Int32)
sChildSpanCount
  = lens _sChildSpanCount
      (\ s a -> s{_sChildSpanCount = a})
      . mapping _Coerce

-- | Optional. Set this parameter to indicate whether this span is in the
-- same process as its parent. If you do not set this parameter, Trace is
-- unable to take advantage of this helpful information.
sSameProcessAsParentSpan :: Lens' Span (Maybe Bool)
sSameProcessAsParentSpan
  = lens _sSameProcessAsParentSpan
      (\ s a -> s{_sSameProcessAsParentSpan = a})

-- | Required. The resource name of the span in the following format:
-- projects\/[PROJECT_ID]\/traces\/[TRACE_ID]\/spans\/SPAN_ID is a unique
-- identifier for a trace within a project; it is a 32-character
-- hexadecimal encoding of a 16-byte array. [SPAN_ID] is a unique
-- identifier for a span within a trace; it is a 16-character hexadecimal
-- encoding of an 8-byte array. It should not be zero.
sName :: Lens' Span (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Stack trace captured at the start of the span.
sStackTrace :: Lens' Span (Maybe StackTrace)
sStackTrace
  = lens _sStackTrace (\ s a -> s{_sStackTrace = a})

-- | A set of attributes on the span. You can have up to 32 attributes per
-- span.
sAttributes :: Lens' Span (Maybe Attributes)
sAttributes
  = lens _sAttributes (\ s a -> s{_sAttributes = a})

-- | Required. The end time of the span. On the client side, this is the time
-- kept by the local machine where the span execution ends. On the server
-- side, this is the time when the server application handler stops
-- running.
sEndTime :: Lens' Span (Maybe UTCTime)
sEndTime
  = lens _sEndTime (\ s a -> s{_sEndTime = a}) .
      mapping _DateTime

-- | A set of time events. You can have up to 32 annotations and 128 message
-- events per span.
sTimeEvents :: Lens' Span (Maybe TimeEvents)
sTimeEvents
  = lens _sTimeEvents (\ s a -> s{_sTimeEvents = a})

-- | Required. A description of the span\'s operation (up to 128 bytes).
-- Trace displays the description in the Google Cloud Platform Console. For
-- example, the display name can be a qualified method name or a file name
-- and a line number where the operation is called. A best practice is to
-- use the same display name within an application and at the same call
-- point. This makes it easier to correlate spans in different traces.
sDisplayName :: Lens' Span (Maybe TruncatableString)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | The [SPAN_ID] of this span\'s parent span. If this is a root span, then
-- this field must be empty.
sParentSpanId :: Lens' Span (Maybe Text)
sParentSpanId
  = lens _sParentSpanId
      (\ s a -> s{_sParentSpanId = a})

-- | Links associated with the span. You can have up to 128 links per Span.
sLinks :: Lens' Span (Maybe Links)
sLinks = lens _sLinks (\ s a -> s{_sLinks = a})

-- | Required. The [SPAN_ID] portion of the span\'s resource name.
sSpanId :: Lens' Span (Maybe Text)
sSpanId = lens _sSpanId (\ s a -> s{_sSpanId = a})

instance FromJSON Span where
        parseJSON
          = withObject "Span"
              (\ o ->
                 Span' <$>
                   (o .:? "spanKind") <*> (o .:? "status") <*>
                     (o .:? "startTime")
                     <*> (o .:? "childSpanCount")
                     <*> (o .:? "sameProcessAsParentSpan")
                     <*> (o .:? "name")
                     <*> (o .:? "stackTrace")
                     <*> (o .:? "attributes")
                     <*> (o .:? "endTime")
                     <*> (o .:? "timeEvents")
                     <*> (o .:? "displayName")
                     <*> (o .:? "parentSpanId")
                     <*> (o .:? "links")
                     <*> (o .:? "spanId"))

instance ToJSON Span where
        toJSON Span'{..}
          = object
              (catMaybes
                 [("spanKind" .=) <$> _sSpanKind,
                  ("status" .=) <$> _sStatus,
                  ("startTime" .=) <$> _sStartTime,
                  ("childSpanCount" .=) <$> _sChildSpanCount,
                  ("sameProcessAsParentSpan" .=) <$>
                    _sSameProcessAsParentSpan,
                  ("name" .=) <$> _sName,
                  ("stackTrace" .=) <$> _sStackTrace,
                  ("attributes" .=) <$> _sAttributes,
                  ("endTime" .=) <$> _sEndTime,
                  ("timeEvents" .=) <$> _sTimeEvents,
                  ("displayName" .=) <$> _sDisplayName,
                  ("parentSpanId" .=) <$> _sParentSpanId,
                  ("links" .=) <$> _sLinks,
                  ("spanId" .=) <$> _sSpanId])

-- | Represents a string that might be shortened to a specified length.
--
-- /See:/ 'truncatableString' smart constructor.
data TruncatableString =
  TruncatableString'
    { _tsValue :: !(Maybe Text)
    , _tsTruncatedByteCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TruncatableString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsValue'
--
-- * 'tsTruncatedByteCount'
truncatableString
    :: TruncatableString
truncatableString =
  TruncatableString' {_tsValue = Nothing, _tsTruncatedByteCount = Nothing}


-- | The shortened string. For example, if the original string is 500 bytes
-- long and the limit of the string is 128 bytes, then \`value\` contains
-- the first 128 bytes of the 500-byte string. Truncation always happens on
-- a UTF8 character boundary. If there are multi-byte characters in the
-- string, then the length of the shortened string might be less than the
-- size limit.
tsValue :: Lens' TruncatableString (Maybe Text)
tsValue = lens _tsValue (\ s a -> s{_tsValue = a})

-- | The number of bytes removed from the original string. If this value is
-- 0, then the string was not shortened.
tsTruncatedByteCount :: Lens' TruncatableString (Maybe Int32)
tsTruncatedByteCount
  = lens _tsTruncatedByteCount
      (\ s a -> s{_tsTruncatedByteCount = a})
      . mapping _Coerce

instance FromJSON TruncatableString where
        parseJSON
          = withObject "TruncatableString"
              (\ o ->
                 TruncatableString' <$>
                   (o .:? "value") <*> (o .:? "truncatedByteCount"))

instance ToJSON TruncatableString where
        toJSON TruncatableString'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tsValue,
                  ("truncatedByteCount" .=) <$> _tsTruncatedByteCount])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | The set of attributes. Each attribute\'s key can be up to 128 bytes
-- long. The value can be a string up to 256 bytes, a signed 64-bit
-- integer, or the Boolean values \`true\` and \`false\`. For example:
-- \"\/instance_id\": { \"string_value\": { \"value\": \"my-instance\" } }
-- \"\/http\/request_bytes\": { \"int_value\": 300 }
-- \"abc.com\/myattribute\": { \"bool_value\": false }
--
-- /See:/ 'attributesAttributeMap' smart constructor.
newtype AttributesAttributeMap =
  AttributesAttributeMap'
    { _aamAddtional :: HashMap Text AttributeValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributesAttributeMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aamAddtional'
attributesAttributeMap
    :: HashMap Text AttributeValue -- ^ 'aamAddtional'
    -> AttributesAttributeMap
attributesAttributeMap pAamAddtional_ =
  AttributesAttributeMap' {_aamAddtional = _Coerce # pAamAddtional_}


aamAddtional :: Lens' AttributesAttributeMap (HashMap Text AttributeValue)
aamAddtional
  = lens _aamAddtional (\ s a -> s{_aamAddtional = a})
      . _Coerce

instance FromJSON AttributesAttributeMap where
        parseJSON
          = withObject "AttributesAttributeMap"
              (\ o ->
                 AttributesAttributeMap' <$> (parseJSONObject o))

instance ToJSON AttributesAttributeMap where
        toJSON = toJSON . _aamAddtional

-- | Text annotation with a set of attributes.
--
-- /See:/ 'annotation' smart constructor.
data Annotation =
  Annotation'
    { _aAttributes :: !(Maybe Attributes)
    , _aDescription :: !(Maybe TruncatableString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAttributes'
--
-- * 'aDescription'
annotation
    :: Annotation
annotation = Annotation' {_aAttributes = Nothing, _aDescription = Nothing}


-- | A set of attributes on the annotation. You can have up to 4 attributes
-- per Annotation.
aAttributes :: Lens' Annotation (Maybe Attributes)
aAttributes
  = lens _aAttributes (\ s a -> s{_aAttributes = a})

-- | A user-supplied message describing the event. The maximum length for the
-- description is 256 bytes.
aDescription :: Lens' Annotation (Maybe TruncatableString)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Annotation where
        parseJSON
          = withObject "Annotation"
              (\ o ->
                 Annotation' <$>
                   (o .:? "attributes") <*> (o .:? "description"))

instance ToJSON Annotation where
        toJSON Annotation'{..}
          = object
              (catMaybes
                 [("attributes" .=) <$> _aAttributes,
                  ("description" .=) <$> _aDescription])

-- | The allowed types for [VALUE] in a \`[KEY]:[VALUE]\` attribute.
--
-- /See:/ 'attributeValue' smart constructor.
data AttributeValue =
  AttributeValue'
    { _avBoolValue :: !(Maybe Bool)
    , _avIntValue :: !(Maybe (Textual Int64))
    , _avStringValue :: !(Maybe TruncatableString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttributeValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avBoolValue'
--
-- * 'avIntValue'
--
-- * 'avStringValue'
attributeValue
    :: AttributeValue
attributeValue =
  AttributeValue'
    {_avBoolValue = Nothing, _avIntValue = Nothing, _avStringValue = Nothing}


-- | A Boolean value represented by \`true\` or \`false\`.
avBoolValue :: Lens' AttributeValue (Maybe Bool)
avBoolValue
  = lens _avBoolValue (\ s a -> s{_avBoolValue = a})

-- | A 64-bit signed integer.
avIntValue :: Lens' AttributeValue (Maybe Int64)
avIntValue
  = lens _avIntValue (\ s a -> s{_avIntValue = a}) .
      mapping _Coerce

-- | A string up to 256 bytes long.
avStringValue :: Lens' AttributeValue (Maybe TruncatableString)
avStringValue
  = lens _avStringValue
      (\ s a -> s{_avStringValue = a})

instance FromJSON AttributeValue where
        parseJSON
          = withObject "AttributeValue"
              (\ o ->
                 AttributeValue' <$>
                   (o .:? "boolValue") <*> (o .:? "intValue") <*>
                     (o .:? "stringValue"))

instance ToJSON AttributeValue where
        toJSON AttributeValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _avBoolValue,
                  ("intValue" .=) <$> _avIntValue,
                  ("stringValue" .=) <$> _avStringValue])

-- | An event describing a message sent\/received between Spans.
--
-- /See:/ 'messageEvent' smart constructor.
data MessageEvent =
  MessageEvent'
    { _meId :: !(Maybe (Textual Int64))
    , _meUncompressedSizeBytes :: !(Maybe (Textual Int64))
    , _meType :: !(Maybe MessageEventType)
    , _meCompressedSizeBytes :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MessageEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meId'
--
-- * 'meUncompressedSizeBytes'
--
-- * 'meType'
--
-- * 'meCompressedSizeBytes'
messageEvent
    :: MessageEvent
messageEvent =
  MessageEvent'
    { _meId = Nothing
    , _meUncompressedSizeBytes = Nothing
    , _meType = Nothing
    , _meCompressedSizeBytes = Nothing
    }


-- | An identifier for the MessageEvent\'s message that can be used to match
-- SENT and RECEIVED MessageEvents. It is recommended to be unique within a
-- Span.
meId :: Lens' MessageEvent (Maybe Int64)
meId
  = lens _meId (\ s a -> s{_meId = a}) .
      mapping _Coerce

-- | The number of uncompressed bytes sent or received.
meUncompressedSizeBytes :: Lens' MessageEvent (Maybe Int64)
meUncompressedSizeBytes
  = lens _meUncompressedSizeBytes
      (\ s a -> s{_meUncompressedSizeBytes = a})
      . mapping _Coerce

-- | Type of MessageEvent. Indicates whether the message was sent or
-- received.
meType :: Lens' MessageEvent (Maybe MessageEventType)
meType = lens _meType (\ s a -> s{_meType = a})

-- | The number of compressed bytes sent or received. If missing assumed to
-- be the same size as uncompressed.
meCompressedSizeBytes :: Lens' MessageEvent (Maybe Int64)
meCompressedSizeBytes
  = lens _meCompressedSizeBytes
      (\ s a -> s{_meCompressedSizeBytes = a})
      . mapping _Coerce

instance FromJSON MessageEvent where
        parseJSON
          = withObject "MessageEvent"
              (\ o ->
                 MessageEvent' <$>
                   (o .:? "id") <*> (o .:? "uncompressedSizeBytes") <*>
                     (o .:? "type")
                     <*> (o .:? "compressedSizeBytes"))

instance ToJSON MessageEvent where
        toJSON MessageEvent'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _meId,
                  ("uncompressedSizeBytes" .=) <$>
                    _meUncompressedSizeBytes,
                  ("type" .=) <$> _meType,
                  ("compressedSizeBytes" .=) <$>
                    _meCompressedSizeBytes])

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

-- | A pointer from the current span to another span in the same trace or in
-- a different trace. For example, this can be used in batching operations,
-- where a single batch handler processes multiple requests from different
-- traces or when the handler receives a request from a different project.
--
-- /See:/ 'link' smart constructor.
data Link =
  Link'
    { _lTraceId :: !(Maybe Text)
    , _lAttributes :: !(Maybe Attributes)
    , _lType :: !(Maybe LinkType)
    , _lSpanId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lTraceId'
--
-- * 'lAttributes'
--
-- * 'lType'
--
-- * 'lSpanId'
link
    :: Link
link =
  Link'
    { _lTraceId = Nothing
    , _lAttributes = Nothing
    , _lType = Nothing
    , _lSpanId = Nothing
    }


-- | The [TRACE_ID] for a trace within a project.
lTraceId :: Lens' Link (Maybe Text)
lTraceId = lens _lTraceId (\ s a -> s{_lTraceId = a})

-- | A set of attributes on the link. You have have up to 32 attributes per
-- link.
lAttributes :: Lens' Link (Maybe Attributes)
lAttributes
  = lens _lAttributes (\ s a -> s{_lAttributes = a})

-- | The relationship of the current span relative to the linked span.
lType :: Lens' Link (Maybe LinkType)
lType = lens _lType (\ s a -> s{_lType = a})

-- | The [SPAN_ID] for a span within a trace.
lSpanId :: Lens' Link (Maybe Text)
lSpanId = lens _lSpanId (\ s a -> s{_lSpanId = a})

instance FromJSON Link where
        parseJSON
          = withObject "Link"
              (\ o ->
                 Link' <$>
                   (o .:? "traceId") <*> (o .:? "attributes") <*>
                     (o .:? "type")
                     <*> (o .:? "spanId"))

instance ToJSON Link where
        toJSON Link'{..}
          = object
              (catMaybes
                 [("traceId" .=) <$> _lTraceId,
                  ("attributes" .=) <$> _lAttributes,
                  ("type" .=) <$> _lType, ("spanId" .=) <$> _lSpanId])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | A call stack appearing in a trace.
--
-- /See:/ 'stackTrace' smart constructor.
data StackTrace =
  StackTrace'
    { _stStackTraceHashId :: !(Maybe (Textual Int64))
    , _stStackFrames :: !(Maybe StackFrames)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackTrace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stStackTraceHashId'
--
-- * 'stStackFrames'
stackTrace
    :: StackTrace
stackTrace =
  StackTrace' {_stStackTraceHashId = Nothing, _stStackFrames = Nothing}


-- | The hash ID is used to conserve network bandwidth for duplicate stack
-- traces within a single trace. Often multiple spans will have identical
-- stack traces. The first occurrence of a stack trace should contain both
-- the \`stackFrame\` content and a value in \`stackTraceHashId\`.
-- Subsequent spans within the same request can refer to that stack trace
-- by only setting \`stackTraceHashId\`.
stStackTraceHashId :: Lens' StackTrace (Maybe Int64)
stStackTraceHashId
  = lens _stStackTraceHashId
      (\ s a -> s{_stStackTraceHashId = a})
      . mapping _Coerce

-- | Stack frames in this stack trace. A maximum of 128 frames are allowed.
stStackFrames :: Lens' StackTrace (Maybe StackFrames)
stStackFrames
  = lens _stStackFrames
      (\ s a -> s{_stStackFrames = a})

instance FromJSON StackTrace where
        parseJSON
          = withObject "StackTrace"
              (\ o ->
                 StackTrace' <$>
                   (o .:? "stackTraceHashId") <*> (o .:? "stackFrames"))

instance ToJSON StackTrace where
        toJSON StackTrace'{..}
          = object
              (catMaybes
                 [("stackTraceHashId" .=) <$> _stStackTraceHashId,
                  ("stackFrames" .=) <$> _stStackFrames])

-- | The request message for the \`BatchWriteSpans\` method.
--
-- /See:/ 'batchWriteSpansRequest' smart constructor.
newtype BatchWriteSpansRequest =
  BatchWriteSpansRequest'
    { _bwsrSpans :: Maybe [Span]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchWriteSpansRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwsrSpans'
batchWriteSpansRequest
    :: BatchWriteSpansRequest
batchWriteSpansRequest = BatchWriteSpansRequest' {_bwsrSpans = Nothing}


-- | Required. A list of new spans. The span names must not match existing
-- spans, or the results are undefined.
bwsrSpans :: Lens' BatchWriteSpansRequest [Span]
bwsrSpans
  = lens _bwsrSpans (\ s a -> s{_bwsrSpans = a}) .
      _Default
      . _Coerce

instance FromJSON BatchWriteSpansRequest where
        parseJSON
          = withObject "BatchWriteSpansRequest"
              (\ o ->
                 BatchWriteSpansRequest' <$>
                   (o .:? "spans" .!= mempty))

instance ToJSON BatchWriteSpansRequest where
        toJSON BatchWriteSpansRequest'{..}
          = object (catMaybes [("spans" .=) <$> _bwsrSpans])

-- | A set of attributes, each in the format \`[KEY]:[VALUE]\`.
--
-- /See:/ 'attributes' smart constructor.
data Attributes =
  Attributes'
    { _aDroppedAttributesCount :: !(Maybe (Textual Int32))
    , _aAttributeMap :: !(Maybe AttributesAttributeMap)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDroppedAttributesCount'
--
-- * 'aAttributeMap'
attributes
    :: Attributes
attributes =
  Attributes' {_aDroppedAttributesCount = Nothing, _aAttributeMap = Nothing}


-- | The number of attributes that were discarded. Attributes can be
-- discarded because their keys are too long or because there are too many
-- attributes. If this value is 0 then all attributes are valid.
aDroppedAttributesCount :: Lens' Attributes (Maybe Int32)
aDroppedAttributesCount
  = lens _aDroppedAttributesCount
      (\ s a -> s{_aDroppedAttributesCount = a})
      . mapping _Coerce

-- | The set of attributes. Each attribute\'s key can be up to 128 bytes
-- long. The value can be a string up to 256 bytes, a signed 64-bit
-- integer, or the Boolean values \`true\` and \`false\`. For example:
-- \"\/instance_id\": { \"string_value\": { \"value\": \"my-instance\" } }
-- \"\/http\/request_bytes\": { \"int_value\": 300 }
-- \"abc.com\/myattribute\": { \"bool_value\": false }
aAttributeMap :: Lens' Attributes (Maybe AttributesAttributeMap)
aAttributeMap
  = lens _aAttributeMap
      (\ s a -> s{_aAttributeMap = a})

instance FromJSON Attributes where
        parseJSON
          = withObject "Attributes"
              (\ o ->
                 Attributes' <$>
                   (o .:? "droppedAttributesCount") <*>
                     (o .:? "attributeMap"))

instance ToJSON Attributes where
        toJSON Attributes'{..}
          = object
              (catMaybes
                 [("droppedAttributesCount" .=) <$>
                    _aDroppedAttributesCount,
                  ("attributeMap" .=) <$> _aAttributeMap])

-- | Binary module.
--
-- /See:/ 'module'' smart constructor.
data Module =
  Module'
    { _mBuildId :: !(Maybe TruncatableString)
    , _mModule :: !(Maybe TruncatableString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Module' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mBuildId'
--
-- * 'mModule'
module'
    :: Module
module' = Module' {_mBuildId = Nothing, _mModule = Nothing}


-- | A unique identifier for the module, usually a hash of its contents (up
-- to 128 bytes).
mBuildId :: Lens' Module (Maybe TruncatableString)
mBuildId = lens _mBuildId (\ s a -> s{_mBuildId = a})

-- | For example: main binary, kernel modules, and dynamic libraries such as
-- libc.so, sharedlib.so (up to 256 bytes).
mModule :: Lens' Module (Maybe TruncatableString)
mModule = lens _mModule (\ s a -> s{_mModule = a})

instance FromJSON Module where
        parseJSON
          = withObject "Module"
              (\ o ->
                 Module' <$> (o .:? "buildId") <*> (o .:? "module"))

instance ToJSON Module where
        toJSON Module'{..}
          = object
              (catMaybes
                 [("buildId" .=) <$> _mBuildId,
                  ("module" .=) <$> _mModule])

-- | A collection of \`TimeEvent\`s. A \`TimeEvent\` is a time-stamped
-- annotation on the span, consisting of either user-supplied key:value
-- pairs, or details of a message sent\/received between Spans.
--
-- /See:/ 'timeEvents' smart constructor.
data TimeEvents =
  TimeEvents'
    { _teDroppedMessageEventsCount :: !(Maybe (Textual Int32))
    , _teDroppedAnnotationsCount :: !(Maybe (Textual Int32))
    , _teTimeEvent :: !(Maybe [TimeEvent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teDroppedMessageEventsCount'
--
-- * 'teDroppedAnnotationsCount'
--
-- * 'teTimeEvent'
timeEvents
    :: TimeEvents
timeEvents =
  TimeEvents'
    { _teDroppedMessageEventsCount = Nothing
    , _teDroppedAnnotationsCount = Nothing
    , _teTimeEvent = Nothing
    }


-- | The number of dropped message events in all the included time events. If
-- the value is 0, then no message events were dropped.
teDroppedMessageEventsCount :: Lens' TimeEvents (Maybe Int32)
teDroppedMessageEventsCount
  = lens _teDroppedMessageEventsCount
      (\ s a -> s{_teDroppedMessageEventsCount = a})
      . mapping _Coerce

-- | The number of dropped annotations in all the included time events. If
-- the value is 0, then no annotations were dropped.
teDroppedAnnotationsCount :: Lens' TimeEvents (Maybe Int32)
teDroppedAnnotationsCount
  = lens _teDroppedAnnotationsCount
      (\ s a -> s{_teDroppedAnnotationsCount = a})
      . mapping _Coerce

-- | A collection of \`TimeEvent\`s.
teTimeEvent :: Lens' TimeEvents [TimeEvent]
teTimeEvent
  = lens _teTimeEvent (\ s a -> s{_teTimeEvent = a}) .
      _Default
      . _Coerce

instance FromJSON TimeEvents where
        parseJSON
          = withObject "TimeEvents"
              (\ o ->
                 TimeEvents' <$>
                   (o .:? "droppedMessageEventsCount") <*>
                     (o .:? "droppedAnnotationsCount")
                     <*> (o .:? "timeEvent" .!= mempty))

instance ToJSON TimeEvents where
        toJSON TimeEvents'{..}
          = object
              (catMaybes
                 [("droppedMessageEventsCount" .=) <$>
                    _teDroppedMessageEventsCount,
                  ("droppedAnnotationsCount" .=) <$>
                    _teDroppedAnnotationsCount,
                  ("timeEvent" .=) <$> _teTimeEvent])

-- | A collection of stack frames, which can be truncated.
--
-- /See:/ 'stackFrames' smart constructor.
data StackFrames =
  StackFrames'
    { _sfDroppedFramesCount :: !(Maybe (Textual Int32))
    , _sfFrame :: !(Maybe [StackFrame])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackFrames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfDroppedFramesCount'
--
-- * 'sfFrame'
stackFrames
    :: StackFrames
stackFrames = StackFrames' {_sfDroppedFramesCount = Nothing, _sfFrame = Nothing}


-- | The number of stack frames that were dropped because there were too many
-- stack frames. If this value is 0, then no stack frames were dropped.
sfDroppedFramesCount :: Lens' StackFrames (Maybe Int32)
sfDroppedFramesCount
  = lens _sfDroppedFramesCount
      (\ s a -> s{_sfDroppedFramesCount = a})
      . mapping _Coerce

-- | Stack frames in this call stack.
sfFrame :: Lens' StackFrames [StackFrame]
sfFrame
  = lens _sfFrame (\ s a -> s{_sfFrame = a}) . _Default
      . _Coerce

instance FromJSON StackFrames where
        parseJSON
          = withObject "StackFrames"
              (\ o ->
                 StackFrames' <$>
                   (o .:? "droppedFramesCount") <*>
                     (o .:? "frame" .!= mempty))

instance ToJSON StackFrames where
        toJSON StackFrames'{..}
          = object
              (catMaybes
                 [("droppedFramesCount" .=) <$> _sfDroppedFramesCount,
                  ("frame" .=) <$> _sfFrame])

-- | Represents a single stack frame in a stack trace.
--
-- /See:/ 'stackFrame' smart constructor.
data StackFrame =
  StackFrame'
    { _sfLoadModule :: !(Maybe Module)
    , _sfOriginalFunctionName :: !(Maybe TruncatableString)
    , _sfLineNumber :: !(Maybe (Textual Int64))
    , _sfSourceVersion :: !(Maybe TruncatableString)
    , _sfFunctionName :: !(Maybe TruncatableString)
    , _sfColumnNumber :: !(Maybe (Textual Int64))
    , _sfFileName :: !(Maybe TruncatableString)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfLoadModule'
--
-- * 'sfOriginalFunctionName'
--
-- * 'sfLineNumber'
--
-- * 'sfSourceVersion'
--
-- * 'sfFunctionName'
--
-- * 'sfColumnNumber'
--
-- * 'sfFileName'
stackFrame
    :: StackFrame
stackFrame =
  StackFrame'
    { _sfLoadModule = Nothing
    , _sfOriginalFunctionName = Nothing
    , _sfLineNumber = Nothing
    , _sfSourceVersion = Nothing
    , _sfFunctionName = Nothing
    , _sfColumnNumber = Nothing
    , _sfFileName = Nothing
    }


-- | The binary module from where the code was loaded.
sfLoadModule :: Lens' StackFrame (Maybe Module)
sfLoadModule
  = lens _sfLoadModule (\ s a -> s{_sfLoadModule = a})

-- | An un-mangled function name, if \`function_name\` is
-- [mangled](http:\/\/www.avabodh.com\/cxxin\/namemangling.html). The name
-- can be fully-qualified (up to 1024 bytes).
sfOriginalFunctionName :: Lens' StackFrame (Maybe TruncatableString)
sfOriginalFunctionName
  = lens _sfOriginalFunctionName
      (\ s a -> s{_sfOriginalFunctionName = a})

-- | The line number in \`file_name\` where the function call appears.
sfLineNumber :: Lens' StackFrame (Maybe Int64)
sfLineNumber
  = lens _sfLineNumber (\ s a -> s{_sfLineNumber = a})
      . mapping _Coerce

-- | The version of the deployed source code (up to 128 bytes).
sfSourceVersion :: Lens' StackFrame (Maybe TruncatableString)
sfSourceVersion
  = lens _sfSourceVersion
      (\ s a -> s{_sfSourceVersion = a})

-- | The fully-qualified name that uniquely identifies the function or method
-- that is active in this frame (up to 1024 bytes).
sfFunctionName :: Lens' StackFrame (Maybe TruncatableString)
sfFunctionName
  = lens _sfFunctionName
      (\ s a -> s{_sfFunctionName = a})

-- | The column number where the function call appears, if available. This is
-- important in JavaScript because of its anonymous functions.
sfColumnNumber :: Lens' StackFrame (Maybe Int64)
sfColumnNumber
  = lens _sfColumnNumber
      (\ s a -> s{_sfColumnNumber = a})
      . mapping _Coerce

-- | The name of the source file where the function call appears (up to 256
-- bytes).
sfFileName :: Lens' StackFrame (Maybe TruncatableString)
sfFileName
  = lens _sfFileName (\ s a -> s{_sfFileName = a})

instance FromJSON StackFrame where
        parseJSON
          = withObject "StackFrame"
              (\ o ->
                 StackFrame' <$>
                   (o .:? "loadModule") <*>
                     (o .:? "originalFunctionName")
                     <*> (o .:? "lineNumber")
                     <*> (o .:? "sourceVersion")
                     <*> (o .:? "functionName")
                     <*> (o .:? "columnNumber")
                     <*> (o .:? "fileName"))

instance ToJSON StackFrame where
        toJSON StackFrame'{..}
          = object
              (catMaybes
                 [("loadModule" .=) <$> _sfLoadModule,
                  ("originalFunctionName" .=) <$>
                    _sfOriginalFunctionName,
                  ("lineNumber" .=) <$> _sfLineNumber,
                  ("sourceVersion" .=) <$> _sfSourceVersion,
                  ("functionName" .=) <$> _sfFunctionName,
                  ("columnNumber" .=) <$> _sfColumnNumber,
                  ("fileName" .=) <$> _sfFileName])

-- | A collection of links, which are references from this span to a span in
-- the same or different trace.
--
-- /See:/ 'links' smart constructor.
data Links =
  Links'
    { _lDroppedLinksCount :: !(Maybe (Textual Int32))
    , _lLink :: !(Maybe [Link])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Links' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lDroppedLinksCount'
--
-- * 'lLink'
links
    :: Links
links = Links' {_lDroppedLinksCount = Nothing, _lLink = Nothing}


-- | The number of dropped links after the maximum size was enforced. If this
-- value is 0, then no links were dropped.
lDroppedLinksCount :: Lens' Links (Maybe Int32)
lDroppedLinksCount
  = lens _lDroppedLinksCount
      (\ s a -> s{_lDroppedLinksCount = a})
      . mapping _Coerce

-- | A collection of links.
lLink :: Lens' Links [Link]
lLink
  = lens _lLink (\ s a -> s{_lLink = a}) . _Default .
      _Coerce

instance FromJSON Links where
        parseJSON
          = withObject "Links"
              (\ o ->
                 Links' <$>
                   (o .:? "droppedLinksCount") <*>
                     (o .:? "link" .!= mempty))

instance ToJSON Links where
        toJSON Links'{..}
          = object
              (catMaybes
                 [("droppedLinksCount" .=) <$> _lDroppedLinksCount,
                  ("link" .=) <$> _lLink])

-- | A time-stamped annotation or message event in the Span.
--
-- /See:/ 'timeEvent' smart constructor.
data TimeEvent =
  TimeEvent'
    { _teMessageEvent :: !(Maybe MessageEvent)
    , _teAnnotation :: !(Maybe Annotation)
    , _teTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teMessageEvent'
--
-- * 'teAnnotation'
--
-- * 'teTime'
timeEvent
    :: TimeEvent
timeEvent =
  TimeEvent'
    {_teMessageEvent = Nothing, _teAnnotation = Nothing, _teTime = Nothing}


-- | An event describing a message sent\/received between Spans.
teMessageEvent :: Lens' TimeEvent (Maybe MessageEvent)
teMessageEvent
  = lens _teMessageEvent
      (\ s a -> s{_teMessageEvent = a})

-- | Text annotation with a set of attributes.
teAnnotation :: Lens' TimeEvent (Maybe Annotation)
teAnnotation
  = lens _teAnnotation (\ s a -> s{_teAnnotation = a})

-- | The timestamp indicating the time the event occurred.
teTime :: Lens' TimeEvent (Maybe UTCTime)
teTime
  = lens _teTime (\ s a -> s{_teTime = a}) .
      mapping _DateTime

instance FromJSON TimeEvent where
        parseJSON
          = withObject "TimeEvent"
              (\ o ->
                 TimeEvent' <$>
                   (o .:? "messageEvent") <*> (o .:? "annotation") <*>
                     (o .:? "time"))

instance ToJSON TimeEvent where
        toJSON TimeEvent'{..}
          = object
              (catMaybes
                 [("messageEvent" .=) <$> _teMessageEvent,
                  ("annotation" .=) <$> _teAnnotation,
                  ("time" .=) <$> _teTime])
