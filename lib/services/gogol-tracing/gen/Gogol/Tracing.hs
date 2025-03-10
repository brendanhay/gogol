{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Tracing
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send and retrieve trace data from Google Stackdriver Trace.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference>
module Gogol.Tracing
  ( -- * Configuration
    tracingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Trace'Append,
    Trace'Readonly,

    -- * Resources

    -- ** tracing.projects.traces.batchWrite
    TracingProjectsTracesBatchWriteResource,
    TracingProjectsTracesBatchWrite (..),
    newTracingProjectsTracesBatchWrite,

    -- ** tracing.projects.traces.list
    TracingProjectsTracesListResource,
    TracingProjectsTracesList (..),
    newTracingProjectsTracesList,

    -- ** tracing.projects.traces.listSpans
    TracingProjectsTracesListSpansResource,
    TracingProjectsTracesListSpans (..),
    newTracingProjectsTracesListSpans,

    -- ** tracing.projects.traces.spans.create
    TracingProjectsTracesSpansCreateResource,
    TracingProjectsTracesSpansCreate (..),
    newTracingProjectsTracesSpansCreate,

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

    -- ** ListSpansResponse
    ListSpansResponse (..),
    newListSpansResponse,

    -- ** ListTracesResponse
    ListTracesResponse (..),
    newListTracesResponse,

    -- ** Module
    Module (..),
    newModule,

    -- ** NetworkEvent
    NetworkEvent (..),
    newNetworkEvent,

    -- ** NetworkEvent_Type
    NetworkEvent_Type (..),

    -- ** Span
    Span (..),
    newSpan,

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

    -- ** Trace
    Trace (..),
    newTrace,

    -- ** TruncatableString
    TruncatableString (..),
    newTruncatableString,
  )
where

import Gogol.Tracing.Projects.Traces.BatchWrite
import Gogol.Tracing.Projects.Traces.List
import Gogol.Tracing.Projects.Traces.ListSpans
import Gogol.Tracing.Projects.Traces.Spans.Create
import Gogol.Tracing.Types
