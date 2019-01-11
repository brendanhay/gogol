{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Tracing.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Tracing.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Tracing.Types.Sum

-- | A span represents a single operation within a trace. Spans can be nested
-- to form a trace tree. Often, a trace contains a root span that describes
-- the end-to-end latency and, optionally, one or more subspans for its
-- sub-operations. (A trace could alternatively contain multiple root
-- spans, or none at all.) Spans do not need to be contiguous. There may be
-- gaps and\/or overlaps between spans in a trace.
--
-- /See:/ 'span' smart constructor.
data Span = Span'
    { _sStatus       :: !(Maybe Status)
    , _sStartTime    :: !(Maybe DateTime')
    , _sName         :: !(Maybe Text)
    , _sStackTrace   :: !(Maybe StackTrace)
    , _sAttributes   :: !(Maybe Attributes)
    , _sEndTime      :: !(Maybe DateTime')
    , _sTimeEvents   :: !(Maybe TimeEvents)
    , _sDisplayName  :: !(Maybe TruncatableString)
    , _sParentSpanId :: !(Maybe Text)
    , _sLinks        :: !(Maybe Links)
    , _sSpanId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Span' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStatus'
--
-- * 'sStartTime'
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
    { _sStatus = Nothing
    , _sStartTime = Nothing
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

-- | An optional final status for this span.
sStatus :: Lens' Span (Maybe Status)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | Start time of the span. On the client side, this is the local machine
-- clock time at which the span execution was started; on the server side,
-- this is the time at which the server application handler started
-- running.
sStartTime :: Lens' Span (Maybe UTCTime)
sStartTime
  = lens _sStartTime (\ s a -> s{_sStartTime = a}) .
      mapping _DateTime

-- | The resource name of Span in the format
-- \`projects\/PROJECT_ID\/traces\/TRACE_ID\/spans\/SPAN_ID\`. \`TRACE_ID\`
-- is a unique identifier for a trace within a project and is a
-- base16-encoded, case-insensitive string and is required to be 32 char
-- long. \`SPAN_ID\` is a unique identifier for a span within a trace. It
-- is a base 16-encoded, case-insensitive string of a 8-bytes array and is
-- required to be 16 char long.
sName :: Lens' Span (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Stack trace captured at the start of the span.
sStackTrace :: Lens' Span (Maybe StackTrace)
sStackTrace
  = lens _sStackTrace (\ s a -> s{_sStackTrace = a})

-- | A set of attributes on the span. A maximum of 32 attributes are allowed
-- per Span.
sAttributes :: Lens' Span (Maybe Attributes)
sAttributes
  = lens _sAttributes (\ s a -> s{_sAttributes = a})

-- | End time of the span. On the client side, this is the local machine
-- clock time at which the span execution was ended; on the server side,
-- this is the time at which the server application handler stopped
-- running.
sEndTime :: Lens' Span (Maybe UTCTime)
sEndTime
  = lens _sEndTime (\ s a -> s{_sEndTime = a}) .
      mapping _DateTime

-- | A maximum of 32 annotations and 128 network events are allowed per Span.
sTimeEvents :: Lens' Span (Maybe TimeEvents)
sTimeEvents
  = lens _sTimeEvents (\ s a -> s{_sTimeEvents = a})

-- | Description of the operation in the span. It is sanitized and displayed
-- in the Stackdriver Trace tool in the {% dynamic print
-- site_values.console_name %}. The display_name may be a method name or
-- some other per-call site name. For the same executable and the same call
-- point, a best practice is to use a consistent operation name, which
-- makes it easier to correlate cross-trace spans. The maximum length for
-- the display_name is 128 bytes.
sDisplayName :: Lens' Span (Maybe TruncatableString)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | ID of parent span which is a base 16-encoded, case-insensitive string of
-- a 8-bytes array and is required to be 16 char long. If this is a root
-- span, the value must be empty.
sParentSpanId :: Lens' Span (Maybe Text)
sParentSpanId
  = lens _sParentSpanId
      (\ s a -> s{_sParentSpanId = a})

-- | A maximum of 128 links are allowed per Span.
sLinks :: Lens' Span (Maybe Links)
sLinks = lens _sLinks (\ s a -> s{_sLinks = a})

-- | Unique identifier for a span within a trace. It is a base 16-encoded,
-- case-insensitive string of a 8-bytes array and is required.
sSpanId :: Lens' Span (Maybe Text)
sSpanId = lens _sSpanId (\ s a -> s{_sSpanId = a})

instance FromJSON Span where
        parseJSON
          = withObject "Span"
              (\ o ->
                 Span' <$>
                   (o .:? "status") <*> (o .:? "startTime") <*>
                     (o .:? "name")
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
                 [("status" .=) <$> _sStatus,
                  ("startTime" .=) <$> _sStartTime,
                  ("name" .=) <$> _sName,
                  ("stackTrace" .=) <$> _sStackTrace,
                  ("attributes" .=) <$> _sAttributes,
                  ("endTime" .=) <$> _sEndTime,
                  ("timeEvents" .=) <$> _sTimeEvents,
                  ("displayName" .=) <$> _sDisplayName,
                  ("parentSpanId" .=) <$> _sParentSpanId,
                  ("links" .=) <$> _sLinks,
                  ("spanId" .=) <$> _sSpanId])

-- | Represents a string value that might be truncated.
--
-- /See:/ 'truncatableString' smart constructor.
data TruncatableString = TruncatableString'
    { _tsTruncatedCharacterCount :: !(Maybe (Textual Int32))
    , _tsValue                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TruncatableString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTruncatedCharacterCount'
--
-- * 'tsValue'
truncatableString
    :: TruncatableString
truncatableString =
    TruncatableString'
    { _tsTruncatedCharacterCount = Nothing
    , _tsValue = Nothing
    }

-- | The number of characters truncated from the original string value. If 0
-- it means that the string value was not truncated.
tsTruncatedCharacterCount :: Lens' TruncatableString (Maybe Int32)
tsTruncatedCharacterCount
  = lens _tsTruncatedCharacterCount
      (\ s a -> s{_tsTruncatedCharacterCount = a})
      . mapping _Coerce

-- | The truncated string value. E.g. for a string attribute this may have up
-- to 256 bytes.
tsValue :: Lens' TruncatableString (Maybe Text)
tsValue = lens _tsValue (\ s a -> s{_tsValue = a})

instance FromJSON TruncatableString where
        parseJSON
          = withObject "TruncatableString"
              (\ o ->
                 TruncatableString' <$>
                   (o .:? "truncatedCharacterCount") <*>
                     (o .:? "value"))

instance ToJSON TruncatableString where
        toJSON TruncatableString'{..}
          = object
              (catMaybes
                 [("truncatedCharacterCount" .=) <$>
                    _tsTruncatedCharacterCount,
                  ("value" .=) <$> _tsValue])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
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

-- | The maximum key length is 128 bytes (attributes are dropped if the key
-- size is larger than the maximum allowed). The value can be a string (up
-- to 256 bytes), integer, or boolean (true\/false). Some common pair
-- examples: \"\/instance_id\": \"my-instance\" \"\/zone\":
-- \"us-central1-a\" \"\/grpc\/peer_address\": \"ip:port\" (dns, etc.)
-- \"\/grpc\/deadline\": \"Duration\" \"\/http\/user_agent\"
-- \"\/http\/request_bytes\": 300 \"\/http\/response_bytes\": 1200
-- \"\/http\/url\": google.com\/apis \"abc.com\/myattribute\": true
--
-- /See:/ 'attributesAttributeMap' smart constructor.
newtype AttributesAttributeMap = AttributesAttributeMap'
    { _aamAddtional :: HashMap Text AttributeValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AttributesAttributeMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aamAddtional'
attributesAttributeMap
    :: HashMap Text AttributeValue -- ^ 'aamAddtional'
    -> AttributesAttributeMap
attributesAttributeMap pAamAddtional_ =
    AttributesAttributeMap'
    { _aamAddtional = _Coerce # pAamAddtional_
    }

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

-- | Text annotation with a set of attributes. A maximum of 32 annotations
-- are allowed per Span.
--
-- /See:/ 'annotation' smart constructor.
data Annotation = Annotation'
    { _aAttributes  :: !(Maybe Attributes)
    , _aDescription :: !(Maybe TruncatableString)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAttributes'
--
-- * 'aDescription'
annotation
    :: Annotation
annotation =
    Annotation'
    { _aAttributes = Nothing
    , _aDescription = Nothing
    }

-- | A set of attributes on the annotation. A maximum of 4 attributes are
-- allowed per Annotation.
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

-- | The allowed types for the value side of an attribute key:value pair.
--
-- /See:/ 'attributeValue' smart constructor.
data AttributeValue = AttributeValue'
    { _avBoolValue   :: !(Maybe Bool)
    , _avIntValue    :: !(Maybe (Textual Int64))
    , _avStringValue :: !(Maybe TruncatableString)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _avBoolValue = Nothing
    , _avIntValue = Nothing
    , _avStringValue = Nothing
    }

-- | A boolean value.
avBoolValue :: Lens' AttributeValue (Maybe Bool)
avBoolValue
  = lens _avBoolValue (\ s a -> s{_avBoolValue = a})

-- | An integer value.
avIntValue :: Lens' AttributeValue (Maybe Int64)
avIntValue
  = lens _avIntValue (\ s a -> s{_avIntValue = a}) .
      mapping _Coerce

-- | A string value (up to 256 bytes).
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

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A pointer from this span to another span in a different \`Trace\` within
-- the same service project or within a different service project. Used
-- (for example) in batching operations, where a single batch handler
-- processes multiple requests from different traces or when receives a
-- request from a different service project.
--
-- /See:/ 'link' smart constructor.
data Link = Link'
    { _lTraceId :: !(Maybe Text)
    , _lType    :: !(Maybe LinkType)
    , _lSpanId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lTraceId'
--
-- * 'lType'
--
-- * 'lSpanId'
link
    :: Link
link =
    Link'
    { _lTraceId = Nothing
    , _lType = Nothing
    , _lSpanId = Nothing
    }

-- | \`TRACE_ID\` is a unique identifier for a trace within a project. It is
-- a base16-encoded, case-insensitive string of a 16-bytes array and is
-- required to be 32 char long.
lTraceId :: Lens' Link (Maybe Text)
lTraceId = lens _lTraceId (\ s a -> s{_lTraceId = a})

-- | The relationship of the current span relative to the linked span.
lType :: Lens' Link (Maybe LinkType)
lType = lens _lType (\ s a -> s{_lType = a})

-- | \`SPAN_ID\` is a unique identifier for a span within a trace. It is a
-- base16-encoded, case-insensitive string of a 8-bytes array and is
-- required to be 16 char long.
lSpanId :: Lens' Link (Maybe Text)
lSpanId = lens _lSpanId (\ s a -> s{_lSpanId = a})

instance FromJSON Link where
        parseJSON
          = withObject "Link"
              (\ o ->
                 Link' <$>
                   (o .:? "traceId") <*> (o .:? "type") <*>
                     (o .:? "spanId"))

instance ToJSON Link where
        toJSON Link'{..}
          = object
              (catMaybes
                 [("traceId" .=) <$> _lTraceId,
                  ("type" .=) <$> _lType, ("spanId" .=) <$> _lSpanId])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

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

-- | The response message for the \`ListSpans\` method.
--
-- /See:/ 'listSpansResponse' smart constructor.
data ListSpansResponse = ListSpansResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSpans         :: !(Maybe [Span])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListSpansResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSpans'
listSpansResponse
    :: ListSpansResponse
listSpansResponse =
    ListSpansResponse'
    { _lsrNextPageToken = Nothing
    , _lsrSpans = Nothing
    }

-- | If defined, indicates that there are more spans that match the request.
-- Pass this as the value of \`pageToken\` in a subsequent request to
-- retrieve additional spans.
lsrNextPageToken :: Lens' ListSpansResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The requested spans if there are any in the specified trace.
lsrSpans :: Lens' ListSpansResponse [Span]
lsrSpans
  = lens _lsrSpans (\ s a -> s{_lsrSpans = a}) .
      _Default
      . _Coerce

instance FromJSON ListSpansResponse where
        parseJSON
          = withObject "ListSpansResponse"
              (\ o ->
                 ListSpansResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "spans" .!= mempty))

instance ToJSON ListSpansResponse where
        toJSON ListSpansResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("spans" .=) <$> _lsrSpans])

-- | StackTrace collected in a trace.
--
-- /See:/ 'stackTrace' smart constructor.
data StackTrace = StackTrace'
    { _stStackTraceHashId :: !(Maybe (Textual Word64))
    , _stStackFrames      :: !(Maybe StackFrames)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    StackTrace'
    { _stStackTraceHashId = Nothing
    , _stStackFrames = Nothing
    }

-- | The hash ID is used to conserve network bandwidth for duplicate stack
-- traces within a single trace. Often multiple spans will have identical
-- stack traces. The first occurrence of a stack trace should contain both
-- the \`stackFrame\` content and a value in \`stackTraceHashId\`.
-- Subsequent spans within the same request can refer to that stack trace
-- by only setting \`stackTraceHashId\`.
stStackTraceHashId :: Lens' StackTrace (Maybe Word64)
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
newtype BatchWriteSpansRequest = BatchWriteSpansRequest'
    { _bwsrSpans :: Maybe [Span]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchWriteSpansRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bwsrSpans'
batchWriteSpansRequest
    :: BatchWriteSpansRequest
batchWriteSpansRequest =
    BatchWriteSpansRequest'
    { _bwsrSpans = Nothing
    }

-- | A collection of spans.
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

-- | Attributes of a span with a key:value format.
--
-- /See:/ 'attributes' smart constructor.
data Attributes = Attributes'
    { _aDroppedAttributesCount :: !(Maybe (Textual Int32))
    , _aAttributeMap           :: !(Maybe AttributesAttributeMap)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Attributes'
    { _aDroppedAttributesCount = Nothing
    , _aAttributeMap = Nothing
    }

-- | The number of dropped attributes after the maximum size was enforced. If
-- 0 then no attributes were dropped.
aDroppedAttributesCount :: Lens' Attributes (Maybe Int32)
aDroppedAttributesCount
  = lens _aDroppedAttributesCount
      (\ s a -> s{_aDroppedAttributesCount = a})
      . mapping _Coerce

-- | The maximum key length is 128 bytes (attributes are dropped if the key
-- size is larger than the maximum allowed). The value can be a string (up
-- to 256 bytes), integer, or boolean (true\/false). Some common pair
-- examples: \"\/instance_id\": \"my-instance\" \"\/zone\":
-- \"us-central1-a\" \"\/grpc\/peer_address\": \"ip:port\" (dns, etc.)
-- \"\/grpc\/deadline\": \"Duration\" \"\/http\/user_agent\"
-- \"\/http\/request_bytes\": 300 \"\/http\/response_bytes\": 1200
-- \"\/http\/url\": google.com\/apis \"abc.com\/myattribute\": true
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

-- | An event describing an RPC message sent\/received on the network. A
-- maximum of 128 network events are allowed per Span.
--
-- /See:/ 'networkEvent' smart constructor.
data NetworkEvent = NetworkEvent'
    { _neTime        :: !(Maybe DateTime')
    , _neMessageSize :: !(Maybe (Textual Word64))
    , _neType        :: !(Maybe NetworkEventType)
    , _neMessageId   :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neTime'
--
-- * 'neMessageSize'
--
-- * 'neType'
--
-- * 'neMessageId'
networkEvent
    :: NetworkEvent
networkEvent =
    NetworkEvent'
    { _neTime = Nothing
    , _neMessageSize = Nothing
    , _neType = Nothing
    , _neMessageId = Nothing
    }

-- | If available, this is the kernel time: * For sent messages, this is the
-- time at which the first bit was sent. * For received messages, this is
-- the time at which the last bit was received.
neTime :: Lens' NetworkEvent (Maybe UTCTime)
neTime
  = lens _neTime (\ s a -> s{_neTime = a}) .
      mapping _DateTime

-- | The number of bytes sent or received.
neMessageSize :: Lens' NetworkEvent (Maybe Word64)
neMessageSize
  = lens _neMessageSize
      (\ s a -> s{_neMessageSize = a})
      . mapping _Coerce

-- | Type of NetworkEvent. Indicates whether the RPC message was sent or
-- received.
neType :: Lens' NetworkEvent (Maybe NetworkEventType)
neType = lens _neType (\ s a -> s{_neType = a})

-- | An identifier for the message, which must be unique in this span.
neMessageId :: Lens' NetworkEvent (Maybe Word64)
neMessageId
  = lens _neMessageId (\ s a -> s{_neMessageId = a}) .
      mapping _Coerce

instance FromJSON NetworkEvent where
        parseJSON
          = withObject "NetworkEvent"
              (\ o ->
                 NetworkEvent' <$>
                   (o .:? "time") <*> (o .:? "messageSize") <*>
                     (o .:? "type")
                     <*> (o .:? "messageId"))

instance ToJSON NetworkEvent where
        toJSON NetworkEvent'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _neTime,
                  ("messageSize" .=) <$> _neMessageSize,
                  ("type" .=) <$> _neType,
                  ("messageId" .=) <$> _neMessageId])

-- | Binary module.
--
-- /See:/ 'module'' smart constructor.
data Module = Module'
    { _mBuildId :: !(Maybe TruncatableString)
    , _mModule  :: !(Maybe TruncatableString)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Module' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mBuildId'
--
-- * 'mModule'
module'
    :: Module
module' =
    Module'
    { _mBuildId = Nothing
    , _mModule = Nothing
    }

-- | Build_id is a unique identifier for the module, usually a hash of its
-- contents (up to 128 characters).
mBuildId :: Lens' Module (Maybe TruncatableString)
mBuildId = lens _mBuildId (\ s a -> s{_mBuildId = a})

-- | E.g. main binary, kernel modules, and dynamic libraries such as libc.so,
-- sharedlib.so (up to 256 characters).
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
-- pairs, or details of an RPC message sent\/received on the network.
--
-- /See:/ 'timeEvents' smart constructor.
data TimeEvents = TimeEvents'
    { _teDroppedAnnotationsCount   :: !(Maybe (Textual Int32))
    , _teDroppedNetworkEventsCount :: !(Maybe (Textual Int32))
    , _teTimeEvent                 :: !(Maybe [TimeEvent])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teDroppedAnnotationsCount'
--
-- * 'teDroppedNetworkEventsCount'
--
-- * 'teTimeEvent'
timeEvents
    :: TimeEvents
timeEvents =
    TimeEvents'
    { _teDroppedAnnotationsCount = Nothing
    , _teDroppedNetworkEventsCount = Nothing
    , _teTimeEvent = Nothing
    }

-- | The number of dropped annotations after the maximum size was enforced.
-- If 0 then no annotations were dropped.
teDroppedAnnotationsCount :: Lens' TimeEvents (Maybe Int32)
teDroppedAnnotationsCount
  = lens _teDroppedAnnotationsCount
      (\ s a -> s{_teDroppedAnnotationsCount = a})
      . mapping _Coerce

-- | The number of dropped network events after the maximum size was
-- enforced. If 0 then no annotations were dropped.
teDroppedNetworkEventsCount :: Lens' TimeEvents (Maybe Int32)
teDroppedNetworkEventsCount
  = lens _teDroppedNetworkEventsCount
      (\ s a -> s{_teDroppedNetworkEventsCount = a})
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
                   (o .:? "droppedAnnotationsCount") <*>
                     (o .:? "droppedNetworkEventsCount")
                     <*> (o .:? "timeEvent" .!= mempty))

instance ToJSON TimeEvents where
        toJSON TimeEvents'{..}
          = object
              (catMaybes
                 [("droppedAnnotationsCount" .=) <$>
                    _teDroppedAnnotationsCount,
                  ("droppedNetworkEventsCount" .=) <$>
                    _teDroppedNetworkEventsCount,
                  ("timeEvent" .=) <$> _teTimeEvent])

-- | Represents collection of StackFrames that can be truncated.
--
-- /See:/ 'stackFrames' smart constructor.
data StackFrames = StackFrames'
    { _sfDroppedFramesCount :: !(Maybe (Textual Int32))
    , _sfFrame              :: !(Maybe [StackFrame])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StackFrames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfDroppedFramesCount'
--
-- * 'sfFrame'
stackFrames
    :: StackFrames
stackFrames =
    StackFrames'
    { _sfDroppedFramesCount = Nothing
    , _sfFrame = Nothing
    }

-- | The number of dropped stack frames after the maximum size was enforced.
-- If 0 then no frames were dropped.
sfDroppedFramesCount :: Lens' StackFrames (Maybe Int32)
sfDroppedFramesCount
  = lens _sfDroppedFramesCount
      (\ s a -> s{_sfDroppedFramesCount = a})
      . mapping _Coerce

-- | Stack frames in this stack trace.
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
data StackFrame = StackFrame'
    { _sfLoadModule           :: !(Maybe Module)
    , _sfOriginalFunctionName :: !(Maybe TruncatableString)
    , _sfLineNumber           :: !(Maybe (Textual Int64))
    , _sfSourceVersion        :: !(Maybe TruncatableString)
    , _sfFunctionName         :: !(Maybe TruncatableString)
    , _sfColumnNumber         :: !(Maybe (Textual Int64))
    , _sfFileName             :: !(Maybe TruncatableString)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Binary module the code is loaded from.
sfLoadModule :: Lens' StackFrame (Maybe Module)
sfLoadModule
  = lens _sfLoadModule (\ s a -> s{_sfLoadModule = a})

-- | Used when the function name is
-- [mangled](http:\/\/www.avabodh.com\/cxxin\/namemangling.html). May be
-- fully-qualified (up to 1024 characters).
sfOriginalFunctionName :: Lens' StackFrame (Maybe TruncatableString)
sfOriginalFunctionName
  = lens _sfOriginalFunctionName
      (\ s a -> s{_sfOriginalFunctionName = a})

-- | Line number of the frame.
sfLineNumber :: Lens' StackFrame (Maybe Int64)
sfLineNumber
  = lens _sfLineNumber (\ s a -> s{_sfLineNumber = a})
      . mapping _Coerce

-- | The version of the deployed source code (up to 128 characters).
sfSourceVersion :: Lens' StackFrame (Maybe TruncatableString)
sfSourceVersion
  = lens _sfSourceVersion
      (\ s a -> s{_sfSourceVersion = a})

-- | The fully-qualified name that uniquely identifies this function or
-- method (up to 1024 characters).
sfFunctionName :: Lens' StackFrame (Maybe TruncatableString)
sfFunctionName
  = lens _sfFunctionName
      (\ s a -> s{_sfFunctionName = a})

-- | Column number is important in JavaScript (anonymous functions). May not
-- be available in some languages.
sfColumnNumber :: Lens' StackFrame (Maybe Int64)
sfColumnNumber
  = lens _sfColumnNumber
      (\ s a -> s{_sfColumnNumber = a})
      . mapping _Coerce

-- | The filename of the file containing this frame (up to 256 characters).
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
data Links = Links'
    { _lDroppedLinksCount :: !(Maybe (Textual Int32))
    , _lLink              :: !(Maybe [Link])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Links' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lDroppedLinksCount'
--
-- * 'lLink'
links
    :: Links
links =
    Links'
    { _lDroppedLinksCount = Nothing
    , _lLink = Nothing
    }

-- | The number of dropped links after the maximum size was enforced. If 0
-- then no links were dropped.
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

-- | The response message for the \`ListTraces\` method.
--
-- /See:/ 'listTracesResponse' smart constructor.
data ListTracesResponse = ListTracesResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTraces        :: !(Maybe [Trace])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTracesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTraces'
listTracesResponse
    :: ListTracesResponse
listTracesResponse =
    ListTracesResponse'
    { _ltrNextPageToken = Nothing
    , _ltrTraces = Nothing
    }

-- | If defined, indicates that there are more traces that match the request
-- and that this value should be passed to the next request to continue
-- retrieving additional traces.
ltrNextPageToken :: Lens' ListTracesResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | List of trace records returned.
ltrTraces :: Lens' ListTracesResponse [Trace]
ltrTraces
  = lens _ltrTraces (\ s a -> s{_ltrTraces = a}) .
      _Default
      . _Coerce

instance FromJSON ListTracesResponse where
        parseJSON
          = withObject "ListTracesResponse"
              (\ o ->
                 ListTracesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "traces" .!= mempty))

instance ToJSON ListTracesResponse where
        toJSON ListTracesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("traces" .=) <$> _ltrTraces])

-- | A time-stamped annotation in the Span.
--
-- /See:/ 'timeEvent' smart constructor.
data TimeEvent = TimeEvent'
    { _teAnnotation   :: !(Maybe Annotation)
    , _teTime         :: !(Maybe DateTime')
    , _teNetworkEvent :: !(Maybe NetworkEvent)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teAnnotation'
--
-- * 'teTime'
--
-- * 'teNetworkEvent'
timeEvent
    :: TimeEvent
timeEvent =
    TimeEvent'
    { _teAnnotation = Nothing
    , _teTime = Nothing
    , _teNetworkEvent = Nothing
    }

-- | One or more key:value pairs.
teAnnotation :: Lens' TimeEvent (Maybe Annotation)
teAnnotation
  = lens _teAnnotation (\ s a -> s{_teAnnotation = a})

-- | The timestamp indicating the time the event occurred.
teTime :: Lens' TimeEvent (Maybe UTCTime)
teTime
  = lens _teTime (\ s a -> s{_teTime = a}) .
      mapping _DateTime

-- | An event describing an RPC message sent\/received on the network.
teNetworkEvent :: Lens' TimeEvent (Maybe NetworkEvent)
teNetworkEvent
  = lens _teNetworkEvent
      (\ s a -> s{_teNetworkEvent = a})

instance FromJSON TimeEvent where
        parseJSON
          = withObject "TimeEvent"
              (\ o ->
                 TimeEvent' <$>
                   (o .:? "annotation") <*> (o .:? "time") <*>
                     (o .:? "networkEvent"))

instance ToJSON TimeEvent where
        toJSON TimeEvent'{..}
          = object
              (catMaybes
                 [("annotation" .=) <$> _teAnnotation,
                  ("time" .=) <$> _teTime,
                  ("networkEvent" .=) <$> _teNetworkEvent])

-- | A trace describes how long it takes for an application to perform some
-- operations. It consists of a set of spans, each representing an
-- operation and including time information and operation details.
--
-- /See:/ 'trace' smart constructor.
newtype Trace = Trace'
    { _tName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Trace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
trace
    :: Trace
trace =
    Trace'
    { _tName = Nothing
    }

-- | The resource name of Trace in the format
-- \`projects\/PROJECT_ID\/traces\/TRACE_ID\`. \`TRACE_ID\` is a unique
-- identifier for a trace within a project and is a base16-encoded,
-- case-insensitive string and is required to be 32 char long.
tName :: Lens' Trace (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

instance FromJSON Trace where
        parseJSON
          = withObject "Trace"
              (\ o -> Trace' <$> (o .:? "name"))

instance ToJSON Trace where
        toJSON Trace'{..}
          = object (catMaybes [("name" .=) <$> _tName])
