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
-- Module      : Gogol.GamesConfiguration.AchievementConfigurations.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.update@.
module Gogol.GamesConfiguration.AchievementConfigurations.Update
  ( -- * Resource
    GamesConfigurationAchievementConfigurationsUpdateResource,

    -- ** Constructing a Request
    newGamesConfigurationAchievementConfigurationsUpdate,
    GamesConfigurationAchievementConfigurationsUpdate,
  )
where

import Gogol.GamesConfiguration.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesConfiguration.achievementConfigurations.update@ method which the
-- 'GamesConfigurationAchievementConfigurationsUpdate' request conforms to.
type GamesConfigurationAchievementConfigurationsUpdateResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "achievements"
    Core.:> Core.Capture "achievementId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AchievementConfiguration
    Core.:> Core.Put '[Core.JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ 'newGamesConfigurationAchievementConfigurationsUpdate' smart constructor.
data GamesConfigurationAchievementConfigurationsUpdate = GamesConfigurationAchievementConfigurationsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the achievement used by this method.
    achievementId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AchievementConfiguration,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationAchievementConfigurationsUpdate' with the minimum fields required to make a request.
newGamesConfigurationAchievementConfigurationsUpdate ::
  -- |  The ID of the achievement used by this method. See 'achievementId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AchievementConfiguration ->
  GamesConfigurationAchievementConfigurationsUpdate
newGamesConfigurationAchievementConfigurationsUpdate achievementId payload =
  GamesConfigurationAchievementConfigurationsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      achievementId = achievementId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationAchievementConfigurationsUpdate
  where
  type
    Rs
      GamesConfigurationAchievementConfigurationsUpdate =
      AchievementConfiguration
  type
    Scopes
      GamesConfigurationAchievementConfigurationsUpdate =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationAchievementConfigurationsUpdate {..} =
      go
        achievementId
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
                  GamesConfigurationAchievementConfigurationsUpdateResource
            )
            Core.mempty
