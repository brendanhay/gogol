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
-- Module      : Network.Google.Monitoring.Services.ServiceLevelObjectives.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a ServiceLevelObjective for the given Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.create@.
module Network.Google.Monitoring.Services.ServiceLevelObjectives.Create
  ( -- * Resource
    MonitoringServicesServiceLevelObjectivesCreateResource,

    -- ** Constructing a Request
    newMonitoringServicesServiceLevelObjectivesCreate,
    MonitoringServicesServiceLevelObjectivesCreate,
  )
where

import Network.Google.Monitoring.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @monitoring.services.serviceLevelObjectives.create@ method which the
-- 'MonitoringServicesServiceLevelObjectivesCreate' request conforms to.
type MonitoringServicesServiceLevelObjectivesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "serviceLevelObjectives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "serviceLevelObjectiveId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ServiceLevelObjective
    Core.:> Core.Post '[Core.JSON] ServiceLevelObjective

-- | Create a ServiceLevelObjective for the given Service.
--
-- /See:/ 'newMonitoringServicesServiceLevelObjectivesCreate' smart constructor.
data MonitoringServicesServiceLevelObjectivesCreate = MonitoringServicesServiceLevelObjectivesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the parent Service. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ServiceLevelObjective,
    -- | Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern [a-z0-9-]+
    serviceLevelObjectiveId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesServiceLevelObjectivesCreate' with the minimum fields required to make a request.
newMonitoringServicesServiceLevelObjectivesCreate ::
  -- |  Required. Resource name of the parent Service. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID] See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ServiceLevelObjective ->
  MonitoringServicesServiceLevelObjectivesCreate
newMonitoringServicesServiceLevelObjectivesCreate parent payload =
  MonitoringServicesServiceLevelObjectivesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      serviceLevelObjectiveId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringServicesServiceLevelObjectivesCreate
  where
  type
    Rs
      MonitoringServicesServiceLevelObjectivesCreate =
      ServiceLevelObjective
  type
    Scopes
      MonitoringServicesServiceLevelObjectivesCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring"
       ]
  requestClient
    MonitoringServicesServiceLevelObjectivesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        serviceLevelObjectiveId
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
                  MonitoringServicesServiceLevelObjectivesCreateResource
            )
            Core.mempty
