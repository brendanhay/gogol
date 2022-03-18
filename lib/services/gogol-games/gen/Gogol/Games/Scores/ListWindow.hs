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
-- Module      : Gogol.Games.Scores.ListWindow
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the scores in a leaderboard around (and including) a player\'s score.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.listWindow@.
module Gogol.Games.Scores.ListWindow
  ( -- * Resource
    GamesScoresListWindowResource,

    -- ** Constructing a Request
    newGamesScoresListWindow,
    GamesScoresListWindow,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.scores.listWindow@ method which the
-- 'GamesScoresListWindow' request conforms to.
type GamesScoresListWindowResource =
  "games"
    Core.:> "v1"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> "window"
    Core.:> Core.Capture "collection" ScoresListWindowCollection
    Core.:> Core.QueryParam "timeSpan" ScoresListWindowTimeSpan
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "resultsAbove" Core.Int32
    Core.:> Core.QueryParam "returnTopIfAbsent" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LeaderboardScores

-- | Lists the scores in a leaderboard around (and including) a player\'s score.
--
-- /See:/ 'newGamesScoresListWindow' smart constructor.
data GamesScoresListWindow = GamesScoresListWindow
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The collection of scores you\'re requesting.
    collection :: ScoresListWindowCollection,
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard.
    leaderboardId :: Core.Text,
    -- | The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified @maxResults@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | The preferred number of scores to return above the player\'s score. More scores may be returned if the player is at the bottom of the leaderboard; fewer may be returned if the player is at the top. Must be less than or equal to maxResults.
    resultsAbove :: (Core.Maybe Core.Int32),
    -- | True if the top scores should be returned when the player is not in the leaderboard. Defaults to true.
    returnTopIfAbsent :: (Core.Maybe Core.Bool),
    -- | The time span for the scores and ranks you\'re requesting.
    timeSpan :: ScoresListWindowTimeSpan,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesScoresListWindow' with the minimum fields required to make a request.
newGamesScoresListWindow ::
  -- |  The collection of scores you\'re requesting. See 'collection'.
  ScoresListWindowCollection ->
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  -- |  The time span for the scores and ranks you\'re requesting. See 'timeSpan'.
  ScoresListWindowTimeSpan ->
  GamesScoresListWindow
newGamesScoresListWindow collection leaderboardId timeSpan =
  GamesScoresListWindow
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      collection = collection,
      language = Core.Nothing,
      leaderboardId = leaderboardId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      resultsAbove = Core.Nothing,
      returnTopIfAbsent = Core.Nothing,
      timeSpan = timeSpan,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesScoresListWindow where
  type Rs GamesScoresListWindow = LeaderboardScores
  type
    Scopes GamesScoresListWindow =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesScoresListWindow {..} =
    go
      leaderboardId
      collection
      (Core.Just timeSpan)
      xgafv
      accessToken
      callback
      language
      maxResults
      pageToken
      resultsAbove
      returnTopIfAbsent
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesScoresListWindowResource
          )
          Core.mempty
