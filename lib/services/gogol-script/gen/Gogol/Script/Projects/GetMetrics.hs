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
-- Module      : Gogol.Script.Projects.GetMetrics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get metrics data for scripts, such as number of executions and active users.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.getMetrics@.
module Gogol.Script.Projects.GetMetrics
  ( -- * Resource
    ScriptProjectsGetMetricsResource,

    -- ** Constructing a Request
    ScriptProjectsGetMetrics (..),
    newScriptProjectsGetMetrics,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.getMetrics@ method which the
-- 'ScriptProjectsGetMetrics' request conforms to.
type ScriptProjectsGetMetricsResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "scriptId" Core.Text
    Core.:> "metrics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "metricsFilter.deploymentId" Core.Text
    Core.:> Core.QueryParam
              "metricsGranularity"
              ProjectsGetMetricsMetricsGranularity
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Metrics

-- | Get metrics data for scripts, such as number of executions and active users.
--
-- /See:/ 'newScriptProjectsGetMetrics' smart constructor.
data ScriptProjectsGetMetrics = ScriptProjectsGetMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional field indicating a specific deployment to retrieve metrics from.
    metricsFilterDeploymentId :: (Core.Maybe Core.Text),
    -- | Required field indicating what granularity of metrics are returned.
    metricsGranularity :: (Core.Maybe ProjectsGetMetricsMetricsGranularity),
    -- | Required field indicating the script to get metrics for.
    scriptId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsGetMetrics' with the minimum fields required to make a request.
newScriptProjectsGetMetrics ::
  -- |  Required field indicating the script to get metrics for. See 'scriptId'.
  Core.Text ->
  ScriptProjectsGetMetrics
newScriptProjectsGetMetrics scriptId =
  ScriptProjectsGetMetrics
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      metricsFilterDeploymentId = Core.Nothing,
      metricsGranularity = Core.Nothing,
      scriptId = scriptId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ScriptProjectsGetMetrics where
  type Rs ScriptProjectsGetMetrics = Metrics
  type Scopes ScriptProjectsGetMetrics = '[Script'Metrics]
  requestClient ScriptProjectsGetMetrics {..} =
    go
      scriptId
      xgafv
      accessToken
      callback
      metricsFilterDeploymentId
      metricsGranularity
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      scriptService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ScriptProjectsGetMetricsResource)
          Core.mempty
