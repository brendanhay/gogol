{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Games.Snapshots.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of snapshots created by your application for the player corresponding to the player ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.snapshots.list@.
module Gogol.Games.Snapshots.List
  ( -- * Resource
    GamesSnapshotsListResource,

    -- ** Constructing a Request
    GamesSnapshotsList (..),
    newGamesSnapshotsList,
  )
where

import Gogol.Games.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @games.snapshots.list@ method which the
-- 'GamesSnapshotsList' request conforms to.
type GamesSnapshotsListResource =
  "games"
    Core.:> "v1"
    Core.:> "players"
    Core.:> Core.Capture "playerId" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SnapshotListResponse

-- | Retrieves a list of snapshots created by your application for the player corresponding to the player ID.
--
-- /See:/ 'newGamesSnapshotsList' smart constructor.
data GamesSnapshotsList = GamesSnapshotsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | The maximum number of snapshot resources to return in the response, used for paging. For any response, the actual number of snapshot resources returned may be less than the specified @maxResults@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | A player ID. A value of @me@ may be used in place of the authenticated player\'s ID.
    playerId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesSnapshotsList' with the minimum fields required to make a request.
newGamesSnapshotsList ::
  -- |  A player ID. A value of @me@ may be used in place of the authenticated player\'s ID. See 'playerId'.
  Core.Text ->
  GamesSnapshotsList
newGamesSnapshotsList playerId =
  GamesSnapshotsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      language = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      playerId = playerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesSnapshotsList where
  type Rs GamesSnapshotsList = SnapshotListResponse
  type
    Scopes GamesSnapshotsList =
      '[Drive'Appdata, Games'FullControl]
  requestClient GamesSnapshotsList {..} =
    go
      playerId
      xgafv
      accessToken
      callback
      language
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GamesSnapshotsListResource)
          Core.mempty
