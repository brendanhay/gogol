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
-- Module      : Gogol.Tracing.Projects.Traces.BatchWrite
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends new spans to Stackdriver Trace or updates existing traces. If the name of a trace that you send matches that of an existing trace, new spans are added to the existing trace. Attempt to update existing spans results undefined behavior. If the name does not match, a new trace is created with given set of spans.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.batchWrite@.
module Gogol.Tracing.Projects.Traces.BatchWrite
    (
    -- * Resource
      TracingProjectsTracesBatchWriteResource

    -- ** Constructing a Request
    , TracingProjectsTracesBatchWrite (..)
    , newTracingProjectsTracesBatchWrite
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Tracing.Types

-- | A resource alias for @tracing.projects.traces.batchWrite@ method which the
-- 'TracingProjectsTracesBatchWrite' request conforms to.
type TracingProjectsTracesBatchWriteResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "traces:batchWrite" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "bearer_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "pp" Core.Bool Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] BatchWriteSpansRequest
                             Core.:> Core.Post '[Core.JSON] Empty

-- | Sends new spans to Stackdriver Trace or updates existing traces. If the name of a trace that you send matches that of an existing trace, new spans are added to the existing trace. Attempt to update existing spans results undefined behavior. If the name does not match, a new trace is created with given set of spans.
--
-- /See:/ 'newTracingProjectsTracesBatchWrite' smart constructor.
data TracingProjectsTracesBatchWrite = TracingProjectsTracesBatchWrite
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | OAuth bearer token.
    , bearerToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the project where the spans belong to. Format is @projects\/PROJECT_ID@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchWriteSpansRequest
      -- | Pretty-print response.
    , pp :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TracingProjectsTracesBatchWrite' with the minimum fields required to make a request.
newTracingProjectsTracesBatchWrite 
    ::  Core.Text
       -- ^  Name of the project where the spans belong to. Format is @projects\/PROJECT_ID@. See 'name'.
    -> BatchWriteSpansRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> TracingProjectsTracesBatchWrite
newTracingProjectsTracesBatchWrite name payload =
  TracingProjectsTracesBatchWrite
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , bearerToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , pp = Core.True
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TracingProjectsTracesBatchWrite
         where
        type Rs TracingProjectsTracesBatchWrite = Empty
        type Scopes TracingProjectsTracesBatchWrite =
             '[CloudPlatform'FullControl, Trace'Append]
        requestClient TracingProjectsTracesBatchWrite{..}
          = go name xgafv accessToken bearerToken callback
              (Core.Just pp)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tracingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy TracingProjectsTracesBatchWriteResource)
                      Core.mempty

