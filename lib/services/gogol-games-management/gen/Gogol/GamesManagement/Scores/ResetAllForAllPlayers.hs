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
-- Module      : Gogol.GamesManagement.Scores.ResetAllForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for all draft leaderboards for all players. This method is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetAllForAllPlayers@.
module Gogol.GamesManagement.Scores.ResetAllForAllPlayers
    (
    -- * Resource
      GamesManagementScoresResetAllForAllPlayersResource

    -- ** Constructing a Request
    , newGamesManagementScoresResetAllForAllPlayers
    , GamesManagementScoresResetAllForAllPlayers
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesManagement.Types

-- | A resource alias for @gamesManagement.scores.resetAllForAllPlayers@ method which the
-- 'GamesManagementScoresResetAllForAllPlayers' request conforms to.
type GamesManagementScoresResetAllForAllPlayersResource
     =
     "games" Core.:>
       "v1management" Core.:>
         "scores" Core.:>
           "resetAllForAllPlayers" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Post '[Core.JSON] ()

-- | Resets scores for all draft leaderboards for all players. This method is only available to user accounts for your developer console.
--
-- /See:/ 'newGamesManagementScoresResetAllForAllPlayers' smart constructor.
data GamesManagementScoresResetAllForAllPlayers = GamesManagementScoresResetAllForAllPlayers
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementScoresResetAllForAllPlayers' with the minimum fields required to make a request.
newGamesManagementScoresResetAllForAllPlayers 
    ::  GamesManagementScoresResetAllForAllPlayers
newGamesManagementScoresResetAllForAllPlayers =
  GamesManagementScoresResetAllForAllPlayers
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesManagementScoresResetAllForAllPlayers
         where
        type Rs GamesManagementScoresResetAllForAllPlayers =
             ()
        type Scopes
               GamesManagementScoresResetAllForAllPlayers
             = '["https://www.googleapis.com/auth/games"]
        requestClient
          GamesManagementScoresResetAllForAllPlayers{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GamesManagementScoresResetAllForAllPlayersResource)
                      Core.mempty

