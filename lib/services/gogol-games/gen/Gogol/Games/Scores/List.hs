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
-- Module      : Gogol.Games.Scores.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.list@.
module Gogol.Games.Scores.List
  ( -- * Resource
    GamesScoresListResource,

    -- ** Constructing a Request
    GamesScoresList (..),
    newGamesScoresList,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.scores.list@ method which the
-- 'GamesScoresList' request conforms to.
type GamesScoresListResource =
  "games"
    Core.:> "v1"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> "scores"
    Core.:> Core.Capture "collection" ScoresListCollection
    Core.:> Core.QueryParam "timeSpan" ScoresListTimeSpan
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LeaderboardScores

-- | Lists the scores in a leaderboard, starting from the top.
--
-- /See:/ 'newGamesScoresList' smart constructor.
data GamesScoresList = GamesScoresList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The collection of scores you\'re requesting.
    collection :: ScoresListCollection,
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard.
    leaderboardId :: Core.Text,
    -- | The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified @maxResults@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | The time span for the scores and ranks you\'re requesting.
    timeSpan :: ScoresListTimeSpan,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesScoresList' with the minimum fields required to make a request.
newGamesScoresList ::
  -- |  The collection of scores you\'re requesting. See 'collection'.
  ScoresListCollection ->
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  -- |  The time span for the scores and ranks you\'re requesting. See 'timeSpan'.
  ScoresListTimeSpan ->
  GamesScoresList
newGamesScoresList collection leaderboardId timeSpan =
  GamesScoresList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      collection = collection,
      language = Core.Nothing,
      leaderboardId = leaderboardId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      timeSpan = timeSpan,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesScoresList where
  type Rs GamesScoresList = LeaderboardScores
  type Scopes GamesScoresList = '[Games'FullControl]
  requestClient GamesScoresList {..} =
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
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesScoresListResource)
          Core.mempty
