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
-- Module      : Gogol.CloudTrace.Projects.Traces.BatchWrite
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch writes new spans to new or existing traces. You cannot update existing spans.
--
-- /See:/ <https://cloud.google.com/trace Cloud Trace API Reference> for @cloudtrace.projects.traces.batchWrite@.
module Gogol.CloudTrace.Projects.Traces.BatchWrite
  ( -- * Resource
    CloudTraceProjectsTracesBatchWriteResource,

    -- ** Constructing a Request
    CloudTraceProjectsTracesBatchWrite (..),
    newCloudTraceProjectsTracesBatchWrite,
  )
where

import Gogol.CloudTrace.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtrace.projects.traces.batchWrite@ method which the
-- 'CloudTraceProjectsTracesBatchWrite' request conforms to.
type CloudTraceProjectsTracesBatchWriteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "traces:batchWrite"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchWriteSpansRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Batch writes new spans to new or existing traces. You cannot update existing spans.
--
-- /See:/ 'newCloudTraceProjectsTracesBatchWrite' smart constructor.
data CloudTraceProjectsTracesBatchWrite = CloudTraceProjectsTracesBatchWrite
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project where the spans belong. The format is @projects\/[PROJECT_ID]@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchWriteSpansRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTraceProjectsTracesBatchWrite' with the minimum fields required to make a request.
newCloudTraceProjectsTracesBatchWrite ::
  -- |  Required. The name of the project where the spans belong. The format is @projects\/[PROJECT_ID]@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchWriteSpansRequest ->
  CloudTraceProjectsTracesBatchWrite
newCloudTraceProjectsTracesBatchWrite name payload =
  CloudTraceProjectsTracesBatchWrite
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudTraceProjectsTracesBatchWrite where
  type Rs CloudTraceProjectsTracesBatchWrite = Empty
  type
    Scopes CloudTraceProjectsTracesBatchWrite =
      '[CloudPlatform'FullControl, Trace'Append]
  requestClient CloudTraceProjectsTracesBatchWrite {..} =
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
              Core.Proxy CloudTraceProjectsTracesBatchWriteResource
          )
          Core.mempty
