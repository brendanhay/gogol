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
-- Module      : Gogol.Blogger.Comments.ListByBlog
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists comments by blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.listByBlog@.
module Gogol.Blogger.Comments.ListByBlog
  ( -- * Resource
    BloggerCommentsListByBlogResource,

    -- ** Constructing a Request
    BloggerCommentsListByBlog (..),
    newBloggerCommentsListByBlog,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.comments.listByBlog@ method which the
-- 'BloggerCommentsListByBlog' request conforms to.
type BloggerCommentsListByBlogResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "comments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParam "fetchBodies" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParams "status" CommentsListByBlogStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CommentList

-- | Lists comments by blog.
--
-- /See:/ 'newBloggerCommentsListByBlog' smart constructor.
data BloggerCommentsListByBlog = BloggerCommentsListByBlog
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    endDate :: (Core.Maybe Core.Text),
    fetchBodies :: (Core.Maybe Core.Bool),
    maxResults :: (Core.Maybe Core.Word32),
    pageToken :: (Core.Maybe Core.Text),
    startDate :: (Core.Maybe Core.Text),
    status :: (Core.Maybe [CommentsListByBlogStatus]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerCommentsListByBlog' with the minimum fields required to make a request.
newBloggerCommentsListByBlog ::
  -- |  See 'blogId'.
  Core.Text ->
  BloggerCommentsListByBlog
newBloggerCommentsListByBlog blogId =
  BloggerCommentsListByBlog
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      endDate = Core.Nothing,
      fetchBodies = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      startDate = Core.Nothing,
      status = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerCommentsListByBlog where
  type Rs BloggerCommentsListByBlog = CommentList
  type
    Scopes BloggerCommentsListByBlog =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerCommentsListByBlog {..} =
    go
      blogId
      xgafv
      accessToken
      callback
      endDate
      fetchBodies
      maxResults
      pageToken
      startDate
      (status Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerCommentsListByBlogResource)
          Core.mempty
