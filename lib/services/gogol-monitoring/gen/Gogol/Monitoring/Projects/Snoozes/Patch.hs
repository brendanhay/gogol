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
-- Module      : Gogol.Monitoring.Projects.Snoozes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Snooze, identified by its name, with the parameters in the given Snooze object.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.snoozes.patch@.
module Gogol.Monitoring.Projects.Snoozes.Patch
    (
    -- * Resource
      MonitoringProjectsSnoozesPatchResource

    -- ** Constructing a Request
    , MonitoringProjectsSnoozesPatch (..)
    , newMonitoringProjectsSnoozesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.snoozes.patch@ method which the
-- 'MonitoringProjectsSnoozesPatch' request conforms to.
type MonitoringProjectsSnoozesPatchResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Snooze Core.:>
                         Core.Patch '[Core.JSON] Snooze

-- | Updates a Snooze, identified by its name, with the parameters in the given Snooze object.
--
-- /See:/ 'newMonitoringProjectsSnoozesPatch' smart constructor.
data MonitoringProjectsSnoozesPatch = MonitoringProjectsSnoozesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Identifier. The name of the Snooze. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/snoozes\/[SNOOZE/ID] The ID of the Snooze will be generated by the system.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Snooze
      -- | Required. The fields to update.For each field listed in update/mask: If the Snooze object supplied in the UpdateSnoozeRequest has a value for that field, the value of the field in the existing Snooze will be set to the value of the field in the supplied Snooze. If the field does not have a value in the supplied Snooze, the field in the existing Snooze is set to its default value.Fields not listed retain their existing value.The following are the field names that are accepted in update/mask: display/name interval.start/time interval.end_timeThat said, the start time and end time of the Snooze determines which fields can legally be updated. Before attempting an update, users should consult the documentation for UpdateSnoozeRequest, which talks about which fields can be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsSnoozesPatch' with the minimum fields required to make a request.
newMonitoringProjectsSnoozesPatch 
    ::  Core.Text
       -- ^  Required. Identifier. The name of the Snooze. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/snoozes\/[SNOOZE/ID] The ID of the Snooze will be generated by the system. See 'name'.
    -> Snooze
       -- ^  Multipart request metadata. See 'payload'.
    -> MonitoringProjectsSnoozesPatch
newMonitoringProjectsSnoozesPatch name payload =
  MonitoringProjectsSnoozesPatch
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
           MonitoringProjectsSnoozesPatch
         where
        type Rs MonitoringProjectsSnoozesPatch = Snooze
        type Scopes MonitoringProjectsSnoozesPatch =
             '[CloudPlatform'FullControl, Monitoring'FullControl]
        requestClient MonitoringProjectsSnoozesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MonitoringProjectsSnoozesPatchResource)
                      Core.mempty

