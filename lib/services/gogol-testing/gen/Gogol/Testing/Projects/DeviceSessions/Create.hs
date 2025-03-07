{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Testing.Projects.DeviceSessions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- POST \/v1\/projects\/{project_id}\/deviceSessions
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.deviceSessions.create@.
module Gogol.Testing.Projects.DeviceSessions.Create
  ( -- * Resource
    TestingProjectsDeviceSessionsCreateResource,

    -- ** Constructing a Request
    TestingProjectsDeviceSessionsCreate (..),
    newTestingProjectsDeviceSessionsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.deviceSessions.create@ method which the
-- 'TestingProjectsDeviceSessionsCreate' request conforms to.
type TestingProjectsDeviceSessionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "deviceSessions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeviceSession
    Core.:> Core.Post '[Core.JSON] DeviceSession

-- | POST \/v1\/projects\/{project_id}\/deviceSessions
--
-- /See:/ 'newTestingProjectsDeviceSessionsCreate' smart constructor.
data TestingProjectsDeviceSessionsCreate = TestingProjectsDeviceSessionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Compute Engine project under which this device will be allocated. \"projects\/{project_id}\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeviceSession,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsDeviceSessionsCreate' with the minimum fields required to make a request.
newTestingProjectsDeviceSessionsCreate ::
  -- |  Required. The Compute Engine project under which this device will be allocated. \"projects\/{project_id}\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeviceSession ->
  TestingProjectsDeviceSessionsCreate
newTestingProjectsDeviceSessionsCreate parent payload =
  TestingProjectsDeviceSessionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TestingProjectsDeviceSessionsCreate where
  type Rs TestingProjectsDeviceSessionsCreate = DeviceSession
  type
    Scopes TestingProjectsDeviceSessionsCreate =
      '[CloudPlatform'FullControl]
  requestClient TestingProjectsDeviceSessionsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      testingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TestingProjectsDeviceSessionsCreateResource
          )
          Core.mempty
