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
-- Module      : Gogol.Games.Recall.ResetPersona
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete all Recall tokens linking the given persona to any player (with or without a profile).
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.recall.resetPersona@.
module Gogol.Games.Recall.ResetPersona
  ( -- * Resource
    GamesRecallResetPersonaResource,

    -- ** Constructing a Request
    GamesRecallResetPersona (..),
    newGamesRecallResetPersona,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.recall.resetPersona@ method which the
-- 'GamesRecallResetPersona' request conforms to.
type GamesRecallResetPersonaResource =
  "games"
    Core.:> "v1"
    Core.:> "recall:resetPersona"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResetPersonaRequest
    Core.:> Core.Post '[Core.JSON] ResetPersonaResponse

-- | Delete all Recall tokens linking the given persona to any player (with or without a profile).
--
-- /See:/ 'newGamesRecallResetPersona' smart constructor.
data GamesRecallResetPersona = GamesRecallResetPersona
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ResetPersonaRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesRecallResetPersona' with the minimum fields required to make a request.
newGamesRecallResetPersona ::
  -- |  Multipart request metadata. See 'payload'.
  ResetPersonaRequest ->
  GamesRecallResetPersona
newGamesRecallResetPersona payload =
  GamesRecallResetPersona
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesRecallResetPersona where
  type Rs GamesRecallResetPersona = ResetPersonaResponse
  type
    Scopes GamesRecallResetPersona =
      '[Androidpublisher'FullControl]
  requestClient GamesRecallResetPersona {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesRecallResetPersonaResource)
          Core.mempty
