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
-- Module      : Gogol.GamesManagement.Events.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets events with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft events may be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.resetMultipleForAllPlayers@.
module Gogol.GamesManagement.Events.ResetMultipleForAllPlayers
  ( -- * Resource
    GamesManagementEventsResetMultipleForAllPlayersResource,

    -- ** Constructing a Request
    GamesManagementEventsResetMultipleForAllPlayers (..),
    newGamesManagementEventsResetMultipleForAllPlayers,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.events.resetMultipleForAllPlayers@ method which the
-- 'GamesManagementEventsResetMultipleForAllPlayers' request conforms to.
type GamesManagementEventsResetMultipleForAllPlayersResource =
  "games"
    Core.:> "v1management"
    Core.:> "events"
    Core.:> "resetMultipleForAllPlayers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              EventsResetMultipleForAllRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets events with the given IDs for all players. This method is only available to user accounts for your developer console. Only draft events may be reset.
--
-- /See:/ 'newGamesManagementEventsResetMultipleForAllPlayers' smart constructor.
data GamesManagementEventsResetMultipleForAllPlayers = GamesManagementEventsResetMultipleForAllPlayers
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: EventsResetMultipleForAllRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementEventsResetMultipleForAllPlayers' with the minimum fields required to make a request.
newGamesManagementEventsResetMultipleForAllPlayers ::
  -- |  Multipart request metadata. See 'payload'.
  EventsResetMultipleForAllRequest ->
  GamesManagementEventsResetMultipleForAllPlayers
newGamesManagementEventsResetMultipleForAllPlayers payload =
  GamesManagementEventsResetMultipleForAllPlayers
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementEventsResetMultipleForAllPlayers
  where
  type
    Rs
      GamesManagementEventsResetMultipleForAllPlayers =
      ()
  type
    Scopes
      GamesManagementEventsResetMultipleForAllPlayers =
      '[Games'FullControl]
  requestClient
    GamesManagementEventsResetMultipleForAllPlayers {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        gamesManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  GamesManagementEventsResetMultipleForAllPlayersResource
            )
            Core.mempty
