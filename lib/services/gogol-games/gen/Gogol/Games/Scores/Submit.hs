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
-- Module      : Gogol.Games.Scores.Submit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a score to the specified leaderboard.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.submit@.
module Gogol.Games.Scores.Submit
  ( -- * Resource
    GamesScoresSubmitResource,

    -- ** Constructing a Request
    GamesScoresSubmit (..),
    newGamesScoresSubmit,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.scores.submit@ method which the
-- 'GamesScoresSubmit' request conforms to.
type GamesScoresSubmitResource =
  "games"
    Core.:> "v1"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> "scores"
    Core.:> Core.QueryParam "score" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "scoreTag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] PlayerScoreResponse

-- | Submits a score to the specified leaderboard.
--
-- /See:/ 'newGamesScoresSubmit' smart constructor.
data GamesScoresSubmit = GamesScoresSubmit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard.
    leaderboardId :: Core.Text,
    -- | The score you\'re submitting. The submitted score is ignored if it is worse than a previously submitted score, where worse depends on the leaderboard sort order. The meaning of the score value depends on the leaderboard format type. For fixed-point, the score represents the raw value. For time, the score represents elapsed time in milliseconds. For currency, the score represents a value in micro units.
    score :: Core.Int64,
    -- | Additional information about the score you\'re submitting. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
    scoreTag :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesScoresSubmit' with the minimum fields required to make a request.
newGamesScoresSubmit ::
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  -- |  The score you\'re submitting. The submitted score is ignored if it is worse than a previously submitted score, where worse depends on the leaderboard sort order. The meaning of the score value depends on the leaderboard format type. For fixed-point, the score represents the raw value. For time, the score represents elapsed time in milliseconds. For currency, the score represents a value in micro units. See 'score'.
  Core.Int64 ->
  GamesScoresSubmit
newGamesScoresSubmit leaderboardId score =
  GamesScoresSubmit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      leaderboardId = leaderboardId,
      score = score,
      scoreTag = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesScoresSubmit where
  type Rs GamesScoresSubmit = PlayerScoreResponse
  type Scopes GamesScoresSubmit = '[Games'FullControl]
  requestClient GamesScoresSubmit {..} =
    go
      leaderboardId
      (Core.Just score)
      xgafv
      accessToken
      callback
      language
      scoreTag
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesScoresSubmitResource)
          Core.mempty
