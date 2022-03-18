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
-- Module      : Network.Google.YouTubeReporting.Media.Download
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Method for media download. Download is supported on the URI @\/v1\/media\/{+name}?alt=media@.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.media.download@.
module Network.Google.YouTubeReporting.Media.Download
  ( -- * Resource
    YouTubeReportingMediaDownloadResource,

    -- ** Constructing a Request
    newYouTubeReportingMediaDownload,
    YouTubeReportingMediaDownload,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.media.download@ method which the
-- 'YouTubeReportingMediaDownload' request conforms to.
type YouTubeReportingMediaDownloadResource =
  "v1"
    Core.:> "media"
    Core.:> Core.Capture "resourceName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GdataMedia
    Core.:<|> "v1"
      Core.:> "media"
      Core.:> Core.Capture "resourceName" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltMedia
      Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Method for media download. Download is supported on the URI @\/v1\/media\/{+name}?alt=media@.
--
-- /See:/ 'newYouTubeReportingMediaDownload' smart constructor.
data YouTubeReportingMediaDownload = YouTubeReportingMediaDownload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the media that is being downloaded.
    resourceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingMediaDownload' with the minimum fields required to make a request.
newYouTubeReportingMediaDownload ::
  -- |  Name of the media that is being downloaded. See 'resourceName'.
  Core.Text ->
  YouTubeReportingMediaDownload
newYouTubeReportingMediaDownload resourceName =
  YouTubeReportingMediaDownload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      resourceName = resourceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    YouTubeReportingMediaDownload
  where
  type Rs YouTubeReportingMediaDownload = GdataMedia
  type
    Scopes YouTubeReportingMediaDownload =
      '[ "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
         "https://www.googleapis.com/auth/yt-analytics.readonly"
       ]
  requestClient YouTubeReportingMediaDownload {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeReportingService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeReportingMediaDownloadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload YouTubeReportingMediaDownload)
  where
  type
    Rs
      (Core.MediaDownload YouTubeReportingMediaDownload) =
      Core.Stream
  type
    Scopes
      (Core.MediaDownload YouTubeReportingMediaDownload) =
      Core.Scopes YouTubeReportingMediaDownload
  requestClient
    ( Core.MediaDownload
        YouTubeReportingMediaDownload {..}
      ) =
      go
        resourceName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltMedia)
        youTubeReportingService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy YouTubeReportingMediaDownloadResource
            )
            Core.mempty
