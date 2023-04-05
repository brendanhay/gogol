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
-- Module      : Gogol.Blogger.Blogs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a blog by id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogs.get@.
module Gogol.Blogger.Blogs.Get
  ( -- * Resource
    BloggerBlogsGetResource,

    -- ** Constructing a Request
    BloggerBlogsGet (..),
    newBloggerBlogsGet,
  )
where

import Gogol.Blogger.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @blogger.blogs.get@ method which the
-- 'BloggerBlogsGet' request conforms to.
type BloggerBlogsGetResource =
  "v3"
    Core.:> "blogs"
    Core.:> Core.Capture "blogId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxPosts" Core.Word32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" BlogsGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Blog

-- | Gets a blog by id.
--
-- /See:/ 'newBloggerBlogsGet' smart constructor.
data BloggerBlogsGet = BloggerBlogsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- |
    blogId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- |
    maxPosts :: (Core.Maybe Core.Word32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- |
    view :: (Core.Maybe BlogsGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerBlogsGet' with the minimum fields required to make a request.
newBloggerBlogsGet ::
  -- |  See 'blogId'.
  Core.Text ->
  BloggerBlogsGet
newBloggerBlogsGet blogId =
  BloggerBlogsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      blogId = blogId,
      callback = Core.Nothing,
      maxPosts = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerBlogsGet where
  type Rs BloggerBlogsGet = Blog
  type
    Scopes BloggerBlogsGet =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerBlogsGet {..} =
    go
      blogId
      xgafv
      accessToken
      callback
      maxPosts
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerBlogsGetResource)
          Core.mempty
