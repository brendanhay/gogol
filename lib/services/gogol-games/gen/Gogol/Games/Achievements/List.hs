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
-- Module      : Gogol.Games.Achievements.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the progress for all your application\'s achievements for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.list@.
module Gogol.Games.Achievements.List
    (
    -- * Resource
      GamesAchievementsListResource

    -- ** Constructing a Request
    , GamesAchievementsList (..)
    , newGamesAchievementsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Games.Types

-- | A resource alias for @games.achievements.list@ method which the
-- 'GamesAchievementsList' request conforms to.
type GamesAchievementsListResource =
     "games" Core.:>
       "v1" Core.:>
         "players" Core.:>
           Core.Capture "playerId" Core.Text Core.:>
             "achievements" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "language" Core.Text Core.:>
                       Core.QueryParam "maxResults" Core.Int32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "state" AchievementsListState Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON]
                                     PlayerAchievementListResponse

-- | Lists the progress for all your application\'s achievements for the currently authenticated player.
--
-- /See:/ 'newGamesAchievementsList' smart constructor.
data GamesAchievementsList = GamesAchievementsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The preferred language to use for strings returned by this method.
    , language :: (Core.Maybe Core.Text)
      -- | The maximum number of achievement resources to return in the response, used for paging. For any response, the actual number of achievement resources returned may be less than the specified @maxResults@.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | The token returned by the previous request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | A player ID. A value of @me@ may be used in place of the authenticated player\'s ID.
    , playerId :: Core.Text
      -- | Tells the server to return only achievements with the specified state. If this parameter isn\'t specified, all achievements are returned.
    , state :: (Core.Maybe AchievementsListState)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesAchievementsList' with the minimum fields required to make a request.
newGamesAchievementsList 
    ::  Core.Text
       -- ^  A player ID. A value of @me@ may be used in place of the authenticated player\'s ID. See 'playerId'.
    -> GamesAchievementsList
newGamesAchievementsList playerId =
  GamesAchievementsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , language = Core.Nothing
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , playerId = playerId
    , state = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesAchievementsList
         where
        type Rs GamesAchievementsList =
             PlayerAchievementListResponse
        type Scopes GamesAchievementsList =
             '[Games'FullControl]
        requestClient GamesAchievementsList{..}
          = go playerId xgafv accessToken callback language
              maxResults
              pageToken
              state
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GamesAchievementsListResource)
                      Core.mempty

