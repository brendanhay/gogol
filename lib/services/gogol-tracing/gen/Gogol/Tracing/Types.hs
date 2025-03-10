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
-- Module      : Gogol.Tracing.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Tracing.Types
  ( -- * Configuration
    tracingService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Trace'Append,
    Trace'Readonly,

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

import Gogol.Prelude qualified as Core
import Gogol.Tracing.Internal.Product
import Gogol.Tracing.Internal.Sum

-- | Default request referring to version @v2@ of the Google Tracing API. This contains the host and root path used as a starting point for constructing service requests.
tracingService :: Core.ServiceConfig
tracingService =
  Core.defaultService
    (Core.ServiceId "tracing:v2")
    "tracing.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Write Trace data for a project or application
type Trace'Append = "https://www.googleapis.com/auth/trace.append"

-- | Read Trace data for a project or application
type Trace'Readonly =
  "https://www.googleapis.com/auth/trace.readonly"
