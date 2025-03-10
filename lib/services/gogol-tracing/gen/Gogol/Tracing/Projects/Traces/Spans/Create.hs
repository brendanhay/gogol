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
-- Module      : Gogol.Tracing.Projects.Traces.Spans.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Span.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.spans.create@.
module Gogol.Tracing.Projects.Traces.Spans.Create
  ( -- * Resource
    TracingProjectsTracesSpansCreateResource,

    -- ** Constructing a Request
    TracingProjectsTracesSpansCreate (..),
    newTracingProjectsTracesSpansCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Tracing.Types

-- | A resource alias for @tracing.projects.traces.spans.create@ method which the
-- 'TracingProjectsTracesSpansCreate' request conforms to.
type TracingProjectsTracesSpansCreateResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Span
    Core.:> Core.Put '[Core.JSON] Span

-- | Creates a new Span.
--
-- /See:/ 'newTracingProjectsTracesSpansCreate' smart constructor.
data TracingProjectsTracesSpansCreate = TracingProjectsTracesSpansCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of Span in the format @projects\/PROJECT_ID\/traces\/TRACE_ID\/spans\/SPAN_ID@. @TRACE_ID@ is a unique identifier for a trace within a project and is a base16-encoded, case-insensitive string and is required to be 32 char long. @SPAN_ID@ is a unique identifier for a span within a trace. It is a base 16-encoded, case-insensitive string of a 8-bytes array and is required to be 16 char long.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Span,
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TracingProjectsTracesSpansCreate' with the minimum fields required to make a request.
newTracingProjectsTracesSpansCreate ::
  -- |  The resource name of Span in the format @projects\/PROJECT_ID\/traces\/TRACE_ID\/spans\/SPAN_ID@. @TRACE_ID@ is a unique identifier for a trace within a project and is a base16-encoded, case-insensitive string and is required to be 32 char long. @SPAN_ID@ is a unique identifier for a span within a trace. It is a base 16-encoded, case-insensitive string of a 8-bytes array and is required to be 16 char long. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Span ->
  TracingProjectsTracesSpansCreate
newTracingProjectsTracesSpansCreate name payload =
  TracingProjectsTracesSpansCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      pp = Core.True,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TracingProjectsTracesSpansCreate where
  type Rs TracingProjectsTracesSpansCreate = Span
  type
    Scopes TracingProjectsTracesSpansCreate =
      '[CloudPlatform'FullControl, Trace'Append]
  requestClient TracingProjectsTracesSpansCreate {..} =
    go
      name
      xgafv
      accessToken
      bearerToken
      callback
      (Core.Just pp)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tracingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TracingProjectsTracesSpansCreateResource)
          Core.mempty
