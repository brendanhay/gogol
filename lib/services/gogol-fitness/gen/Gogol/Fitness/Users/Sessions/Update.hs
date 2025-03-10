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
-- Module      : Gogol.Fitness.Users.Sessions.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or insert a given session.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.sessions.update@.
module Gogol.Fitness.Users.Sessions.Update
  ( -- * Resource
    FitnessUsersSessionsUpdateResource,

    -- ** Constructing a Request
    FitnessUsersSessionsUpdate (..),
    newFitnessUsersSessionsUpdate,
  )
where

import Gogol.Fitness.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fitness.users.sessions.update@ method which the
-- 'FitnessUsersSessionsUpdate' request conforms to.
type FitnessUsersSessionsUpdateResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "sessions"
    Core.:> Core.Capture "sessionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Session
    Core.:> Core.Put '[Core.JSON] Session

-- | Updates or insert a given session.
--
-- /See:/ 'newFitnessUsersSessionsUpdate' smart constructor.
data FitnessUsersSessionsUpdate = FitnessUsersSessionsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Session,
    -- | The ID of the session to be created.
    sessionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Create sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersSessionsUpdate' with the minimum fields required to make a request.
newFitnessUsersSessionsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  Session ->
  -- |  The ID of the session to be created. See 'sessionId'.
  Core.Text ->
  -- |  Create sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersSessionsUpdate
newFitnessUsersSessionsUpdate payload sessionId userId =
  FitnessUsersSessionsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      sessionId = sessionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest FitnessUsersSessionsUpdate where
  type Rs FitnessUsersSessionsUpdate = Session
  type
    Scopes FitnessUsersSessionsUpdate =
      '[Fitness'Activity'Write, Fitness'Sleep'Write]
  requestClient FitnessUsersSessionsUpdate {..} =
    go
      userId
      sessionId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fitnessService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FitnessUsersSessionsUpdateResource)
          Core.mempty
