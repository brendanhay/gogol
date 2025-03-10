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
-- Module      : Gogol.GamesConfiguration.LeaderboardConfigurations.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert a new leaderboard configuration in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.insert@.
module Gogol.GamesConfiguration.LeaderboardConfigurations.Insert
  ( -- * Resource
    GamesConfigurationLeaderboardConfigurationsInsertResource,

    -- ** Constructing a Request
    GamesConfigurationLeaderboardConfigurationsInsert (..),
    newGamesConfigurationLeaderboardConfigurationsInsert,
  )
where

import Gogol.GamesConfiguration.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.insert@ method which the
-- 'GamesConfigurationLeaderboardConfigurationsInsert' request conforms to.
type GamesConfigurationLeaderboardConfigurationsInsertResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> "leaderboards"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LeaderboardConfiguration
    Core.:> Core.Post '[Core.JSON] LeaderboardConfiguration

-- | Insert a new leaderboard configuration in this application.
--
-- /See:/ 'newGamesConfigurationLeaderboardConfigurationsInsert' smart constructor.
data GamesConfigurationLeaderboardConfigurationsInsert = GamesConfigurationLeaderboardConfigurationsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LeaderboardConfiguration,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationLeaderboardConfigurationsInsert' with the minimum fields required to make a request.
newGamesConfigurationLeaderboardConfigurationsInsert ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LeaderboardConfiguration ->
  GamesConfigurationLeaderboardConfigurationsInsert
newGamesConfigurationLeaderboardConfigurationsInsert
  applicationId
  payload =
    GamesConfigurationLeaderboardConfigurationsInsert
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        applicationId = applicationId,
        callback = Core.Nothing,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    GamesConfigurationLeaderboardConfigurationsInsert
  where
  type
    Rs GamesConfigurationLeaderboardConfigurationsInsert =
      LeaderboardConfiguration
  type
    Scopes GamesConfigurationLeaderboardConfigurationsInsert =
      '[Androidpublisher'FullControl]
  requestClient GamesConfigurationLeaderboardConfigurationsInsert {..} =
    go
      applicationId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gamesConfigurationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                GamesConfigurationLeaderboardConfigurationsInsertResource
          )
          Core.mempty
