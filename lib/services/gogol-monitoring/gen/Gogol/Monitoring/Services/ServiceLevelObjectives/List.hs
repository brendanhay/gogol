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
-- Module      : Gogol.Monitoring.Services.ServiceLevelObjectives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the ServiceLevelObjectives for the given Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.list@.
module Gogol.Monitoring.Services.ServiceLevelObjectives.List
  ( -- * Resource
    MonitoringServicesServiceLevelObjectivesListResource,

    -- ** Constructing a Request
    newMonitoringServicesServiceLevelObjectivesList,
    MonitoringServicesServiceLevelObjectivesList,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.services.serviceLevelObjectives.list@ method which the
-- 'MonitoringServicesServiceLevelObjectivesList' request conforms to.
type MonitoringServicesServiceLevelObjectivesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "serviceLevelObjectives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "view"
              ServicesServiceLevelObjectivesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListServiceLevelObjectivesResponse

-- | List the ServiceLevelObjectives for the given Service.
--
-- /See:/ 'newMonitoringServicesServiceLevelObjectivesList' smart constructor.
data MonitoringServicesServiceLevelObjectivesList = MonitoringServicesServiceLevelObjectivesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter specifying what ServiceLevelObjectives to return.
    filter :: (Core.Maybe Core.Text),
    -- | A non-negative number that is the maximum number of results to return. When 0, use default page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the parent containing the listed SLOs, either a project or a Monitoring Workspace. The formats are: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID] workspaces\/[HOST/PROJECT/ID/OR/NUMBER]\/services\/-
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | View of the ServiceLevelObjectives to return. If DEFAULT, return each ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.
    view :: (Core.Maybe ServicesServiceLevelObjectivesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesServiceLevelObjectivesList' with the minimum fields required to make a request.
newMonitoringServicesServiceLevelObjectivesList ::
  -- |  Required. Resource name of the parent containing the listed SLOs, either a project or a Monitoring Workspace. The formats are: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID] workspaces\/[HOST/PROJECT/ID/OR/NUMBER]\/services\/- See 'parent'.
  Core.Text ->
  MonitoringServicesServiceLevelObjectivesList
newMonitoringServicesServiceLevelObjectivesList parent =
  MonitoringServicesServiceLevelObjectivesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringServicesServiceLevelObjectivesList
  where
  type
    Rs MonitoringServicesServiceLevelObjectivesList =
      ListServiceLevelObjectivesResponse
  type
    Scopes
      MonitoringServicesServiceLevelObjectivesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring",
         "https://www.googleapis.com/auth/monitoring.read"
       ]
  requestClient
    MonitoringServicesServiceLevelObjectivesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        monitoringService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringServicesServiceLevelObjectivesListResource
            )
            Core.mempty
