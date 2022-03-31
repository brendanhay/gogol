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
-- Module      : Gogol.YouTube.Videos.Rate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a like or dislike rating to a video or removes a rating from a video.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.rate@.
module Gogol.YouTube.Videos.Rate
  ( -- * Resource
    YouTubeVideosRateResource,

    -- ** Constructing a Request
    newYouTubeVideosRate,
    YouTubeVideosRate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videos.rate@ method which the
-- 'YouTubeVideosRate' request conforms to.
type YouTubeVideosRateResource =
  "youtube"
    Core.:> "v3"
    Core.:> "videos"
    Core.:> "rate"
    Core.:> Core.QueryParam "id" Core.Text
    Core.:> Core.QueryParam "rating" VideosRateRating
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Adds a like or dislike rating to a video or removes a rating from a video.
--
-- /See:/ 'newYouTubeVideosRate' smart constructor.
data YouTubeVideosRate = YouTubeVideosRate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    id :: Core.Text,
    -- |
    rating :: VideosRateRating,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideosRate' with the minimum fields required to make a request.
newYouTubeVideosRate ::
  -- |  See 'id'.
  Core.Text ->
  -- |  See 'rating'.
  VideosRateRating ->
  YouTubeVideosRate
newYouTubeVideosRate id rating =
  YouTubeVideosRate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      rating = rating,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeVideosRate where
  type Rs YouTubeVideosRate = ()
  type
    Scopes YouTubeVideosRate =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeVideosRate {..} =
    go
      (Core.Just id)
      (Core.Just rating)
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
          (Core.Proxy :: Core.Proxy YouTubeVideosRateResource)
          Core.mempty
