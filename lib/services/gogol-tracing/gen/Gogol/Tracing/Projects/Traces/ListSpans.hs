{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Tracing.Projects.Traces.ListSpans
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of spans within a trace.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.listSpans@.
module Gogol.Tracing.Projects.Traces.ListSpans
    (
    -- * Resource
      TracingProjectsTracesListSpansResource

    -- ** Constructing a Request
    , TracingProjectsTracesListSpans (..)
    , newTracingProjectsTracesListSpans
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Tracing.Types

-- | A resource alias for @tracing.projects.traces.listSpans@ method which the
-- 'TracingProjectsTracesListSpans' request conforms to.
type TracingProjectsTracesListSpansResource =
     "v2" Core.:>
       Core.CaptureMode "parent" "listSpans" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "bearer_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "pp" Core.Bool Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListSpansResponse

-- | Returns a list of spans within a trace.
--
-- /See:/ 'newTracingProjectsTracesListSpans' smart constructor.
data TracingProjectsTracesListSpans = TracingProjectsTracesListSpans
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | OAuth bearer token.
    , bearerToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Token identifying the page of results to return. If provided, use the value of the @nextPageToken@ field from a previous request. Optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | ID of the trace for which to list child spans. Format is @projects\/PROJECT_ID\/traces\/TRACE_ID@.
    , parent :: Core.Text
      -- | Pretty-print response.
    , pp :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TracingProjectsTracesListSpans' with the minimum fields required to make a request.
newTracingProjectsTracesListSpans 
    ::  Core.Text
       -- ^  ID of the trace for which to list child spans. Format is @projects\/PROJECT_ID\/traces\/TRACE_ID@. See 'parent'.
    -> TracingProjectsTracesListSpans
newTracingProjectsTracesListSpans parent =
  TracingProjectsTracesListSpans
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , bearerToken = Core.Nothing
    , callback = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , pp = Core.True
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TracingProjectsTracesListSpans
         where
        type Rs TracingProjectsTracesListSpans =
             ListSpansResponse
        type Scopes TracingProjectsTracesListSpans =
             '[CloudPlatform'FullControl, Trace'Readonly]
        requestClient TracingProjectsTracesListSpans{..}
          = go parent xgafv accessToken bearerToken callback
              pageToken
              (Core.Just pp)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tracingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy TracingProjectsTracesListSpansResource)
                      Core.mempty

