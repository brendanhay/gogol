{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudTrace
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends application trace data to Cloud Trace for viewing. Trace data is
-- collected for all App Engine applications by default. Trace data from
-- other applications can be provided using this API. This library is used
-- to interact with the Cloud Trace API directly. If you are looking to
-- instrument your application for Cloud Trace, we recommend using
-- OpenCensus.
--
-- /See:/ <https://cloud.google.com/trace Cloud Trace API Reference>
module Network.Google.CloudTrace
    (
    -- * Service Configuration
      cloudTraceService

    -- * OAuth Scopes
    , traceAppendScope
    , cloudPlatformScope

    -- * API Declaration
    , CloudTraceAPI

    -- * Resources

    -- ** cloudtrace.projects.traces.batchWrite
    , module Network.Google.Resource.CloudTrace.Projects.Traces.BatchWrite

    -- ** cloudtrace.projects.traces.spans.createSpan
    , module Network.Google.Resource.CloudTrace.Projects.Traces.Spans.CreateSpan

    -- * Types

    -- ** Span
    , Span
    , span
    , sSpanKind
    , sStatus
    , sStartTime
    , sChildSpanCount
    , sSameProcessAsParentSpan
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
    , tsValue
    , tsTruncatedByteCount

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

    -- ** MessageEvent
    , MessageEvent
    , messageEvent
    , meId
    , meUncompressedSizeBytes
    , meType
    , meCompressedSizeBytes

    -- ** Empty
    , Empty
    , empty

    -- ** SpanSpanKind
    , SpanSpanKind (..)

    -- ** Link
    , Link
    , link
    , lTraceId
    , lAttributes
    , lType
    , lSpanId

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** StackTrace
    , StackTrace
    , stackTrace
    , stStackTraceHashId
    , stStackFrames

    -- ** BatchWriteSpansRequest
    , BatchWriteSpansRequest
    , batchWriteSpansRequest
    , bwsrSpans

    -- ** MessageEventType
    , MessageEventType (..)

    -- ** Attributes
    , Attributes
    , attributes
    , aDroppedAttributesCount
    , aAttributeMap

    -- ** Module
    , Module
    , module'
    , mBuildId
    , mModule

    -- ** TimeEvents
    , TimeEvents
    , timeEvents
    , teDroppedMessageEventsCount
    , teDroppedAnnotationsCount
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

    -- ** TimeEvent
    , TimeEvent
    , timeEvent
    , teMessageEvent
    , teAnnotation
    , teTime
    ) where

import Network.Google.Prelude
import Network.Google.CloudTrace.Types
import Network.Google.Resource.CloudTrace.Projects.Traces.BatchWrite
import Network.Google.Resource.CloudTrace.Projects.Traces.Spans.CreateSpan

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Trace API service.
type CloudTraceAPI =
     ProjectsTracesSpansCreateSpanResource :<|>
       ProjectsTracesBatchWriteResource
