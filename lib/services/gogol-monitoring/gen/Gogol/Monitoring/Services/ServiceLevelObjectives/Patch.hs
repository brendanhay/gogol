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
-- Module      : Gogol.Monitoring.Services.ServiceLevelObjectives.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given ServiceLevelObjective.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.serviceLevelObjectives.patch@.
module Gogol.Monitoring.Services.ServiceLevelObjectives.Patch
    (
    -- * Resource
      MonitoringServicesServiceLevelObjectivesPatchResource

    -- ** Constructing a Request
    , MonitoringServicesServiceLevelObjectivesPatch (..)
    , newMonitoringServicesServiceLevelObjectivesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.services.serviceLevelObjectives.patch@ method which the
-- 'MonitoringServicesServiceLevelObjectivesPatch' request conforms to.
type MonitoringServicesServiceLevelObjectivesPatchResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] ServiceLevelObjective
                         Core.:> Core.Patch '[Core.JSON] ServiceLevelObjective

-- | Update the given ServiceLevelObjective.
--
-- /See:/ 'newMonitoringServicesServiceLevelObjectivesPatch' smart constructor.
data MonitoringServicesServiceLevelObjectivesPatch = MonitoringServicesServiceLevelObjectivesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifier. Resource name for this ServiceLevelObjective. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME]
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: ServiceLevelObjective
      -- | A set of field paths defining which fields to use for the update.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesServiceLevelObjectivesPatch' with the minimum fields required to make a request.
newMonitoringServicesServiceLevelObjectivesPatch 
    ::  Core.Text
       -- ^  Identifier. Resource name for this ServiceLevelObjective. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]\/serviceLevelObjectives\/[SLO_NAME] See 'name'.
    -> ServiceLevelObjective
       -- ^  Multipart request metadata. See 'payload'.
    -> MonitoringServicesServiceLevelObjectivesPatch
newMonitoringServicesServiceLevelObjectivesPatch name payload =
  MonitoringServicesServiceLevelObjectivesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringServicesServiceLevelObjectivesPatch
         where
        type Rs MonitoringServicesServiceLevelObjectivesPatch
             = ServiceLevelObjective
        type Scopes
               MonitoringServicesServiceLevelObjectivesPatch
             =
             '[CloudPlatform'FullControl, Monitoring'FullControl]
        requestClient
          MonitoringServicesServiceLevelObjectivesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringServicesServiceLevelObjectivesPatchResource)
                      Core.mempty

