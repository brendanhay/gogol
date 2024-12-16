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
-- Module      : Gogol.GamesManagement.Events.ResetForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the event with the given ID for all players. This method is only available to user accounts for your developer console. Only draft events can be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetForAllPlayers@.
module Gogol.GamesManagement.Events.ResetForAllPlayers
    (
    -- * Resource
      GamesManagementEventsResetForAllPlayersResource

    -- ** Constructing a Request
    , GamesManagementEventsResetForAllPlayers (..)
    , newGamesManagementEventsResetForAllPlayers
    ) where

import qualified Gogol.Prelude as Core
import Gogol.GamesManagement.Types

-- | A resource alias for @gamesManagement.events.resetForAllPlayers@ method which the
-- 'GamesManagementEventsResetForAllPlayers' request conforms to.
type GamesManagementEventsResetForAllPlayersResource
     =
     "games" Core.:>
       "v1management" Core.:>
         "events" Core.:>
           Core.Capture "eventId" Core.Text Core.:>
             "resetForAllPlayers" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] ()

-- | Resets the event with the given ID for all players. This method is only available to user accounts for your developer console. Only draft events can be reset.
--
-- /See:/ 'newGamesManagementEventsResetForAllPlayers' smart constructor.
data GamesManagementEventsResetForAllPlayers = GamesManagementEventsResetForAllPlayers
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the event.
    , eventId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementEventsResetForAllPlayers' with the minimum fields required to make a request.
newGamesManagementEventsResetForAllPlayers 
    ::  Core.Text
       -- ^  The ID of the event. See 'eventId'.
    -> GamesManagementEventsResetForAllPlayers
newGamesManagementEventsResetForAllPlayers eventId =
  GamesManagementEventsResetForAllPlayers
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , eventId = eventId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           GamesManagementEventsResetForAllPlayers
         where
        type Rs GamesManagementEventsResetForAllPlayers = ()
        type Scopes GamesManagementEventsResetForAllPlayers =
             '[Games'FullControl]
        requestClient
          GamesManagementEventsResetForAllPlayers{..}
          = go eventId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gamesManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           GamesManagementEventsResetForAllPlayersResource)
                      Core.mempty

