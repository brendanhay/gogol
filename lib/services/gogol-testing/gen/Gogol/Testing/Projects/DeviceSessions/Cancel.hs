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
-- Module      : Gogol.Testing.Projects.DeviceSessions.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- POST \/v1\/projects\/{project/id}\/deviceSessions\/{device/session_id}:cancel Changes the DeviceSession to state FINISHED and terminates all connections. Canceled sessions are not deleted and can be retrieved or listed by the user until they expire based on the 28 day deletion policy.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.deviceSessions.cancel@.
module Gogol.Testing.Projects.DeviceSessions.Cancel
  ( -- * Resource
    TestingProjectsDeviceSessionsCancelResource,

    -- ** Constructing a Request
    TestingProjectsDeviceSessionsCancel (..),
    newTestingProjectsDeviceSessionsCancel,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.deviceSessions.cancel@ method which the
-- 'TestingProjectsDeviceSessionsCancel' request conforms to.
type TestingProjectsDeviceSessionsCancelResource =
  "v1"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelDeviceSessionRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | POST \/v1\/projects\/{project/id}\/deviceSessions\/{device/session_id}:cancel Changes the DeviceSession to state FINISHED and terminates all connections. Canceled sessions are not deleted and can be retrieved or listed by the user until they expire based on the 28 day deletion policy.
--
-- /See:/ 'newTestingProjectsDeviceSessionsCancel' smart constructor.
data TestingProjectsDeviceSessionsCancel = TestingProjectsDeviceSessionsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the DeviceSession, e.g. \"projects\/{project/id}\/deviceSessions\/{session/id}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelDeviceSessionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsDeviceSessionsCancel' with the minimum fields required to make a request.
newTestingProjectsDeviceSessionsCancel ::
  -- |  Required. Name of the DeviceSession, e.g. \"projects\/{project/id}\/deviceSessions\/{session/id}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelDeviceSessionRequest ->
  TestingProjectsDeviceSessionsCancel
newTestingProjectsDeviceSessionsCancel name payload =
  TestingProjectsDeviceSessionsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TestingProjectsDeviceSessionsCancel where
  type Rs TestingProjectsDeviceSessionsCancel = Empty
  type
    Scopes TestingProjectsDeviceSessionsCancel =
      '[CloudPlatform'FullControl]
  requestClient TestingProjectsDeviceSessionsCancel {..} =
    go
      name
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
              Core.Proxy TestingProjectsDeviceSessionsCancelResource
          )
          Core.mempty
