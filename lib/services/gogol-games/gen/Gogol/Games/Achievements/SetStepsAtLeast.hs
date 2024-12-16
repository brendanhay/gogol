{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Games.Achievements.SetStepsAtLeast
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the steps for the currently authenticated player towards unlocking an achievement. If the steps parameter is less than the current number of steps that the player already gained for the achievement, the achievement is not modified.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.setStepsAtLeast@.
module Gogol.Games.Achievements.SetStepsAtLeast
    (
    -- * Resource
      GamesAchievementsSetStepsAtLeastResource

    -- ** Constructing a Request
    , GamesAchievementsSetStepsAtLeast (..)
    , newGamesAchievementsSetStepsAtLeast
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.achievements.setStepsAtLeast@ method which the
-- 'GamesAchievementsSetStepsAtLeast' request conforms to.
type GamesAchievementsSetStepsAtLeastResource =
     "games" Core.:>
       "v1" Core.:>
         "achievements" Core.:>
           Core.Capture "achievementId" Core.Text Core.:>
             "setStepsAtLeast" Core.:>
               Core.QueryParam "steps" Core.Int32 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Post '[Core.JSON]
                               AchievementSetStepsAtLeastResponse

-- | Sets the steps for the currently authenticated player towards unlocking an achievement. If the steps parameter is less than the current number of steps that the player already gained for the achievement, the achievement is not modified.
--
-- /See:/ 'newGamesAchievementsSetStepsAtLeast' smart constructor.
data GamesAchievementsSetStepsAtLeast = GamesAchievementsSetStepsAtLeast
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the achievement used by this method.
    , achievementId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The minimum value to set the steps to.
    , steps :: Core.Int32
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementsSetStepsAtLeast' with the minimum fields required to make a request.
newGamesAchievementsSetStepsAtLeast 
    ::  Core.Text
       -- ^  The ID of the achievement used by this method. See 'achievementId'.
    -> Core.Int32
       -- ^  Required. The minimum value to set the steps to. See 'steps'.
    -> GamesAchievementsSetStepsAtLeast
newGamesAchievementsSetStepsAtLeast achievementId steps =
  GamesAchievementsSetStepsAtLeast
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , achievementId = achievementId
    , callback = Core.Nothing
    , steps = steps
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesAchievementsSetStepsAtLeast
         where
        type Rs GamesAchievementsSetStepsAtLeast =
             AchievementSetStepsAtLeastResponse
        type Scopes GamesAchievementsSetStepsAtLeast =
             '[Games'FullControl]
        requestClient GamesAchievementsSetStepsAtLeast{..}
          = go achievementId (Core.Just steps) xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesAchievementsSetStepsAtLeastResource)
                      Core.mempty

