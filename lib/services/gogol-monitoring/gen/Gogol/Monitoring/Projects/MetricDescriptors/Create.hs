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
-- Module      : Gogol.Monitoring.Projects.MetricDescriptors.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new metric descriptor. The creation is executed asynchronously and callers may check the returned operation to track its progress. User-created metric descriptors define custom metrics (https:\/\/cloud.google.com\/monitoring\/custom-metrics).
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.metricDescriptors.create@.
module Gogol.Monitoring.Projects.MetricDescriptors.Create
  ( -- * Resource
    MonitoringProjectsMetricDescriptorsCreateResource,

    -- ** Constructing a Request
    MonitoringProjectsMetricDescriptorsCreate (..),
    newMonitoringProjectsMetricDescriptorsCreate,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.metricDescriptors.create@ method which the
-- 'MonitoringProjectsMetricDescriptorsCreate' request conforms to.
type MonitoringProjectsMetricDescriptorsCreateResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "metricDescriptors"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MetricDescriptor
    Core.:> Core.Post '[Core.JSON] MetricDescriptor

-- | Creates a new metric descriptor. The creation is executed asynchronously and callers may check the returned operation to track its progress. User-created metric descriptors define custom metrics (https:\/\/cloud.google.com\/monitoring\/custom-metrics).
--
-- /See:/ 'newMonitoringProjectsMetricDescriptorsCreate' smart constructor.
data MonitoringProjectsMetricDescriptorsCreate = MonitoringProjectsMetricDescriptorsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: 4 projects\/PROJECT/ID/OR/NUMBER
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: MetricDescriptor,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMetricDescriptorsCreate' with the minimum fields required to make a request.
newMonitoringProjectsMetricDescriptorsCreate ::
  -- |  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) on which to execute the request. The format is: 4 projects\/PROJECT/ID/OR/NUMBER See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MetricDescriptor ->
  MonitoringProjectsMetricDescriptorsCreate
newMonitoringProjectsMetricDescriptorsCreate name payload =
  MonitoringProjectsMetricDescriptorsCreate
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
    MonitoringProjectsMetricDescriptorsCreate
  where
  type
    Rs MonitoringProjectsMetricDescriptorsCreate =
      MetricDescriptor
  type
    Scopes MonitoringProjectsMetricDescriptorsCreate =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Write
       ]
  requestClient
    MonitoringProjectsMetricDescriptorsCreate {..} =
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
                  MonitoringProjectsMetricDescriptorsCreateResource
            )
            Core.mempty
