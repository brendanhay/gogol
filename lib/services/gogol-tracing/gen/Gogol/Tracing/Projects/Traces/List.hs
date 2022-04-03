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
-- Module      : Gogol.Tracing.Projects.Traces.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns of a list of traces that match the specified filter conditions.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.list@.
module Gogol.Tracing.Projects.Traces.List
  ( -- * Resource
    TracingProjectsTracesListResource,

    -- ** Constructing a Request
    TracingProjectsTracesList (..),
    newTracingProjectsTracesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Tracing.Types

-- | A resource alias for @tracing.projects.traces.list@ method which the
-- 'TracingProjectsTracesList' request conforms to.
type TracingProjectsTracesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "traces"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime'
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParam "startTime" Core.DateTime'
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTracesResponse

-- | Returns of a list of traces that match the specified filter conditions.
--
-- /See:/ 'newTracingProjectsTracesList' smart constructor.
data TracingProjectsTracesList = TracingProjectsTracesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | End of the time interval (inclusive) during which the trace data was collected from the application.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | An optional filter for the request. Example: @version_label_key:a some_label:some_label_key@ returns traces from version @a@ and has @some_label@ with @some_label_key@.
    filter :: (Core.Maybe Core.Text),
    -- | Field used to sort the returned traces. Optional. Can be one of the following:
    --
    -- -   @trace_id@
    -- -   @name@ (@name@ field of root span in the trace)
    -- -   @duration@ (difference between @end_time@ and @start_time@ fields of the root span)
    -- -   @start@ (@start_time@ field of the root span)
    --
    -- Descending order can be specified by appending @desc@ to the sort field (for example, @name desc@).
    --
    -- Only one sort field is permitted.
    orderBy :: (Core.Maybe Core.Text),
    -- | Maximum number of traces to return. If not specified or \<= 0, the implementation selects a reasonable value. The implementation may return fewer traces than the requested page size. Optional.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token identifying the page of results to return. If provided, use the value of the @next_page_token@ field from a previous request. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | ID of the Cloud project where the trace data is stored which is @projects\/PROJECT_ID@.
    parent :: Core.Text,
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | Start of the time interval (inclusive) during which the trace data was collected from the application.
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TracingProjectsTracesList' with the minimum fields required to make a request.
newTracingProjectsTracesList ::
  -- |  ID of the Cloud project where the trace data is stored which is @projects\/PROJECT_ID@. See 'parent'.
  Core.Text ->
  TracingProjectsTracesList
newTracingProjectsTracesList parent =
  TracingProjectsTracesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      endTime = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      pp = Core.True,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TracingProjectsTracesList where
  type
    Rs TracingProjectsTracesList =
      ListTracesResponse
  type
    Scopes TracingProjectsTracesList =
      '[CloudPlatform'FullControl, Trace'Readonly]
  requestClient TracingProjectsTracesList {..} =
    go
      parent
      xgafv
      accessToken
      bearerToken
      callback
      endTime
      filter
      orderBy
      pageSize
      pageToken
      (Core.Just pp)
      startTime
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tracingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TracingProjectsTracesListResource
          )
          Core.mempty
