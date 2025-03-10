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
-- Module      : Gogol.Games.Players.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Player resource with the given ID. To retrieve the player for the currently authenticated user, set @playerId@ to @me@.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.players.get@.
module Gogol.Games.Players.Get
  ( -- * Resource
    GamesPlayersGetResource,

    -- ** Constructing a Request
    GamesPlayersGet (..),
    newGamesPlayersGet,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.players.get@ method which the
-- 'GamesPlayersGet' request conforms to.
type GamesPlayersGetResource =
  "games"
    Core.:> "v1"
    Core.:> "players"
    Core.:> Core.Capture "playerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "playerIdConsistencyToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Player

-- | Retrieves the Player resource with the given ID. To retrieve the player for the currently authenticated user, set @playerId@ to @me@.
--
-- /See:/ 'newGamesPlayersGet' smart constructor.
data GamesPlayersGet = GamesPlayersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | A player ID. A value of @me@ may be used in place of the authenticated player\'s ID.
    playerId :: Core.Text,
    -- | Consistency token of the player id. The call returns a \'not found\' result when the token is present and invalid. Empty value is ignored. See also GlobalPlayerIdConsistencyTokenProto
    playerIdConsistencyToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesPlayersGet' with the minimum fields required to make a request.
newGamesPlayersGet ::
  -- |  A player ID. A value of @me@ may be used in place of the authenticated player\'s ID. See 'playerId'.
  Core.Text ->
  GamesPlayersGet
newGamesPlayersGet playerId =
  GamesPlayersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      playerId = playerId,
      playerIdConsistencyToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesPlayersGet where
  type Rs GamesPlayersGet = Player
  type Scopes GamesPlayersGet = '[Games'FullControl]
  requestClient GamesPlayersGet {..} =
    go
      playerId
      xgafv
      accessToken
      callback
      language
      playerIdConsistencyToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesPlayersGetResource)
          Core.mempty
