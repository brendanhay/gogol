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
-- Module      : Gogol.Blogger.Posts.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.patch@.
module Gogol.Blogger.Posts.Patch
  ( -- * Resource
    BloggerPostsPatchResource,

    -- ** Constructing a Request
    BloggerPostsPatch (..),
    newBloggerPostsPatch,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.posts.patch@ method which the
-- 'BloggerPostsPatch' request conforms to.
type BloggerPostsPatchResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.Capture "postId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fetchBody" Core.Bool
    Core.:> Core.QueryParam "fetchImages" Core.Bool
    Core.:> Core.QueryParam "maxComments" Core.Word32
    Core.:> Core.QueryParam "publish" Core.Bool
    Core.:> Core.QueryParam "revert" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Post'
    Core.:> Core.Patch '[Core.JSON] Post'

-- | Patches a post.
--
-- /See:/ 'newBloggerPostsPatch' smart constructor.
data BloggerPostsPatch = BloggerPostsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    fetchBody :: Core.Bool,
    fetchImages :: (Core.Maybe Core.Bool),
    maxComments :: (Core.Maybe Core.Word32),
    -- | Multipart request metadata.
    payload :: Post',
    postId :: Core.Text,
    publish :: (Core.Maybe Core.Bool),
    revert :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsPatch' with the minimum fields required to make a request.
newBloggerPostsPatch ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Post' ->
  -- |  See 'postId'.
  Core.Text ->
  BloggerPostsPatch
newBloggerPostsPatch blogId payload postId =
  BloggerPostsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      fetchBody = Core.True,
      fetchImages = Core.Nothing,
      maxComments = Core.Nothing,
      payload = payload,
      postId = postId,
      publish = Core.Nothing,
      revert = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsPatch where
  type Rs BloggerPostsPatch = Post'
  type Scopes BloggerPostsPatch = '[Blogger'FullControl]
  requestClient BloggerPostsPatch {..} =
    go
      blogId
      postId
      xgafv
      accessToken
      callback
      (Core.Just fetchBody)
      fetchImages
      maxComments
      publish
      revert
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPostsPatchResource)
          Core.mempty
