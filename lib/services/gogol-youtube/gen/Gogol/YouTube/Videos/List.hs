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
-- Module      : Gogol.YouTube.Videos.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.list@.
module Gogol.YouTube.Videos.List
  ( -- * Resource
    YouTubeVideosListResource,

    -- ** Constructing a Request
    YouTubeVideosList (..),
    newYouTubeVideosList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videos.list@ method which the
-- 'YouTubeVideosList' request conforms to.
type YouTubeVideosListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "videos"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "chart" VideosListChart
    Core.:> Core.QueryParam "hl" Core.Text
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxHeight" Core.Int32
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "maxWidth" Core.Int32
    Core.:> Core.QueryParam "myRating" VideosListMyRating
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "regionCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "videoCategoryId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] VideoListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeVideosList' smart constructor.
data YouTubeVideosList = YouTubeVideosList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Return the videos that are in the specified chart.
    chart :: (Core.Maybe VideosListChart),
    -- | Stands for \"host language\". Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en/US, es/MX).
    hl :: (Core.Maybe Core.Text),
    -- | Return videos with the given ids.
    id :: (Core.Maybe [Core.Text]),
    locale :: (Core.Maybe Core.Text),
    maxHeight :: (Core.Maybe Core.Int32),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set. /Note:/ This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter.
    maxResults :: Core.Word32,
    -- | Return the player with maximum height specified in
    maxWidth :: (Core.Maybe Core.Int32),
    -- | Return videos liked\/disliked by the authenticated user. Does not support RateType.RATED/TYPE/NONE.
    myRating :: (Core.Maybe VideosListMyRating),
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. /Note:/ This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set /part=snippet/, the API response will contain all of those properties.
    part :: [Core.Text],
    -- | Use a chart that is specific to the specified region
    regionCode :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Use chart that is specific to the specified video category
    videoCategoryId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideosList' with the minimum fields required to make a request.
newYouTubeVideosList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set /part=snippet/, the API response will contain all of those properties. See 'part'.
  [Core.Text] ->
  YouTubeVideosList
newYouTubeVideosList part =
  YouTubeVideosList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      chart = Core.Nothing,
      hl = Core.Nothing,
      id = Core.Nothing,
      locale = Core.Nothing,
      maxHeight = Core.Nothing,
      maxResults = 5,
      maxWidth = Core.Nothing,
      myRating = Core.Nothing,
      onBehalfOfContentOwner = Core.Nothing,
      pageToken = Core.Nothing,
      part = part,
      regionCode = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      videoCategoryId = "0"
    }

instance Core.GoogleRequest YouTubeVideosList where
  type Rs YouTubeVideosList = VideoListResponse
  type
    Scopes YouTubeVideosList =
      '[ Youtube'FullControl,
         Youtube'ForceSsl,
         Youtube'Readonly,
         Youtubepartner'FullControl
       ]
  requestClient YouTubeVideosList {..} =
    go
      part
      xgafv
      accessToken
      callback
      chart
      hl
      (id Core.^. Core._Default)
      locale
      maxHeight
      (Core.Just maxResults)
      maxWidth
      myRating
      onBehalfOfContentOwner
      pageToken
      regionCode
      uploadType
      uploadProtocol
      (Core.Just videoCategoryId)
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeVideosListResource)
          Core.mempty
