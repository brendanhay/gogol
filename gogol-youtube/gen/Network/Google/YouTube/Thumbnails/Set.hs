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
-- Module      : Network.Google.YouTube.Thumbnails.Set
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- As this is not an insert in a strict sense (it supports uploading\/setting of a thumbnail for multiple videos, which doesn\'t result in creation of a single resource), I use a custom verb here.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.thumbnails.set@.
module Network.Google.YouTube.Thumbnails.Set
  ( -- * Resource
    YouTubeThumbnailsSetResource,

    -- ** Constructing a Request
    newYouTubeThumbnailsSet,
    YouTubeThumbnailsSet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.thumbnails.set@ method which the
-- 'YouTubeThumbnailsSet' request conforms to.
type YouTubeThumbnailsSetResource =
  "youtube"
    Core.:> "v3"
    Core.:> "thumbnails"
    Core.:> "set"
    Core.:> Core.QueryParam "videoId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ThumbnailSetResponse
    Core.:<|> "upload"
      Core.:> "youtube"
      Core.:> "v3"
      Core.:> "thumbnails"
      Core.:> "set"
      Core.:> Core.QueryParam "videoId" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post '[Core.JSON] ThumbnailSetResponse

-- | As this is not an insert in a strict sense (it supports uploading\/setting of a thumbnail for multiple videos, which doesn\'t result in creation of a single resource), I use a custom verb here.
--
-- /See:/ 'newYouTubeThumbnailsSet' smart constructor.
data YouTubeThumbnailsSet = YouTubeThumbnailsSet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Returns the Thumbnail with the given video IDs for Stubby or Apiary.
    videoId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeThumbnailsSet' with the minimum fields required to make a request.
newYouTubeThumbnailsSet ::
  -- |  Returns the Thumbnail with the given video IDs for Stubby or Apiary. See 'videoId'.
  Core.Text ->
  YouTubeThumbnailsSet
newYouTubeThumbnailsSet videoId =
  YouTubeThumbnailsSet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      videoId = videoId
    }

instance Core.GoogleRequest YouTubeThumbnailsSet where
  type Rs YouTubeThumbnailsSet = ThumbnailSetResponse
  type
    Scopes YouTubeThumbnailsSet =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.force-ssl",
         "https://www.googleapis.com/auth/youtube.upload",
         "https://www.googleapis.com/auth/youtubepartner"
       ]
  requestClient YouTubeThumbnailsSet {..} =
    go
      (Core.Just videoId)
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeThumbnailsSetResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload YouTubeThumbnailsSet)
  where
  type
    Rs (Core.MediaUpload YouTubeThumbnailsSet) =
      ThumbnailSetResponse
  type
    Scopes (Core.MediaUpload YouTubeThumbnailsSet) =
      Core.Scopes YouTubeThumbnailsSet
  requestClient
    (Core.MediaUpload YouTubeThumbnailsSet {..} body) =
      go
        (Core.Just videoId)
        xgafv
        accessToken
        callback
        onBehalfOfContentOwner
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.AltMedia)
        body
        youTubeService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy YouTubeThumbnailsSetResource
            )
            Core.mempty
