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
-- Module      : Network.Google.Games.Scores.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. For a specific time span, @leaderboardId@ can be set to @ALL@ to retrieve data for all leaderboards in a given time span. \`NOTE: You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.get@.
module Network.Google.Games.Scores.Get
  ( -- * Resource
    GamesScoresGetResource,

    -- ** Constructing a Request
    newGamesScoresGet,
    GamesScoresGet,
  )
where

import Network.Google.Games.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @games.scores.get@ method which the
-- 'GamesScoresGet' request conforms to.
type GamesScoresGetResource =
  "games"
    Core.:> "v1"
    Core.:> "players"
    Core.:> Core.Capture "playerId" Core.Text
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> "scores"
    Core.:> Core.Capture "timeSpan" ScoresGetTimeSpan
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "includeRankType"
              ScoresGetIncludeRankType
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              PlayerLeaderboardScoreListResponse

-- | Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. For a specific time span, @leaderboardId@ can be set to @ALL@ to retrieve data for all leaderboards in a given time span. \`NOTE: You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ 'newGamesScoresGet' smart constructor.
data GamesScoresGet = GamesScoresGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The types of ranks to return. If the parameter is omitted, no ranks will be returned.
    includeRankType :: (Core.Maybe ScoresGetIncludeRankType),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for all leaderboards for this application.
    leaderboardId :: Core.Text,
    -- | The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified @maxResults@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | A player ID. A value of @me@ may be used in place of the authenticated player\'s ID.
    playerId :: Core.Text,
    -- | The time span for the scores and ranks you\'re requesting.
    timeSpan :: ScoresGetTimeSpan,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesScoresGet' with the minimum fields required to make a request.
newGamesScoresGet ::
  -- |  The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for all leaderboards for this application. See 'leaderboardId'.
  Core.Text ->
  -- |  A player ID. A value of @me@ may be used in place of the authenticated player\'s ID. See 'playerId'.
  Core.Text ->
  -- |  The time span for the scores and ranks you\'re requesting. See 'timeSpan'.
  ScoresGetTimeSpan ->
  GamesScoresGet
newGamesScoresGet leaderboardId playerId timeSpan =
  GamesScoresGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeRankType = Core.Nothing,
      language = Core.Nothing,
      leaderboardId = leaderboardId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      playerId = playerId,
      timeSpan = timeSpan,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesScoresGet where
  type
    Rs GamesScoresGet =
      PlayerLeaderboardScoreListResponse
  type
    Scopes GamesScoresGet =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesScoresGet {..} =
    go
      playerId
      leaderboardId
      timeSpan
      xgafv
      accessToken
      callback
      includeRankType
      language
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesScoresGetResource)
          Core.mempty
