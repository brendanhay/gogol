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
  ( -- * Resource
    MonitoringProjectsMonitoredResourceDescriptorsGetResource,

    -- ** Constructing a Request
    newMonitoringProjectsMonitoredResourceDescriptorsGet,
    MonitoringProjectsMonitoredResourceDescriptorsGet,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.projects.monitoredResourceDescriptors.get@ method which the
-- 'MonitoringProjectsMonitoredResourceDescriptorsGet' request conforms to.
type MonitoringProjectsMonitoredResourceDescriptorsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MonitoredResourceDescriptor

-- | Gets a single monitored resource descriptor.
--
-- /See:/ 'newMonitoringProjectsMonitoredResourceDescriptorsGet' smart constructor.
data MonitoringProjectsMonitoredResourceDescriptorsGet = MonitoringProjectsMonitoredResourceDescriptorsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The monitored resource descriptor to get. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/monitoredResourceDescriptors\/[RESOURCE/TYPE] The [RESOURCE/TYPE] is a predefined type, such as cloudsql/database.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsMonitoredResourceDescriptorsGet' with the minimum fields required to make a request.
newMonitoringProjectsMonitoredResourceDescriptorsGet ::
  -- |  Required. The monitored resource descriptor to get. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/monitoredResourceDescriptors\/[RESOURCE/TYPE] The [RESOURCE/TYPE] is a predefined type, such as cloudsql/database. See 'name'.
  Core.Text ->
  MonitoringProjectsMonitoredResourceDescriptorsGet
newMonitoringProjectsMonitoredResourceDescriptorsGet name =
  MonitoringProjectsMonitoredResourceDescriptorsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MonitoringProjectsMonitoredResourceDescriptorsGet
  where
  type
    Rs
      MonitoringProjectsMonitoredResourceDescriptorsGet =
      MonitoredResourceDescriptor
  type
    Scopes
      MonitoringProjectsMonitoredResourceDescriptorsGet =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Read,
         Monitoring'Write
       ]
  requestClient
    MonitoringProjectsMonitoredResourceDescriptorsGet {..} =
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
                  MonitoringProjectsMonitoredResourceDescriptorsGetResource
            )
            Core.mempty
