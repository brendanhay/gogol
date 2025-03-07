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
-- Module      : Gogol.Games.Achievements.Reveal
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the state of the achievement with the given ID to @REVEALED@ for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.reveal@.
module Gogol.Games.Achievements.Reveal
  ( -- * Resource
    GamesAchievementsRevealResource,

    -- ** Constructing a Request
    GamesAchievementsReveal (..),
    newGamesAchievementsReveal,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.achievements.reveal@ method which the
-- 'GamesAchievementsReveal' request conforms to.
type GamesAchievementsRevealResource =
  "games"
    Core.:> "v1"
    Core.:> "achievements"
    Core.:> Core.Capture "achievementId" Core.Text
    Core.:> "reveal"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AchievementRevealResponse

-- | Sets the state of the achievement with the given ID to @REVEALED@ for the currently authenticated player.
--
-- /See:/ 'newGamesAchievementsReveal' smart constructor.
data GamesAchievementsReveal = GamesAchievementsReveal
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the achievement used by this method.
    achievementId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementsReveal' with the minimum fields required to make a request.
newGamesAchievementsReveal ::
  -- |  The ID of the achievement used by this method. See 'achievementId'.
  Core.Text ->
  GamesAchievementsReveal
newGamesAchievementsReveal achievementId =
  GamesAchievementsReveal
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      achievementId = achievementId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesAchievementsReveal where
  type Rs GamesAchievementsReveal = AchievementRevealResponse
  type Scopes GamesAchievementsReveal = '[Games'FullControl]
  requestClient GamesAchievementsReveal {..} =
    go
      achievementId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesAchievementsRevealResource)
          Core.mempty
