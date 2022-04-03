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
-- Module      : Gogol.CloudTrace.Projects.Traces.Spans.CreateSpan
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new span.
--
-- /See:/ <https://cloud.google.com/trace Cloud Trace API Reference> for @cloudtrace.projects.traces.spans.createSpan@.
module Gogol.CloudTrace.Projects.Traces.Spans.CreateSpan
  ( -- * Resource
    CloudTraceProjectsTracesSpansCreateSpanResource,

    -- ** Constructing a Request
    CloudTraceProjectsTracesSpansCreateSpan (..),
    newCloudTraceProjectsTracesSpansCreateSpan,
  )
where

import Gogol.CloudTrace.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudtrace.projects.traces.spans.createSpan@ method which the
-- 'CloudTraceProjectsTracesSpansCreateSpan' request conforms to.
type CloudTraceProjectsTracesSpansCreateSpanResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Span
    Core.:> Core.Post '[Core.JSON] Span

-- | Creates a new span.
--
-- /See:/ 'newCloudTraceProjectsTracesSpansCreateSpan' smart constructor.
data CloudTraceProjectsTracesSpansCreateSpan = CloudTraceProjectsTracesSpansCreateSpan
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the span in the following format: * @projects\/[PROJECT_ID]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]@ @[TRACE_ID]@ is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. @[SPAN_ID]@ is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. .
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Span,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTraceProjectsTracesSpansCreateSpan' with the minimum fields required to make a request.
newCloudTraceProjectsTracesSpansCreateSpan ::
  -- |  Required. The resource name of the span in the following format: * @projects\/[PROJECT_ID]\/traces\/[TRACE_ID]\/spans\/[SPAN_ID]@ @[TRACE_ID]@ is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array. It should not be zero. @[SPAN_ID]@ is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array. It should not be zero. . See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Span ->
  CloudTraceProjectsTracesSpansCreateSpan
newCloudTraceProjectsTracesSpansCreateSpan name payload =
  CloudTraceProjectsTracesSpansCreateSpan
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTraceProjectsTracesSpansCreateSpan
  where
  type
    Rs CloudTraceProjectsTracesSpansCreateSpan =
      Span
  type
    Scopes CloudTraceProjectsTracesSpansCreateSpan =
      '[CloudPlatform'FullControl, Trace'Append]
  requestClient
    CloudTraceProjectsTracesSpansCreateSpan {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudTraceService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudTraceProjectsTracesSpansCreateSpanResource
            )
            Core.mempty
