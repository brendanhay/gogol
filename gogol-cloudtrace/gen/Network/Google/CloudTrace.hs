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
-- Module      : Network.Google.CloudTrace
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends application trace data to Cloud Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Cloud Trace API directly. If you are looking to instrument your application for Cloud Trace, we recommend using OpenTelemetry.
--
-- /See:/ <https://cloud.google.com/trace Cloud Trace API Reference>
module Network.Google.CloudTrace
  ( -- * Configuration
    cloudTraceService,

    -- * OAuth Scopes
    cloudPlatformScope,
    traceAppendScope,

    -- * Resources

    -- ** cloudtrace.projects.traces.batchWrite
    CloudTraceProjectsTracesBatchWriteResource,
    newCloudTraceProjectsTracesBatchWrite,
    CloudTraceProjectsTracesBatchWrite,

    -- ** cloudtrace.projects.traces.spans.createSpan
    CloudTraceProjectsTracesSpansCreateSpanResource,
    newCloudTraceProjectsTracesSpansCreateSpan,
    CloudTraceProjectsTracesSpansCreateSpan,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Annotation
    Annotation (..),
    newAnnotation,

    -- ** AttributeValue
    AttributeValue (..),
    newAttributeValue,

    -- ** Attributes
    Attributes (..),
    newAttributes,

    -- ** Attributes_AttributeMap
    Attributes_AttributeMap (..),
    newAttributes_AttributeMap,

    -- ** BatchWriteSpansRequest
    BatchWriteSpansRequest (..),
    newBatchWriteSpansRequest,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Link
    Link (..),
    newLink,

    -- ** Link_Type
    Link_Type (..),

    -- ** Links
    Links (..),
    newLinks,

    -- ** MessageEvent
    MessageEvent (..),
    newMessageEvent,

    -- ** MessageEvent_Type
    MessageEvent_Type (..),

    -- ** Module
    Module (..),
    newModule,

    -- ** Span
    Span (..),
    newSpan,

    -- ** Span_SpanKind
    Span_SpanKind (..),

    -- ** StackFrame
    StackFrame (..),
    newStackFrame,

    -- ** StackFrames
    StackFrames (..),
    newStackFrames,

    -- ** StackTrace
    StackTrace (..),
    newStackTrace,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TimeEvent
    TimeEvent (..),
    newTimeEvent,

    -- ** TimeEvents
    TimeEvents (..),
    newTimeEvents,

    -- ** TruncatableString
    TruncatableString (..),
    newTruncatableString,
  )
where

import Network.Google.CloudTrace.Projects.Traces.BatchWrite
import Network.Google.CloudTrace.Projects.Traces.Spans.CreateSpan
import Network.Google.CloudTrace.Types
