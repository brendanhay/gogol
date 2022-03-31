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
-- Module      : Gogol.Games.Metagame.ListCategoriesByPlayer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List play data aggregated per category for the player corresponding to @playerId@.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.metagame.listCategoriesByPlayer@.
module Gogol.Games.Metagame.ListCategoriesByPlayer
  ( -- * Resource
    GamesMetagameListCategoriesByPlayerResource,

    -- ** Constructing a Request
    newGamesMetagameListCategoriesByPlayer,
    GamesMetagameListCategoriesByPlayer,
  )
where

import Gogol.Games.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @games.metagame.listCategoriesByPlayer@ method which the
-- 'GamesMetagameListCategoriesByPlayer' request conforms to.
type GamesMetagameListCategoriesByPlayerResource =
  "games"
    Core.:> "v1"
    Core.:> "players"
    Core.:> Core.Capture "playerId" Core.Text
    Core.:> "categories"
    Core.:> Core.Capture
              "collection"
              MetagameListCategoriesByPlayerCollection
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CategoryListResponse

-- | List play data aggregated per category for the player corresponding to @playerId@.
--
-- /See:/ 'newGamesMetagameListCategoriesByPlayer' smart constructor.
data GamesMetagameListCategoriesByPlayer = GamesMetagameListCategoriesByPlayer
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The collection of categories for which data will be returned.
    collection :: MetagameListCategoriesByPlayerCollection,
    -- | The preferred language to use for strings returned by this method.
    language :: (Core.Maybe Core.Text),
    -- | The maximum number of category resources to return in the response, used for paging. For any response, the actual number of category resources returned may be less than the specified @maxResults@.
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

-- | Creates a value of 'GamesMetagameListCategoriesByPlayer' with the minimum fields required to make a request.
newGamesMetagameListCategoriesByPlayer ::
  -- |  The collection of categories for which data will be returned. See 'collection'.
  MetagameListCategoriesByPlayerCollection ->
  -- |  A player ID. A value of @me@ may be used in place of the authenticated player\'s ID. See 'playerId'.
  Core.Text ->
  GamesMetagameListCategoriesByPlayer
newGamesMetagameListCategoriesByPlayer collection playerId =
  GamesMetagameListCategoriesByPlayer
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      collection = collection,
      language = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      playerId = playerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    GamesMetagameListCategoriesByPlayer
  where
  type
    Rs GamesMetagameListCategoriesByPlayer =
      CategoryListResponse
  type
    Scopes GamesMetagameListCategoriesByPlayer =
      '[Games'FullControl]
  requestClient GamesMetagameListCategoriesByPlayer {..} =
    go
      playerId
      collection
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
          ( Core.Proxy ::
              Core.Proxy
                GamesMetagameListCategoriesByPlayerResource
          )
          Core.mempty
