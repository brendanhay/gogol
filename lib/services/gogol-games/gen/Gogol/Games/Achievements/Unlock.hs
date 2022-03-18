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
-- Module      : Gogol.Games.Achievements.Unlock
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unlocks this achievement for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.unlock@.
module Gogol.Games.Achievements.Unlock
  ( -- * Resource
    GamesAchievementsUnlockResource,

    -- ** Constructing a Request
    newGamesAchievementsUnlock,
    GamesAchievementsUnlock,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.achievements.unlock@ method which the
-- 'GamesAchievementsUnlock' request conforms to.
type GamesAchievementsUnlockResource =
  "games"
    Core.:> "v1"
    Core.:> "achievements"
    Core.:> Core.Capture "achievementId" Core.Text
    Core.:> "unlock"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AchievementUnlockResponse

-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ 'newGamesAchievementsUnlock' smart constructor.
data GamesAchievementsUnlock = GamesAchievementsUnlock
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

-- | Creates a value of 'GamesAchievementsUnlock' with the minimum fields required to make a request.
newGamesAchievementsUnlock ::
  -- |  The ID of the achievement used by this method. See 'achievementId'.
  Core.Text ->
  GamesAchievementsUnlock
newGamesAchievementsUnlock achievementId =
  GamesAchievementsUnlock
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      achievementId = achievementId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesAchievementsUnlock where
  type
    Rs GamesAchievementsUnlock =
      AchievementUnlockResponse
  type
    Scopes GamesAchievementsUnlock =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesAchievementsUnlock {..} =
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
          ( Core.Proxy ::
              Core.Proxy GamesAchievementsUnlockResource
          )
          Core.mempty
