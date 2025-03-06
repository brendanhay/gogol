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
-- Module      : Gogol.YouTube.PlaylistImages.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlistImages.update@.
module Gogol.YouTube.PlaylistImages.Update
  ( -- * Resource
    YouTubePlaylistImagesUpdateResource,

    -- ** Constructing a Request
    YouTubePlaylistImagesUpdate (..),
    newYouTubePlaylistImagesUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.playlistImages.update@ method which the
-- 'YouTubePlaylistImagesUpdate' request conforms to.
type YouTubePlaylistImagesUpdateResource =
  "youtube"
    Core.:> "v3"
    Core.:> "playlistImages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PlaylistImage
    Core.:> Core.Put '[Core.JSON] PlaylistImage
    Core.:<|> "upload"
    Core.:> "youtube"
    Core.:> "v3"
    Core.:> "playlistImages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] PlaylistImage
    Core.:> Core.Put '[Core.JSON] PlaylistImage

-- | Updates an existing resource.
--
-- /See:/ 'newYouTubePlaylistImagesUpdate' smart constructor.
data YouTubePlaylistImagesUpdate = YouTubePlaylistImagesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies the properties that the API response will include.
    part :: (Core.Maybe [Core.Text]),
    -- | Multipart request metadata.
    payload :: PlaylistImage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubePlaylistImagesUpdate' with the minimum fields required to make a request.
newYouTubePlaylistImagesUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  PlaylistImage ->
  YouTubePlaylistImagesUpdate
newYouTubePlaylistImagesUpdate payload =
  YouTubePlaylistImagesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      part = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubePlaylistImagesUpdate where
  type Rs YouTubePlaylistImagesUpdate = PlaylistImage
  type
    Scopes YouTubePlaylistImagesUpdate =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtubepartner'FullControl
       ]
  requestClient YouTubePlaylistImagesUpdate {..} =
    go
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      (part Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubePlaylistImagesUpdateResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload YouTubePlaylistImagesUpdate)
  where
  type
    Rs (Core.MediaUpload YouTubePlaylistImagesUpdate) =
      PlaylistImage
  type
    Scopes (Core.MediaUpload YouTubePlaylistImagesUpdate) =
      Core.Scopes YouTubePlaylistImagesUpdate
  requestClient
    (Core.MediaUpload YouTubePlaylistImagesUpdate {..} body) =
      go
        xgafv
        accessToken
        callback
        onBehalfOfContentOwner
        (part Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        youTubeService
      where
        _ Core.:<|> go =
          Core.buildClient
            (Core.Proxy :: Core.Proxy YouTubePlaylistImagesUpdateResource)
            Core.mempty
