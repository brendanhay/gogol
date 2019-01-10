{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTrace.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTrace.Types
    (
    -- * Service Configuration
      cloudTraceService

    -- * OAuth Scopes
    , traceAppendScope
    , cloudPlatformScope

    -- * Span
    , Span
    , span
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

    -- * TruncatableString
    , TruncatableString
    , truncatableString
    , tsValue
    , tsTruncatedByteCount

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

    -- * MessageEvent
    , MessageEvent
    , messageEvent
    , meId
    , meUncompressedSizeBytes
    , meType
    , meCompressedSizeBytes

    -- * Empty
    , Empty
    , empty

    -- * Link
    , Link
    , link
    , lTraceId
    , lAttributes
    , lType
    , lSpanId

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * StackTrace
    , StackTrace
    , stackTrace
    , stStackTraceHashId
    , stStackFrames

    -- * BatchWriteSpansRequest
    , BatchWriteSpansRequest
    , batchWriteSpansRequest
    , bwsrSpans

    -- * MessageEventType
    , MessageEventType (..)

    -- * Attributes
    , Attributes
    , attributes
    , aDroppedAttributesCount
    , aAttributeMap

    -- * Module
    , Module
    , module'
    , mBuildId
    , mModule

    -- * TimeEvents
    , TimeEvents
    , timeEvents
    , teDroppedMessageEventsCount
    , teDroppedAnnotationsCount
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

    -- * TimeEvent
    , TimeEvent
    , timeEvent
    , teMessageEvent
    , teAnnotation
    , teTime
    ) where

import           Network.Google.CloudTrace.Types.Product
import           Network.Google.CloudTrace.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Stackdriver Trace API. This contains the host and root path used as a starting point for constructing service requests.
cloudTraceService :: ServiceConfig
cloudTraceService
  = defaultService (ServiceId "cloudtrace:v2")
      "cloudtrace.googleapis.com"

-- | Write Trace data for a project or application
traceAppendScope :: Proxy '["https://www.googleapis.com/auth/trace.append"]
traceAppendScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
