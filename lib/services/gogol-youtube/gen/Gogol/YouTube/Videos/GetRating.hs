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
-- Module      : Gogol.YouTube.Videos.GetRating
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the ratings that the authorized user gave to a list of specified videos.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.getRating@.
module Gogol.YouTube.Videos.GetRating
  ( -- * Resource
    YouTubeVideosGetRatingResource,

    -- ** Constructing a Request
    YouTubeVideosGetRating (..),
    newYouTubeVideosGetRating,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videos.getRating@ method which the
-- 'YouTubeVideosGetRating' request conforms to.
type YouTubeVideosGetRatingResource =
  "youtube"
    Core.:> "v3"
    Core.:> "videos"
    Core.:> "getRating"
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VideoGetRatingResponse

-- | Retrieves the ratings that the authorized user gave to a list of specified videos.
--
-- /See:/ 'newYouTubeVideosGetRating' smart constructor.
data YouTubeVideosGetRating = YouTubeVideosGetRating
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    id :: [Core.Text],
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideosGetRating' with the minimum fields required to make a request.
newYouTubeVideosGetRating ::
  -- |  See 'id'.
  [Core.Text] ->
  YouTubeVideosGetRating
newYouTubeVideosGetRating id =
  YouTubeVideosGetRating
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      onBehalfOfContentOwner = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeVideosGetRating where
  type
    Rs YouTubeVideosGetRating =
      VideoGetRatingResponse
  type
    Scopes YouTubeVideosGetRating =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeVideosGetRating {..} =
    go
      id
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeVideosGetRatingResource
          )
          Core.mempty
