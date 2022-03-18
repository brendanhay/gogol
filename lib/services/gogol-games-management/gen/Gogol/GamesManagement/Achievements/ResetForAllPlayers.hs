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
-- Module      : Gogol.GamesManagement.Achievements.ResetForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the achievement with the given ID for all players. This method is only available to user accounts for your developer console. Only draft achievements can be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetForAllPlayers@.
module Gogol.GamesManagement.Achievements.ResetForAllPlayers
  ( -- * Resource
    GamesManagementAchievementsResetForAllPlayersResource,

    -- ** Constructing a Request
    newGamesManagementAchievementsResetForAllPlayers,
    GamesManagementAchievementsResetForAllPlayers,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.achievements.resetForAllPlayers@ method which the
-- 'GamesManagementAchievementsResetForAllPlayers' request conforms to.
type GamesManagementAchievementsResetForAllPlayersResource =
  "games"
    Core.:> "v1management"
    Core.:> "achievements"
    Core.:> Core.Capture "achievementId" Core.Text
    Core.:> "resetForAllPlayers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets the achievement with the given ID for all players. This method is only available to user accounts for your developer console. Only draft achievements can be reset.
--
-- /See:/ 'newGamesManagementAchievementsResetForAllPlayers' smart constructor.
data GamesManagementAchievementsResetForAllPlayers = GamesManagementAchievementsResetForAllPlayers
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

-- | Creates a value of 'GamesManagementAchievementsResetForAllPlayers' with the minimum fields required to make a request.
newGamesManagementAchievementsResetForAllPlayers ::
  -- |  The ID of the achievement used by this method. See 'achievementId'.
  Core.Text ->
  GamesManagementAchievementsResetForAllPlayers
newGamesManagementAchievementsResetForAllPlayers achievementId =
  GamesManagementAchievementsResetForAllPlayers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      achievementId = achievementId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementAchievementsResetForAllPlayers
  where
  type
    Rs GamesManagementAchievementsResetForAllPlayers =
      ()
  type
    Scopes
      GamesManagementAchievementsResetForAllPlayers =
      '["https://www.googleapis.com/auth/games"]
  requestClient
    GamesManagementAchievementsResetForAllPlayers {..} =
      go
        achievementId
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
                Core.Proxy
                  GamesManagementAchievementsResetForAllPlayersResource
            )
            Core.mempty
