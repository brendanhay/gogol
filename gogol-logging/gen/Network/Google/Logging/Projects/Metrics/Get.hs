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
-- Module      : Network.Google.Logging.Projects.Metrics.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.get@.
module Network.Google.Logging.Projects.Metrics.Get
  ( -- * Resource
    LoggingProjectsMetricsGetResource,

    -- ** Constructing a Request
    newLoggingProjectsMetricsGet,
    LoggingProjectsMetricsGet,
  )
where

import Network.Google.Logging.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @logging.projects.metrics.get@ method which the
-- 'LoggingProjectsMetricsGet' request conforms to.
type LoggingProjectsMetricsGetResource =
  "v2"
    Core.:> Core.Capture "metricName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LogMetric

-- | Gets a logs-based metric.
--
-- /See:/ 'newLoggingProjectsMetricsGet' smart constructor.
data LoggingProjectsMetricsGet = LoggingProjectsMetricsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the desired metric: \"projects\/[PROJECT/ID]\/metrics\/[METRIC/ID]\"
    metricName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsMetricsGet' with the minimum fields required to make a request.
newLoggingProjectsMetricsGet ::
  -- |  Required. The resource name of the desired metric: \"projects\/[PROJECT/ID]\/metrics\/[METRIC/ID]\" See 'metricName'.
  Core.Text ->
  LoggingProjectsMetricsGet
newLoggingProjectsMetricsGet metricName =
  LoggingProjectsMetricsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      metricName = metricName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingProjectsMetricsGet where
  type Rs LoggingProjectsMetricsGet = LogMetric
  type
    Scopes LoggingProjectsMetricsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/logging.admin",
         "https://www.googleapis.com/auth/logging.read"
       ]
  requestClient LoggingProjectsMetricsGet {..} =
    go
      metricName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingProjectsMetricsGetResource
          )
          Core.mempty
