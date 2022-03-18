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
-- Module      : Gogol.GamesConfiguration.AchievementConfigurations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.get@.
module Gogol.GamesConfiguration.AchievementConfigurations.Get
  ( -- * Resource
    GamesConfigurationAchievementConfigurationsGetResource,

    -- ** Constructing a Request
    newGamesConfigurationAchievementConfigurationsGet,
    GamesConfigurationAchievementConfigurationsGet,
  )
where

import Gogol.GamesConfiguration.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesConfiguration.achievementConfigurations.get@ method which the
-- 'GamesConfigurationAchievementConfigurationsGet' request conforms to.
type GamesConfigurationAchievementConfigurationsGetResource =
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
    Core.:> Core.Get '[Core.JSON] AchievementConfiguration

-- | Retrieves the metadata of the achievement configuration with the given ID.
--
-- /See:/ 'newGamesConfigurationAchievementConfigurationsGet' smart constructor.
data GamesConfigurationAchievementConfigurationsGet = GamesConfigurationAchievementConfigurationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The ID of the achievement used by this method.
    achievementId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationAchievementConfigurationsGet' with the minimum fields required to make a request.
newGamesConfigurationAchievementConfigurationsGet ::
  -- |  The ID of the achievement used by this method. See 'achievementId'.
  Core.Text ->
  GamesConfigurationAchievementConfigurationsGet
newGamesConfigurationAchievementConfigurationsGet achievementId =
  GamesConfigurationAchievementConfigurationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      achievementId = achievementId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationAchievementConfigurationsGet
  where
  type
    Rs
      GamesConfigurationAchievementConfigurationsGet =
      AchievementConfiguration
  type
    Scopes
      GamesConfigurationAchievementConfigurationsGet =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationAchievementConfigurationsGet {..} =
      go
        achievementId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesConfigurationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesConfigurationAchievementConfigurationsGetResource
            )
            Core.mempty
