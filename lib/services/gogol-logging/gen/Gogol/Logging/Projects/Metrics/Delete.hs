{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Logging.Projects.Metrics.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.delete@.
module Gogol.Logging.Projects.Metrics.Delete
    (
    -- * Resource
      LoggingProjectsMetricsDeleteResource

    -- ** Constructing a Request
    , newLoggingProjectsMetricsDelete
    , LoggingProjectsMetricsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.projects.metrics.delete@ method which the
-- 'LoggingProjectsMetricsDelete' request conforms to.
type LoggingProjectsMetricsDeleteResource =
     "v2" Core.:>
       Core.Capture "metricName" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a logs-based metric.
--
-- /See:/ 'newLoggingProjectsMetricsDelete' smart constructor.
data LoggingProjectsMetricsDelete = LoggingProjectsMetricsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the metric to delete: \"projects\/[PROJECT/ID]\/metrics\/[METRIC/ID]\"
    , metricName :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsMetricsDelete' with the minimum fields required to make a request.
newLoggingProjectsMetricsDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the metric to delete: \"projects\/[PROJECT/ID]\/metrics\/[METRIC/ID]\" See 'metricName'.
    -> LoggingProjectsMetricsDelete
newLoggingProjectsMetricsDelete metricName =
  LoggingProjectsMetricsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , metricName = metricName
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingProjectsMetricsDelete
         where
        type Rs LoggingProjectsMetricsDelete = Empty
        type Scopes LoggingProjectsMetricsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.write"]
        requestClient LoggingProjectsMetricsDelete{..}
          = go metricName xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy LoggingProjectsMetricsDeleteResource)
                      Core.mempty

