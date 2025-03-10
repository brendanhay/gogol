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
-- Module      : Gogol.Games.Accesstokens.GenerateRecallPlayGroupingApiToken
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a Play Grouping API token for the PGS user identified by the Recall session ID provided in the request.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.accesstokens.generateRecallPlayGroupingApiToken@.
module Gogol.Games.Accesstokens.GenerateRecallPlayGroupingApiToken
  ( -- * Resource
    GamesAccesstokensGenerateRecallPlayGroupingApiTokenResource,

    -- ** Constructing a Request
    GamesAccesstokensGenerateRecallPlayGroupingApiToken (..),
    newGamesAccesstokensGenerateRecallPlayGroupingApiToken,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.accesstokens.generateRecallPlayGroupingApiToken@ method which the
-- 'GamesAccesstokensGenerateRecallPlayGroupingApiToken' request conforms to.
type GamesAccesstokensGenerateRecallPlayGroupingApiTokenResource =
  "games"
    Core.:> "v1"
    Core.:> "accesstokens"
    Core.:> "generateRecallPlayGroupingApiToken"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "packageName" Core.Text
    Core.:> Core.QueryParam "persona" Core.Text
    Core.:> Core.QueryParam "recallSessionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] GenerateRecallPlayGroupingApiTokenResponse

-- | Generates a Play Grouping API token for the PGS user identified by the Recall session ID provided in the request.
--
-- /See:/ 'newGamesAccesstokensGenerateRecallPlayGroupingApiToken' smart constructor.
data GamesAccesstokensGenerateRecallPlayGroupingApiToken = GamesAccesstokensGenerateRecallPlayGroupingApiToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. App package name to generate the token for (e.g. com.example.mygame).
    packageName :: (Core.Maybe Core.Text),
    -- | Required. Persona to associate with the token. Persona is a developer-provided stable identifier of the user. Must be deterministically generated (e.g. as a one-way hash) from the user account ID and user profile ID (if the app has the concept), according to the developer\'s own user identity system.
    persona :: (Core.Maybe Core.Text),
    -- | Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player \/ Google user and application. See https:\/\/developer.android.com\/games\/pgs\/recall\/recall-setup on how to integrate with Recall and get session ID.
    recallSessionId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAccesstokensGenerateRecallPlayGroupingApiToken' with the minimum fields required to make a request.
newGamesAccesstokensGenerateRecallPlayGroupingApiToken ::
  GamesAccesstokensGenerateRecallPlayGroupingApiToken
newGamesAccesstokensGenerateRecallPlayGroupingApiToken =
  GamesAccesstokensGenerateRecallPlayGroupingApiToken
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = Core.Nothing,
      persona = Core.Nothing,
      recallSessionId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesAccesstokensGenerateRecallPlayGroupingApiToken
  where
  type
    Rs GamesAccesstokensGenerateRecallPlayGroupingApiToken =
      GenerateRecallPlayGroupingApiTokenResponse
  type
    Scopes GamesAccesstokensGenerateRecallPlayGroupingApiToken =
      '[Androidpublisher'FullControl]
  requestClient
    GamesAccesstokensGenerateRecallPlayGroupingApiToken {..} =
      go
        xgafv
        accessToken
        callback
        packageName
        persona
        recallSessionId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesAccesstokensGenerateRecallPlayGroupingApiTokenResource
            )
            Core.mempty
