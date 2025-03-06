{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.YouTube.Comments.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.list@.
module Gogol.YouTube.Comments.List
  ( -- * Resource
    YouTubeCommentsListResource,

    -- ** Constructing a Request
    YouTubeCommentsList (..),
    newYouTubeCommentsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.comments.list@ method which the
-- 'YouTubeCommentsList' request conforms to.
type YouTubeCommentsListResource =
  "youtube"
    Core.:> "v3"
    Core.:> "comments"
    Core.:> Core.QueryParams "part" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "id" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parentId" Core.Text
    Core.:> Core.QueryParam "textFormat" CommentsListTextFormat
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CommentListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeCommentsList' smart constructor.
data YouTubeCommentsList = YouTubeCommentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Returns the comments with the given IDs for One Platform.
    id :: (Core.Maybe [Core.Text]),
    -- | The /maxResults/ parameter specifies the maximum number of items that should be returned in the result set.
    maxResults :: Core.Word32,
    -- | The /pageToken/ parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
    pageToken :: (Core.Maybe Core.Text),
    -- | Returns replies to the specified comment. Note, currently YouTube features only one level of replies (ie replies to top level comments). However replies to replies may be supported in the future.
    parentId :: (Core.Maybe Core.Text),
    -- | The /part/ parameter specifies a comma-separated list of one or more comment resource properties that the API response will include.
    part :: [Core.Text],
    -- | The requested text format for the returned comments.
    textFormat :: CommentsListTextFormat,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeCommentsList' with the minimum fields required to make a request.
newYouTubeCommentsList ::
  -- |  The /part/ parameter specifies a comma-separated list of one or more comment resource properties that the API response will include. See 'part'.
  [Core.Text] ->
  YouTubeCommentsList
newYouTubeCommentsList part =
  YouTubeCommentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = Core.Nothing,
      maxResults = 20,
      pageToken = Core.Nothing,
      parentId = Core.Nothing,
      part = part,
      textFormat = CommentsListTextFormat_Html,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeCommentsList where
  type Rs YouTubeCommentsList = CommentListResponse
  type Scopes YouTubeCommentsList = '[Youtube'ForceSsl]
  requestClient YouTubeCommentsList {..} =
    go
      part
      xgafv
      accessToken
      callback
      (id Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      parentId
      (Core.Just textFormat)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy YouTubeCommentsListResource)
          Core.mempty
