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
-- Module      : Gogol.Blogger.Comments.RemoveContent
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the content of a comment by blog id, post id and comment id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.removeContent@.
module Gogol.Blogger.Comments.RemoveContent
  ( -- * Resource
    BloggerCommentsRemoveContentResource,

    -- ** Constructing a Request
    BloggerCommentsRemoveContent (..),
    newBloggerCommentsRemoveContent,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.comments.removeContent@ method which the
-- 'BloggerCommentsRemoveContent' request conforms to.
type BloggerCommentsRemoveContentResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.Capture "postId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> "removecontent"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Comment

-- | Removes the content of a comment by blog id, post id and comment id.
--
-- /See:/ 'newBloggerCommentsRemoveContent' smart constructor.
data BloggerCommentsRemoveContent = BloggerCommentsRemoveContent
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    commentId :: Core.Text,
    postId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerCommentsRemoveContent' with the minimum fields required to make a request.
newBloggerCommentsRemoveContent ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'commentId'.
  Core.Text ->
  -- |  See 'postId'.
  Core.Text ->
  BloggerCommentsRemoveContent
newBloggerCommentsRemoveContent blogId commentId postId =
  BloggerCommentsRemoveContent
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      commentId = commentId,
      postId = postId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerCommentsRemoveContent where
  type Rs BloggerCommentsRemoveContent = Comment
  type Scopes BloggerCommentsRemoveContent = '[Blogger'FullControl]
  requestClient BloggerCommentsRemoveContent {..} =
    go
      blogId
      postId
      commentId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerCommentsRemoveContentResource)
          Core.mempty
