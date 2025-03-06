{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.GamesManagement.Applications.ListHidden
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the list of players hidden from the given application. This method is only available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.applications.listHidden@.
module Gogol.GamesManagement.Applications.ListHidden
  ( -- * Resource
    GamesManagementApplicationsListHiddenResource,

    -- ** Constructing a Request
    GamesManagementApplicationsListHidden (..),
    newGamesManagementApplicationsListHidden,
  )
where

import Gogol.GamesManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @gamesManagement.applications.listHidden@ method which the
-- 'GamesManagementApplicationsListHidden' request conforms to.
type GamesManagementApplicationsListHiddenResource =
  "games"
    Core.:> "v1management"
    Core.:> "applications"
    Core.:> Core.Capture "applicationId" Core.Text
    Core.:> "players"
    Core.:> "hidden"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HiddenPlayerList

-- | Get the list of players hidden from the given application. This method is only available to user accounts for your developer console.
--
-- /See:/ 'newGamesManagementApplicationsListHidden' smart constructor.
data GamesManagementApplicationsListHidden = GamesManagementApplicationsListHidden
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The application ID from the Google Play developer console.
    applicationId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of player resources to return in the response, used for paging. For any response, the actual number of player resources returned may be less than the specified @maxResults@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesManagementApplicationsListHidden' with the minimum fields required to make a request.
newGamesManagementApplicationsListHidden ::
  -- |  The application ID from the Google Play developer console. See 'applicationId'.
  Core.Text ->
  GamesManagementApplicationsListHidden
newGamesManagementApplicationsListHidden applicationId =
  GamesManagementApplicationsListHidden
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      applicationId = applicationId,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest GamesManagementApplicationsListHidden where
  type Rs GamesManagementApplicationsListHidden = HiddenPlayerList
  type
    Scopes GamesManagementApplicationsListHidden =
      '[Games'FullControl]
  requestClient GamesManagementApplicationsListHidden {..} =
    go
      applicationId
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      gamesManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GamesManagementApplicationsListHiddenResource
          )
          Core.mempty
