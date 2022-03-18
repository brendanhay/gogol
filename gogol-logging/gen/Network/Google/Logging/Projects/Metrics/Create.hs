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
-- Module      : Network.Google.Logging.Projects.Metrics.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.create@.
module Network.Google.Logging.Projects.Metrics.Create
  ( -- * Resource
    LoggingProjectsMetricsCreateResource,

    -- ** Constructing a Request
    newLoggingProjectsMetricsCreate,
    LoggingProjectsMetricsCreate,
  )
where

import Network.Google.Logging.Types
import qualified Network.Google.Prelude as Core

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

instance
  Core.GoogleRequest
    LoggingProjectsMetricsCreate
  where
  type Rs LoggingProjectsMetricsCreate = LogMetric
  type
    Scopes LoggingProjectsMetricsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/logging.admin",
         "https://www.googleapis.com/auth/logging.write"
       ]
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
          ( Core.Proxy ::
              Core.Proxy LoggingProjectsMetricsCreateResource
          )
          Core.mempty
