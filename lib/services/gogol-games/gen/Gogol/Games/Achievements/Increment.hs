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
-- Module      : Gogol.Games.Achievements.Increment
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Increments the steps of the achievement with the given ID for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.increment@.
module Gogol.Games.Achievements.Increment
  ( -- * Resource
    GamesAchievementsIncrementResource,

    -- ** Constructing a Request
    newGamesAchievementsIncrement,
    GamesAchievementsIncrement,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.achievements.increment@ method which the
-- 'GamesAchievementsIncrement' request conforms to.
type GamesAchievementsIncrementResource =
  "games"
    Core.:> "v1"
    Core.:> "achievements"
    Core.:> Core.Capture "achievementId" Core.Text
    Core.:> "increment"
    Core.:> Core.QueryParam "stepsToIncrement" Core.Int32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              AchievementIncrementResponse

-- | Increments the steps of the achievement with the given ID for the currently authenticated player.
--
-- /See:/ 'newGamesAchievementsIncrement' smart constructor.
data GamesAchievementsIncrement = GamesAchievementsIncrement
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the achievement used by this method.
    achievementId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure that the request is handled correctly across retries.
    requestId :: (Core.Maybe Core.Int64),
    -- | The number of steps to increment.
    stepsToIncrement :: Core.Int32,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementsIncrement' with the minimum fields required to make a request.
newGamesAchievementsIncrement ::
  -- |  The ID of the achievement used by this method. See 'achievementId'.
  Core.Text ->
  -- |  The number of steps to increment. See 'stepsToIncrement'.
  Core.Int32 ->
  GamesAchievementsIncrement
newGamesAchievementsIncrement achievementId stepsToIncrement =
  GamesAchievementsIncrement
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      achievementId = achievementId,
      callback = Core.Nothing,
      requestId = Core.Nothing,
      stepsToIncrement = stepsToIncrement,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesAchievementsIncrement
  where
  type
    Rs GamesAchievementsIncrement =
      AchievementIncrementResponse
  type
    Scopes GamesAchievementsIncrement =
      '[Games'FullControl]
  requestClient GamesAchievementsIncrement {..} =
    go
      achievementId
      (Core.Just stepsToIncrement)
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesAchievementsIncrementResource
          )
          Core.mempty
