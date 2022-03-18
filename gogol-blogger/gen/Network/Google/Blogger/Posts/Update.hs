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
-- Module      : Network.Google.Blogger.Posts.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a post by blog id and post id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.update@.
module Network.Google.Blogger.Posts.Update
  ( -- * Resource
    BloggerPostsUpdateResource,

    -- ** Constructing a Request
    newBloggerPostsUpdate,
    BloggerPostsUpdate,
  )
where

import Network.Google.Blogger.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @blogger.posts.update@ method which the
-- 'BloggerPostsUpdate' request conforms to.
type BloggerPostsUpdateResource =
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
    Core.:> Core.Put '[Core.JSON] Post'

-- | Updates a post by blog id and post id.
--
-- /See:/ 'newBloggerPostsUpdate' smart constructor.
data BloggerPostsUpdate = BloggerPostsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    fetchBody :: Core.Bool,
    -- |
    fetchImages :: (Core.Maybe Core.Bool),
    -- |
    maxComments :: (Core.Maybe Core.Word32),
    -- | Multipart request metadata.
    payload :: Post',
    -- |
    postId :: Core.Text,
    -- |
    publish :: (Core.Maybe Core.Bool),
    -- |
    revert :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsUpdate' with the minimum fields required to make a request.
newBloggerPostsUpdate ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Post' ->
  -- |  See 'postId'.
  Core.Text ->
  BloggerPostsUpdate
newBloggerPostsUpdate blogId payload postId =
  BloggerPostsUpdate
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

instance Core.GoogleRequest BloggerPostsUpdate where
  type Rs BloggerPostsUpdate = Post'
  type
    Scopes BloggerPostsUpdate =
      '["https://www.googleapis.com/auth/blogger"]
  requestClient BloggerPostsUpdate {..} =
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
          (Core.Proxy :: Core.Proxy BloggerPostsUpdateResource)
          Core.mempty
