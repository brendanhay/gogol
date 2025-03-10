{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Games.Stats.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns engagement and spend statistics in this application for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.stats.get@.
module Gogol.Games.Stats.Get
  ( -- * Resource
    GamesStatsGetResource,

    -- ** Constructing a Request
    GamesStatsGet (..),
    newGamesStatsGet,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.stats.get@ method which the
-- 'GamesStatsGet' request conforms to.
type GamesStatsGetResource =
  "games"
    Core.:> "v1"
    Core.:> "stats"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StatsResponse

-- | Returns engagement and spend statistics in this application for the currently authenticated user.
--
-- /See:/ 'newGamesStatsGet' smart constructor.
data GamesStatsGet = GamesStatsGet
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

-- | Creates a value of 'GamesStatsGet' with the minimum fields required to make a request.
newGamesStatsGet ::
  GamesStatsGet
newGamesStatsGet =
  GamesStatsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesStatsGet where
  type Rs GamesStatsGet = StatsResponse
  type Scopes GamesStatsGet = '[Games'FullControl]
  requestClient GamesStatsGet {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesStatsGetResource)
          Core.mempty
