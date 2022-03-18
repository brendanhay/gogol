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
-- Module      : Gogol.Fitness.Users.Sessions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a session specified by the given session ID.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.sessions.delete@.
module Gogol.Fitness.Users.Sessions.Delete
  ( -- * Resource
    FitnessUsersSessionsDeleteResource,

    -- ** Constructing a Request
    newFitnessUsersSessionsDelete,
    FitnessUsersSessionsDelete,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.sessions.delete@ method which the
-- 'FitnessUsersSessionsDelete' request conforms to.
type FitnessUsersSessionsDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a session specified by the given session ID.
--
-- /See:/ 'newFitnessUsersSessionsDelete' smart constructor.
data FitnessUsersSessionsDelete = FitnessUsersSessionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the session to be deleted.
    sessionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Delete a session for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersSessionsDelete' with the minimum fields required to make a request.
newFitnessUsersSessionsDelete ::
  -- |  The ID of the session to be deleted. See 'sessionId'.
  Core.Text ->
  -- |  Delete a session for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersSessionsDelete
newFitnessUsersSessionsDelete sessionId userId =
  FitnessUsersSessionsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      sessionId = sessionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersSessionsDelete
  where
  type Rs FitnessUsersSessionsDelete = ()
  type
    Scopes FitnessUsersSessionsDelete =
      '[ "https://www.googleapis.com/auth/fitness.activity.write",
         "https://www.googleapis.com/auth/fitness.sleep.write"
       ]
  requestClient FitnessUsersSessionsDelete {..} =
    go
      userId
      sessionId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fitnessService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FitnessUsersSessionsDeleteResource
          )
          Core.mempty
