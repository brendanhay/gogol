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
-- Module      : Gogol.Logging.Projects.Metrics.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.create@.
module Gogol.Logging.Projects.Metrics.Create
  ( -- * Resource
    LoggingProjectsMetricsCreateResource,

    -- ** Constructing a Request
    LoggingProjectsMetricsCreate (..),
    newLoggingProjectsMetricsCreate,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.projects.metrics.create@ method which the
-- 'LoggingProjectsMetricsCreate' request conforms to.
type LoggingProjectsMetricsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "metrics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogMetric
    Core.:> Core.Post '[Core.JSON] LogMetric

-- | Creates a logs-based metric.
--
-- /See:/ 'newLoggingProjectsMetricsCreate' smart constructor.
data LoggingProjectsMetricsCreate = LoggingProjectsMetricsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project in which to create the metric: \"projects\/[PROJECT_ID]\" The new metric must be provided in the request.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogMetric,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsMetricsCreate' with the minimum fields required to make a request.
newLoggingProjectsMetricsCreate ::
  -- |  Required. The resource name of the project in which to create the metric: \"projects\/[PROJECT_ID]\" The new metric must be provided in the request. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogMetric ->
  LoggingProjectsMetricsCreate
newLoggingProjectsMetricsCreate parent payload =
  LoggingProjectsMetricsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingProjectsMetricsCreate where
  type Rs LoggingProjectsMetricsCreate = LogMetric
  type
    Scopes LoggingProjectsMetricsCreate =
      '[CloudPlatform'FullControl, Logging'Admin, Logging'Write]
  requestClient LoggingProjectsMetricsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LoggingProjectsMetricsCreateResource)
          Core.mempty
