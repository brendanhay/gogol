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
-- Module      : Gogol.YouTube.Watermarks.Set
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows upload of watermark image and setting it for a channel.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.watermarks.set@.
module Gogol.YouTube.Watermarks.Set
  ( -- * Resource
    YouTubeWatermarksSetResource,

    -- ** Constructing a Request
    newYouTubeWatermarksSet,
    YouTubeWatermarksSet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.watermarks.set@ method which the
-- 'YouTubeWatermarksSet' request conforms to.
type YouTubeWatermarksSetResource =
  "youtube"
    Core.:> "v3"
    Core.:> "watermarks"
    Core.:> "set"
    Core.:> Core.QueryParam "channelId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InvideoBranding
    Core.:> Core.Post '[Core.JSON] ()
    Core.:<|> "upload"
      Core.:> "youtube"
      Core.:> "v3"
      Core.:> "watermarks"
      Core.:> "set"
      Core.:> Core.QueryParam "channelId" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated
                '[Core.JSON]
                InvideoBranding
      Core.:> Core.Post '[Core.JSON] ()

-- | Allows upload of watermark image and setting it for a channel.
--
-- /See:/ 'newYouTubeWatermarksSet' smart constructor.
data YouTubeWatermarksSet = YouTubeWatermarksSet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    channelId :: Core.Text,
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: InvideoBranding,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeWatermarksSet' with the minimum fields required to make a request.
newYouTubeWatermarksSet ::
  -- |  See 'channelId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InvideoBranding ->
  YouTubeWatermarksSet
newYouTubeWatermarksSet channelId payload =
  YouTubeWatermarksSet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      channelId = channelId,
      onBehalfOfContentOwner = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeWatermarksSet where
  type Rs YouTubeWatermarksSet = ()
  type
    Scopes YouTubeWatermarksSet =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtube'Upload,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeWatermarksSet {..} =
    go
      (Core.Just channelId)
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      youTubeService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeWatermarksSetResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload YouTubeWatermarksSet)
  where
  type Rs (Core.MediaUpload YouTubeWatermarksSet) = ()
  type
    Scopes (Core.MediaUpload YouTubeWatermarksSet) =
      Core.Scopes YouTubeWatermarksSet
  requestClient
    (Core.MediaUpload YouTubeWatermarksSet {..} body) =
      go
        (Core.Just channelId)
        xgafv
        accessToken
        callback
        onBehalfOfContentOwner
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
            ( Core.Proxy ::
                Core.Proxy YouTubeWatermarksSetResource
            )
            Core.mempty
