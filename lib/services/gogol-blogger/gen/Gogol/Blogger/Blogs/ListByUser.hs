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
-- Module      : Gogol.Blogger.Blogs.ListByUser
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists blogs by user.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogs.listByUser@.
module Gogol.Blogger.Blogs.ListByUser
  ( -- * Resource
    BloggerBlogsListByUserResource,

    -- ** Constructing a Request
    BloggerBlogsListByUser (..),
    newBloggerBlogsListByUser,
  )
where

import Gogol.Blogger.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @blogger.blogs.listByUser@ method which the
-- 'BloggerBlogsListByUser' request conforms to.
type BloggerBlogsListByUserResource =
  "v3"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "blogs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fetchUserInfo" Core.Bool
    Core.:> Core.QueryParams "role" BlogsListByUserRole
    Core.:> Core.QueryParams "status" BlogsListByUserStatus
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" BlogsListByUserView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BlogList

-- | Lists blogs by user.
--
-- /See:/ 'newBloggerBlogsListByUser' smart constructor.
data BloggerBlogsListByUser = BloggerBlogsListByUser
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    fetchUserInfo :: (Core.Maybe Core.Bool),
    role' :: (Core.Maybe [BlogsListByUserRole]),
    -- | Default value of status is LIVE.
    status :: [BlogsListByUserStatus],
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    userId :: Core.Text,
    view :: (Core.Maybe BlogsListByUserView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerBlogsListByUser' with the minimum fields required to make a request.
newBloggerBlogsListByUser ::
  -- |  See 'userId'.
  Core.Text ->
  BloggerBlogsListByUser
newBloggerBlogsListByUser userId =
  BloggerBlogsListByUser
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fetchUserInfo = Core.Nothing,
      role' = Core.Nothing,
      status = [BlogsListByUserStatus_Live],
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId,
      view = Core.Nothing
    }

instance Core.GoogleRequest BloggerBlogsListByUser where
  type Rs BloggerBlogsListByUser = BlogList
  type
    Scopes BloggerBlogsListByUser =
      '[Blogger'FullControl, Blogger'Readonly]
  requestClient BloggerBlogsListByUser {..} =
    go
      userId
      xgafv
      accessToken
      callback
      fetchUserInfo
      (role' Core.^. Core._Default)
      status
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      bloggerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BloggerBlogsListByUserResource)
          Core.mempty
