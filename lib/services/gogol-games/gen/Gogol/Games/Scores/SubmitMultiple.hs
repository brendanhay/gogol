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
-- Module      : Gogol.Games.Scores.SubmitMultiple
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits multiple scores to leaderboards.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.scores.submitMultiple@.
module Gogol.Games.Scores.SubmitMultiple
  ( -- * Resource
    GamesScoresSubmitMultipleResource,

    -- ** Constructing a Request
    newGamesScoresSubmitMultiple,
    GamesScoresSubmitMultiple,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.scores.submitMultiple@ method which the
-- 'GamesScoresSubmitMultiple' request conforms to.
type GamesScoresSubmitMultipleResource =
  "games"
    Core.:> "v1"
    Core.:> "leaderboards"
    Core.:> "scores"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PlayerScoreSubmissionList
    Core.:> Core.Post '[Core.JSON] PlayerScoreListResponse

-- | Submits multiple scores to leaderboards.
--
-- /See:/ 'newGamesScoresSubmitMultiple' smart constructor.
data GamesScoresSubmitMultiple = GamesScoresSubmitMultiple
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PlayerScoreSubmissionList,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesScoresSubmitMultiple' with the minimum fields required to make a request.
newGamesScoresSubmitMultiple ::
  -- |  Multipart request metadata. See 'payload'.
  PlayerScoreSubmissionList ->
  GamesScoresSubmitMultiple
newGamesScoresSubmitMultiple payload =
  GamesScoresSubmitMultiple
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesScoresSubmitMultiple where
  type
    Rs GamesScoresSubmitMultiple =
      PlayerScoreListResponse
  type
    Scopes GamesScoresSubmitMultiple =
      '[Games'FullControl]
  requestClient GamesScoresSubmitMultiple {..} =
    go
      xgafv
      accessToken
      callback
      language
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gamesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesScoresSubmitMultipleResource
          )
          Core.mempty
