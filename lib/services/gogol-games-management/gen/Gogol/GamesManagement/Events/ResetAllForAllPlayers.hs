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
-- Module      : Gogol.GamesManagement.Events.ResetAllForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft events for all players. This method is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetAllForAllPlayers@.
module Gogol.GamesManagement.Events.ResetAllForAllPlayers
  ( -- * Resource
    GamesManagementEventsResetAllForAllPlayersResource,

    -- ** Constructing a Request
    GamesManagementEventsResetAllForAllPlayers (..),
    newGamesManagementEventsResetAllForAllPlayers,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.events.resetAllForAllPlayers@ method which the
-- 'GamesManagementEventsResetAllForAllPlayers' request conforms to.
type GamesManagementEventsResetAllForAllPlayersResource =
  "games"
    Core.:> "v1management"
    Core.:> "events"
    Core.:> "resetAllForAllPlayers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets all draft events for all players. This method is only available to user accounts for your developer console.
--
-- /See:/ 'newGamesManagementEventsResetAllForAllPlayers' smart constructor.
data GamesManagementEventsResetAllForAllPlayers = GamesManagementEventsResetAllForAllPlayers
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementEventsResetAllForAllPlayers' with the minimum fields required to make a request.
newGamesManagementEventsResetAllForAllPlayers ::
  GamesManagementEventsResetAllForAllPlayers
newGamesManagementEventsResetAllForAllPlayers =
  GamesManagementEventsResetAllForAllPlayers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementEventsResetAllForAllPlayers
  where
  type
    Rs GamesManagementEventsResetAllForAllPlayers =
      ()
  type
    Scopes
      GamesManagementEventsResetAllForAllPlayers =
      '[Games'FullControl]
  requestClient
    GamesManagementEventsResetAllForAllPlayers {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        gamesManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesManagementEventsResetAllForAllPlayersResource
            )
            Core.mempty
