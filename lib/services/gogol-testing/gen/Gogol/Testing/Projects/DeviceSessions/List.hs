{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Testing.Projects.DeviceSessions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GET \/v1\/projects\/{project_id}\/deviceSessions Lists device Sessions owned by the project user.
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Testing API Reference> for @testing.projects.deviceSessions.list@.
module Gogol.Testing.Projects.DeviceSessions.List
  ( -- * Resource
    TestingProjectsDeviceSessionsListResource,

    -- ** Constructing a Request
    TestingProjectsDeviceSessionsList (..),
    newTestingProjectsDeviceSessionsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Testing.Types

-- | A resource alias for @testing.projects.deviceSessions.list@ method which the
-- 'TestingProjectsDeviceSessionsList' request conforms to.
type TestingProjectsDeviceSessionsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "deviceSessions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDeviceSessionsResponse

-- | GET \/v1\/projects\/{project_id}\/deviceSessions Lists device Sessions owned by the project user.
--
-- /See:/ 'newTestingProjectsDeviceSessionsList' smart constructor.
data TestingProjectsDeviceSessionsList = TestingProjectsDeviceSessionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. If specified, responses will be filtered by the given filter. Allowed fields are: session_state.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of DeviceSessions to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A continuation token for paging.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the parent to request, e.g. \"projects\/{project_id}\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestingProjectsDeviceSessionsList' with the minimum fields required to make a request.
newTestingProjectsDeviceSessionsList ::
  -- |  Required. The name of the parent to request, e.g. \"projects\/{project_id}\" See 'parent'.
  Core.Text ->
  TestingProjectsDeviceSessionsList
newTestingProjectsDeviceSessionsList parent =
  TestingProjectsDeviceSessionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TestingProjectsDeviceSessionsList where
  type
    Rs TestingProjectsDeviceSessionsList =
      ListDeviceSessionsResponse
  type
    Scopes TestingProjectsDeviceSessionsList =
      '[CloudPlatform'FullControl]
  requestClient TestingProjectsDeviceSessionsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      testingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TestingProjectsDeviceSessionsListResource
          )
          Core.mempty
