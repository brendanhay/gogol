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
-- Module      : Gogol.Monitoring.Services.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update this Service.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.services.patch@.
module Gogol.Monitoring.Services.Patch
  ( -- * Resource
    MonitoringServicesPatchResource,

    -- ** Constructing a Request
    newMonitoringServicesPatch,
    MonitoringServicesPatch,
  )
where

import Gogol.Monitoring.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @monitoring.services.patch@ method which the
-- 'MonitoringServicesPatch' request conforms to.
type MonitoringServicesPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Service
    Core.:> Core.Patch '[Core.JSON] Service

-- | Update this Service.
--
-- /See:/ 'newMonitoringServicesPatch' smart constructor.
data MonitoringServicesPatch = MonitoringServicesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name for this Service. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID]
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Service,
    -- | A set of field paths defining which fields to use for the update.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringServicesPatch' with the minimum fields required to make a request.
newMonitoringServicesPatch ::
  -- |  Resource name for this Service. The format is: projects\/[PROJECT/ID/OR/NUMBER]\/services\/[SERVICE/ID] See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Service ->
  MonitoringServicesPatch
newMonitoringServicesPatch name payload =
  MonitoringServicesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MonitoringServicesPatch where
  type Rs MonitoringServicesPatch = Service
  type
    Scopes MonitoringServicesPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/monitoring"
       ]
  requestClient MonitoringServicesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      monitoringService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MonitoringServicesPatchResource
          )
          Core.mempty
