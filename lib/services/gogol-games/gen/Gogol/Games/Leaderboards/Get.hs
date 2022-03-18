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
-- Module      : Gogol.Games.Leaderboards.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.leaderboards.get@.
module Gogol.Games.Leaderboards.Get
  ( -- * Resource
    GamesLeaderboardsGetResource,

    -- ** Constructing a Request
    newGamesLeaderboardsGet,
    GamesLeaderboardsGet,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.leaderboards.get@ method which the
-- 'GamesLeaderboardsGet' request conforms to.
type GamesLeaderboardsGetResource =
  "games"
    Core.:> "v1"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Leaderboard

-- | Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ 'newGamesLeaderboardsGet' smart constructor.
data GamesLeaderboardsGet = GamesLeaderboardsGet
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesLeaderboardsGet' with the minimum fields required to make a request.
newGamesLeaderboardsGet ::
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  GamesLeaderboardsGet
newGamesLeaderboardsGet leaderboardId =
  GamesLeaderboardsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      leaderboardId = leaderboardId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesLeaderboardsGet where
  type Rs GamesLeaderboardsGet = Leaderboard
  type
    Scopes GamesLeaderboardsGet =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesLeaderboardsGet {..} =
    go
      leaderboardId
      xgafv
      accessToken
      callback
      language
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesLeaderboardsGetResource
          )
          Core.mempty
