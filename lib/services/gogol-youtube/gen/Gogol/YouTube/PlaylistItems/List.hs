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
-- Module      : Gogol.YouTube.PlaylistItems.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlistItems.list@.
module Gogol.YouTube.PlaylistItems.List
  ( -- * Resource
    YouTubePlaylistItemsListResource,

    -- ** Constructing a Request
    newYouTubePlaylistItemsList,
    YouTubePlaylistItemsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.playlistItems.list@ method which the
-- 'YouTubePlaylistItemsList' request conforms to.
type YouTubePlaylistItemsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "playlistItems"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "playlistId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "videoId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              PlaylistItemListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubePlaylistItemsList' smart constructor.
data YouTubePlaylistItemsList = YouTubePlaylistItemsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    id :: (Core.Maybe [Core.Text]),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | /Note:/ This parameter is intended exclusively for YouTube content partners. The /onBehalfOfContentOwner/ parameter indicates that the request\'s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set /part=snippet/, the API response will contain all of those properties.
    part :: [Core.Text],
    -- | Return the playlist items within the given playlist.
    playlistId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Return the playlist items associated with the given video ID.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubePlaylistItemsList' with the minimum fields required to make a request.
newYouTubePlaylistItemsList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set /part=snippet/, the API response will contain all of those properties. See 'part'.
  [Core.Text] ->
  YouTubePlaylistItemsList
newYouTubePlaylistItemsList part =
  YouTubePlaylistItemsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = Core.Nothing,
      maxResults = 5,
      onBehalfOfContentOwner = Core.Nothing,
      pageToken = Core.Nothing,
      part = part,
      playlistId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.GoogleRequest YouTubePlaylistItemsList where
  type
    Rs YouTubePlaylistItemsList =
      PlaylistItemListResponse
  type
    Scopes YouTubePlaylistItemsList =
      '[ "https://www.googleapis.com/auth/youtube",
         "https://www.googleapis.com/auth/youtube.force-ssl",
         "https://www.googleapis.com/auth/youtube.readonly",
         "https://www.googleapis.com/auth/youtubepartner"
       ]
  requestClient YouTubePlaylistItemsList {..} =
    go
      part
      xgafv
      accessToken
      callback
      (id Core.^. Core._Default)
      (Core.Just maxResults)
      onBehalfOfContentOwner
      pageToken
      playlistId
      uploadType
      uploadProtocol
      videoId
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubePlaylistItemsListResource
          )
          Core.mempty
