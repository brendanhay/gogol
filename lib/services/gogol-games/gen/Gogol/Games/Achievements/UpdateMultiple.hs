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
-- Module      : Gogol.Games.Achievements.UpdateMultiple
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates multiple achievements for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.updateMultiple@.
module Gogol.Games.Achievements.UpdateMultiple
  ( -- * Resource
    GamesAchievementsUpdateMultipleResource,

    -- ** Constructing a Request
    GamesAchievementsUpdateMultiple (..),
    newGamesAchievementsUpdateMultiple,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.achievements.updateMultiple@ method which the
-- 'GamesAchievementsUpdateMultiple' request conforms to.
type GamesAchievementsUpdateMultipleResource =
  "games"
    Core.:> "v1"
    Core.:> "achievements"
    Core.:> "updateMultiple"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AchievementUpdateMultipleRequest
    Core.:> Core.Post '[Core.JSON] AchievementUpdateMultipleResponse

-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ 'newGamesAchievementsUpdateMultiple' smart constructor.
data GamesAchievementsUpdateMultiple = GamesAchievementsUpdateMultiple
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AchievementUpdateMultipleRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementsUpdateMultiple' with the minimum fields required to make a request.
newGamesAchievementsUpdateMultiple ::
  -- |  Multipart request metadata. See 'payload'.
  AchievementUpdateMultipleRequest ->
  GamesAchievementsUpdateMultiple
newGamesAchievementsUpdateMultiple payload =
  GamesAchievementsUpdateMultiple
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesAchievementsUpdateMultiple where
  type
    Rs GamesAchievementsUpdateMultiple =
      AchievementUpdateMultipleResponse
  type Scopes GamesAchievementsUpdateMultiple = '[Games'FullControl]
  requestClient GamesAchievementsUpdateMultiple {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesAchievementsUpdateMultipleResource)
          Core.mempty
