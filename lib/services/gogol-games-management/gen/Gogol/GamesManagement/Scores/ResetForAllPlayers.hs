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
-- Module      : Gogol.GamesManagement.Scores.ResetForAllPlayers
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboard with the given ID for all players. This method is only available to user accounts for your developer console. Only draft leaderboards can be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetForAllPlayers@.
module Gogol.GamesManagement.Scores.ResetForAllPlayers
  ( -- * Resource
    GamesManagementScoresResetForAllPlayersResource,

    -- ** Constructing a Request
    GamesManagementScoresResetForAllPlayers (..),
    newGamesManagementScoresResetForAllPlayers,
  )
where

import Gogol.GamesManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gamesManagement.scores.resetForAllPlayers@ method which the
-- 'GamesManagementScoresResetForAllPlayers' request conforms to.
type GamesManagementScoresResetForAllPlayersResource =
  "games"
    Core.:> "v1management"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> "scores"
    Core.:> "resetForAllPlayers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets scores for the leaderboard with the given ID for all players. This method is only available to user accounts for your developer console. Only draft leaderboards can be reset.
--
-- /See:/ 'newGamesManagementScoresResetForAllPlayers' smart constructor.
data GamesManagementScoresResetForAllPlayers = GamesManagementScoresResetForAllPlayers
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard.
    leaderboardId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementScoresResetForAllPlayers' with the minimum fields required to make a request.
newGamesManagementScoresResetForAllPlayers ::
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  GamesManagementScoresResetForAllPlayers
newGamesManagementScoresResetForAllPlayers leaderboardId =
  GamesManagementScoresResetForAllPlayers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      leaderboardId = leaderboardId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesManagementScoresResetForAllPlayers where
  type Rs GamesManagementScoresResetForAllPlayers = ()
  type
    Scopes GamesManagementScoresResetForAllPlayers =
      '[Games'FullControl]
  requestClient GamesManagementScoresResetForAllPlayers {..} =
    go
      leaderboardId
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
              Core.Proxy GamesManagementScoresResetForAllPlayersResource
          )
          Core.mempty
