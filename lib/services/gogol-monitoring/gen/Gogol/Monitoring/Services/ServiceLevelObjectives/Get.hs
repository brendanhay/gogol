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
-- Module      : Gogol.Monitoring.Services.ServiceLevelObjectives.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a ServiceLevelObjective by name.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.get@.
module Gogol.Monitoring.Services.ServiceLevelObjectives.Get
  ( -- * Resource
    MonitoringServicesServiceLevelObjectivesGetResource,

    -- ** Constructing a Request
    MonitoringServicesServiceLevelObjectivesGet (..),
    newMonitoringServicesServiceLevelObjectivesGet,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.services.serviceLevelObjectives.get@ method which the
-- 'MonitoringServicesServiceLevelObjectivesGet' request conforms to.
type MonitoringServicesServiceLevelObjectivesGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "view"
              ServicesServiceLevelObjectivesGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServiceLevelObjective

-- | Get a ServiceLevelObjective by name.
--
-- /See:/ 'newMonitoringServicesServiceLevelObjectivesGet' smart constructor.
data MonitoringServicesServiceLevelObjectivesGet = MonitoringServicesServiceLevelObjectivesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the ServiceLevelObjective to get. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | View of the ServiceLevelObjective to return. If DEFAULT, return the ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.
    view :: (Core.Maybe ServicesServiceLevelObjectivesGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesServiceLevelObjectivesGet' with the minimum fields required to make a request.
newMonitoringServicesServiceLevelObjectivesGet ::
  -- |  Required. Resource name of the ServiceLevelObjective to get. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME] See 'name'.
  Core.Text ->
  MonitoringServicesServiceLevelObjectivesGet
newMonitoringServicesServiceLevelObjectivesGet name =
  MonitoringServicesServiceLevelObjectivesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringServicesServiceLevelObjectivesGet
  where
  type
    Rs MonitoringServicesServiceLevelObjectivesGet =
      ServiceLevelObjective
  type
    Scopes
      MonitoringServicesServiceLevelObjectivesGet =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read
       ]
  requestClient
    MonitoringServicesServiceLevelObjectivesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
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
                  MonitoringServicesServiceLevelObjectivesGetResource
            )
            Core.mempty
