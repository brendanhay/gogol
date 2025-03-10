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
-- Module      : Gogol.YouTube.ChannelBanners.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channelBanners.insert@.
module Gogol.YouTube.ChannelBanners.Insert
  ( -- * Resource
    YouTubeChannelBannersInsertResource,

    -- ** Constructing a Request
    YouTubeChannelBannersInsert (..),
    newYouTubeChannelBannersInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.channelBanners.insert@ method which the
-- 'YouTubeChannelBannersInsert' request conforms to.
type YouTubeChannelBannersInsertResource =
  "youtube"
    Core.:> "v3"
    Core.:> "channelBanners"
    Core.:> "insert"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "channelId" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwnerChannel" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ChannelBannerResource
    Core.:> Core.Post '[Core.JSON] ChannelBannerResource
    Core.:<|> "upload"
    Core.:> "youtube"
    Core.:> "v3"
    Core.:> "channelBanners"
    Core.:> "insert"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "channelId" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwnerChannel" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.Multipart
    Core.:> Core.MultipartRelated '[Core.JSON] ChannelBannerResource
    Core.:> Core.Post '[Core.JSON] ChannelBannerResource

-- | Inserts a new resource into this collection.
--
-- /See:/ 'newYouTubeChannelBannersInsert' smart constructor.
data YouTubeChannelBannersInsert = YouTubeChannelBannersInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Unused, channel_id is currently derived from the security context of the requestor.
    channelId :: (Core.Maybe Core.Text),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | This parameter can only be used in a properly authorized request. /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwnerChannel/ parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide
    -- authentication credentials for each separate channel.
    onBehalfOfContentOwnerChannel :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ChannelBannerResource,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeChannelBannersInsert' with the minimum fields required to make a request.
newYouTubeChannelBannersInsert ::
  -- |  Multipart request metadata. See 'payload'.
  ChannelBannerResource ->
  YouTubeChannelBannersInsert
newYouTubeChannelBannersInsert payload =
  YouTubeChannelBannersInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      channelId = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      onBehalfOfContentOwnerChannel = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeChannelBannersInsert where
  type Rs YouTubeChannelBannersInsert = ChannelBannerResource
  type
    Scopes YouTubeChannelBannersInsert =
      '[Youtube'FullControl, Youtube'ForceSsl, Youtube'Upload]
  requestClient YouTubeChannelBannersInsert {..} =
    go
      xgafv
      accessToken
      callback
      channelId
      onBehalfOfContentOwner
      onBehalfOfContentOwnerChannel
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeChannelBannersInsertResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload YouTubeChannelBannersInsert)
  where
  type
    Rs (Core.MediaUpload YouTubeChannelBannersInsert) =
      ChannelBannerResource
  type
    Scopes (Core.MediaUpload YouTubeChannelBannersInsert) =
      Core.Scopes YouTubeChannelBannersInsert
  requestClient
    (Core.MediaUpload YouTubeChannelBannersInsert {..} body) =
      go
        xgafv
        accessToken
        callback
        channelId
        onBehalfOfContentOwner
        onBehalfOfContentOwnerChannel
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
            (Core.Proxy :: Core.Proxy YouTubeChannelBannersInsertResource)
            Core.mempty
