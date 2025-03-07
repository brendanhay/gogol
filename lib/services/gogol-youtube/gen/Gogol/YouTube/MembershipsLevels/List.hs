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
-- Module      : Gogol.YouTube.MembershipsLevels.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all pricing levels offered by a creator to the fans.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.membershipsLevels.list@.
module Gogol.YouTube.MembershipsLevels.List
  ( -- * Resource
    YouTubeMembershipsLevelsListResource,

    -- ** Constructing a Request
    YouTubeMembershipsLevelsList (..),
    newYouTubeMembershipsLevelsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.membershipsLevels.list@ method which the
-- 'YouTubeMembershipsLevelsList' request conforms to.
type YouTubeMembershipsLevelsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "membershipsLevels"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] MembershipsLevelListResponse

-- | Retrieves a list of all pricing levels offered by a creator to the fans.
--
-- /See:/ 'newYouTubeMembershipsLevelsList' smart constructor.
data YouTubeMembershipsLevelsList = YouTubeMembershipsLevelsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies the membershipsLevel resource parts that the API response will include. Supported values are id and snippet.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeMembershipsLevelsList' with the minimum fields required to make a request.
newYouTubeMembershipsLevelsList ::
  -- |  The /part/ parameter specifies the membershipsLevel resource parts that the API response will include. Supported values are id and snippet. See 'part'.
  [Core.Text] ->
  YouTubeMembershipsLevelsList
newYouTubeMembershipsLevelsList part =
  YouTubeMembershipsLevelsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeMembershipsLevelsList where
  type Rs YouTubeMembershipsLevelsList = MembershipsLevelListResponse
  type
    Scopes YouTubeMembershipsLevelsList =
      '[Youtube'ChannelMemberships'Creator]
  requestClient YouTubeMembershipsLevelsList {..} =
    go
      part
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeMembershipsLevelsListResource)
          Core.mempty
