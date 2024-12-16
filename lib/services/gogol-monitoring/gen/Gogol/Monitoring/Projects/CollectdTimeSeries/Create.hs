{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Projects.CollectdTimeSeries.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Monitoring Agent only: Creates a new time series.This method is only for use by the Cloud Monitoring Agent. Use projects.timeSeries.create instead.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.collectdTimeSeries.create@.
module Gogol.Monitoring.Projects.CollectdTimeSeries.Create
    (
    -- * Resource
      MonitoringProjectsCollectdTimeSeriesCreateResource

    -- ** Constructing a Request
    , MonitoringProjectsCollectdTimeSeriesCreate (..)
    , newMonitoringProjectsCollectdTimeSeriesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.collectdTimeSeries.create@ method which the
-- 'MonitoringProjectsCollectdTimeSeriesCreate' request conforms to.
type MonitoringProjectsCollectdTimeSeriesCreateResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "collectdTimeSeries" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         CreateCollectdTimeSeriesRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           CreateCollectdTimeSeriesResponse

-- | Cloud Monitoring Agent only: Creates a new time series.This method is only for use by the Cloud Monitoring Agent. Use projects.timeSeries.create instead.
--
-- /See:/ 'newMonitoringProjectsCollectdTimeSeriesCreate' smart constructor.
data MonitoringProjectsCollectdTimeSeriesCreate = MonitoringProjectsCollectdTimeSeriesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which to create the time series. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CreateCollectdTimeSeriesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsCollectdTimeSeriesCreate' with the minimum fields required to make a request.
newMonitoringProjectsCollectdTimeSeriesCreate 
    ::  Core.Text
       -- ^  The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) in which to create the time series. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'name'.
    -> CreateCollectdTimeSeriesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> MonitoringProjectsCollectdTimeSeriesCreate
newMonitoringProjectsCollectdTimeSeriesCreate name payload =
  MonitoringProjectsCollectdTimeSeriesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsCollectdTimeSeriesCreate
         where
        type Rs MonitoringProjectsCollectdTimeSeriesCreate =
             CreateCollectdTimeSeriesResponse
        type Scopes
               MonitoringProjectsCollectdTimeSeriesCreate
             =
             '[CloudPlatform'FullControl, Monitoring'FullControl,
               Monitoring'Write]
        requestClient
          MonitoringProjectsCollectdTimeSeriesCreate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsCollectdTimeSeriesCreateResource)
                      Core.mempty

