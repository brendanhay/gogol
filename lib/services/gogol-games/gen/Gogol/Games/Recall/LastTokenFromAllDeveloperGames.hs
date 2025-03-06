{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Games.Recall.LastTokenFromAllDeveloperGames
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the last Recall token from all developer games that is associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have active PGS Player profile.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.recall.lastTokenFromAllDeveloperGames@.
module Gogol.Games.Recall.LastTokenFromAllDeveloperGames
  ( -- * Resource
    GamesRecallLastTokenFromAllDeveloperGamesResource,

    -- ** Constructing a Request
    GamesRecallLastTokenFromAllDeveloperGames (..),
    newGamesRecallLastTokenFromAllDeveloperGames,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.recall.lastTokenFromAllDeveloperGames@ method which the
-- 'GamesRecallLastTokenFromAllDeveloperGames' request conforms to.
type GamesRecallLastTokenFromAllDeveloperGamesResource =
  "games"
    Core.:> "v1"
    Core.:> "recall"
    Core.:> "developerGamesLastPlayerToken"
    Core.:> Core.Capture "sessionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RetrieveDeveloperGamesLastPlayerTokenResponse

-- | Retrieve the last Recall token from all developer games that is associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have active PGS Player profile.
--
-- /See:/ 'newGamesRecallLastTokenFromAllDeveloperGames' smart constructor.
data GamesRecallLastTokenFromAllDeveloperGames = GamesRecallLastTokenFromAllDeveloperGames
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player \/ Google user and application.
    sessionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesRecallLastTokenFromAllDeveloperGames' with the minimum fields required to make a request.
newGamesRecallLastTokenFromAllDeveloperGames ::
  -- |  Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player \/ Google user and application. See 'sessionId'.
  Core.Text ->
  GamesRecallLastTokenFromAllDeveloperGames
newGamesRecallLastTokenFromAllDeveloperGames sessionId =
  GamesRecallLastTokenFromAllDeveloperGames
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      sessionId = sessionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesRecallLastTokenFromAllDeveloperGames
  where
  type
    Rs GamesRecallLastTokenFromAllDeveloperGames =
      RetrieveDeveloperGamesLastPlayerTokenResponse
  type
    Scopes GamesRecallLastTokenFromAllDeveloperGames =
      '[Androidpublisher'FullControl]
  requestClient GamesRecallLastTokenFromAllDeveloperGames {..} =
    go
      sessionId
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
          ( Core.Proxy ::
              Core.Proxy GamesRecallLastTokenFromAllDeveloperGamesResource
          )
          Core.mempty
