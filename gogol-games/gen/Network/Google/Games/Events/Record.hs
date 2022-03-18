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
-- Module      : Network.Google.Games.Events.Record
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Records a batch of changes to the number of times events have occurred for the currently authenticated user of this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.events.record@.
module Network.Google.Games.Events.Record
  ( -- * Resource
    GamesEventsRecordResource,

    -- ** Constructing a Request
    newGamesEventsRecord,
    GamesEventsRecord,
  )
where

import Network.Google.Games.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @games.events.record@ method which the
-- 'GamesEventsRecord' request conforms to.
type GamesEventsRecordResource =
  "games"
    Core.:> "v1"
    Core.:> "events"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EventRecordRequest
    Core.:> Core.Post '[Core.JSON] EventUpdateResponse

-- | Records a batch of changes to the number of times events have occurred for the currently authenticated user of this application.
--
-- /See:/ 'newGamesEventsRecord' smart constructor.
data GamesEventsRecord = GamesEventsRecord
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: EventRecordRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesEventsRecord' with the minimum fields required to make a request.
newGamesEventsRecord ::
  -- |  Multipart request metadata. See 'payload'.
  EventRecordRequest ->
  GamesEventsRecord
newGamesEventsRecord payload =
  GamesEventsRecord
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesEventsRecord where
  type Rs GamesEventsRecord = EventUpdateResponse
  type
    Scopes GamesEventsRecord =
      '["https://www.googleapis.com/auth/games"]
  requestClient GamesEventsRecord {..} =
    go
      xgafv
      accessToken
      callback
      language
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesEventsRecordResource)
          Core.mempty
