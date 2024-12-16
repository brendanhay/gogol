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
-- Module      : Gogol.GamesManagement.Scores.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets scores for the leaderboards with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft leaderboards may be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.scores.resetMultipleForAllPlayers@.
module Gogol.GamesManagement.Scores.ResetMultipleForAllPlayers
    (
    -- * Resource
      GamesManagementScoresResetMultipleForAllPlayersResource

    -- ** Constructing a Request
    , GamesManagementScoresResetMultipleForAllPlayers (..)
    , newGamesManagementScoresResetMultipleForAllPlayers
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesManagement.Types

-- | A resource alias for @gamesManagement.scores.resetMultipleForAllPlayers@ method which the
-- 'GamesManagementScoresResetMultipleForAllPlayers' request conforms to.
type GamesManagementScoresResetMultipleForAllPlayersResource
     =
     "games" Core.:>
       "v1management" Core.:>
         "scores" Core.:>
           "resetMultipleForAllPlayers" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON]
                           ScoresResetMultipleForAllRequest
                           Core.:> Core.Post '[Core.JSON] ()

-- | Resets scores for the leaderboards with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft leaderboards may be reset.
--
-- /See:/ 'newGamesManagementScoresResetMultipleForAllPlayers' smart constructor.
data GamesManagementScoresResetMultipleForAllPlayers = GamesManagementScoresResetMultipleForAllPlayers
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ScoresResetMultipleForAllRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementScoresResetMultipleForAllPlayers' with the minimum fields required to make a request.
newGamesManagementScoresResetMultipleForAllPlayers 
    ::  ScoresResetMultipleForAllRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> GamesManagementScoresResetMultipleForAllPlayers
newGamesManagementScoresResetMultipleForAllPlayers payload =
  GamesManagementScoresResetMultipleForAllPlayers
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesManagementScoresResetMultipleForAllPlayers
         where
        type Rs
               GamesManagementScoresResetMultipleForAllPlayers
             = ()
        type Scopes
               GamesManagementScoresResetMultipleForAllPlayers
             = '[Games'FullControl]
        requestClient
          GamesManagementScoresResetMultipleForAllPlayers{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              gamesManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GamesManagementScoresResetMultipleForAllPlayersResource)
                      Core.mempty

