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
-- Module      : Network.Google.GamesConfiguration.AchievementConfigurations.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert a new achievement configuration in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.insert@.
module Network.Google.GamesConfiguration.AchievementConfigurations.Insert
  ( -- * Resource
    GamesConfigurationAchievementConfigurationsInsertResource,

    -- ** Constructing a Request
    newGamesConfigurationAchievementConfigurationsInsert,
    GamesConfigurationAchievementConfigurationsInsert,
  )
where

import Network.Google.GamesConfiguration.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @gamesConfiguration.achievementConfigurations.insert@ method which the
-- 'GamesConfigurationAchievementConfigurationsInsert' request conforms to.
type GamesConfigurationAchievementConfigurationsInsertResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> "achievements"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AchievementConfiguration
    Core.:> Core.Post '[Core.JSON] AchievementConfiguration

-- | Insert a new achievement configuration in this application.
--
-- /See:/ 'newGamesConfigurationAchievementConfigurationsInsert' smart constructor.
data GamesConfigurationAchievementConfigurationsInsert = GamesConfigurationAchievementConfigurationsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
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

-- | Creates a value of 'GamesConfigurationAchievementConfigurationsInsert' with the minimum fields required to make a request.
newGamesConfigurationAchievementConfigurationsInsert ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AchievementConfiguration ->
  GamesConfigurationAchievementConfigurationsInsert
newGamesConfigurationAchievementConfigurationsInsert applicationId payload =
  GamesConfigurationAchievementConfigurationsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationId = applicationId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationAchievementConfigurationsInsert
  where
  type
    Rs
      GamesConfigurationAchievementConfigurationsInsert =
      AchievementConfiguration
  type
    Scopes
      GamesConfigurationAchievementConfigurationsInsert =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationAchievementConfigurationsInsert {..} =
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
                  GamesConfigurationAchievementConfigurationsInsertResource
            )
            Core.mempty
