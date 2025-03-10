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
-- Module      : Gogol.YouTube.VideoAbuseReportReasons.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videoAbuseReportReasons.list@.
module Gogol.YouTube.VideoAbuseReportReasons.List
  ( -- * Resource
    YouTubeVideoAbuseReportReasonsListResource,

    -- ** Constructing a Request
    YouTubeVideoAbuseReportReasonsList (..),
    newYouTubeVideoAbuseReportReasonsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videoAbuseReportReasons.list@ method which the
-- 'YouTubeVideoAbuseReportReasonsList' request conforms to.
type YouTubeVideoAbuseReportReasonsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "videoAbuseReportReasons"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "hl" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VideoAbuseReportReasonListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeVideoAbuseReportReasonsList' smart constructor.
data YouTubeVideoAbuseReportReasonsList = YouTubeVideoAbuseReportReasonsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    hl :: Core.Text,
    -- | The /part/ parameter specifies the videoCategory resource parts that the API response will include. Supported values are id and snippet.
    part :: [Core.Text],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideoAbuseReportReasonsList' with the minimum fields required to make a request.
newYouTubeVideoAbuseReportReasonsList ::
  -- |  The /part/ parameter specifies the videoCategory resource parts that the API response will include. Supported values are id and snippet. See 'part'.
  [Core.Text] ->
  YouTubeVideoAbuseReportReasonsList
newYouTubeVideoAbuseReportReasonsList part =
  YouTubeVideoAbuseReportReasonsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      hl = "en-US",
      part = part,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeVideoAbuseReportReasonsList where
  type
    Rs YouTubeVideoAbuseReportReasonsList =
      VideoAbuseReportReasonListResponse
  type
    Scopes YouTubeVideoAbuseReportReasonsList =
      '[Youtube'FullControl, Youtube'ForceSsl, Youtube'Readonly]
  requestClient YouTubeVideoAbuseReportReasonsList {..} =
    go
      part
      xgafv
      accessToken
      callback
      (Core.Just hl)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeVideoAbuseReportReasonsListResource
          )
          Core.mempty
