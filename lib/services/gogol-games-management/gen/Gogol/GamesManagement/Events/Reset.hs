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
-- Module      : Gogol.GamesManagement.Events.Reset
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all player progress on the event with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.events.reset@.
module Gogol.GamesManagement.Events.Reset
  ( -- * Resource
    GamesManagementEventsResetResource,

    -- ** Constructing a Request
    GamesManagementEventsReset (..),
    newGamesManagementEventsReset,
  )
where

import Gogol.GamesManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @gamesManagement.events.reset@ method which the
-- 'GamesManagementEventsReset' request conforms to.
type GamesManagementEventsResetResource =
  "games"
    Core.:> "v1management"
    Core.:> "events"
    Core.:> Core.Capture "eventId" Core.Text
    Core.:> "reset"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Resets all player progress on the event with the given ID for the currently authenticated player. This method is only accessible to whitelisted tester accounts for your application.
--
-- /See:/ 'newGamesManagementEventsReset' smart constructor.
data GamesManagementEventsReset = GamesManagementEventsReset
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the event.
    eventId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementEventsReset' with the minimum fields required to make a request.
newGamesManagementEventsReset ::
  -- |  The ID of the event. See 'eventId'.
  Core.Text ->
  GamesManagementEventsReset
newGamesManagementEventsReset eventId =
  GamesManagementEventsReset
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      eventId = eventId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesManagementEventsReset
  where
  type Rs GamesManagementEventsReset = ()
  type
    Scopes GamesManagementEventsReset =
      '[Games'FullControl]
  requestClient GamesManagementEventsReset {..} =
    go
      eventId
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
              Core.Proxy GamesManagementEventsResetResource
          )
          Core.mempty
