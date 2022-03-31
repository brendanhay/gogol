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
-- Module      : Gogol.Monitoring.Services.ServiceLevelObjectives.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the given ServiceLevelObjective.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.delete@.
module Gogol.Monitoring.Services.ServiceLevelObjectives.Delete
  ( -- * Resource
    MonitoringServicesServiceLevelObjectivesDeleteResource,

    -- ** Constructing a Request
    newMonitoringServicesServiceLevelObjectivesDelete,
    MonitoringServicesServiceLevelObjectivesDelete,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.services.serviceLevelObjectives.delete@ method which the
-- 'MonitoringServicesServiceLevelObjectivesDelete' request conforms to.
type MonitoringServicesServiceLevelObjectivesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Delete the given ServiceLevelObjective.
--
-- /See:/ 'newMonitoringServicesServiceLevelObjectivesDelete' smart constructor.
data MonitoringServicesServiceLevelObjectivesDelete = MonitoringServicesServiceLevelObjectivesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the ServiceLevelObjective to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME]
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesServiceLevelObjectivesDelete' with the minimum fields required to make a request.
newMonitoringServicesServiceLevelObjectivesDelete ::
  -- |  Required. Resource name of the ServiceLevelObjective to delete. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME] See 'name'.
  Core.Text ->
  MonitoringServicesServiceLevelObjectivesDelete
newMonitoringServicesServiceLevelObjectivesDelete name =
  MonitoringServicesServiceLevelObjectivesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringServicesServiceLevelObjectivesDelete
  where
  type
    Rs
      MonitoringServicesServiceLevelObjectivesDelete =
      Empty
  type
    Scopes
      MonitoringServicesServiceLevelObjectivesDelete =
      '[CloudPlatform'FullControl, Monitoring'FullControl]
  requestClient
    MonitoringServicesServiceLevelObjectivesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        monitoringService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MonitoringServicesServiceLevelObjectivesDeleteResource
            )
            Core.mempty
