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
-- Module      : Gogol.GamesManagement.Achievements.ResetAllForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft achievements for all players. This method is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetAllForAllPlayers@.
module Gogol.GamesManagement.Achievements.ResetAllForAllPlayers
  ( -- * Resource
    GamesManagementAchievementsResetAllForAllPlayersResource,

    -- ** Constructing a Request
    GamesManagementAchievementsResetAllForAllPlayers (..),
    newGamesManagementAchievementsResetAllForAllPlayers,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.achievements.resetAllForAllPlayers@ method which the
-- 'GamesManagementAchievementsResetAllForAllPlayers' request conforms to.
type GamesManagementAchievementsResetAllForAllPlayersResource =
  "games"
    Core.:> "v1management"
    Core.:> "achievements"
    Core.:> "resetAllForAllPlayers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets all draft achievements for all players. This method is only available to user accounts for your developer console.
--
-- /See:/ 'newGamesManagementAchievementsResetAllForAllPlayers' smart constructor.
data GamesManagementAchievementsResetAllForAllPlayers = GamesManagementAchievementsResetAllForAllPlayers
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

-- | Creates a value of 'GamesManagementAchievementsResetAllForAllPlayers' with the minimum fields required to make a request.
newGamesManagementAchievementsResetAllForAllPlayers ::
  GamesManagementAchievementsResetAllForAllPlayers
newGamesManagementAchievementsResetAllForAllPlayers =
  GamesManagementAchievementsResetAllForAllPlayers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementAchievementsResetAllForAllPlayers
  where
  type
    Rs
      GamesManagementAchievementsResetAllForAllPlayers =
      ()
  type
    Scopes
      GamesManagementAchievementsResetAllForAllPlayers =
      '[Games'FullControl]
  requestClient
    GamesManagementAchievementsResetAllForAllPlayers {..} =
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
                Core.Proxy
                  GamesManagementAchievementsResetAllForAllPlayersResource
            )
            Core.mempty
