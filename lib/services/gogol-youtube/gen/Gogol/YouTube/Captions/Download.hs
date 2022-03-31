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
-- Module      : Gogol.YouTube.Captions.Download
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a caption track.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.captions.download@.
module Gogol.YouTube.Captions.Download
  ( -- * Resource
    YouTubeCaptionsDownloadResource,

    -- ** Constructing a Request
    newYouTubeCaptionsDownload,
    YouTubeCaptionsDownload,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.captions.download@ method which the
-- 'YouTubeCaptionsDownload' request conforms to.
type YouTubeCaptionsDownloadResource =
  "youtube"
    Core.:> "v3"
    Core.:> "captions"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOf" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "tfmt" Core.Text
    Core.:> Core.QueryParam "tlang" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ()
    Core.:<|> "youtube"
      Core.:> "v3"
      Core.:> "captions"
      Core.:> Core.Capture "id" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "onBehalfOf" Core.Text
      Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
      Core.:> Core.QueryParam "tfmt" Core.Text
      Core.:> Core.QueryParam "tlang" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Downloads a caption track.
--
-- /See:/ 'newYouTubeCaptionsDownload' smart constructor.
data YouTubeCaptionsDownload = YouTubeCaptionsDownload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the caption track to download, required for One Platform.
    id :: Core.Text,
    -- | ID of the Google+ Page for the channel that the request is be on behalf of
    onBehalfOf :: (Core.Maybe Core.Text),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Convert the captions into this format. Supported options are sbv, srt, and vtt.
    tfmt :: (Core.Maybe Core.Text),
    -- | tlang is the language code; machine translate the captions into this language.
    tlang :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCaptionsDownload' with the minimum fields required to make a request.
newYouTubeCaptionsDownload ::
  -- |  The ID of the caption track to download, required for One Platform. See 'id'.
  Core.Text ->
  YouTubeCaptionsDownload
newYouTubeCaptionsDownload id =
  YouTubeCaptionsDownload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      onBehalfOf = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      tfmt = Core.Nothing,
      tlang = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeCaptionsDownload where
  type Rs YouTubeCaptionsDownload = ()
  type
    Scopes YouTubeCaptionsDownload =
      '[Youtube'ForceSsl, Youtubepartner'FullControl]
  requestClient YouTubeCaptionsDownload {..} =
    go
      id
      xgafv
      accessToken
      callback
      onBehalfOf
      onBehalfOfContentOwner
      tfmt
      tlang
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeCaptionsDownloadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload YouTubeCaptionsDownload)
  where
  type
    Rs (Core.MediaDownload YouTubeCaptionsDownload) =
      Core.Stream
  type
    Scopes
      (Core.MediaDownload YouTubeCaptionsDownload) =
      Core.Scopes YouTubeCaptionsDownload
  requestClient
    (Core.MediaDownload YouTubeCaptionsDownload {..}) =
      go
        id
        xgafv
        accessToken
        callback
        onBehalfOf
        onBehalfOfContentOwner
        tfmt
        tlang
        uploadType
        uploadProtocol
        (Core.Just Core.AltMedia)
        youTubeService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy YouTubeCaptionsDownloadResource
            )
            Core.mempty
