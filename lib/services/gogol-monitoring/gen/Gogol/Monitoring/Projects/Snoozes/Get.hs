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
-- Module      : Gogol.Monitoring.Projects.Snoozes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Snooze by name.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.snoozes.get@.
module Gogol.Monitoring.Projects.Snoozes.Get
    (
    -- * Resource
      MonitoringProjectsSnoozesGetResource

    -- ** Constructing a Request
    , MonitoringProjectsSnoozesGet (..)
    , newMonitoringProjectsSnoozesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.snoozes.get@ method which the
-- 'MonitoringProjectsSnoozesGet' request conforms to.
type MonitoringProjectsSnoozesGetResource =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Snooze

-- | Retrieves a Snooze by name.
--
-- /See:/ 'newMonitoringProjectsSnoozesGet' smart constructor.
data MonitoringProjectsSnoozesGet = MonitoringProjectsSnoozesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the Snooze to retrieve. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/snoozes\/[SNOOZE/ID]
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsSnoozesGet' with the minimum fields required to make a request.
newMonitoringProjectsSnoozesGet 
    ::  Core.Text
       -- ^  Required. The ID of the Snooze to retrieve. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/snoozes\/[SNOOZE/ID] See 'name'.
    -> MonitoringProjectsSnoozesGet
newMonitoringProjectsSnoozesGet name =
  MonitoringProjectsSnoozesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsSnoozesGet
         where
        type Rs MonitoringProjectsSnoozesGet = Snooze
        type Scopes MonitoringProjectsSnoozesGet =
             '[CloudPlatform'FullControl, Monitoring'FullControl,
               Monitoring'Read]
        requestClient MonitoringProjectsSnoozesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MonitoringProjectsSnoozesGetResource)
                      Core.mempty

