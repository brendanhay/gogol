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
-- Module      : Gogol.YouTube.V3.UpdateCommentThreads
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.youtube.v3.updateCommentThreads@.
module Gogol.YouTube.V3.UpdateCommentThreads
  ( -- * Resource
    YouTubeYoutubeV3UpdateCommentThreadsResource,

    -- ** Constructing a Request
    YouTubeYoutubeV3UpdateCommentThreads (..),
    newYouTubeYoutubeV3UpdateCommentThreads,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.youtube.v3.updateCommentThreads@ method which the
-- 'YouTubeYoutubeV3UpdateCommentThreads' request conforms to.
type YouTubeYoutubeV3UpdateCommentThreadsResource =
  "youtube"
    Core.:> "v3"
    Core.:> "commentThreads"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CommentThread
    Core.:> Core.Put '[Core.JSON] CommentThread

-- | Updates an existing resource.
--
-- /See:/ 'newYouTubeYoutubeV3UpdateCommentThreads' smart constructor.
data YouTubeYoutubeV3UpdateCommentThreads = YouTubeYoutubeV3UpdateCommentThreads
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of commentThread resource properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update.
    part :: (Core.Maybe [Core.Text]),
    -- | Multipart request metadata.
    payload :: CommentThread,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeYoutubeV3UpdateCommentThreads' with the minimum fields required to make a request.
newYouTubeYoutubeV3UpdateCommentThreads ::
  -- |  Multipart request metadata. See 'payload'.
  CommentThread ->
  YouTubeYoutubeV3UpdateCommentThreads
newYouTubeYoutubeV3UpdateCommentThreads payload =
  YouTubeYoutubeV3UpdateCommentThreads
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      part = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeYoutubeV3UpdateCommentThreads where
  type Rs YouTubeYoutubeV3UpdateCommentThreads = CommentThread
  type Scopes YouTubeYoutubeV3UpdateCommentThreads = '[]
  requestClient YouTubeYoutubeV3UpdateCommentThreads {..} =
    go
      xgafv
      accessToken
      callback
      (part Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeYoutubeV3UpdateCommentThreadsResource
          )
          Core.mempty
