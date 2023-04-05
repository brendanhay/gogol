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
-- Module      : Gogol.Blogger.Posts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a post by blog id and post id
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.get@.
module Gogol.Blogger.Posts.Get
  ( -- * Resource
    BloggerPostsGetResource,

    -- ** Constructing a Request
    BloggerPostsGet (..),
    newBloggerPostsGet,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.posts.get@ method which the
-- 'BloggerPostsGet' request conforms to.
type BloggerPostsGetResource =
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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" PostsGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Post'

-- | Gets a post by blog id and post id
--
-- /See:/ 'newBloggerPostsGet' smart constructor.
data BloggerPostsGet = BloggerPostsGet
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
    -- |
    postId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- |
    view :: (Core.Maybe PostsGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsGet' with the minimum fields required to make a request.
newBloggerPostsGet ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'postId'.
  Core.Text ->
  BloggerPostsGet
newBloggerPostsGet blogId postId =
  BloggerPostsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      fetchBody = Core.True,
      fetchImages = Core.Nothing,
      maxComments = Core.Nothing,
      postId = postId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsGet where
  type Rs BloggerPostsGet = Post'
  type
    Scopes BloggerPostsGet =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerPostsGet {..} =
    go
      blogId
      postId
      xgafv
      accessToken
      callback
      (Core.Just fetchBody)
      fetchImages
      maxComments
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPostsGetResource)
          Core.mempty
