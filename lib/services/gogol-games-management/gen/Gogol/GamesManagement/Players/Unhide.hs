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
-- Module      : Gogol.GamesManagement.Players.Unhide
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unhide the given player\'s leaderboard scores from the given application. This method is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.players.unhide@.
module Gogol.GamesManagement.Players.Unhide
  ( -- * Resource
    GamesManagementPlayersUnhideResource,

    -- ** Constructing a Request
    newGamesManagementPlayersUnhide,
    GamesManagementPlayersUnhide,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.players.unhide@ method which the
-- 'GamesManagementPlayersUnhide' request conforms to.
type GamesManagementPlayersUnhideResource =
  "games"
    Core.:> "v1management"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> "players"
    Core.:> "hidden"
    Core.:> Core.Capture "playerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Unhide the given player\'s leaderboard scores from the given application. This method is only available to user accounts for your developer console.
--
-- /See:/ 'newGamesManagementPlayersUnhide' smart constructor.
data GamesManagementPlayersUnhide = GamesManagementPlayersUnhide
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A player ID. A value of @me@ may be used in place of the authenticated player\'s ID.
    playerId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementPlayersUnhide' with the minimum fields required to make a request.
newGamesManagementPlayersUnhide ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  -- |  A player ID. A value of @me@ may be used in place of the authenticated player\'s ID. See 'playerId'.
  Core.Text ->
  GamesManagementPlayersUnhide
newGamesManagementPlayersUnhide applicationId playerId =
  GamesManagementPlayersUnhide
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationId = applicationId,
      callback = Core.Nothing,
      playerId = playerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementPlayersUnhide
  where
  type Rs GamesManagementPlayersUnhide = ()
  type
    Scopes GamesManagementPlayersUnhide =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesManagementPlayersUnhide {..} =
    go
      applicationId
      playerId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesManagementPlayersUnhideResource
          )
          Core.mempty
