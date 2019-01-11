{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Tracing.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Tracing.Types
    (
    -- * Service Configuration
      tracingService

    -- * OAuth Scopes
    , traceAppendScope
    , traceReadOnlyScope
    , cloudPlatformScope

    -- * Span
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

    -- * TruncatableString
    , TruncatableString
    , truncatableString
    , tsTruncatedCharacterCount
    , tsValue

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * AttributesAttributeMap
    , AttributesAttributeMap
    , attributesAttributeMap
    , aamAddtional

    -- * Annotation
    , Annotation
    , annotation
    , aAttributes
    , aDescription

    -- * AttributeValue
    , AttributeValue
    , attributeValue
    , avBoolValue
    , avIntValue
    , avStringValue

    -- * NetworkEventType
    , NetworkEventType (..)

    -- * Empty
    , Empty
    , empty

    -- * Link
    , Link
    , link
    , lTraceId
    , lType
    , lSpanId

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ListSpansResponse
    , ListSpansResponse
    , listSpansResponse
    , lsrNextPageToken
    , lsrSpans

    -- * StackTrace
    , StackTrace
    , stackTrace
    , stStackTraceHashId
    , stStackFrames

    -- * BatchWriteSpansRequest
    , BatchWriteSpansRequest
    , batchWriteSpansRequest
    , bwsrSpans

    -- * Attributes
    , Attributes
    , attributes
    , aDroppedAttributesCount
    , aAttributeMap

    -- * NetworkEvent
    , NetworkEvent
    , networkEvent
    , neTime
    , neMessageSize
    , neType
    , neMessageId

    -- * Module
    , Module
    , module'
    , mBuildId
    , mModule

    -- * TimeEvents
    , TimeEvents
    , timeEvents
    , teDroppedAnnotationsCount
    , teDroppedNetworkEventsCount
    , teTimeEvent

    -- * Xgafv
    , Xgafv (..)

    -- * StackFrames
    , StackFrames
    , stackFrames
    , sfDroppedFramesCount
    , sfFrame

    -- * LinkType
    , LinkType (..)

    -- * StackFrame
    , StackFrame
    , stackFrame
    , sfLoadModule
    , sfOriginalFunctionName
    , sfLineNumber
    , sfSourceVersion
    , sfFunctionName
    , sfColumnNumber
    , sfFileName

    -- * Links
    , Links
    , links
    , lDroppedLinksCount
    , lLink

    -- * ListTracesResponse
    , ListTracesResponse
    , listTracesResponse
    , ltrNextPageToken
    , ltrTraces

    -- * TimeEvent
    , TimeEvent
    , timeEvent
    , teAnnotation
    , teTime
    , teNetworkEvent

    -- * Trace
    , Trace
    , trace
    , tName
    ) where

import           Network.Google.Prelude
import           Network.Google.Tracing.Types.Product
import           Network.Google.Tracing.Types.Sum

-- | Default request referring to version 'v2' of the Google Tracing API. This contains the host and root path used as a starting point for constructing service requests.
tracingService :: ServiceConfig
tracingService
  = defaultService (ServiceId "tracing:v2")
      "tracing.googleapis.com"

-- | Write Trace data for a project or application
traceAppendScope :: Proxy '["https://www.googleapis.com/auth/trace.append"]
traceAppendScope = Proxy;

-- | Read Trace data for a project or application
traceReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/trace.readonly"]
traceReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
