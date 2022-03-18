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
-- Module      : Gogol.GamesConfiguration.AchievementConfigurations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the achievement configurations in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.list@.
module Gogol.GamesConfiguration.AchievementConfigurations.List
  ( -- * Resource
    GamesConfigurationAchievementConfigurationsListResource,

    -- ** Constructing a Request
    newGamesConfigurationAchievementConfigurationsList,
    GamesConfigurationAchievementConfigurationsList,
  )
where

import Gogol.GamesConfiguration.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesConfiguration.achievementConfigurations.list@ method which the
-- 'GamesConfigurationAchievementConfigurationsList' request conforms to.
type GamesConfigurationAchievementConfigurationsListResource =
  "games"
    Core.:> "v1configuration"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> "achievements"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              AchievementConfigurationListResponse

-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ 'newGamesConfigurationAchievementConfigurationsList' smart constructor.
data GamesConfigurationAchievementConfigurationsList = GamesConfigurationAchievementConfigurationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of resource configurations to return in the response, used for paging. For any response, the actual number of resources returned may be less than the specified @maxResults@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationAchievementConfigurationsList' with the minimum fields required to make a request.
newGamesConfigurationAchievementConfigurationsList ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  GamesConfigurationAchievementConfigurationsList
newGamesConfigurationAchievementConfigurationsList applicationId =
  GamesConfigurationAchievementConfigurationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationId = applicationId,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesConfigurationAchievementConfigurationsList
  where
  type
    Rs
      GamesConfigurationAchievementConfigurationsList =
      AchievementConfigurationListResponse
  type
    Scopes
      GamesConfigurationAchievementConfigurationsList =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    GamesConfigurationAchievementConfigurationsList {..} =
      go
        applicationId
        xgafv
        accessToken
        callback
        maxResults
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesConfigurationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesConfigurationAchievementConfigurationsListResource
            )
            Core.mempty
