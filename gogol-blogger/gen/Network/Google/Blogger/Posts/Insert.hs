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
-- Module      : Network.Google.Blogger.Posts.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.insert@.
module Network.Google.Blogger.Posts.Insert
  ( -- * Resource
    BloggerPostsInsertResource,

    -- ** Constructing a Request
    newBloggerPostsInsert,
    BloggerPostsInsert,
  )
where

import Network.Google.Blogger.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @blogger.posts.insert@ method which the
-- 'BloggerPostsInsert' request conforms to.
type BloggerPostsInsertResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> "posts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fetchBody" Core.Bool
    Core.:> Core.QueryParam "fetchImages" Core.Bool
    Core.:> Core.QueryParam "isDraft" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Post'
    Core.:> Core.Post '[Core.JSON] Post'

-- | Inserts a post.
--
-- /See:/ 'newBloggerPostsInsert' smart constructor.
data BloggerPostsInsert = BloggerPostsInsert
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
    isDraft :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: Post',
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsInsert' with the minimum fields required to make a request.
newBloggerPostsInsert ::
  -- |  See 'blogId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Post' ->
  BloggerPostsInsert
newBloggerPostsInsert blogId payload =
  BloggerPostsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      fetchBody = Core.True,
      fetchImages = Core.Nothing,
      isDraft = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsInsert where
  type Rs BloggerPostsInsert = Post'
  type
    Scopes BloggerPostsInsert =
      '["https://www.googleapis.com/auth/blogger"]
  requestClient BloggerPostsInsert {..} =
    go
      blogId
      xgafv
      accessToken
      callback
      (Core.Just fetchBody)
      fetchImages
      isDraft
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerPostsInsertResource)
          Core.mempty
