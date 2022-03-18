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
-- Module      : Network.Google.Monitoring.Projects.TimeSeries.Query
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries time series using Monitoring Query Language.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.timeSeries.query@.
module Network.Google.Monitoring.Projects.TimeSeries.Query
  ( -- * Resource
    MonitoringProjectsTimeSeriesQueryResource,

    -- ** Constructing a Request
    newMonitoringProjectsTimeSeriesQuery,
    MonitoringProjectsTimeSeriesQuery,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.projects.timeSeries.query@ method which the
-- 'MonitoringProjectsTimeSeriesQuery' request conforms to.
type MonitoringProjectsTimeSeriesQueryResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "timeSeries:query"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] QueryTimeSeriesRequest
    Core.:> Core.Post '[Core.JSON] QueryTimeSeriesResponse

-- | Queries time series using Monitoring Query Language.
--
-- /See:/ 'newMonitoringProjectsTimeSeriesQuery' smart constructor.
data MonitoringProjectsTimeSeriesQuery = MonitoringProjectsTimeSeriesQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: QueryTimeSeriesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsTimeSeriesQuery' with the minimum fields required to make a request.
newMonitoringProjectsTimeSeriesQuery ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  QueryTimeSeriesRequest ->
  MonitoringProjectsTimeSeriesQuery
newMonitoringProjectsTimeSeriesQuery name payload =
  MonitoringProjectsTimeSeriesQuery
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
    MonitoringProjectsTimeSeriesQuery
  where
  type
    Rs MonitoringProjectsTimeSeriesQuery =
      QueryTimeSeriesResponse
  type
    Scopes MonitoringProjectsTimeSeriesQuery =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient MonitoringProjectsTimeSeriesQuery {..} =
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
              Core.Proxy MonitoringProjectsTimeSeriesQueryResource
          )
          Core.mempty
