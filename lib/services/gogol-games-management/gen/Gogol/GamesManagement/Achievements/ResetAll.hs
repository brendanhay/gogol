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
-- Module      : Gogol.GamesManagement.Achievements.ResetAll
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all achievements for the currently authenticated player for your application. This method is only accessible to whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetAll@.
module Gogol.GamesManagement.Achievements.ResetAll
  ( -- * Resource
    GamesManagementAchievementsResetAllResource,

    -- ** Constructing a Request
    GamesManagementAchievementsResetAll (..),
    newGamesManagementAchievementsResetAll,
  )
where

import Gogol.GamesManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gamesManagement.achievements.resetAll@ method which the
-- 'GamesManagementAchievementsResetAll' request conforms to.
type GamesManagementAchievementsResetAllResource =
  "games"
    Core.:> "v1management"
    Core.:> "achievements"
    Core.:> "reset"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AchievementResetAllResponse

-- | Resets all achievements for the currently authenticated player for your application. This method is only accessible to whitelisted tester accounts for your application.
--
-- /See:/ 'newGamesManagementAchievementsResetAll' smart constructor.
data GamesManagementAchievementsResetAll = GamesManagementAchievementsResetAll
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementAchievementsResetAll' with the minimum fields required to make a request.
newGamesManagementAchievementsResetAll ::
  GamesManagementAchievementsResetAll
newGamesManagementAchievementsResetAll =
  GamesManagementAchievementsResetAll
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesManagementAchievementsResetAll where
  type
    Rs GamesManagementAchievementsResetAll =
      AchievementResetAllResponse
  type
    Scopes GamesManagementAchievementsResetAll =
      '[Games'FullControl]
  requestClient GamesManagementAchievementsResetAll {..} =
    go
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
              Core.Proxy GamesManagementAchievementsResetAllResource
          )
          Core.mempty
