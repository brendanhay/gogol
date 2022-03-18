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
-- Module      : Gogol.GamesConfiguration.LeaderboardConfigurations.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.update@.
module Gogol.GamesConfiguration.LeaderboardConfigurations.Update
  ( -- * Resource
    GamesConfigurationLeaderboardConfigurationsUpdateResource,

    -- ** Constructing a Request
    newGamesConfigurationLeaderboardConfigurationsUpdate,
    GamesConfigurationLeaderboardConfigurationsUpdate,
  )
where

import Gogol.GamesConfiguration.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.update@ method which the
-- 'GamesConfigurationLeaderboardConfigurationsUpdate' request conforms to.
type GamesConfigurationLeaderboardConfigurationsUpdateResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "leaderboards"
    Core.:> Core.Capture "leaderboardId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LeaderboardConfiguration
    Core.:> Core.Put '[Core.JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ 'newGamesConfigurationLeaderboardConfigurationsUpdate' smart constructor.
data GamesConfigurationLeaderboardConfigurationsUpdate = GamesConfigurationLeaderboardConfigurationsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the leaderboard.
    leaderboardId :: Core.Text,
    -- | Multipart request metadata.
    payload :: LeaderboardConfiguration,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationLeaderboardConfigurationsUpdate' with the minimum fields required to make a request.
newGamesConfigurationLeaderboardConfigurationsUpdate ::
  -- |  The ID of the leaderboard. See 'leaderboardId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LeaderboardConfiguration ->
  GamesConfigurationLeaderboardConfigurationsUpdate
newGamesConfigurationLeaderboardConfigurationsUpdate leaderboardId payload =
  GamesConfigurationLeaderboardConfigurationsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      leaderboardId = leaderboardId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationLeaderboardConfigurationsUpdate
  where
  type
    Rs
      GamesConfigurationLeaderboardConfigurationsUpdate =
      LeaderboardConfiguration
  type
    Scopes
      GamesConfigurationLeaderboardConfigurationsUpdate =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationLeaderboardConfigurationsUpdate {..} =
      go
        leaderboardId
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
                  GamesConfigurationLeaderboardConfigurationsUpdateResource
            )
            Core.mempty
