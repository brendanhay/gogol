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
-- Module      : Gogol.Logging.Projects.Metrics.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.update@.
module Gogol.Logging.Projects.Metrics.Update
  ( -- * Resource
    LoggingProjectsMetricsUpdateResource,

    -- ** Constructing a Request
    newLoggingProjectsMetricsUpdate,
    LoggingProjectsMetricsUpdate,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.projects.metrics.update@ method which the
-- 'LoggingProjectsMetricsUpdate' request conforms to.
type LoggingProjectsMetricsUpdateResource =
  "v2"
    Core.:> Core.Capture "metricName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogMetric
    Core.:> Core.Put '[Core.JSON] LogMetric

-- | Creates or updates a logs-based metric.
--
-- /See:/ 'newLoggingProjectsMetricsUpdate' smart constructor.
data LoggingProjectsMetricsUpdate = LoggingProjectsMetricsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the metric to update: \"projects\/[PROJECT/ID]\/metrics\/[METRIC/ID]\" The updated metric must be provided in the request and it\'s name field must be the same as [METRIC/ID] If the metric does not exist in [PROJECT/ID], then a new metric is created.
    metricName :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogMetric,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsMetricsUpdate' with the minimum fields required to make a request.
newLoggingProjectsMetricsUpdate ::
  -- |  Required. The resource name of the metric to update: \"projects\/[PROJECT/ID]\/metrics\/[METRIC/ID]\" The updated metric must be provided in the request and it\'s name field must be the same as [METRIC/ID] If the metric does not exist in [PROJECT/ID], then a new metric is created. See 'metricName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogMetric ->
  LoggingProjectsMetricsUpdate
newLoggingProjectsMetricsUpdate metricName payload =
  LoggingProjectsMetricsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      metricName = metricName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingProjectsMetricsUpdate
  where
  type Rs LoggingProjectsMetricsUpdate = LogMetric
  type
    Scopes LoggingProjectsMetricsUpdate =
      '[ CloudPlatform'FullControl,
         Logging'Admin,
         Logging'Write
       ]
  requestClient LoggingProjectsMetricsUpdate {..} =
    go
      metricName
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
              Core.Proxy LoggingProjectsMetricsUpdateResource
          )
          Core.mempty
