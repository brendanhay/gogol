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
-- Module      : Gogol.YouTube.CommentThreads.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.commentThreads.list@.
module Gogol.YouTube.CommentThreads.List
  ( -- * Resource
    YouTubeCommentThreadsListResource,

    -- ** Constructing a Request
    YouTubeCommentThreadsList (..),
    newYouTubeCommentThreadsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.commentThreads.list@ method which the
-- 'YouTubeCommentThreadsList' request conforms to.
type YouTubeCommentThreadsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "commentThreads"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allThreadsRelatedToChannelId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "channelId" Core.Text
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam
              "moderationStatus"
              CommentThreadsListModerationStatus
    Core.:> Core.QueryParam "order" CommentThreadsListOrder
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchTerms" Core.Text
    Core.:> Core.QueryParam "textFormat" CommentThreadsListTextFormat
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "videoId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CommentThreadListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeCommentThreadsList' smart constructor.
data YouTubeCommentThreadsList = YouTubeCommentThreadsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Returns the comment threads of all videos of the channel and the channel comments as well.
    allThreadsRelatedToChannelId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Returns the comment threads for all the channel comments (ie does not include comments left on videos).
    channelId :: (Core.Maybe Core.Text),
    -- | Returns the comment threads with the given IDs for Stubby or Apiary.
    id :: (Core.Maybe [Core.Text]),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | Limits the returned comment threads to those with the specified moderation status. Not compatible with the \'id\' filter. Valid values: published, heldForReview, likelySpam.
    moderationStatus :: CommentThreadsListModerationStatus,
    order :: CommentThreadsListOrder,
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more commentThread resource properties that the API response will include.
    part :: [Core.Text],
    -- | Limits the returned comment threads to those matching the specified key words. Not compatible with the \'id\' filter.
    searchTerms :: (Core.Maybe Core.Text),
    -- | The requested text format for the returned comments.
    textFormat :: CommentThreadsListTextFormat,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Returns the comment threads of the specified video.
    videoId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCommentThreadsList' with the minimum fields required to make a request.
newYouTubeCommentThreadsList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more commentThread resource properties that the API response will include. See 'part'.
  [Core.Text] ->
  YouTubeCommentThreadsList
newYouTubeCommentThreadsList part =
  YouTubeCommentThreadsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allThreadsRelatedToChannelId = Core.Nothing,
      callback = Core.Nothing,
      channelId = Core.Nothing,
      id = Core.Nothing,
      maxResults = 20,
      moderationStatus = CommentThreadsListModerationStatus_Published,
      order = CommentThreadsListOrder_Time,
      pageToken = Core.Nothing,
      part = part,
      searchTerms = Core.Nothing,
      textFormat = CommentThreadsListTextFormat_Html,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      videoId = Core.Nothing
    }

instance Core.GoogleRequest YouTubeCommentThreadsList where
  type Rs YouTubeCommentThreadsList = CommentThreadListResponse
  type Scopes YouTubeCommentThreadsList = '[Youtube'ForceSsl]
  requestClient YouTubeCommentThreadsList {..} =
    go
      part
      xgafv
      accessToken
      allThreadsRelatedToChannelId
      callback
      channelId
      (id Core.^. Core._Default)
      (Core.Just maxResults)
      (Core.Just moderationStatus)
      (Core.Just order)
      pageToken
      searchTerms
      (Core.Just textFormat)
      uploadType
      uploadProtocol
      videoId
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeCommentThreadsListResource)
          Core.mempty
