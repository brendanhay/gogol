{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesConfiguration.AchievementConfigurations.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.delete@.
module Gogol.GamesConfiguration.AchievementConfigurations.Delete
    (
    -- * Resource
      GamesConfigurationAchievementConfigurationsDeleteResource

    -- ** Constructing a Request
    , newGamesConfigurationAchievementConfigurationsDelete
    , GamesConfigurationAchievementConfigurationsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesConfiguration.Types

-- | A resource alias for @gamesConfiguration.achievementConfigurations.delete@ method which the
-- 'GamesConfigurationAchievementConfigurationsDelete' request conforms to.
type GamesConfigurationAchievementConfigurationsDeleteResource
     =
     "games" Core.:>
       "v1configuration" Core.:>
         "achievements" Core.:>
           Core.Capture "achievementId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] ()

-- | Delete the achievement configuration with the given ID.
--
-- /See:/ 'newGamesConfigurationAchievementConfigurationsDelete' smart constructor.
data GamesConfigurationAchievementConfigurationsDelete = GamesConfigurationAchievementConfigurationsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the achievement used by this method.
    , achievementId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesConfigurationAchievementConfigurationsDelete' with the minimum fields required to make a request.
newGamesConfigurationAchievementConfigurationsDelete 
    ::  Core.Text
       -- ^  The ID of the achievement used by this method. See 'achievementId'.
    -> GamesConfigurationAchievementConfigurationsDelete
newGamesConfigurationAchievementConfigurationsDelete achievementId =
  GamesConfigurationAchievementConfigurationsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , achievementId = achievementId
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesConfigurationAchievementConfigurationsDelete
         where
        type Rs
               GamesConfigurationAchievementConfigurationsDelete
             = ()
        type Scopes
               GamesConfigurationAchievementConfigurationsDelete
             =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient
          GamesConfigurationAchievementConfigurationsDelete{..}
          = go achievementId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesConfigurationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GamesConfigurationAchievementConfigurationsDeleteResource)
                      Core.mempty

