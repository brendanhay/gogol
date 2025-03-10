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
-- Module      : Gogol.Blogger.Blogs.GetByUrl
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a blog by url.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogs.getByUrl@.
module Gogol.Blogger.Blogs.GetByUrl
  ( -- * Resource
    BloggerBlogsGetByUrlResource,

    -- ** Constructing a Request
    BloggerBlogsGetByUrl (..),
    newBloggerBlogsGetByUrl,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.blogs.getByUrl@ method which the
-- 'BloggerBlogsGetByUrl' request conforms to.
type BloggerBlogsGetByUrlResource =
  "v3"
    Core.:> "blogs"
    Core.:> "byurl"
    Core.:> Core.QueryParam "url" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" BlogsGetByUrlView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Blog

-- | Gets a blog by url.
--
-- /See:/ 'newBloggerBlogsGetByUrl' smart constructor.
data BloggerBlogsGetByUrl = BloggerBlogsGetByUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    url :: Core.Text,
    view :: (Core.Maybe BlogsGetByUrlView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerBlogsGetByUrl' with the minimum fields required to make a request.
newBloggerBlogsGetByUrl ::
  -- |  See 'url'.
  Core.Text ->
  BloggerBlogsGetByUrl
newBloggerBlogsGetByUrl url =
  BloggerBlogsGetByUrl
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      url = url,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerBlogsGetByUrl where
  type Rs BloggerBlogsGetByUrl = Blog
  type
    Scopes BloggerBlogsGetByUrl =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerBlogsGetByUrl {..} =
    go
      (Core.Just url)
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerBlogsGetByUrlResource)
          Core.mempty
