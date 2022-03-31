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
-- Module      : Gogol.Monitoring.Projects.TimeSeries.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or adds data to one or more time series. The response is empty if all time series in the request were written. If any time series could not be written, a corresponding failure message is included in the error response.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.timeSeries.create@.
module Gogol.Monitoring.Projects.TimeSeries.Create
  ( -- * Resource
    MonitoringProjectsTimeSeriesCreateResource,

    -- ** Constructing a Request
    newMonitoringProjectsTimeSeriesCreate,
    MonitoringProjectsTimeSeriesCreate,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.timeSeries.create@ method which the
-- 'MonitoringProjectsTimeSeriesCreate' request conforms to.
type MonitoringProjectsTimeSeriesCreateResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "timeSeries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateTimeSeriesRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Creates or adds data to one or more time series. The response is empty if all time series in the request were written. If any time series could not be written, a corresponding failure message is included in the error response.
--
-- /See:/ 'newMonitoringProjectsTimeSeriesCreate' smart constructor.
data MonitoringProjectsTimeSeriesCreate = MonitoringProjectsTimeSeriesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateTimeSeriesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsTimeSeriesCreate' with the minimum fields required to make a request.
newMonitoringProjectsTimeSeriesCreate ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateTimeSeriesRequest ->
  MonitoringProjectsTimeSeriesCreate
newMonitoringProjectsTimeSeriesCreate name payload =
  MonitoringProjectsTimeSeriesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsTimeSeriesCreate
  where
  type Rs MonitoringProjectsTimeSeriesCreate = Empty
  type
    Scopes MonitoringProjectsTimeSeriesCreate =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Write
       ]
  requestClient MonitoringProjectsTimeSeriesCreate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                MonitoringProjectsTimeSeriesCreateResource
          )
          Core.mempty
