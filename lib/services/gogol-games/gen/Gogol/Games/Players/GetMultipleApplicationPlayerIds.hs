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
-- Module      : Gogol.Games.Players.GetMultipleApplicationPlayerIds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the application player ids for the currently authenticated player across all requested games by the same developer as the calling application. This will only return ids for players that actually have an id (scoped or otherwise) with that game.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.players.getMultipleApplicationPlayerIds@.
module Gogol.Games.Players.GetMultipleApplicationPlayerIds
  ( -- * Resource
    GamesPlayersGetMultipleApplicationPlayerIdsResource,

    -- ** Constructing a Request
    GamesPlayersGetMultipleApplicationPlayerIds (..),
    newGamesPlayersGetMultipleApplicationPlayerIds,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.players.getMultipleApplicationPlayerIds@ method which the
-- 'GamesPlayersGetMultipleApplicationPlayerIds' request conforms to.
type GamesPlayersGetMultipleApplicationPlayerIdsResource =
  "games"
    Core.:> "v1"
    Core.:> "players"
    Core.:> "me"
    Core.:> "multipleApplicationPlayerIds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "applicationIds" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GetMultipleApplicationPlayerIdsResponse

-- | Get the application player ids for the currently authenticated player across all requested games by the same developer as the calling application. This will only return ids for players that actually have an id (scoped or otherwise) with that game.
--
-- /See:/ 'newGamesPlayersGetMultipleApplicationPlayerIds' smart constructor.
data GamesPlayersGetMultipleApplicationPlayerIds = GamesPlayersGetMultipleApplicationPlayerIds
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The application IDs from the Google Play developer console for the games to return scoped ids for.
    applicationIds :: (Core.Maybe [Core.Text]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesPlayersGetMultipleApplicationPlayerIds' with the minimum fields required to make a request.
newGamesPlayersGetMultipleApplicationPlayerIds ::
  GamesPlayersGetMultipleApplicationPlayerIds
newGamesPlayersGetMultipleApplicationPlayerIds =
  GamesPlayersGetMultipleApplicationPlayerIds
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationIds = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesPlayersGetMultipleApplicationPlayerIds
  where
  type
    Rs GamesPlayersGetMultipleApplicationPlayerIds =
      GetMultipleApplicationPlayerIdsResponse
  type
    Scopes
      GamesPlayersGetMultipleApplicationPlayerIds =
      '[Games'FullControl]
  requestClient
    GamesPlayersGetMultipleApplicationPlayerIds {..} =
      go
        xgafv
        accessToken
        (applicationIds Core.^. Core._Default)
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesPlayersGetMultipleApplicationPlayerIdsResource
            )
            Core.mempty
