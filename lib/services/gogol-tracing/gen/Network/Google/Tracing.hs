{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Tracing
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send and retrieve trace data from Google Stackdriver Trace.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference>
module Network.Google.Tracing
    (
    -- * Service Configuration
      tracingService

    -- * OAuth Scopes
    , traceAppendScope
    , traceReadOnlyScope
    , cloudPlatformScope

    -- * API Declaration
    , TracingAPI

    -- * Resources

    -- ** tracing.projects.traces.batchWrite
    , module Network.Google.Resource.Tracing.Projects.Traces.BatchWrite

    -- ** tracing.projects.traces.list
    , module Network.Google.Resource.Tracing.Projects.Traces.List

    -- ** tracing.projects.traces.listSpans
    , module Network.Google.Resource.Tracing.Projects.Traces.ListSpans

    -- ** tracing.projects.traces.spans.create
    , module Network.Google.Resource.Tracing.Projects.Traces.Spans.Create

    -- * Types

    -- ** Span
    , Span
    , span
    , sStatus
    , sStartTime
    , sName
    , sStackTrace
    , sAttributes
    , sEndTime
    , sTimeEvents
    , sDisplayName
    , sParentSpanId
    , sLinks
    , sSpanId

    -- ** TruncatableString
    , TruncatableString
    , truncatableString
    , tsTruncatedCharacterCount
    , tsValue

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** AttributesAttributeMap
    , AttributesAttributeMap
    , attributesAttributeMap
    , aamAddtional

    -- ** Annotation
    , Annotation
    , annotation
    , aAttributes
    , aDescription

    -- ** AttributeValue
    , AttributeValue
    , attributeValue
    , avBoolValue
    , avIntValue
    , avStringValue

    -- ** NetworkEventType
    , NetworkEventType (..)

    -- ** Empty
    , Empty
    , empty

    -- ** Link
    , Link
    , link
    , lTraceId
    , lType
    , lSpanId

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ListSpansResponse
    , ListSpansResponse
    , listSpansResponse
    , lsrNextPageToken
    , lsrSpans

    -- ** StackTrace
    , StackTrace
    , stackTrace
    , stStackTraceHashId
    , stStackFrames

    -- ** BatchWriteSpansRequest
    , BatchWriteSpansRequest
    , batchWriteSpansRequest
    , bwsrSpans

    -- ** Attributes
    , Attributes
    , attributes
    , aDroppedAttributesCount
    , aAttributeMap

    -- ** NetworkEvent
    , NetworkEvent
    , networkEvent
    , neTime
    , neMessageSize
    , neType
    , neMessageId

    -- ** Module
    , Module
    , module'
    , mBuildId
    , mModule

    -- ** TimeEvents
    , TimeEvents
    , timeEvents
    , teDroppedAnnotationsCount
    , teDroppedNetworkEventsCount
    , teTimeEvent

    -- ** Xgafv
    , Xgafv (..)

    -- ** StackFrames
    , StackFrames
    , stackFrames
    , sfDroppedFramesCount
    , sfFrame

    -- ** LinkType
    , LinkType (..)

    -- ** StackFrame
    , StackFrame
    , stackFrame
    , sfLoadModule
    , sfOriginalFunctionName
    , sfLineNumber
    , sfSourceVersion
    , sfFunctionName
    , sfColumnNumber
    , sfFileName

    -- ** Links
    , Links
    , links
    , lDroppedLinksCount
    , lLink

    -- ** ListTracesResponse
    , ListTracesResponse
    , listTracesResponse
    , ltrNextPageToken
    , ltrTraces

    -- ** TimeEvent
    , TimeEvent
    , timeEvent
    , teAnnotation
    , teTime
    , teNetworkEvent

    -- ** Trace
    , Trace
    , trace
    , tName
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Tracing.Projects.Traces.BatchWrite
import Network.Google.Resource.Tracing.Projects.Traces.List
import Network.Google.Resource.Tracing.Projects.Traces.ListSpans
import Network.Google.Resource.Tracing.Projects.Traces.Spans.Create
import Network.Google.Tracing.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Tracing API service.
type TracingAPI =
     ProjectsTracesSpansCreateResource :<|>
       ProjectsTracesListResource
       :<|> ProjectsTracesBatchWriteResource
       :<|> ProjectsTracesListSpansResource
