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
-- Module      : Gogol.Games.Applications.Verify
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the auth token provided with this request is for the application with the specified ID, and returns the ID of the player it was granted for.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.applications.verify@.
module Gogol.Games.Applications.Verify
  ( -- * Resource
    GamesApplicationsVerifyResource,

    -- ** Constructing a Request
    GamesApplicationsVerify (..),
    newGamesApplicationsVerify,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.applications.verify@ method which the
-- 'GamesApplicationsVerify' request conforms to.
type GamesApplicationsVerifyResource =
  "games"
    Core.:> "v1"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> "verify"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ApplicationVerifyResponse

-- | Verifies the auth token provided with this request is for the application with the specified ID, and returns the ID of the player it was granted for.
--
-- /See:/ 'newGamesApplicationsVerify' smart constructor.
data GamesApplicationsVerify = GamesApplicationsVerify
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesApplicationsVerify' with the minimum fields required to make a request.
newGamesApplicationsVerify ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  GamesApplicationsVerify
newGamesApplicationsVerify applicationId =
  GamesApplicationsVerify
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationId = applicationId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesApplicationsVerify where
  type Rs GamesApplicationsVerify = ApplicationVerifyResponse
  type Scopes GamesApplicationsVerify = '[Games'FullControl]
  requestClient GamesApplicationsVerify {..} =
    go
      applicationId
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
          (Core.Proxy :: Core.Proxy GamesApplicationsVerifyResource)
          Core.mempty
