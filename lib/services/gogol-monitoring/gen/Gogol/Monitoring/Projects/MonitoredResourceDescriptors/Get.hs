{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Monitoring.Projects.MonitoredResourceDescriptors.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single monitored resource descriptor.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.monitoredResourceDescriptors.get@.
module Gogol.Monitoring.Projects.MonitoredResourceDescriptors.Get
    (
    -- * Resource
      MonitoringProjectsMonitoredResourceDescriptorsGetResource

    -- ** Constructing a Request
    , newMonitoringProjectsMonitoredResourceDescriptorsGet
    , MonitoringProjectsMonitoredResourceDescriptorsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.monitoredResourceDescriptors.get@ method which the
-- 'MonitoringProjectsMonitoredResourceDescriptorsGet' request conforms to.
type MonitoringProjectsMonitoredResourceDescriptorsGetResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] MonitoredResourceDescriptor

-- | Gets a single monitored resource descriptor.
--
-- /See:/ 'newMonitoringProjectsMonitoredResourceDescriptorsGet' smart constructor.
data MonitoringProjectsMonitoredResourceDescriptorsGet = MonitoringProjectsMonitoredResourceDescriptorsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The monitored resource descriptor to get. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/monitoredResourceDescriptors\/[RESOURCE/TYPE] The [RESOURCE/TYPE] is a predefined type, such as cloudsql/database.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMonitoredResourceDescriptorsGet' with the minimum fields required to make a request.
newMonitoringProjectsMonitoredResourceDescriptorsGet 
    ::  Core.Text
       -- ^  Required. The monitored resource descriptor to get. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/monitoredResourceDescriptors\/[RESOURCE/TYPE] The [RESOURCE/TYPE] is a predefined type, such as cloudsql/database. See 'name'.
    -> MonitoringProjectsMonitoredResourceDescriptorsGet
newMonitoringProjectsMonitoredResourceDescriptorsGet name =
  MonitoringProjectsMonitoredResourceDescriptorsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsMonitoredResourceDescriptorsGet
         where
        type Rs
               MonitoringProjectsMonitoredResourceDescriptorsGet
             = MonitoredResourceDescriptor
        type Scopes
               MonitoringProjectsMonitoredResourceDescriptorsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient
          MonitoringProjectsMonitoredResourceDescriptorsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           MonitoringProjectsMonitoredResourceDescriptorsGetResource)
                      Core.mempty

