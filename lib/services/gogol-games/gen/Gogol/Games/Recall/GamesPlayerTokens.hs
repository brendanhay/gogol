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
-- Module      : Gogol.Games.Recall.GamesPlayerTokens
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the Recall tokens from all requested games that is associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have an active PGS Player profile.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.recall.gamesPlayerTokens@.
module Gogol.Games.Recall.GamesPlayerTokens
  ( -- * Resource
    GamesRecallGamesPlayerTokensResource,

    -- ** Constructing a Request
    GamesRecallGamesPlayerTokens (..),
    newGamesRecallGamesPlayerTokens,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.recall.gamesPlayerTokens@ method which the
-- 'GamesRecallGamesPlayerTokens' request conforms to.
type GamesRecallGamesPlayerTokensResource =
  "games"
    Core.:> "v1"
    Core.:> "recall"
    Core.:> "gamesPlayerTokens"
    Core.:> Core.Capture "sessionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "applicationIds" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RetrieveGamesPlayerTokensResponse

-- | Retrieve the Recall tokens from all requested games that is associated with the PGS Player encoded in the provided recall session id. The API is only available for users that have an active PGS Player profile.
--
-- /See:/ 'newGamesRecallGamesPlayerTokens' smart constructor.
data GamesRecallGamesPlayerTokens = GamesRecallGamesPlayerTokens
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The application IDs from the Google Play developer console for the games to return scoped ids for.
    applicationIds :: (Core.Maybe [Core.Text]),
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

-- | Creates a value of 'GamesRecallGamesPlayerTokens' with the minimum fields required to make a request.
newGamesRecallGamesPlayerTokens ::
  -- |  Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player \/ Google user and application. See 'sessionId'.
  Core.Text ->
  GamesRecallGamesPlayerTokens
newGamesRecallGamesPlayerTokens sessionId =
  GamesRecallGamesPlayerTokens
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationIds = Core.Nothing,
      callback = Core.Nothing,
      sessionId = sessionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesRecallGamesPlayerTokens where
  type
    Rs GamesRecallGamesPlayerTokens =
      RetrieveGamesPlayerTokensResponse
  type
    Scopes GamesRecallGamesPlayerTokens =
      '[Androidpublisher'FullControl]
  requestClient GamesRecallGamesPlayerTokens {..} =
    go
      sessionId
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
          (Core.Proxy :: Core.Proxy GamesRecallGamesPlayerTokensResource)
          Core.mempty
