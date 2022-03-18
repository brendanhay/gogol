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
-- Module      : Gogol.GamesManagement.Achievements.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets achievements with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft achievements may be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetMultipleForAllPlayers@.
module Gogol.GamesManagement.Achievements.ResetMultipleForAllPlayers
  ( -- * Resource
    GamesManagementAchievementsResetMultipleForAllPlayersResource,

    -- ** Constructing a Request
    newGamesManagementAchievementsResetMultipleForAllPlayers,
    GamesManagementAchievementsResetMultipleForAllPlayers,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.achievements.resetMultipleForAllPlayers@ method which the
-- 'GamesManagementAchievementsResetMultipleForAllPlayers' request conforms to.
type GamesManagementAchievementsResetMultipleForAllPlayersResource =
  "games"
    Core.:> "v1management"
    Core.:> "achievements"
    Core.:> "resetMultipleForAllPlayers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              AchievementResetMultipleForAllRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets achievements with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft achievements may be reset.
--
-- /See:/ 'newGamesManagementAchievementsResetMultipleForAllPlayers' smart constructor.
data GamesManagementAchievementsResetMultipleForAllPlayers = GamesManagementAchievementsResetMultipleForAllPlayers
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AchievementResetMultipleForAllRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementAchievementsResetMultipleForAllPlayers' with the minimum fields required to make a request.
newGamesManagementAchievementsResetMultipleForAllPlayers ::
  -- |  Multipart request metadata. See 'payload'.
  AchievementResetMultipleForAllRequest ->
  GamesManagementAchievementsResetMultipleForAllPlayers
newGamesManagementAchievementsResetMultipleForAllPlayers payload =
  GamesManagementAchievementsResetMultipleForAllPlayers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementAchievementsResetMultipleForAllPlayers
  where
  type
    Rs
      GamesManagementAchievementsResetMultipleForAllPlayers =
      ()
  type
    Scopes
      GamesManagementAchievementsResetMultipleForAllPlayers =
      '["https://www.googleapis.com/auth/games"]
  requestClient
    GamesManagementAchievementsResetMultipleForAllPlayers {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        gamesManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesManagementAchievementsResetMultipleForAllPlayersResource
            )
            Core.mempty
