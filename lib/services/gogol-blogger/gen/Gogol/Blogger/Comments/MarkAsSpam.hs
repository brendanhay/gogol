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
-- Module      : Gogol.Blogger.Comments.MarkAsSpam
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks a comment as spam by blog id, post id and comment id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.markAsSpam@.
module Gogol.Blogger.Comments.MarkAsSpam
  ( -- * Resource
    BloggerCommentsMarkAsSpamResource,

    -- ** Constructing a Request
    BloggerCommentsMarkAsSpam (..),
    newBloggerCommentsMarkAsSpam,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.comments.markAsSpam@ method which the
-- 'BloggerCommentsMarkAsSpam' request conforms to.
type BloggerCommentsMarkAsSpamResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.Capture "postId" Core.Text
    Core.:> "comments"
    Core.:> Core.Capture "commentId" Core.Text
    Core.:> "spam"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Comment

-- | Marks a comment as spam by blog id, post id and comment id.
--
-- /See:/ 'newBloggerCommentsMarkAsSpam' smart constructor.
data BloggerCommentsMarkAsSpam = BloggerCommentsMarkAsSpam
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    commentId :: Core.Text,
    -- |
    postId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerCommentsMarkAsSpam' with the minimum fields required to make a request.
newBloggerCommentsMarkAsSpam ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'commentId'.
  Core.Text ->
  -- |  See 'postId'.
  Core.Text ->
  BloggerCommentsMarkAsSpam
newBloggerCommentsMarkAsSpam blogId commentId postId =
  BloggerCommentsMarkAsSpam
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      commentId = commentId,
      postId = postId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerCommentsMarkAsSpam where
  type Rs BloggerCommentsMarkAsSpam = Comment
  type
    Scopes BloggerCommentsMarkAsSpam =
      '[Blogger'FullControl]
  requestClient BloggerCommentsMarkAsSpam {..} =
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
          ( Core.Proxy ::
              Core.Proxy BloggerCommentsMarkAsSpamResource
          )
          Core.mempty
