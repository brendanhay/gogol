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
-- Module      : Gogol.Blogger.Posts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists posts.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.list@.
module Gogol.Blogger.Posts.List
  ( -- * Resource
    BloggerPostsListResource,

    -- ** Constructing a Request
    BloggerPostsList (..),
    newBloggerPostsList,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.posts.list@ method which the
-- 'BloggerPostsList' request conforms to.
type BloggerPostsListResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endDate" Core.Text
    Core.:> Core.QueryParam "fetchBodies" Core.Bool
    Core.:> Core.QueryParam "fetchImages" Core.Bool
    Core.:> Core.QueryParam "labels" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "orderBy" PostsListOrderBy
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startDate" Core.Text
    Core.:> Core.QueryParams "status" PostsListStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "view" PostsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PostList

-- | Lists posts.
--
-- /See:/ 'newBloggerPostsList' smart constructor.
data BloggerPostsList = BloggerPostsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    endDate :: (Core.Maybe Core.Text),
    -- |
    fetchBodies :: Core.Bool,
    -- |
    fetchImages :: (Core.Maybe Core.Bool),
    -- |
    labels :: (Core.Maybe Core.Text),
    -- |
    maxResults :: (Core.Maybe Core.Word32),
    -- |
    orderBy :: PostsListOrderBy,
    -- |
    pageToken :: (Core.Maybe Core.Text),
    -- |
    startDate :: (Core.Maybe Core.Text),
    -- |
    status :: (Core.Maybe [PostsListStatus]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- |
    view :: (Core.Maybe PostsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsList' with the minimum fields required to make a request.
newBloggerPostsList ::
  -- |  See 'blogId'.
  Core.Text ->
  BloggerPostsList
newBloggerPostsList blogId =
  BloggerPostsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      endDate = Core.Nothing,
      fetchBodies = Core.True,
      fetchImages = Core.Nothing,
      labels = Core.Nothing,
      maxResults = Core.Nothing,
      orderBy = PostsListOrderBy_Published,
      pageToken = Core.Nothing,
      startDate = Core.Nothing,
      status = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsList where
  type Rs BloggerPostsList = PostList
  type
    Scopes BloggerPostsList =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerPostsList {..} =
    go
      blogId
      xgafv
      accessToken
      callback
      endDate
      (Core.Just fetchBodies)
      fetchImages
      labels
      maxResults
      (Core.Just orderBy)
      pageToken
      startDate
      (status Core.^. Core._Default)
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPostsListResource)
          Core.mempty
