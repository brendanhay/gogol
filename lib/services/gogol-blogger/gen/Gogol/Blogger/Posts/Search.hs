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
-- Module      : Gogol.Blogger.Posts.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for posts matching given query terms in the specified blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.search@.
module Gogol.Blogger.Posts.Search
  ( -- * Resource
    BloggerPostsSearchResource,

    -- ** Constructing a Request
    newBloggerPostsSearch,
    BloggerPostsSearch,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.posts.search@ method which the
-- 'BloggerPostsSearch' request conforms to.
type BloggerPostsSearchResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> "search"
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fetchBodies" Core.Bool
    Core.:> Core.QueryParam "orderBy" PostsSearchOrderBy
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PostList

-- | Searches for posts matching given query terms in the specified blog.
--
-- /See:/ 'newBloggerPostsSearch' smart constructor.
data BloggerPostsSearch = BloggerPostsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    fetchBodies :: Core.Bool,
    -- |
    orderBy :: PostsSearchOrderBy,
    -- |
    q :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsSearch' with the minimum fields required to make a request.
newBloggerPostsSearch ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  See 'q'.
  Core.Text ->
  BloggerPostsSearch
newBloggerPostsSearch blogId q =
  BloggerPostsSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      fetchBodies = Core.True,
      orderBy = PostsSearchOrderBy_Published,
      q = q,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsSearch where
  type Rs BloggerPostsSearch = PostList
  type
    Scopes BloggerPostsSearch =
      '[ "https://www.googleapis.com/auth/blogger",
         "https://www.googleapis.com/auth/blogger.readonly"
       ]
  requestClient BloggerPostsSearch {..} =
    go
      blogId
      (Core.Just q)
      xgafv
      accessToken
      callback
      (Core.Just fetchBodies)
      (Core.Just orderBy)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPostsSearchResource)
          Core.mempty
